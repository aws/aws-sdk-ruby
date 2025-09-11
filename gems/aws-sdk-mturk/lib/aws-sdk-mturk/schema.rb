# frozen_string_literal: true

# This is generated code!

module Aws::MTurk
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptQualificationRequestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AcceptQualificationRequestRequest', name: 'AcceptQualificationRequestRequest')
    AcceptQualificationRequestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AcceptQualificationRequestResponse', name: 'AcceptQualificationRequestResponse')
    ApproveAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ApproveAssignmentRequest', name: 'ApproveAssignmentRequest')
    ApproveAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ApproveAssignmentResponse', name: 'ApproveAssignmentResponse')
    Assignment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#Assignment', name: 'Assignment')
    AssignmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#AssignmentList', name: 'AssignmentList')
    AssignmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#AssignmentStatus', name: 'AssignmentStatus')
    AssignmentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#AssignmentStatusList', name: 'AssignmentStatusList')
    AssociateQualificationWithWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AssociateQualificationWithWorkerRequest', name: 'AssociateQualificationWithWorkerRequest')
    AssociateQualificationWithWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AssociateQualificationWithWorkerResponse', name: 'AssociateQualificationWithWorkerResponse')
    BonusPayment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#BonusPayment', name: 'BonusPayment')
    BonusPaymentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#BonusPaymentList', name: 'BonusPaymentList')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mturk#Boolean', name: 'Boolean')
    Comparator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#Comparator', name: 'Comparator')
    CountryParameters = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#CountryParameters', name: 'CountryParameters', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    CreateAdditionalAssignmentsForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateAdditionalAssignmentsForHITRequest', name: 'CreateAdditionalAssignmentsForHITRequest')
    CreateAdditionalAssignmentsForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateAdditionalAssignmentsForHITResponse', name: 'CreateAdditionalAssignmentsForHITResponse')
    CreateHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITRequest', name: 'CreateHITRequest')
    CreateHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITResponse', name: 'CreateHITResponse')
    CreateHITTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITTypeRequest', name: 'CreateHITTypeRequest')
    CreateHITTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITTypeResponse', name: 'CreateHITTypeResponse')
    CreateHITWithHITTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITWithHITTypeRequest', name: 'CreateHITWithHITTypeRequest')
    CreateHITWithHITTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITWithHITTypeResponse', name: 'CreateHITWithHITTypeResponse')
    CreateQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateQualificationTypeRequest', name: 'CreateQualificationTypeRequest')
    CreateQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateQualificationTypeResponse', name: 'CreateQualificationTypeResponse')
    CreateWorkerBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateWorkerBlockRequest', name: 'CreateWorkerBlockRequest')
    CreateWorkerBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateWorkerBlockResponse', name: 'CreateWorkerBlockResponse')
    CurrencyAmount = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#CurrencyAmount', name: 'CurrencyAmount', traits: {"smithy.api#pattern" => "^[0-9]+(\\.)?[0-9]{0,2}$"})
    CustomerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#CustomerId', name: 'CustomerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^A[A-Z0-9]+$"})
    CustomerIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#CustomerIdList', name: 'CustomerIdList')
    DeleteHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteHITRequest', name: 'DeleteHITRequest')
    DeleteHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteHITResponse', name: 'DeleteHITResponse')
    DeleteQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteQualificationTypeRequest', name: 'DeleteQualificationTypeRequest')
    DeleteQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteQualificationTypeResponse', name: 'DeleteQualificationTypeResponse')
    DeleteWorkerBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteWorkerBlockRequest', name: 'DeleteWorkerBlockRequest')
    DeleteWorkerBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteWorkerBlockResponse', name: 'DeleteWorkerBlockResponse')
    DisassociateQualificationFromWorkerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DisassociateQualificationFromWorkerRequest', name: 'DisassociateQualificationFromWorkerRequest')
    DisassociateQualificationFromWorkerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DisassociateQualificationFromWorkerResponse', name: 'DisassociateQualificationFromWorkerResponse')
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#EntityId', name: 'EntityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#EventType', name: 'EventType')
    EventTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#EventTypeList', name: 'EventTypeList')
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#ExceptionMessage', name: 'ExceptionMessage')
    GetAccountBalanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAccountBalanceRequest', name: 'GetAccountBalanceRequest')
    GetAccountBalanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAccountBalanceResponse', name: 'GetAccountBalanceResponse')
    GetAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAssignmentRequest', name: 'GetAssignmentRequest')
    GetAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAssignmentResponse', name: 'GetAssignmentResponse')
    GetFileUploadURLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetFileUploadURLRequest', name: 'GetFileUploadURLRequest')
    GetFileUploadURLResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetFileUploadURLResponse', name: 'GetFileUploadURLResponse')
    GetHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetHITRequest', name: 'GetHITRequest')
    GetHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetHITResponse', name: 'GetHITResponse')
    GetQualificationScoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationScoreRequest', name: 'GetQualificationScoreRequest')
    GetQualificationScoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationScoreResponse', name: 'GetQualificationScoreResponse')
    GetQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationTypeRequest', name: 'GetQualificationTypeRequest')
    GetQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationTypeResponse', name: 'GetQualificationTypeResponse')
    HIT = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#HIT', name: 'HIT')
    HITAccessActions = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#HITAccessActions', name: 'HITAccessActions')
    HITLayoutParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#HITLayoutParameter', name: 'HITLayoutParameter')
    HITLayoutParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#HITLayoutParameterList', name: 'HITLayoutParameterList')
    HITList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#HITList', name: 'HITList')
    HITReviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#HITReviewStatus', name: 'HITReviewStatus')
    HITStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#HITStatus', name: 'HITStatus')
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mturk#Integer', name: 'Integer')
    IntegerList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#IntegerList', name: 'IntegerList')
    ListAssignmentsForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListAssignmentsForHITRequest', name: 'ListAssignmentsForHITRequest')
    ListAssignmentsForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListAssignmentsForHITResponse', name: 'ListAssignmentsForHITResponse')
    ListBonusPaymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListBonusPaymentsRequest', name: 'ListBonusPaymentsRequest')
    ListBonusPaymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListBonusPaymentsResponse', name: 'ListBonusPaymentsResponse')
    ListHITsForQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsForQualificationTypeRequest', name: 'ListHITsForQualificationTypeRequest')
    ListHITsForQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsForQualificationTypeResponse', name: 'ListHITsForQualificationTypeResponse')
    ListHITsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsRequest', name: 'ListHITsRequest')
    ListHITsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsResponse', name: 'ListHITsResponse')
    ListQualificationRequestsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationRequestsRequest', name: 'ListQualificationRequestsRequest')
    ListQualificationRequestsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationRequestsResponse', name: 'ListQualificationRequestsResponse')
    ListQualificationTypesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationTypesRequest', name: 'ListQualificationTypesRequest')
    ListQualificationTypesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationTypesResponse', name: 'ListQualificationTypesResponse')
    ListReviewPolicyResultsForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewPolicyResultsForHITRequest', name: 'ListReviewPolicyResultsForHITRequest')
    ListReviewPolicyResultsForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewPolicyResultsForHITResponse', name: 'ListReviewPolicyResultsForHITResponse')
    ListReviewableHITsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewableHITsRequest', name: 'ListReviewableHITsRequest')
    ListReviewableHITsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewableHITsResponse', name: 'ListReviewableHITsResponse')
    ListWorkerBlocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkerBlocksRequest', name: 'ListWorkerBlocksRequest')
    ListWorkerBlocksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkerBlocksResponse', name: 'ListWorkerBlocksResponse')
    ListWorkersWithQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkersWithQualificationTypeRequest', name: 'ListWorkersWithQualificationTypeRequest')
    ListWorkersWithQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkersWithQualificationTypeResponse', name: 'ListWorkersWithQualificationTypeResponse')
    Locale = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#Locale', name: 'Locale')
    LocaleList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#LocaleList', name: 'LocaleList')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mturk#Long', name: 'Long')
    NotificationSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotificationSpecification', name: 'NotificationSpecification')
    NotificationTransport = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#NotificationTransport', name: 'NotificationTransport')
    NotifyWorkersFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#NotifyWorkersFailureCode', name: 'NotifyWorkersFailureCode')
    NotifyWorkersFailureStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotifyWorkersFailureStatus', name: 'NotifyWorkersFailureStatus')
    NotifyWorkersFailureStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#NotifyWorkersFailureStatusList', name: 'NotifyWorkersFailureStatusList')
    NotifyWorkersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotifyWorkersRequest', name: 'NotifyWorkersRequest')
    NotifyWorkersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotifyWorkersResponse', name: 'NotifyWorkersResponse')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ParameterMapEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ParameterMapEntry', name: 'ParameterMapEntry')
    ParameterMapEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ParameterMapEntryList', name: 'ParameterMapEntryList')
    PolicyParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#PolicyParameter', name: 'PolicyParameter')
    PolicyParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#PolicyParameterList', name: 'PolicyParameterList')
    Qualification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#Qualification', name: 'Qualification')
    QualificationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationList', name: 'QualificationList')
    QualificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#QualificationRequest', name: 'QualificationRequest')
    QualificationRequestList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationRequestList', name: 'QualificationRequestList')
    QualificationRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#QualificationRequirement', name: 'QualificationRequirement')
    QualificationRequirementList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationRequirementList', name: 'QualificationRequirementList')
    QualificationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#QualificationStatus', name: 'QualificationStatus')
    QualificationType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#QualificationType', name: 'QualificationType')
    QualificationTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationTypeList', name: 'QualificationTypeList')
    QualificationTypeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#QualificationTypeStatus', name: 'QualificationTypeStatus')
    RejectAssignmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectAssignmentRequest', name: 'RejectAssignmentRequest')
    RejectAssignmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectAssignmentResponse', name: 'RejectAssignmentResponse')
    RejectQualificationRequestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectQualificationRequestRequest', name: 'RejectQualificationRequestRequest')
    RejectQualificationRequestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectQualificationRequestResponse', name: 'RejectQualificationRequestResponse')
    RequestError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RequestError', name: 'RequestError', traits: {"aws.protocols#awsQueryError" => {"code" => "RequestError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResultSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mturk#ResultSize', name: 'ResultSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ReviewActionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewActionDetail', name: 'ReviewActionDetail')
    ReviewActionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ReviewActionDetailList', name: 'ReviewActionDetailList')
    ReviewActionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#ReviewActionStatus', name: 'ReviewActionStatus')
    ReviewPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewPolicy', name: 'ReviewPolicy')
    ReviewPolicyLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#ReviewPolicyLevel', name: 'ReviewPolicyLevel')
    ReviewPolicyLevelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ReviewPolicyLevelList', name: 'ReviewPolicyLevelList')
    ReviewReport = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewReport', name: 'ReviewReport')
    ReviewResultDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewResultDetail', name: 'ReviewResultDetail')
    ReviewResultDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ReviewResultDetailList', name: 'ReviewResultDetailList')
    ReviewableHITStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#ReviewableHITStatus', name: 'ReviewableHITStatus')
    SendBonusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendBonusRequest', name: 'SendBonusRequest')
    SendBonusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendBonusResponse', name: 'SendBonusResponse')
    SendTestEventNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendTestEventNotificationRequest', name: 'SendTestEventNotificationRequest')
    SendTestEventNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendTestEventNotificationResponse', name: 'SendTestEventNotificationResponse')
    ServiceFault = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ServiceFault', name: 'ServiceFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceFault", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#String', name: 'String')
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#StringList', name: 'StringList')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mturk#Timestamp', name: 'Timestamp')
    TurkErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#TurkErrorCode', name: 'TurkErrorCode')
    UpdateExpirationForHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateExpirationForHITRequest', name: 'UpdateExpirationForHITRequest')
    UpdateExpirationForHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateExpirationForHITResponse', name: 'UpdateExpirationForHITResponse')
    UpdateHITReviewStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITReviewStatusRequest', name: 'UpdateHITReviewStatusRequest')
    UpdateHITReviewStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITReviewStatusResponse', name: 'UpdateHITReviewStatusResponse')
    UpdateHITTypeOfHITRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITTypeOfHITRequest', name: 'UpdateHITTypeOfHITRequest')
    UpdateHITTypeOfHITResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITTypeOfHITResponse', name: 'UpdateHITTypeOfHITResponse')
    UpdateNotificationSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateNotificationSettingsRequest', name: 'UpdateNotificationSettingsRequest')
    UpdateNotificationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateNotificationSettingsResponse', name: 'UpdateNotificationSettingsResponse')
    UpdateQualificationTypeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateQualificationTypeRequest', name: 'UpdateQualificationTypeRequest')
    UpdateQualificationTypeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateQualificationTypeResponse', name: 'UpdateQualificationTypeResponse')
    WorkerBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#WorkerBlock', name: 'WorkerBlock')
    WorkerBlockList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#WorkerBlockList', name: 'WorkerBlockList')

    AcceptQualificationRequestRequest.add_member(:qualification_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationRequestId', traits: {"smithy.api#required" => {}}))
    AcceptQualificationRequestRequest.add_member(:integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue'))
    AcceptQualificationRequestRequest.type = Types::AcceptQualificationRequestRequest
    AcceptQualificationRequestResponse.type = Types::AcceptQualificationRequestResponse
    ApproveAssignmentRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#required" => {}}))
    ApproveAssignmentRequest.add_member(:requester_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterFeedback'))
    ApproveAssignmentRequest.add_member(:override_rejection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OverrideRejection'))
    ApproveAssignmentRequest.type = Types::ApproveAssignmentRequest
    ApproveAssignmentResponse.type = Types::ApproveAssignmentResponse
    Assignment.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId'))
    Assignment.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId'))
    Assignment.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId'))
    Assignment.add_member(:assignment_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: 'AssignmentStatus'))
    Assignment.add_member(:auto_approval_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AutoApprovalTime'))
    Assignment.add_member(:accept_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptTime'))
    Assignment.add_member(:submit_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime'))
    Assignment.add_member(:approval_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApprovalTime'))
    Assignment.add_member(:rejection_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RejectionTime'))
    Assignment.add_member(:deadline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Deadline'))
    Assignment.add_member(:answer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Answer'))
    Assignment.add_member(:requester_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterFeedback'))
    Assignment.type = Types::Assignment
    AssignmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assignment)
    AssignmentStatus.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Submitted', traits: {"smithy.api#enumValue" => "Submitted"}))
    AssignmentStatus.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Approved', traits: {"smithy.api#enumValue" => "Approved"}))
    AssignmentStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Rejected', traits: {"smithy.api#enumValue" => "Rejected"}))
    AssignmentStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentStatus)
    AssociateQualificationWithWorkerRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    AssociateQualificationWithWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#required" => {}}))
    AssociateQualificationWithWorkerRequest.add_member(:integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue'))
    AssociateQualificationWithWorkerRequest.add_member(:send_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendNotification'))
    AssociateQualificationWithWorkerRequest.type = Types::AssociateQualificationWithWorkerRequest
    AssociateQualificationWithWorkerResponse.type = Types::AssociateQualificationWithWorkerResponse
    BonusPayment.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId'))
    BonusPayment.add_member(:bonus_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'BonusAmount'))
    BonusPayment.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId'))
    BonusPayment.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    BonusPayment.add_member(:grant_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'GrantTime'))
    BonusPayment.type = Types::BonusPayment
    BonusPaymentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BonusPayment)
    Comparator.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThan', traits: {"smithy.api#enumValue" => "LessThan"}))
    Comparator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThanOrEqualTo', traits: {"smithy.api#enumValue" => "LessThanOrEqualTo"}))
    Comparator.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThan', traits: {"smithy.api#enumValue" => "GreaterThan"}))
    Comparator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThanOrEqualTo', traits: {"smithy.api#enumValue" => "GreaterThanOrEqualTo"}))
    Comparator.add_member(:equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EqualTo', traits: {"smithy.api#enumValue" => "EqualTo"}))
    Comparator.add_member(:not_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotEqualTo', traits: {"smithy.api#enumValue" => "NotEqualTo"}))
    Comparator.add_member(:exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Exists', traits: {"smithy.api#enumValue" => "Exists"}))
    Comparator.add_member(:does_not_exist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DoesNotExist', traits: {"smithy.api#enumValue" => "DoesNotExist"}))
    Comparator.add_member(:in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'In', traits: {"smithy.api#enumValue" => "In"}))
    Comparator.add_member(:not_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotIn', traits: {"smithy.api#enumValue" => "NotIn"}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:number_of_additional_assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAdditionalAssignments', traits: {"smithy.api#required" => {}}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken'))
    CreateAdditionalAssignmentsForHITRequest.type = Types::CreateAdditionalAssignmentsForHITRequest
    CreateAdditionalAssignmentsForHITResponse.type = Types::CreateAdditionalAssignmentsForHITResponse
    CreateHITRequest.add_member(:max_assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxAssignments'))
    CreateHITRequest.add_member(:auto_approval_delay_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AutoApprovalDelayInSeconds'))
    CreateHITRequest.add_member(:lifetime_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LifetimeInSeconds', traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:assignment_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AssignmentDurationInSeconds', traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:reward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'Reward', traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords'))
    CreateHITRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    CreateHITRequest.add_member(:question, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Question'))
    CreateHITRequest.add_member(:requester_annotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterAnnotation'))
    CreateHITRequest.add_member(:qualification_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: 'QualificationRequirements'))
    CreateHITRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken'))
    CreateHITRequest.add_member(:assignment_review_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'AssignmentReviewPolicy'))
    CreateHITRequest.add_member(:hit_review_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'HITReviewPolicy'))
    CreateHITRequest.add_member(:hit_layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITLayoutId'))
    CreateHITRequest.add_member(:hit_layout_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITLayoutParameterList, location_name: 'HITLayoutParameters'))
    CreateHITRequest.type = Types::CreateHITRequest
    CreateHITResponse.add_member(:hit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT'))
    CreateHITResponse.type = Types::CreateHITResponse
    CreateHITTypeRequest.add_member(:auto_approval_delay_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AutoApprovalDelayInSeconds'))
    CreateHITTypeRequest.add_member(:assignment_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AssignmentDurationInSeconds', traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:reward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'Reward', traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords'))
    CreateHITTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:qualification_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: 'QualificationRequirements'))
    CreateHITTypeRequest.type = Types::CreateHITTypeRequest
    CreateHITTypeResponse.add_member(:hit_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId'))
    CreateHITTypeResponse.type = Types::CreateHITTypeResponse
    CreateHITWithHITTypeRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#required" => {}}))
    CreateHITWithHITTypeRequest.add_member(:max_assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxAssignments'))
    CreateHITWithHITTypeRequest.add_member(:lifetime_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LifetimeInSeconds', traits: {"smithy.api#required" => {}}))
    CreateHITWithHITTypeRequest.add_member(:question, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Question'))
    CreateHITWithHITTypeRequest.add_member(:requester_annotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterAnnotation'))
    CreateHITWithHITTypeRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken'))
    CreateHITWithHITTypeRequest.add_member(:assignment_review_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'AssignmentReviewPolicy'))
    CreateHITWithHITTypeRequest.add_member(:hit_review_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'HITReviewPolicy'))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITLayoutId'))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITLayoutParameterList, location_name: 'HITLayoutParameters'))
    CreateHITWithHITTypeRequest.type = Types::CreateHITWithHITTypeRequest
    CreateHITWithHITTypeResponse.add_member(:hit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT'))
    CreateHITWithHITTypeResponse.type = Types::CreateHITWithHITTypeResponse
    CreateQualificationTypeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords'))
    CreateQualificationTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:qualification_type_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: 'QualificationTypeStatus', traits: {"smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:retry_delay_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetryDelayInSeconds'))
    CreateQualificationTypeRequest.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test'))
    CreateQualificationTypeRequest.add_member(:answer_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnswerKey'))
    CreateQualificationTypeRequest.add_member(:test_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TestDurationInSeconds'))
    CreateQualificationTypeRequest.add_member(:auto_granted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoGranted'))
    CreateQualificationTypeRequest.add_member(:auto_granted_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoGrantedValue'))
    CreateQualificationTypeRequest.type = Types::CreateQualificationTypeRequest
    CreateQualificationTypeResponse.add_member(:qualification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType, location_name: 'QualificationType'))
    CreateQualificationTypeResponse.type = Types::CreateQualificationTypeResponse
    CreateWorkerBlockRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#required" => {}}))
    CreateWorkerBlockRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#required" => {}}))
    CreateWorkerBlockRequest.type = Types::CreateWorkerBlockRequest
    CreateWorkerBlockResponse.type = Types::CreateWorkerBlockResponse
    CustomerIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId)
    DeleteHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    DeleteHITRequest.type = Types::DeleteHITRequest
    DeleteHITResponse.type = Types::DeleteHITResponse
    DeleteQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    DeleteQualificationTypeRequest.type = Types::DeleteQualificationTypeRequest
    DeleteQualificationTypeResponse.type = Types::DeleteQualificationTypeResponse
    DeleteWorkerBlockRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#required" => {}}))
    DeleteWorkerBlockRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    DeleteWorkerBlockRequest.type = Types::DeleteWorkerBlockRequest
    DeleteWorkerBlockResponse.type = Types::DeleteWorkerBlockResponse
    DisassociateQualificationFromWorkerRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#required" => {}}))
    DisassociateQualificationFromWorkerRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    DisassociateQualificationFromWorkerRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    DisassociateQualificationFromWorkerRequest.type = Types::DisassociateQualificationFromWorkerRequest
    DisassociateQualificationFromWorkerResponse.type = Types::DisassociateQualificationFromWorkerResponse
    EventType.add_member(:assignment_accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentAccepted', traits: {"smithy.api#enumValue" => "AssignmentAccepted"}))
    EventType.add_member(:assignment_abandoned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentAbandoned', traits: {"smithy.api#enumValue" => "AssignmentAbandoned"}))
    EventType.add_member(:assignment_returned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentReturned', traits: {"smithy.api#enumValue" => "AssignmentReturned"}))
    EventType.add_member(:assignment_submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentSubmitted', traits: {"smithy.api#enumValue" => "AssignmentSubmitted"}))
    EventType.add_member(:assignment_rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentRejected', traits: {"smithy.api#enumValue" => "AssignmentRejected"}))
    EventType.add_member(:assignment_approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentApproved', traits: {"smithy.api#enumValue" => "AssignmentApproved"}))
    EventType.add_member(:hit_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITCreated', traits: {"smithy.api#enumValue" => "HITCreated"}))
    EventType.add_member(:hit_expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITExpired', traits: {"smithy.api#enumValue" => "HITExpired"}))
    EventType.add_member(:hit_reviewable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITReviewable', traits: {"smithy.api#enumValue" => "HITReviewable"}))
    EventType.add_member(:hit_extended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITExtended', traits: {"smithy.api#enumValue" => "HITExtended"}))
    EventType.add_member(:hit_disposed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITDisposed', traits: {"smithy.api#enumValue" => "HITDisposed"}))
    EventType.add_member(:ping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ping', traits: {"smithy.api#enumValue" => "Ping"}))
    EventTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    GetAccountBalanceRequest.type = Types::GetAccountBalanceRequest
    GetAccountBalanceResponse.add_member(:available_balance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'AvailableBalance'))
    GetAccountBalanceResponse.add_member(:on_hold_balance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'OnHoldBalance'))
    GetAccountBalanceResponse.type = Types::GetAccountBalanceResponse
    GetAssignmentRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#required" => {}}))
    GetAssignmentRequest.type = Types::GetAssignmentRequest
    GetAssignmentResponse.add_member(:assignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Assignment, location_name: 'Assignment'))
    GetAssignmentResponse.add_member(:hit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT'))
    GetAssignmentResponse.type = Types::GetAssignmentResponse
    GetFileUploadURLRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#required" => {}}))
    GetFileUploadURLRequest.add_member(:question_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuestionIdentifier', traits: {"smithy.api#required" => {}}))
    GetFileUploadURLRequest.type = Types::GetFileUploadURLRequest
    GetFileUploadURLResponse.add_member(:file_upload_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FileUploadURL'))
    GetFileUploadURLResponse.type = Types::GetFileUploadURLResponse
    GetHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    GetHITRequest.type = Types::GetHITRequest
    GetHITResponse.add_member(:hit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT'))
    GetHITResponse.type = Types::GetHITResponse
    GetQualificationScoreRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    GetQualificationScoreRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#required" => {}}))
    GetQualificationScoreRequest.type = Types::GetQualificationScoreRequest
    GetQualificationScoreResponse.add_member(:qualification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qualification, location_name: 'Qualification'))
    GetQualificationScoreResponse.type = Types::GetQualificationScoreResponse
    GetQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    GetQualificationTypeRequest.type = Types::GetQualificationTypeRequest
    GetQualificationTypeResponse.add_member(:qualification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType, location_name: 'QualificationType'))
    GetQualificationTypeResponse.type = Types::GetQualificationTypeResponse
    HIT.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId'))
    HIT.add_member(:hit_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId'))
    HIT.add_member(:hit_group_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITGroupId'))
    HIT.add_member(:hit_layout_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITLayoutId'))
    HIT.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    HIT.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title'))
    HIT.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    HIT.add_member(:question, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Question'))
    HIT.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords'))
    HIT.add_member(:hit_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITStatus, location_name: 'HITStatus'))
    HIT.add_member(:max_assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxAssignments'))
    HIT.add_member(:reward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'Reward'))
    HIT.add_member(:auto_approval_delay_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AutoApprovalDelayInSeconds'))
    HIT.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Expiration'))
    HIT.add_member(:assignment_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AssignmentDurationInSeconds'))
    HIT.add_member(:requester_annotation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterAnnotation'))
    HIT.add_member(:qualification_requirements, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: 'QualificationRequirements'))
    HIT.add_member(:hit_review_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITReviewStatus, location_name: 'HITReviewStatus'))
    HIT.add_member(:number_of_assignments_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAssignmentsPending'))
    HIT.add_member(:number_of_assignments_available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAssignmentsAvailable'))
    HIT.add_member(:number_of_assignments_completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAssignmentsCompleted'))
    HIT.type = Types::HIT
    HITAccessActions.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Accept', traits: {"smithy.api#enumValue" => "Accept"}))
    HITAccessActions.add_member(:preview_and_accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreviewAndAccept', traits: {"smithy.api#enumValue" => "PreviewAndAccept"}))
    HITAccessActions.add_member(:discover_preview_and_accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiscoverPreviewAndAccept', traits: {"smithy.api#enumValue" => "DiscoverPreviewAndAccept"}))
    HITLayoutParameter.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    HITLayoutParameter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    HITLayoutParameter.type = Types::HITLayoutParameter
    HITLayoutParameterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITLayoutParameter)
    HITList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HIT)
    HITReviewStatus.add_member(:not_reviewed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotReviewed', traits: {"smithy.api#enumValue" => "NotReviewed"}))
    HITReviewStatus.add_member(:marked_for_review, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MarkedForReview', traits: {"smithy.api#enumValue" => "MarkedForReview"}))
    HITReviewStatus.add_member(:reviewed_appropriate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReviewedAppropriate', traits: {"smithy.api#enumValue" => "ReviewedAppropriate"}))
    HITReviewStatus.add_member(:reviewed_inappropriate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReviewedInappropriate', traits: {"smithy.api#enumValue" => "ReviewedInappropriate"}))
    HITStatus.add_member(:assignable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Assignable', traits: {"smithy.api#enumValue" => "Assignable"}))
    HITStatus.add_member(:unassignable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unassignable', traits: {"smithy.api#enumValue" => "Unassignable"}))
    HITStatus.add_member(:reviewable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewable', traits: {"smithy.api#enumValue" => "Reviewable"}))
    HITStatus.add_member(:reviewing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewing', traits: {"smithy.api#enumValue" => "Reviewing"}))
    HITStatus.add_member(:disposed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disposed', traits: {"smithy.api#enumValue" => "Disposed"}))
    IntegerList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    ListAssignmentsForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    ListAssignmentsForHITRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAssignmentsForHITRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListAssignmentsForHITRequest.add_member(:assignment_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentStatusList, location_name: 'AssignmentStatuses'))
    ListAssignmentsForHITRequest.type = Types::ListAssignmentsForHITRequest
    ListAssignmentsForHITResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAssignmentsForHITResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListAssignmentsForHITResponse.add_member(:assignments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentList, location_name: 'Assignments'))
    ListAssignmentsForHITResponse.type = Types::ListAssignmentsForHITResponse
    ListBonusPaymentsRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId'))
    ListBonusPaymentsRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId'))
    ListBonusPaymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListBonusPaymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListBonusPaymentsRequest.type = Types::ListBonusPaymentsRequest
    ListBonusPaymentsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListBonusPaymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListBonusPaymentsResponse.add_member(:bonus_payments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BonusPaymentList, location_name: 'BonusPayments'))
    ListBonusPaymentsResponse.type = Types::ListBonusPaymentsResponse
    ListHITsForQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    ListHITsForQualificationTypeRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHITsForQualificationTypeRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListHITsForQualificationTypeRequest.type = Types::ListHITsForQualificationTypeRequest
    ListHITsForQualificationTypeResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHITsForQualificationTypeResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListHITsForQualificationTypeResponse.add_member(:hi_ts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITList, location_name: 'HITs'))
    ListHITsForQualificationTypeResponse.type = Types::ListHITsForQualificationTypeResponse
    ListHITsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHITsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListHITsRequest.type = Types::ListHITsRequest
    ListHITsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHITsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListHITsResponse.add_member(:hi_ts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITList, location_name: 'HITs'))
    ListHITsResponse.type = Types::ListHITsResponse
    ListQualificationRequestsRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId'))
    ListQualificationRequestsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationRequestsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListQualificationRequestsRequest.type = Types::ListQualificationRequestsRequest
    ListQualificationRequestsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListQualificationRequestsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationRequestsResponse.add_member(:qualification_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequestList, location_name: 'QualificationRequests'))
    ListQualificationRequestsResponse.type = Types::ListQualificationRequestsResponse
    ListQualificationTypesRequest.add_member(:query, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Query'))
    ListQualificationTypesRequest.add_member(:must_be_requestable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MustBeRequestable', traits: {"smithy.api#required" => {}}))
    ListQualificationTypesRequest.add_member(:must_be_owned_by_caller, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MustBeOwnedByCaller'))
    ListQualificationTypesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationTypesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListQualificationTypesRequest.type = Types::ListQualificationTypesRequest
    ListQualificationTypesResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListQualificationTypesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationTypesResponse.add_member(:qualification_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeList, location_name: 'QualificationTypes'))
    ListQualificationTypesResponse.type = Types::ListQualificationTypesResponse
    ListReviewPolicyResultsForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    ListReviewPolicyResultsForHITRequest.add_member(:policy_levels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicyLevelList, location_name: 'PolicyLevels'))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetrieveActions'))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetrieveResults'))
    ListReviewPolicyResultsForHITRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListReviewPolicyResultsForHITRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListReviewPolicyResultsForHITRequest.type = Types::ListReviewPolicyResultsForHITRequest
    ListReviewPolicyResultsForHITResponse.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId'))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'AssignmentReviewPolicy'))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'HITReviewPolicy'))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewReport, location_name: 'AssignmentReviewReport'))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewReport, location_name: 'HITReviewReport'))
    ListReviewPolicyResultsForHITResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListReviewPolicyResultsForHITResponse.type = Types::ListReviewPolicyResultsForHITResponse
    ListReviewableHITsRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId'))
    ListReviewableHITsRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewableHITStatus, location_name: 'Status'))
    ListReviewableHITsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListReviewableHITsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListReviewableHITsRequest.type = Types::ListReviewableHITsRequest
    ListReviewableHITsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListReviewableHITsResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListReviewableHITsResponse.add_member(:hi_ts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITList, location_name: 'HITs'))
    ListReviewableHITsResponse.type = Types::ListReviewableHITsResponse
    ListWorkerBlocksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkerBlocksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListWorkerBlocksRequest.type = Types::ListWorkerBlocksRequest
    ListWorkerBlocksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkerBlocksResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListWorkerBlocksResponse.add_member(:worker_blocks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerBlockList, location_name: 'WorkerBlocks'))
    ListWorkerBlocksResponse.type = Types::ListWorkerBlocksResponse
    ListWorkersWithQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    ListWorkersWithQualificationTypeRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationStatus, location_name: 'Status'))
    ListWorkersWithQualificationTypeRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkersWithQualificationTypeRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListWorkersWithQualificationTypeRequest.type = Types::ListWorkersWithQualificationTypeRequest
    ListWorkersWithQualificationTypeResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkersWithQualificationTypeResponse.add_member(:num_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults'))
    ListWorkersWithQualificationTypeResponse.add_member(:qualifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationList, location_name: 'Qualifications'))
    ListWorkersWithQualificationTypeResponse.type = Types::ListWorkersWithQualificationTypeResponse
    Locale.add_member(:country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryParameters, location_name: 'Country', traits: {"smithy.api#required" => {}}))
    Locale.add_member(:subdivision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CountryParameters, location_name: 'Subdivision'))
    Locale.type = Types::Locale
    LocaleList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale)
    NotificationSpecification.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Destination', traits: {"smithy.api#required" => {}}))
    NotificationSpecification.add_member(:transport, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTransport, location_name: 'Transport', traits: {"smithy.api#required" => {}}))
    NotificationSpecification.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#required" => {}}))
    NotificationSpecification.add_member(:event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'EventTypes', traits: {"smithy.api#required" => {}}))
    NotificationSpecification.type = Types::NotificationSpecification
    NotificationTransport.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Email', traits: {"smithy.api#enumValue" => "Email"}))
    NotificationTransport.add_member(:sqs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS', traits: {"smithy.api#enumValue" => "SQS"}))
    NotificationTransport.add_member(:sns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    NotifyWorkersFailureCode.add_member(:soft_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SoftFailure', traits: {"smithy.api#enumValue" => "SoftFailure"}))
    NotifyWorkersFailureCode.add_member(:hard_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HardFailure', traits: {"smithy.api#enumValue" => "HardFailure"}))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersFailureCode, location_name: 'NotifyWorkersFailureCode'))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotifyWorkersFailureMessage'))
    NotifyWorkersFailureStatus.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId'))
    NotifyWorkersFailureStatus.type = Types::NotifyWorkersFailureStatus
    NotifyWorkersFailureStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersFailureStatus)
    NotifyWorkersRequest.add_member(:subject, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject', traits: {"smithy.api#required" => {}}))
    NotifyWorkersRequest.add_member(:message_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageText', traits: {"smithy.api#required" => {}}))
    NotifyWorkersRequest.add_member(:worker_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerIdList, location_name: 'WorkerIds', traits: {"smithy.api#required" => {}}))
    NotifyWorkersRequest.type = Types::NotifyWorkersRequest
    NotifyWorkersResponse.add_member(:notify_workers_failure_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersFailureStatusList, location_name: 'NotifyWorkersFailureStatuses'))
    NotifyWorkersResponse.type = Types::NotifyWorkersResponse
    ParameterMapEntry.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    ParameterMapEntry.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values'))
    ParameterMapEntry.type = Types::ParameterMapEntry
    ParameterMapEntryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMapEntry)
    PolicyParameter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    PolicyParameter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values'))
    PolicyParameter.add_member(:map_entries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMapEntryList, location_name: 'MapEntries'))
    PolicyParameter.type = Types::PolicyParameter
    PolicyParameterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyParameter)
    Qualification.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId'))
    Qualification.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId'))
    Qualification.add_member(:grant_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'GrantTime'))
    Qualification.add_member(:integer_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue'))
    Qualification.add_member(:locale_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'LocaleValue'))
    Qualification.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationStatus, location_name: 'Status'))
    Qualification.type = Types::Qualification
    QualificationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Qualification)
    QualificationRequest.add_member(:qualification_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationRequestId'))
    QualificationRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId'))
    QualificationRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId'))
    QualificationRequest.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test'))
    QualificationRequest.add_member(:answer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Answer'))
    QualificationRequest.add_member(:submit_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime'))
    QualificationRequest.type = Types::QualificationRequest
    QualificationRequestList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequest)
    QualificationRequirement.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    QualificationRequirement.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Comparator, location_name: 'Comparator', traits: {"smithy.api#required" => {}}))
    QualificationRequirement.add_member(:integer_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerList, location_name: 'IntegerValues'))
    QualificationRequirement.add_member(:locale_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: 'LocaleValues'))
    QualificationRequirement.add_member(:required_to_preview, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequiredToPreview', traits: {"smithy.api#deprecated" => {}}))
    QualificationRequirement.add_member(:actions_guarded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HITAccessActions, location_name: 'ActionsGuarded'))
    QualificationRequirement.type = Types::QualificationRequirement
    QualificationRequirementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirement)
    QualificationStatus.add_member(:granted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Granted', traits: {"smithy.api#enumValue" => "Granted"}))
    QualificationStatus.add_member(:revoked, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Revoked', traits: {"smithy.api#enumValue" => "Revoked"}))
    QualificationType.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId'))
    QualificationType.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime'))
    QualificationType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    QualificationType.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    QualificationType.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords'))
    QualificationType.add_member(:qualification_type_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: 'QualificationTypeStatus'))
    QualificationType.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test'))
    QualificationType.add_member(:test_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TestDurationInSeconds'))
    QualificationType.add_member(:answer_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnswerKey'))
    QualificationType.add_member(:retry_delay_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetryDelayInSeconds'))
    QualificationType.add_member(:is_requestable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsRequestable'))
    QualificationType.add_member(:auto_granted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoGranted'))
    QualificationType.add_member(:auto_granted_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoGrantedValue'))
    QualificationType.type = Types::QualificationType
    QualificationTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType)
    QualificationTypeStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    QualificationTypeStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "Inactive"}))
    RejectAssignmentRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#required" => {}}))
    RejectAssignmentRequest.add_member(:requester_feedback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterFeedback', traits: {"smithy.api#required" => {}}))
    RejectAssignmentRequest.type = Types::RejectAssignmentRequest
    RejectAssignmentResponse.type = Types::RejectAssignmentResponse
    RejectQualificationRequestRequest.add_member(:qualification_request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationRequestId', traits: {"smithy.api#required" => {}}))
    RejectQualificationRequestRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    RejectQualificationRequestRequest.type = Types::RejectQualificationRequestRequest
    RejectQualificationRequestResponse.type = Types::RejectQualificationRequestResponse
    RequestError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    RequestError.add_member(:turk_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TurkErrorCode, location_name: 'TurkErrorCode'))
    RequestError.type = Types::RequestError
    ReviewActionDetail.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'ActionId'))
    ReviewActionDetail.add_member(:action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionName'))
    ReviewActionDetail.add_member(:target_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'TargetId'))
    ReviewActionDetail.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetType'))
    ReviewActionDetail.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewActionStatus, location_name: 'Status'))
    ReviewActionDetail.add_member(:complete_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompleteTime'))
    ReviewActionDetail.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Result'))
    ReviewActionDetail.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode'))
    ReviewActionDetail.type = Types::ReviewActionDetail
    ReviewActionDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewActionDetail)
    ReviewActionStatus.add_member(:intended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Intended', traits: {"smithy.api#enumValue" => "Intended"}))
    ReviewActionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    ReviewActionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    ReviewActionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    ReviewPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    ReviewPolicy.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyParameterList, location_name: 'Parameters'))
    ReviewPolicy.type = Types::ReviewPolicy
    ReviewPolicyLevel.add_member(:assignment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Assignment', traits: {"smithy.api#enumValue" => "Assignment"}))
    ReviewPolicyLevel.add_member(:hit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIT', traits: {"smithy.api#enumValue" => "HIT"}))
    ReviewPolicyLevelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicyLevel)
    ReviewReport.add_member(:review_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewResultDetailList, location_name: 'ReviewResults'))
    ReviewReport.add_member(:review_actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewActionDetailList, location_name: 'ReviewActions'))
    ReviewReport.type = Types::ReviewReport
    ReviewResultDetail.add_member(:action_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'ActionId'))
    ReviewResultDetail.add_member(:subject_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'SubjectId'))
    ReviewResultDetail.add_member(:subject_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectType'))
    ReviewResultDetail.add_member(:question_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QuestionId'))
    ReviewResultDetail.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key'))
    ReviewResultDetail.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    ReviewResultDetail.type = Types::ReviewResultDetail
    ReviewResultDetailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewResultDetail)
    ReviewableHITStatus.add_member(:reviewable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewable', traits: {"smithy.api#enumValue" => "Reviewable"}))
    ReviewableHITStatus.add_member(:reviewing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewing', traits: {"smithy.api#enumValue" => "Reviewing"}))
    SendBonusRequest.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:bonus_amount, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'BonusAmount', traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:assignment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#required" => {}}))
    SendBonusRequest.add_member(:unique_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken'))
    SendBonusRequest.type = Types::SendBonusRequest
    SendBonusResponse.type = Types::SendBonusResponse
    SendTestEventNotificationRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSpecification, location_name: 'Notification', traits: {"smithy.api#required" => {}}))
    SendTestEventNotificationRequest.add_member(:test_event_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'TestEventType', traits: {"smithy.api#required" => {}}))
    SendTestEventNotificationRequest.type = Types::SendTestEventNotificationRequest
    SendTestEventNotificationResponse.type = Types::SendTestEventNotificationResponse
    ServiceFault.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceFault.add_member(:turk_error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TurkErrorCode, location_name: 'TurkErrorCode'))
    ServiceFault.type = Types::ServiceFault
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UpdateExpirationForHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    UpdateExpirationForHITRequest.add_member(:expire_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpireAt', traits: {"smithy.api#required" => {}}))
    UpdateExpirationForHITRequest.type = Types::UpdateExpirationForHITRequest
    UpdateExpirationForHITResponse.type = Types::UpdateExpirationForHITResponse
    UpdateHITReviewStatusRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    UpdateHITReviewStatusRequest.add_member(:revert, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revert'))
    UpdateHITReviewStatusRequest.type = Types::UpdateHITReviewStatusRequest
    UpdateHITReviewStatusResponse.type = Types::UpdateHITReviewStatusResponse
    UpdateHITTypeOfHITRequest.add_member(:hit_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#required" => {}}))
    UpdateHITTypeOfHITRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#required" => {}}))
    UpdateHITTypeOfHITRequest.type = Types::UpdateHITTypeOfHITRequest
    UpdateHITTypeOfHITResponse.type = Types::UpdateHITTypeOfHITResponse
    UpdateNotificationSettingsRequest.add_member(:hit_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#required" => {}}))
    UpdateNotificationSettingsRequest.add_member(:notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSpecification, location_name: 'Notification'))
    UpdateNotificationSettingsRequest.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Active'))
    UpdateNotificationSettingsRequest.type = Types::UpdateNotificationSettingsRequest
    UpdateNotificationSettingsResponse.type = Types::UpdateNotificationSettingsResponse
    UpdateQualificationTypeRequest.add_member(:qualification_type_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#required" => {}}))
    UpdateQualificationTypeRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UpdateQualificationTypeRequest.add_member(:qualification_type_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: 'QualificationTypeStatus'))
    UpdateQualificationTypeRequest.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test'))
    UpdateQualificationTypeRequest.add_member(:answer_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnswerKey'))
    UpdateQualificationTypeRequest.add_member(:test_duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TestDurationInSeconds'))
    UpdateQualificationTypeRequest.add_member(:retry_delay_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetryDelayInSeconds'))
    UpdateQualificationTypeRequest.add_member(:auto_granted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoGranted'))
    UpdateQualificationTypeRequest.add_member(:auto_granted_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoGrantedValue'))
    UpdateQualificationTypeRequest.type = Types::UpdateQualificationTypeRequest
    UpdateQualificationTypeResponse.add_member(:qualification_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType, location_name: 'QualificationType'))
    UpdateQualificationTypeResponse.type = Types::UpdateQualificationTypeResponse
    WorkerBlock.add_member(:worker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId'))
    WorkerBlock.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason'))
    WorkerBlock.type = Types::WorkerBlock
    WorkerBlockList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerBlock)

    MTurkRequesterServiceV20170117 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mturk#MTurkRequesterServiceV20170117"
      service.name = "MTurkRequesterServiceV20170117"
      service.version = "2017-01-17"
      service.traits = {"aws.api#service" => {"sdkId" => "MTurk", "arnNamespace" => "mturk-requester", "cloudFormationName" => "MTurk", "cloudTrailEventSource" => "mturk.amazonaws.com", "docId" => "mturk-requester-2017-01-17", "endpointPrefix" => "mturk-requester"}, "aws.auth#sigv4" => {"name" => "mturk-requester"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Mechanical Turk", "smithy.api#xmlNamespace" => {"uri" => "http://requester.mturk.com/2017-01-17/"}}
      service.add_operation(:accept_qualification_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#AcceptQualificationRequest"
        operation.name = "AcceptQualificationRequest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptQualificationRequestRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptQualificationRequestResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:approve_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ApproveAssignment"
        operation.name = "ApproveAssignment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproveAssignmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproveAssignmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_qualification_with_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#AssociateQualificationWithWorker"
        operation.name = "AssociateQualificationWithWorker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateQualificationWithWorkerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateQualificationWithWorkerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_additional_assignments_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateAdditionalAssignmentsForHIT"
        operation.name = "CreateAdditionalAssignmentsForHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdditionalAssignmentsForHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdditionalAssignmentsForHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHIT"
        operation.name = "CreateHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hit_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHITType"
        operation.name = "CreateHITType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_hit_with_hit_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHITWithHITType"
        operation.name = "CreateHITWithHITType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITWithHITTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITWithHITTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateQualificationType"
        operation.name = "CreateQualificationType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQualificationTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQualificationTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_worker_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateWorkerBlock"
        operation.name = "CreateWorkerBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerBlockResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteHIT"
        operation.name = "DeleteHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteQualificationType"
        operation.name = "DeleteQualificationType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQualificationTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQualificationTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteWorkerBlock"
        operation.name = "DeleteWorkerBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerBlockResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_qualification_from_worker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DisassociateQualificationFromWorker"
        operation.name = "DisassociateQualificationFromWorker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateQualificationFromWorkerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateQualificationFromWorkerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:get_account_balance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetAccountBalance"
        operation.name = "GetAccountBalance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountBalanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountBalanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetAssignment"
        operation.name = "GetAssignment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssignmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssignmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_file_upload_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetFileUploadURL"
        operation.name = "GetFileUploadURL"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFileUploadURLRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFileUploadURLResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetHIT"
        operation.name = "GetHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_qualification_score, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetQualificationScore"
        operation.name = "GetQualificationScore"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationScoreRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationScoreResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetQualificationType"
        operation.name = "GetQualificationType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_assignments_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListAssignmentsForHIT"
        operation.name = "ListAssignmentsForHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssignmentsForHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssignmentsForHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssignmentsForHIT.new
      end)
      service.add_operation(:list_bonus_payments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListBonusPayments"
        operation.name = "ListBonusPayments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBonusPaymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBonusPaymentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBonusPayments.new
      end)
      service.add_operation(:list_hi_ts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListHITs"
        operation.name = "ListHITs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListHITs.new
      end)
      service.add_operation(:list_hi_ts_for_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListHITsForQualificationType"
        operation.name = "ListHITsForQualificationType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsForQualificationTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsForQualificationTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListHITsForQualificationType.new
      end)
      service.add_operation(:list_qualification_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListQualificationRequests"
        operation.name = "ListQualificationRequests"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationRequestsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationRequestsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQualificationRequests.new
      end)
      service.add_operation(:list_qualification_types, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListQualificationTypes"
        operation.name = "ListQualificationTypes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationTypesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationTypesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQualificationTypes.new
      end)
      service.add_operation(:list_review_policy_results_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListReviewPolicyResultsForHIT"
        operation.name = "ListReviewPolicyResultsForHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewPolicyResultsForHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewPolicyResultsForHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListReviewPolicyResultsForHIT.new
      end)
      service.add_operation(:list_reviewable_hi_ts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListReviewableHITs"
        operation.name = "ListReviewableHITs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewableHITsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewableHITsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListReviewableHITs.new
      end)
      service.add_operation(:list_worker_blocks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListWorkerBlocks"
        operation.name = "ListWorkerBlocks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkerBlocksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkerBlocksResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWorkerBlocks.new
      end)
      service.add_operation(:list_workers_with_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListWorkersWithQualificationType"
        operation.name = "ListWorkersWithQualificationType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkersWithQualificationTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkersWithQualificationTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWorkersWithQualificationType.new
      end)
      service.add_operation(:notify_workers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#NotifyWorkers"
        operation.name = "NotifyWorkers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:reject_assignment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#RejectAssignment"
        operation.name = "RejectAssignment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAssignmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAssignmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reject_qualification_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#RejectQualificationRequest"
        operation.name = "RejectQualificationRequest"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectQualificationRequestRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RejectQualificationRequestResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:send_bonus, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#SendBonus"
        operation.name = "SendBonus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendBonusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendBonusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:send_test_event_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#SendTestEventNotification"
        operation.name = "SendTestEventNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendTestEventNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendTestEventNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:update_expiration_for_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateExpirationForHIT"
        operation.name = "UpdateExpirationForHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExpirationForHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExpirationForHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hit_review_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateHITReviewStatus"
        operation.name = "UpdateHITReviewStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITReviewStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITReviewStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hit_type_of_hit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateHITTypeOfHIT"
        operation.name = "UpdateHITTypeOfHIT"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITTypeOfHITRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITTypeOfHITResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notification_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateNotificationSettings"
        operation.name = "UpdateNotificationSettings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationSettingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationSettingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_qualification_type, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateQualificationType"
        operation.name = "UpdateQualificationType"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQualificationTypeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQualificationTypeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
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

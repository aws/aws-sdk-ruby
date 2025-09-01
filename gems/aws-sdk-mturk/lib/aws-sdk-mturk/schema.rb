# frozen_string_literal: true

# This is generated code!

module Aws::MTurk
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptQualificationRequestRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AcceptQualificationRequestRequest', name: 'AcceptQualificationRequestRequest')
    AcceptQualificationRequestResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AcceptQualificationRequestResponse', name: 'AcceptQualificationRequestResponse')
    ApproveAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ApproveAssignmentRequest', name: 'ApproveAssignmentRequest')
    ApproveAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ApproveAssignmentResponse', name: 'ApproveAssignmentResponse')
    Assignment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#Assignment', name: 'Assignment')
    AssignmentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#AssignmentList', name: 'AssignmentList')
    AssignmentStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#AssignmentStatus', name: 'AssignmentStatus')
    AssignmentStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#AssignmentStatusList', name: 'AssignmentStatusList')
    AssociateQualificationWithWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AssociateQualificationWithWorkerRequest', name: 'AssociateQualificationWithWorkerRequest')
    AssociateQualificationWithWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#AssociateQualificationWithWorkerResponse', name: 'AssociateQualificationWithWorkerResponse')
    BonusPayment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#BonusPayment', name: 'BonusPayment')
    BonusPaymentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#BonusPaymentList', name: 'BonusPaymentList')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mturk#Boolean', name: 'Boolean')
    Comparator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#Comparator', name: 'Comparator')
    CountryParameters = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#CountryParameters', name: 'CountryParameters', traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    CreateAdditionalAssignmentsForHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateAdditionalAssignmentsForHITRequest', name: 'CreateAdditionalAssignmentsForHITRequest')
    CreateAdditionalAssignmentsForHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateAdditionalAssignmentsForHITResponse', name: 'CreateAdditionalAssignmentsForHITResponse')
    CreateHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITRequest', name: 'CreateHITRequest')
    CreateHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITResponse', name: 'CreateHITResponse')
    CreateHITTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITTypeRequest', name: 'CreateHITTypeRequest')
    CreateHITTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITTypeResponse', name: 'CreateHITTypeResponse')
    CreateHITWithHITTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITWithHITTypeRequest', name: 'CreateHITWithHITTypeRequest')
    CreateHITWithHITTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateHITWithHITTypeResponse', name: 'CreateHITWithHITTypeResponse')
    CreateQualificationTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateQualificationTypeRequest', name: 'CreateQualificationTypeRequest')
    CreateQualificationTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateQualificationTypeResponse', name: 'CreateQualificationTypeResponse')
    CreateWorkerBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateWorkerBlockRequest', name: 'CreateWorkerBlockRequest')
    CreateWorkerBlockResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#CreateWorkerBlockResponse', name: 'CreateWorkerBlockResponse')
    CurrencyAmount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#CurrencyAmount', name: 'CurrencyAmount', traits: {"smithy.api#pattern" => "^[0-9]+(\\.)?[0-9]{0,2}$"})
    CustomerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#CustomerId', name: 'CustomerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^A[A-Z0-9]+$"})
    CustomerIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#CustomerIdList', name: 'CustomerIdList')
    DeleteHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteHITRequest', name: 'DeleteHITRequest')
    DeleteHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteHITResponse', name: 'DeleteHITResponse')
    DeleteQualificationTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteQualificationTypeRequest', name: 'DeleteQualificationTypeRequest')
    DeleteQualificationTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteQualificationTypeResponse', name: 'DeleteQualificationTypeResponse')
    DeleteWorkerBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteWorkerBlockRequest', name: 'DeleteWorkerBlockRequest')
    DeleteWorkerBlockResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DeleteWorkerBlockResponse', name: 'DeleteWorkerBlockResponse')
    DisassociateQualificationFromWorkerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DisassociateQualificationFromWorkerRequest', name: 'DisassociateQualificationFromWorkerRequest')
    DisassociateQualificationFromWorkerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#DisassociateQualificationFromWorkerResponse', name: 'DisassociateQualificationFromWorkerResponse')
    EntityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#EntityId', name: 'EntityId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z0-9]+$"})
    EventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#EventType', name: 'EventType')
    EventTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#EventTypeList', name: 'EventTypeList')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#ExceptionMessage', name: 'ExceptionMessage')
    GetAccountBalanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAccountBalanceRequest', name: 'GetAccountBalanceRequest')
    GetAccountBalanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAccountBalanceResponse', name: 'GetAccountBalanceResponse')
    GetAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAssignmentRequest', name: 'GetAssignmentRequest')
    GetAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetAssignmentResponse', name: 'GetAssignmentResponse')
    GetFileUploadURLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetFileUploadURLRequest', name: 'GetFileUploadURLRequest')
    GetFileUploadURLResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetFileUploadURLResponse', name: 'GetFileUploadURLResponse')
    GetHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetHITRequest', name: 'GetHITRequest')
    GetHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetHITResponse', name: 'GetHITResponse')
    GetQualificationScoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationScoreRequest', name: 'GetQualificationScoreRequest')
    GetQualificationScoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationScoreResponse', name: 'GetQualificationScoreResponse')
    GetQualificationTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationTypeRequest', name: 'GetQualificationTypeRequest')
    GetQualificationTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#GetQualificationTypeResponse', name: 'GetQualificationTypeResponse')
    HIT = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#HIT', name: 'HIT')
    HITAccessActions = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#HITAccessActions', name: 'HITAccessActions')
    HITLayoutParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#HITLayoutParameter', name: 'HITLayoutParameter')
    HITLayoutParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#HITLayoutParameterList', name: 'HITLayoutParameterList')
    HITList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#HITList', name: 'HITList')
    HITReviewStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#HITReviewStatus', name: 'HITReviewStatus')
    HITStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#HITStatus', name: 'HITStatus')
    IdempotencyToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#IdempotencyToken', name: 'IdempotencyToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mturk#Integer', name: 'Integer')
    IntegerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#IntegerList', name: 'IntegerList')
    ListAssignmentsForHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListAssignmentsForHITRequest', name: 'ListAssignmentsForHITRequest')
    ListAssignmentsForHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListAssignmentsForHITResponse', name: 'ListAssignmentsForHITResponse')
    ListBonusPaymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListBonusPaymentsRequest', name: 'ListBonusPaymentsRequest')
    ListBonusPaymentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListBonusPaymentsResponse', name: 'ListBonusPaymentsResponse')
    ListHITsForQualificationTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsForQualificationTypeRequest', name: 'ListHITsForQualificationTypeRequest')
    ListHITsForQualificationTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsForQualificationTypeResponse', name: 'ListHITsForQualificationTypeResponse')
    ListHITsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsRequest', name: 'ListHITsRequest')
    ListHITsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListHITsResponse', name: 'ListHITsResponse')
    ListQualificationRequestsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationRequestsRequest', name: 'ListQualificationRequestsRequest')
    ListQualificationRequestsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationRequestsResponse', name: 'ListQualificationRequestsResponse')
    ListQualificationTypesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationTypesRequest', name: 'ListQualificationTypesRequest')
    ListQualificationTypesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListQualificationTypesResponse', name: 'ListQualificationTypesResponse')
    ListReviewPolicyResultsForHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewPolicyResultsForHITRequest', name: 'ListReviewPolicyResultsForHITRequest')
    ListReviewPolicyResultsForHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewPolicyResultsForHITResponse', name: 'ListReviewPolicyResultsForHITResponse')
    ListReviewableHITsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewableHITsRequest', name: 'ListReviewableHITsRequest')
    ListReviewableHITsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListReviewableHITsResponse', name: 'ListReviewableHITsResponse')
    ListWorkerBlocksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkerBlocksRequest', name: 'ListWorkerBlocksRequest')
    ListWorkerBlocksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkerBlocksResponse', name: 'ListWorkerBlocksResponse')
    ListWorkersWithQualificationTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkersWithQualificationTypeRequest', name: 'ListWorkersWithQualificationTypeRequest')
    ListWorkersWithQualificationTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ListWorkersWithQualificationTypeResponse', name: 'ListWorkersWithQualificationTypeResponse')
    Locale = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#Locale', name: 'Locale')
    LocaleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#LocaleList', name: 'LocaleList')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mturk#Long', name: 'Long')
    NotificationSpecification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotificationSpecification', name: 'NotificationSpecification')
    NotificationTransport = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#NotificationTransport', name: 'NotificationTransport')
    NotifyWorkersFailureCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#NotifyWorkersFailureCode', name: 'NotifyWorkersFailureCode')
    NotifyWorkersFailureStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotifyWorkersFailureStatus', name: 'NotifyWorkersFailureStatus')
    NotifyWorkersFailureStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#NotifyWorkersFailureStatusList', name: 'NotifyWorkersFailureStatusList')
    NotifyWorkersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotifyWorkersRequest', name: 'NotifyWorkersRequest')
    NotifyWorkersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#NotifyWorkersResponse', name: 'NotifyWorkersResponse')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ParameterMapEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ParameterMapEntry', name: 'ParameterMapEntry')
    ParameterMapEntryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ParameterMapEntryList', name: 'ParameterMapEntryList')
    PolicyParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#PolicyParameter', name: 'PolicyParameter')
    PolicyParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#PolicyParameterList', name: 'PolicyParameterList')
    Qualification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#Qualification', name: 'Qualification')
    QualificationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationList', name: 'QualificationList')
    QualificationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#QualificationRequest', name: 'QualificationRequest')
    QualificationRequestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationRequestList', name: 'QualificationRequestList')
    QualificationRequirement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#QualificationRequirement', name: 'QualificationRequirement')
    QualificationRequirementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationRequirementList', name: 'QualificationRequirementList')
    QualificationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#QualificationStatus', name: 'QualificationStatus')
    QualificationType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#QualificationType', name: 'QualificationType')
    QualificationTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#QualificationTypeList', name: 'QualificationTypeList')
    QualificationTypeStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#QualificationTypeStatus', name: 'QualificationTypeStatus')
    RejectAssignmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectAssignmentRequest', name: 'RejectAssignmentRequest')
    RejectAssignmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectAssignmentResponse', name: 'RejectAssignmentResponse')
    RejectQualificationRequestRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectQualificationRequestRequest', name: 'RejectQualificationRequestRequest')
    RejectQualificationRequestResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RejectQualificationRequestResponse', name: 'RejectQualificationRequestResponse')
    RequestError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#RequestError', name: 'RequestError', traits: {"aws.protocols#awsQueryError" => {"code" => "RequestError", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResultSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mturk#ResultSize', name: 'ResultSize', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ReviewActionDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewActionDetail', name: 'ReviewActionDetail')
    ReviewActionDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ReviewActionDetailList', name: 'ReviewActionDetailList')
    ReviewActionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#ReviewActionStatus', name: 'ReviewActionStatus')
    ReviewPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewPolicy', name: 'ReviewPolicy')
    ReviewPolicyLevel = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#ReviewPolicyLevel', name: 'ReviewPolicyLevel')
    ReviewPolicyLevelList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ReviewPolicyLevelList', name: 'ReviewPolicyLevelList')
    ReviewReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewReport', name: 'ReviewReport')
    ReviewResultDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ReviewResultDetail', name: 'ReviewResultDetail')
    ReviewResultDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#ReviewResultDetailList', name: 'ReviewResultDetailList')
    ReviewableHITStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mturk#ReviewableHITStatus', name: 'ReviewableHITStatus')
    SendBonusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendBonusRequest', name: 'SendBonusRequest')
    SendBonusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendBonusResponse', name: 'SendBonusResponse')
    SendTestEventNotificationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendTestEventNotificationRequest', name: 'SendTestEventNotificationRequest')
    SendTestEventNotificationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#SendTestEventNotificationResponse', name: 'SendTestEventNotificationResponse')
    ServiceFault = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#ServiceFault', name: 'ServiceFault', traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceFault", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#StringList', name: 'StringList')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mturk#Timestamp', name: 'Timestamp')
    TurkErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mturk#TurkErrorCode', name: 'TurkErrorCode')
    UpdateExpirationForHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateExpirationForHITRequest', name: 'UpdateExpirationForHITRequest')
    UpdateExpirationForHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateExpirationForHITResponse', name: 'UpdateExpirationForHITResponse')
    UpdateHITReviewStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITReviewStatusRequest', name: 'UpdateHITReviewStatusRequest')
    UpdateHITReviewStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITReviewStatusResponse', name: 'UpdateHITReviewStatusResponse')
    UpdateHITTypeOfHITRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITTypeOfHITRequest', name: 'UpdateHITTypeOfHITRequest')
    UpdateHITTypeOfHITResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateHITTypeOfHITResponse', name: 'UpdateHITTypeOfHITResponse')
    UpdateNotificationSettingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateNotificationSettingsRequest', name: 'UpdateNotificationSettingsRequest')
    UpdateNotificationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateNotificationSettingsResponse', name: 'UpdateNotificationSettingsResponse')
    UpdateQualificationTypeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateQualificationTypeRequest', name: 'UpdateQualificationTypeRequest')
    UpdateQualificationTypeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#UpdateQualificationTypeResponse', name: 'UpdateQualificationTypeResponse')
    WorkerBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mturk#WorkerBlock', name: 'WorkerBlock')
    WorkerBlockList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mturk#WorkerBlockList', name: 'WorkerBlockList')

    AcceptQualificationRequestRequest.add_member(:qualification_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationRequestId', traits: {"smithy.api#documentation" => "<p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>", "smithy.api#required" => {}}))
    AcceptQualificationRequestRequest.add_member(:integer_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue', traits: {"smithy.api#documentation" => "<p>\n            The value of the Qualification. You can omit this value if you are using the\n            presence or absence of the Qualification as the basis for a HIT requirement.\n        </p>"}))
    AcceptQualificationRequestRequest.type = Types::AcceptQualificationRequestRequest
    AcceptQualificationRequestResponse.type = Types::AcceptQualificationRequestResponse
    ApproveAssignmentRequest.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the assignment. The assignment must correspond to a HIT created by the Requester.\n        </p>", "smithy.api#required" => {}}))
    ApproveAssignmentRequest.add_member(:requester_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterFeedback', traits: {"smithy.api#documentation" => "<p>\n            A message for the Worker, which the Worker can see in the Status section of the web site.\n        </p>"}))
    ApproveAssignmentRequest.add_member(:override_rejection, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'OverrideRejection', traits: {"smithy.api#documentation" => "<p>\n            A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>.\n        </p>"}))
    ApproveAssignmentRequest.type = Types::ApproveAssignmentRequest
    ApproveAssignmentResponse.type = Types::ApproveAssignmentResponse
    Assignment.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p> A unique identifier for the assignment.</p>"}))
    Assignment.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p> The ID of the Worker who accepted the HIT.</p>"}))
    Assignment.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p> The ID of the HIT.</p>"}))
    Assignment.add_member(:assignment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: 'AssignmentStatus', traits: {"smithy.api#documentation" => "<p> The status of the assignment.</p>"}))
    Assignment.add_member(:auto_approval_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AutoApprovalTime', traits: {"smithy.api#documentation" => "<p> If results have been submitted, AutoApprovalTime is the date\n            and time the results of the assignment results are considered\n            Approved automatically if they have not already been explicitly\n            approved or rejected by the Requester. This value is derived from the\n            auto-approval delay specified by the Requester in the HIT. This value\n            is omitted from the assignment if the Worker has not yet submitted\n            results.</p>"}))
    Assignment.add_member(:accept_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptTime', traits: {"smithy.api#documentation" => "<p> The date and time the Worker accepted the assignment.</p>"}))
    Assignment.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p> If the Worker has submitted results, SubmitTime is the date\n            and time the assignment was submitted. This value is omitted from the\n            assignment if the Worker has not yet submitted results.</p>"}))
    Assignment.add_member(:approval_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApprovalTime', traits: {"smithy.api#documentation" => "<p> If the Worker has submitted results and the Requester has\n            approved the results, ApprovalTime is the date and time the Requester\n            approved the results. This value is omitted from the assignment if\n            the Requester has not yet approved the results.</p>"}))
    Assignment.add_member(:rejection_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RejectionTime', traits: {"smithy.api#documentation" => "<p> If the Worker has submitted results and the Requester has\n            rejected the results, RejectionTime is the date and time the\n            Requester rejected the results.</p>"}))
    Assignment.add_member(:deadline, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Deadline', traits: {"smithy.api#documentation" => "<p> The date and time of the deadline for the assignment. This\n            value is derived from the deadline specification for the HIT and the\n            date and time the Worker accepted the HIT.</p>"}))
    Assignment.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Answer', traits: {"smithy.api#documentation" => "<p> The Worker's answers submitted for the HIT contained in a\n            QuestionFormAnswers document, if the Worker provides an answer. If\n            the Worker does not provide any answers, Answer may contain a\n            QuestionFormAnswers document, or Answer may be empty.</p>"}))
    Assignment.add_member(:requester_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterFeedback', traits: {"smithy.api#documentation" => "<p> The feedback string included with the call to the\n            ApproveAssignment operation or the RejectAssignment operation, if the\n            Requester approved or rejected the assignment and specified feedback.</p>"}))
    Assignment.type = Types::Assignment
    AssignmentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Assignment)
    AssignmentStatus.add_member(:submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Submitted', traits: {"smithy.api#enumValue" => "Submitted"}))
    AssignmentStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Approved', traits: {"smithy.api#enumValue" => "Approved"}))
    AssignmentStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Rejected', traits: {"smithy.api#enumValue" => "Rejected"}))
    AssignmentStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentStatus)
    AssociateQualificationWithWorkerRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the Qualification type to use for the assigned Qualification.</p>", "smithy.api#required" => {}}))
    AssociateQualificationWithWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the Worker to whom the Qualification is being assigned.\n            Worker IDs are included with submitted HIT assignments and Qualification requests.\n        </p>", "smithy.api#required" => {}}))
    AssociateQualificationWithWorkerRequest.add_member(:integer_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue', traits: {"smithy.api#documentation" => "<p>The value of the Qualification to assign.</p>"}))
    AssociateQualificationWithWorkerRequest.add_member(:send_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendNotification', traits: {"smithy.api#documentation" => "<p>\n            Specifies whether to send a notification email message to the Worker\n            saying that the qualification was assigned to the Worker.\n            Note: this is true by default.\n        </p>"}))
    AssociateQualificationWithWorkerRequest.type = Types::AssociateQualificationWithWorkerRequest
    AssociateQualificationWithWorkerResponse.type = Types::AssociateQualificationWithWorkerResponse
    BonusPayment.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>The ID of the Worker to whom the bonus was paid.</p>"}))
    BonusPayment.add_member(:bonus_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'BonusAmount'))
    BonusPayment.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>The ID of the assignment associated with this bonus payment.</p>"}))
    BonusPayment.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>The Reason text given when the bonus was granted, if any.</p>"}))
    BonusPayment.add_member(:grant_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'GrantTime', traits: {"smithy.api#documentation" => "<p>The date and time of when the bonus was granted.</p>"}))
    BonusPayment.type = Types::BonusPayment
    BonusPaymentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BonusPayment)
    Comparator.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThan', traits: {"smithy.api#enumValue" => "LessThan"}))
    Comparator.add_member(:less_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LessThanOrEqualTo', traits: {"smithy.api#enumValue" => "LessThanOrEqualTo"}))
    Comparator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThan', traits: {"smithy.api#enumValue" => "GreaterThan"}))
    Comparator.add_member(:greater_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GreaterThanOrEqualTo', traits: {"smithy.api#enumValue" => "GreaterThanOrEqualTo"}))
    Comparator.add_member(:equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EqualTo', traits: {"smithy.api#enumValue" => "EqualTo"}))
    Comparator.add_member(:not_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotEqualTo', traits: {"smithy.api#enumValue" => "NotEqualTo"}))
    Comparator.add_member(:exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Exists', traits: {"smithy.api#enumValue" => "Exists"}))
    Comparator.add_member(:does_not_exist, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DoesNotExist', traits: {"smithy.api#enumValue" => "DoesNotExist"}))
    Comparator.add_member(:in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'In', traits: {"smithy.api#enumValue" => "In"}))
    Comparator.add_member(:not_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotIn', traits: {"smithy.api#enumValue" => "NotIn"}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The ID of the HIT to extend.</p>", "smithy.api#required" => {}}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:number_of_additional_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAdditionalAssignments', traits: {"smithy.api#documentation" => "<p>The number of additional assignments to request for this HIT.</p>", "smithy.api#required" => {}}))
    CreateAdditionalAssignmentsForHITRequest.add_member(:unique_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken', traits: {"smithy.api#documentation" => "<p>\n            A unique identifier for this request, which allows you to retry the call on error\n            without extending the HIT multiple times.\n            This is useful in cases such as network timeouts where it is unclear whether or not\n            the call succeeded on the server. If the extend HIT already exists in the system\n            from a previous call using the same <code>UniqueRequestToken</code>,\n            subsequent calls will return an error with a message containing the request ID.\n        </p>"}))
    CreateAdditionalAssignmentsForHITRequest.type = Types::CreateAdditionalAssignmentsForHITRequest
    CreateAdditionalAssignmentsForHITResponse.type = Types::CreateAdditionalAssignmentsForHITResponse
    CreateHITRequest.add_member(:max_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxAssignments', traits: {"smithy.api#documentation" => "<p>\n            The number of times the HIT can be accepted and completed before the HIT becomes unavailable.\n        </p>"}))
    CreateHITRequest.add_member(:auto_approval_delay_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AutoApprovalDelayInSeconds', traits: {"smithy.api#documentation" => "<p>\n            The number of seconds after an assignment for the HIT has been submitted,\n            after which the assignment is considered Approved automatically\n            unless the Requester explicitly rejects it.\n        </p>"}))
    CreateHITRequest.add_member(:lifetime_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LifetimeInSeconds', traits: {"smithy.api#documentation" => "<p>\n            An amount of time, in seconds, after which the HIT is no longer available for users to accept.\n            After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,\n            even if not all of the assignments for the HIT have been accepted.\n        </p>", "smithy.api#required" => {}}))
    CreateHITRequest.add_member(:assignment_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AssignmentDurationInSeconds', traits: {"smithy.api#documentation" => "<p>\n            The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.\n            If a Worker does not complete the assignment within the specified duration,\n            the assignment is considered abandoned. If the HIT is still active\n            (that is, its lifetime has not elapsed), the assignment becomes available\n            for other users to find and accept.\n        </p>", "smithy.api#required" => {}}))
    CreateHITRequest.add_member(:reward, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'Reward', traits: {"smithy.api#documentation" => "<p>\n            The amount of money the Requester will pay a Worker for successfully completing the HIT.\n        </p>", "smithy.api#required" => {}}))
    CreateHITRequest.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>\n            The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.\n            On the Amazon Mechanical Turk web site, the HIT title appears in search results,\n            and everywhere the HIT is mentioned.\n        </p>", "smithy.api#required" => {}}))
    CreateHITRequest.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p>\n            One or more words or phrases that describe the HIT, separated by commas.\n            These words are used in searches to find HITs.\n        </p>"}))
    CreateHITRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n            A general description of the HIT. A description includes detailed information about the kind of task\n            the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded\n            view of search results, and in the HIT and assignment screens. A good description gives the user enough\n            information to evaluate the HIT before accepting it.\n        </p>", "smithy.api#required" => {}}))
    CreateHITRequest.add_member(:question, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Question', traits: {"smithy.api#documentation" => "<p>\n            The data the person completing the HIT uses to produce the results.\n        </p>\n        <p>\n            Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,\n            or an HTMLQuestion data structure. The XML question data must not be larger than\n            64 kilobytes (65,535 bytes) in size, including whitespace.\n        </p>\n        <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>"}))
    CreateHITRequest.add_member(:requester_annotation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterAnnotation', traits: {"smithy.api#documentation" => "<p>\n            An arbitrary data field.\n            The RequesterAnnotation parameter lets your application attach arbitrary data\n            to the HIT for tracking purposes.\n            For example, this parameter could be an identifier internal to the Requester's application\n            that corresponds with the HIT.\n        </p>\n        <p>\n            The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.\n            It is not shown to the Worker, or any other Requester.\n        </p>\n        <p>\n            The RequesterAnnotation parameter may be different for each HIT you submit.\n            It does not affect how your HITs are grouped.\n        </p>"}))
    CreateHITRequest.add_member(:qualification_requirements, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: 'QualificationRequirements', traits: {"smithy.api#documentation" => "<p>\n            Conditions that a Worker's Qualifications must meet in order\n            to accept the HIT. A HIT can have between zero and ten\n            Qualification requirements. All requirements must be met in\n            order for a Worker to accept the HIT. Additionally, other\n            actions can be restricted using the <code>ActionsGuarded</code>\n            field on each <code>QualificationRequirement</code> structure.\n        </p>"}))
    CreateHITRequest.add_member(:unique_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken', traits: {"smithy.api#documentation" => "<p>\n            A unique identifier for this request which allows you to retry the call\n            on error without creating duplicate HITs.\n            This is useful in cases such as network timeouts where it is unclear whether or not\n            the call succeeded on the server.\n            If the HIT already exists in the system from a previous call using the same UniqueRequestToken,\n            subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error\n            with a message containing the HITId.\n        </p>\n        <note>\n            <p>\n                Note: It is your responsibility to ensure uniqueness of the token.\n                The unique token expires after 24 hours. Subsequent calls using the same\n                UniqueRequestToken made after the 24 hour limit could create duplicate HITs.\n            </p>\n        </note>"}))
    CreateHITRequest.add_member(:assignment_review_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'AssignmentReviewPolicy', traits: {"smithy.api#documentation" => "<p>\n            The Assignment-level Review Policy applies to the assignments under the HIT.\n            You can specify for Mechanical Turk to take various actions based on the policy.\n        </p>"}))
    CreateHITRequest.add_member(:hit_review_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'HITReviewPolicy', traits: {"smithy.api#documentation" => "<p>\n            The HIT-level Review Policy applies to the HIT.\n            You can specify for Mechanical Turk to take various actions based on the policy.\n        </p>"}))
    CreateHITRequest.add_member(:hit_layout_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITLayoutId', traits: {"smithy.api#documentation" => "<p>\n            The HITLayoutId allows you to use a pre-existing HIT design with placeholder values\n            and create an additional HIT by providing those values as HITLayoutParameters.\n        </p>\n        <p>\n            Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.\n        </p>"}))
    CreateHITRequest.add_member(:hit_layout_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HITLayoutParameterList, location_name: 'HITLayoutParameters', traits: {"smithy.api#documentation" => "<p>\n            If the HITLayoutId is provided, any placeholder values must be filled in with values\n            using the HITLayoutParameter structure. For more information, see HITLayout.\n        </p>"}))
    CreateHITRequest.type = Types::CreateHITRequest
    CreateHITResponse.add_member(:hit, Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT', traits: {"smithy.api#documentation" => "<p> Contains the newly created HIT data. For a description of\n            the HIT data structure as it appears in responses, see the HIT Data\n            Structure documentation.\n        </p>"}))
    CreateHITResponse.type = Types::CreateHITResponse
    CreateHITTypeRequest.add_member(:auto_approval_delay_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AutoApprovalDelayInSeconds', traits: {"smithy.api#documentation" => "<p>\n            The number of seconds after an assignment for the HIT has been submitted,\n            after which the assignment is considered Approved automatically\n            unless the Requester explicitly rejects it.\n        </p>"}))
    CreateHITTypeRequest.add_member(:assignment_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AssignmentDurationInSeconds', traits: {"smithy.api#documentation" => "<p>\n            The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.\n            If a Worker does not complete the assignment within the specified duration,\n            the assignment is considered abandoned. If the HIT is still active\n            (that is, its lifetime has not elapsed), the assignment becomes available\n            for other users to find and accept.\n        </p>", "smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:reward, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'Reward', traits: {"smithy.api#documentation" => "<p>\n            The amount of money the Requester will pay a Worker for successfully completing the HIT.\n        </p>", "smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p>\n            The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.\n            On the Amazon Mechanical Turk web site, the HIT title appears in search results,\n            and everywhere the HIT is mentioned.\n        </p>", "smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p>\n            One or more words or phrases that describe the HIT, separated by commas.\n            These words are used in searches to find HITs.\n        </p>"}))
    CreateHITTypeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n            A general description of the HIT. A description includes detailed information about the kind of task\n            the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded\n            view of search results, and in the HIT and assignment screens. A good description gives the user enough\n            information to evaluate the HIT before accepting it.\n        </p>", "smithy.api#required" => {}}))
    CreateHITTypeRequest.add_member(:qualification_requirements, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: 'QualificationRequirements', traits: {"smithy.api#documentation" => "<p>\n            Conditions that a Worker's Qualifications must meet in order\n            to accept the HIT. A HIT can have between zero and ten\n            Qualification requirements. All requirements must be met in\n            order for a Worker to accept the HIT. Additionally, other\n            actions can be restricted using the <code>ActionsGuarded</code>\n            field on each <code>QualificationRequirement</code> structure.\n        </p>"}))
    CreateHITTypeRequest.type = Types::CreateHITTypeRequest
    CreateHITTypeResponse.add_member(:hit_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#documentation" => "<p> The ID of the newly registered HIT type.</p>"}))
    CreateHITTypeResponse.type = Types::CreateHITTypeResponse
    CreateHITWithHITTypeRequest.add_member(:hit_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#documentation" => "<p>The HIT type ID you want to create this HIT with.</p>", "smithy.api#required" => {}}))
    CreateHITWithHITTypeRequest.add_member(:max_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxAssignments', traits: {"smithy.api#documentation" => "<p>\n            The number of times the HIT can be accepted and completed before the HIT becomes unavailable.\n        </p>"}))
    CreateHITWithHITTypeRequest.add_member(:lifetime_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'LifetimeInSeconds', traits: {"smithy.api#documentation" => "<p>\n            An amount of time, in seconds, after which the HIT is no longer available for users to accept.\n            After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,\n            even if not all of the assignments for the HIT have been accepted.\n        </p>", "smithy.api#required" => {}}))
    CreateHITWithHITTypeRequest.add_member(:question, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Question', traits: {"smithy.api#documentation" => "<p>\n            The data the person completing the HIT uses to produce the results.\n        </p>\n        <p>\n            Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,\n            or an HTMLQuestion data structure. The XML question data must not be larger than\n            64 kilobytes (65,535 bytes) in size, including whitespace.\n        </p>\n        <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>"}))
    CreateHITWithHITTypeRequest.add_member(:requester_annotation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterAnnotation', traits: {"smithy.api#documentation" => "<p>\n            An arbitrary data field.\n            The RequesterAnnotation parameter lets your application attach arbitrary data\n            to the HIT for tracking purposes.\n            For example, this parameter could be an identifier internal to the Requester's application\n            that corresponds with the HIT.\n        </p>\n        <p>\n            The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.\n            It is not shown to the Worker, or any other Requester.\n        </p>\n        <p>\n            The RequesterAnnotation parameter may be different for each HIT you submit.\n            It does not affect how your HITs are grouped.\n        </p>"}))
    CreateHITWithHITTypeRequest.add_member(:unique_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken', traits: {"smithy.api#documentation" => "<p>\n            A unique identifier for this request which allows you to retry the call\n            on error without creating duplicate HITs.\n            This is useful in cases such as network timeouts where it is unclear whether or not\n            the call succeeded on the server.\n            If the HIT already exists in the system from a previous call using the same UniqueRequestToken,\n            subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error\n            with a message containing the HITId.\n        </p>\n        <note>\n            <p>\n                Note: It is your responsibility to ensure uniqueness of the token.\n                The unique token expires after 24 hours. Subsequent calls using the same\n                UniqueRequestToken made after the 24 hour limit could create duplicate HITs.\n            </p>\n        </note>"}))
    CreateHITWithHITTypeRequest.add_member(:assignment_review_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'AssignmentReviewPolicy', traits: {"smithy.api#documentation" => "<p>\n            The Assignment-level Review Policy applies to the assignments under the HIT.\n            You can specify for Mechanical Turk to take various actions based on the policy.\n        </p>"}))
    CreateHITWithHITTypeRequest.add_member(:hit_review_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'HITReviewPolicy', traits: {"smithy.api#documentation" => "<p>\n            The HIT-level Review Policy applies to the HIT.\n            You can specify for Mechanical Turk to take various actions based on the policy.\n        </p>"}))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITLayoutId', traits: {"smithy.api#documentation" => "<p>\n            The HITLayoutId allows you to use a pre-existing HIT design with placeholder values\n            and create an additional HIT by providing those values as HITLayoutParameters.\n        </p>\n        <p>\n            Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.\n        </p>"}))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: HITLayoutParameterList, location_name: 'HITLayoutParameters', traits: {"smithy.api#documentation" => "<p>\n            If the HITLayoutId is provided, any placeholder values must be filled in with values\n            using the HITLayoutParameter structure. For more information, see HITLayout.\n        </p>"}))
    CreateHITWithHITTypeRequest.type = Types::CreateHITWithHITTypeRequest
    CreateHITWithHITTypeResponse.add_member(:hit, Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT', traits: {"smithy.api#documentation" => "<p> Contains the newly created HIT data. For a description of\n            the HIT data structure as it appears in responses, see the HIT Data\n            Structure documentation.\n        </p>"}))
    CreateHITWithHITTypeResponse.type = Types::CreateHITWithHITTypeResponse
    CreateQualificationTypeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name you give to the Qualification type. The type name\n            is used to represent the Qualification to Workers, and to find the\n            type using a Qualification type search. It must be unique across all\n            of your Qualification types.</p>", "smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p>One or more words or phrases that describe the Qualification\n            type, separated by commas. The keywords of a type make the type\n            easier to find during a search.</p>"}))
    CreateQualificationTypeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A long description for the Qualification type. On the Amazon\n            Mechanical Turk website, the long description is displayed when a\n            Worker examines a Qualification type.</p>", "smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:qualification_type_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: 'QualificationTypeStatus', traits: {"smithy.api#documentation" => "<p>The initial status of the Qualification type.</p>\n        <p>Constraints: Valid values are: Active | Inactive</p>", "smithy.api#required" => {}}))
    CreateQualificationTypeRequest.add_member(:retry_delay_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetryDelayInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds that a Worker must wait after\n            requesting a Qualification of the Qualification type before the\n            worker can retry the Qualification request.</p>\n        <p>Constraints: None. If not specified, retries are disabled and\n            Workers can request a Qualification of this type only once, even if\n            the Worker has not been granted the Qualification. It is not possible\n            to disable retries for a Qualification type after it has been created\n            with retries enabled. If you want to disable retries, you must delete\n            existing retry-enabled Qualification type and then create a new\n            Qualification type with retries disabled.</p>"}))
    CreateQualificationTypeRequest.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test', traits: {"smithy.api#documentation" => "<p>\n            The questions for the Qualification test a Worker must answer\n            correctly to obtain a Qualification of this type. If this parameter\n            is specified,\n            <code>TestDurationInSeconds</code>\n            must also be specified.\n        </p>\n        <p>Constraints: Must not be longer than 65535 bytes. Must be a\n            QuestionForm data structure. This parameter cannot be specified if\n            AutoGranted is true.</p>\n        <p>Constraints: None. If not specified, the Worker may request\n            the Qualification without answering any questions.</p>"}))
    CreateQualificationTypeRequest.add_member(:answer_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnswerKey', traits: {"smithy.api#documentation" => "<p>The answers to the Qualification test specified in the Test\n            parameter, in the form of an AnswerKey data structure.</p>\n        <p>Constraints: Must not be longer than 65535 bytes.</p>\n        <p>Constraints: None. If not specified, you must process\n            Qualification requests manually.</p>"}))
    CreateQualificationTypeRequest.add_member(:test_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TestDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds the Worker has to complete the\n            Qualification test, starting from the time the Worker requests the\n            Qualification.</p>"}))
    CreateQualificationTypeRequest.add_member(:auto_granted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoGranted', traits: {"smithy.api#documentation" => "<p>Specifies whether requests for the Qualification type are\n            granted immediately, without prompting the Worker with a\n            Qualification test.</p>\n        <p>Constraints: If the Test parameter is specified, this\n            parameter cannot be true.</p>"}))
    CreateQualificationTypeRequest.add_member(:auto_granted_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoGrantedValue', traits: {"smithy.api#documentation" => "<p>The Qualification value to use for automatically granted\n            Qualifications. This parameter is used only if the AutoGranted\n            parameter is true.</p>"}))
    CreateQualificationTypeRequest.type = Types::CreateQualificationTypeRequest
    CreateQualificationTypeResponse.add_member(:qualification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType, location_name: 'QualificationType', traits: {"smithy.api#documentation" => "<p>The created Qualification type, returned as a\n            QualificationType data structure.</p>"}))
    CreateQualificationTypeResponse.type = Types::CreateQualificationTypeResponse
    CreateWorkerBlockRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>The ID of the Worker to block.</p>", "smithy.api#required" => {}}))
    CreateWorkerBlockRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>", "smithy.api#required" => {}}))
    CreateWorkerBlockRequest.type = Types::CreateWorkerBlockRequest
    CreateWorkerBlockResponse.type = Types::CreateWorkerBlockResponse
    CustomerIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId)
    DeleteHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The ID of the HIT to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteHITRequest.type = Types::DeleteHITRequest
    DeleteHITResponse.type = Types::DeleteHITResponse
    DeleteQualificationTypeRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the QualificationType to dispose.</p>", "smithy.api#required" => {}}))
    DeleteQualificationTypeRequest.type = Types::DeleteQualificationTypeRequest
    DeleteQualificationTypeResponse.type = Types::DeleteQualificationTypeResponse
    DeleteWorkerBlockRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>The ID of the Worker to unblock.</p>", "smithy.api#required" => {}}))
    DeleteWorkerBlockRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>"}))
    DeleteWorkerBlockRequest.type = Types::DeleteWorkerBlockRequest
    DeleteWorkerBlockResponse.type = Types::DeleteWorkerBlockResponse
    DisassociateQualificationFromWorkerRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>The ID of the Worker who possesses the Qualification to be revoked.</p>", "smithy.api#required" => {}}))
    DisassociateQualificationFromWorkerRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the Qualification type of the Qualification to be revoked.</p>", "smithy.api#required" => {}}))
    DisassociateQualificationFromWorkerRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>"}))
    DisassociateQualificationFromWorkerRequest.type = Types::DisassociateQualificationFromWorkerRequest
    DisassociateQualificationFromWorkerResponse.type = Types::DisassociateQualificationFromWorkerResponse
    EventType.add_member(:assignment_accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentAccepted', traits: {"smithy.api#enumValue" => "AssignmentAccepted"}))
    EventType.add_member(:assignment_abandoned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentAbandoned', traits: {"smithy.api#enumValue" => "AssignmentAbandoned"}))
    EventType.add_member(:assignment_returned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentReturned', traits: {"smithy.api#enumValue" => "AssignmentReturned"}))
    EventType.add_member(:assignment_submitted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentSubmitted', traits: {"smithy.api#enumValue" => "AssignmentSubmitted"}))
    EventType.add_member(:assignment_rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentRejected', traits: {"smithy.api#enumValue" => "AssignmentRejected"}))
    EventType.add_member(:assignment_approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssignmentApproved', traits: {"smithy.api#enumValue" => "AssignmentApproved"}))
    EventType.add_member(:hit_created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITCreated', traits: {"smithy.api#enumValue" => "HITCreated"}))
    EventType.add_member(:hit_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITExpired', traits: {"smithy.api#enumValue" => "HITExpired"}))
    EventType.add_member(:hit_reviewable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITReviewable', traits: {"smithy.api#enumValue" => "HITReviewable"}))
    EventType.add_member(:hit_extended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITExtended', traits: {"smithy.api#enumValue" => "HITExtended"}))
    EventType.add_member(:hit_disposed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HITDisposed', traits: {"smithy.api#enumValue" => "HITDisposed"}))
    EventType.add_member(:ping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ping', traits: {"smithy.api#enumValue" => "Ping"}))
    EventTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    GetAccountBalanceRequest.type = Types::GetAccountBalanceRequest
    GetAccountBalanceResponse.add_member(:available_balance, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'AvailableBalance'))
    GetAccountBalanceResponse.add_member(:on_hold_balance, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'OnHoldBalance'))
    GetAccountBalanceResponse.type = Types::GetAccountBalanceResponse
    GetAssignmentRequest.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>The ID of the Assignment to be retrieved.</p>", "smithy.api#required" => {}}))
    GetAssignmentRequest.type = Types::GetAssignmentRequest
    GetAssignmentResponse.add_member(:assignment, Smithy::Schema::Shapes::ShapeRef.new(shape: Assignment, location_name: 'Assignment', traits: {"smithy.api#documentation" => "<p> The assignment. The response includes one Assignment\n            element.\n        </p>"}))
    GetAssignmentResponse.add_member(:hit, Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT', traits: {"smithy.api#documentation" => "<p> The HIT associated with this assignment. The response\n            includes one HIT element.</p>"}))
    GetAssignmentResponse.type = Types::GetAssignmentResponse
    GetFileUploadURLRequest.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>The ID of the assignment that contains the question with a\n            FileUploadAnswer.</p>", "smithy.api#required" => {}}))
    GetFileUploadURLRequest.add_member(:question_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuestionIdentifier', traits: {"smithy.api#documentation" => "<p>The identifier of the question with a FileUploadAnswer, as\n            specified in the QuestionForm of the HIT.</p>", "smithy.api#required" => {}}))
    GetFileUploadURLRequest.type = Types::GetFileUploadURLRequest
    GetFileUploadURLResponse.add_member(:file_upload_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FileUploadURL', traits: {"smithy.api#documentation" => "<p> A temporary URL for the file that the Worker uploaded for\n            the answer.\n        </p>"}))
    GetFileUploadURLResponse.type = Types::GetFileUploadURLResponse
    GetHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The ID of the HIT to be retrieved.</p>", "smithy.api#required" => {}}))
    GetHITRequest.type = Types::GetHITRequest
    GetHITResponse.add_member(:hit, Smithy::Schema::Shapes::ShapeRef.new(shape: HIT, location_name: 'HIT', traits: {"smithy.api#documentation" => "<p> Contains the requested HIT data.</p>"}))
    GetHITResponse.type = Types::GetHITResponse
    GetQualificationScoreRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the QualificationType.</p>", "smithy.api#required" => {}}))
    GetQualificationScoreRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>The ID of the Worker whose Qualification is being updated.</p>", "smithy.api#required" => {}}))
    GetQualificationScoreRequest.type = Types::GetQualificationScoreRequest
    GetQualificationScoreResponse.add_member(:qualification, Smithy::Schema::Shapes::ShapeRef.new(shape: Qualification, location_name: 'Qualification', traits: {"smithy.api#documentation" => "<p> The Qualification data structure of the Qualification\n            assigned to a user, including the Qualification type and the value\n            (score).\n        </p>"}))
    GetQualificationScoreResponse.type = Types::GetQualificationScoreResponse
    GetQualificationTypeRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the QualificationType.</p>", "smithy.api#required" => {}}))
    GetQualificationTypeRequest.type = Types::GetQualificationTypeRequest
    GetQualificationTypeResponse.add_member(:qualification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType, location_name: 'QualificationType', traits: {"smithy.api#documentation" => "<p> The returned Qualification Type</p>"}))
    GetQualificationTypeResponse.type = Types::GetQualificationTypeResponse
    HIT.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p> A unique identifier for the HIT.</p>"}))
    HIT.add_member(:hit_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the HIT type of this HIT</p>"}))
    HIT.add_member(:hit_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITGroupId', traits: {"smithy.api#documentation" => "<p> The ID of the HIT Group of this HIT.</p>"}))
    HIT.add_member(:hit_layout_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITLayoutId', traits: {"smithy.api#documentation" => "<p> The ID of the HIT Layout of this HIT.</p>"}))
    HIT.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p> The date and time the HIT was created.</p>"}))
    HIT.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Title', traits: {"smithy.api#documentation" => "<p> The title of the HIT.</p>"}))
    HIT.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> A general description of the HIT.</p>"}))
    HIT.add_member(:question, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Question', traits: {"smithy.api#documentation" => "<p> The data the Worker completing the HIT uses produce the\n            results. This is either either a QuestionForm, HTMLQuestion or an\n            ExternalQuestion data structure.</p>"}))
    HIT.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p> One or more words or phrases that describe the HIT,\n            separated by commas. Search terms similar to the keywords of a HIT\n            are more likely to have the HIT in the search results.</p>"}))
    HIT.add_member(:hit_status, Smithy::Schema::Shapes::ShapeRef.new(shape: HITStatus, location_name: 'HITStatus', traits: {"smithy.api#documentation" => "<p>The status of the HIT and its assignments. Valid Values are\n            Assignable | Unassignable | Reviewable | Reviewing | Disposed.\n        </p>"}))
    HIT.add_member(:max_assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxAssignments', traits: {"smithy.api#documentation" => "<p>The number of times the HIT can be accepted and completed\n            before the HIT becomes unavailable.\n        </p>"}))
    HIT.add_member(:reward, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'Reward'))
    HIT.add_member(:auto_approval_delay_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AutoApprovalDelayInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, after the Worker submits an\n            assignment for the HIT that the results are automatically approved by\n            Amazon Mechanical Turk. This is the amount of time the Requester has\n            to reject an assignment submitted by a Worker before the assignment\n            is auto-approved and the Worker is paid.\n        </p>"}))
    HIT.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Expiration', traits: {"smithy.api#documentation" => "<p>The date and time the HIT expires.</p>"}))
    HIT.add_member(:assignment_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'AssignmentDurationInSeconds', traits: {"smithy.api#documentation" => "<p> The length of time, in seconds, that a Worker has to\n            complete the HIT after accepting it.</p>"}))
    HIT.add_member(:requester_annotation, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterAnnotation', traits: {"smithy.api#documentation" => "<p> An arbitrary data field the Requester who created the HIT\n            can use. This field is visible only to the creator of the HIT.</p>"}))
    HIT.add_member(:qualification_requirements, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: 'QualificationRequirements', traits: {"smithy.api#documentation" => "<p>\n            Conditions that a Worker's Qualifications must meet in order\n            to accept the HIT. A HIT can have between zero and ten\n            Qualification requirements. All requirements must be met in\n            order for a Worker to accept the HIT. Additionally, other\n            actions can be restricted using the <code>ActionsGuarded</code>\n            field on each <code>QualificationRequirement</code> structure.\n        </p>"}))
    HIT.add_member(:hit_review_status, Smithy::Schema::Shapes::ShapeRef.new(shape: HITReviewStatus, location_name: 'HITReviewStatus', traits: {"smithy.api#documentation" => "<p> Indicates the review status of the HIT. Valid Values are\n            NotReviewed | MarkedForReview | ReviewedAppropriate |\n            ReviewedInappropriate.</p>"}))
    HIT.add_member(:number_of_assignments_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAssignmentsPending', traits: {"smithy.api#documentation" => "<p> The number of assignments for this HIT that are being\n            previewed or have been accepted by Workers, but have not yet been\n            submitted, returned, or abandoned.</p>"}))
    HIT.add_member(:number_of_assignments_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAssignmentsAvailable', traits: {"smithy.api#documentation" => "<p> The number of assignments for this HIT that are available\n            for Workers to accept.</p>"}))
    HIT.add_member(:number_of_assignments_completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfAssignmentsCompleted', traits: {"smithy.api#documentation" => "<p> The number of assignments for this HIT that have been\n            approved or rejected.</p>"}))
    HIT.type = Types::HIT
    HITAccessActions.add_member(:accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Accept', traits: {"smithy.api#enumValue" => "Accept"}))
    HITAccessActions.add_member(:preview_and_accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PreviewAndAccept', traits: {"smithy.api#enumValue" => "PreviewAndAccept"}))
    HITAccessActions.add_member(:discover_preview_and_accept, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DiscoverPreviewAndAccept', traits: {"smithy.api#enumValue" => "DiscoverPreviewAndAccept"}))
    HITLayoutParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the parameter in the HITLayout.\n        </p>", "smithy.api#required" => {}}))
    HITLayoutParameter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value substituted for the parameter referenced in the\n            HITLayout.\n        </p>", "smithy.api#required" => {}}))
    HITLayoutParameter.type = Types::HITLayoutParameter
    HITLayoutParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HITLayoutParameter)
    HITList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HIT)
    HITReviewStatus.add_member(:not_reviewed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NotReviewed', traits: {"smithy.api#enumValue" => "NotReviewed"}))
    HITReviewStatus.add_member(:marked_for_review, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MarkedForReview', traits: {"smithy.api#enumValue" => "MarkedForReview"}))
    HITReviewStatus.add_member(:reviewed_appropriate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReviewedAppropriate', traits: {"smithy.api#enumValue" => "ReviewedAppropriate"}))
    HITReviewStatus.add_member(:reviewed_inappropriate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReviewedInappropriate', traits: {"smithy.api#enumValue" => "ReviewedInappropriate"}))
    HITStatus.add_member(:assignable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Assignable', traits: {"smithy.api#enumValue" => "Assignable"}))
    HITStatus.add_member(:unassignable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Unassignable', traits: {"smithy.api#enumValue" => "Unassignable"}))
    HITStatus.add_member(:reviewable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewable', traits: {"smithy.api#enumValue" => "Reviewable"}))
    HITStatus.add_member(:reviewing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewing', traits: {"smithy.api#enumValue" => "Reviewing"}))
    HITStatus.add_member(:disposed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Disposed', traits: {"smithy.api#enumValue" => "Disposed"}))
    IntegerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Integer)
    ListAssignmentsForHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The ID of the HIT.</p>", "smithy.api#required" => {}}))
    ListAssignmentsForHITRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token</p>"}))
    ListAssignmentsForHITRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListAssignmentsForHITRequest.add_member(:assignment_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentStatusList, location_name: 'AssignmentStatuses', traits: {"smithy.api#documentation" => "<p>The status of the assignments to return: Submitted | Approved\n            | Rejected</p>"}))
    ListAssignmentsForHITRequest.type = Types::ListAssignmentsForHITRequest
    ListAssignmentsForHITResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAssignmentsForHITResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p> The number of assignments on the page in the filtered\n            results list, equivalent to the number of assignments returned by\n            this call.</p>"}))
    ListAssignmentsForHITResponse.add_member(:assignments, Smithy::Schema::Shapes::ShapeRef.new(shape: AssignmentList, location_name: 'Assignments', traits: {"smithy.api#documentation" => "<p> The collection of Assignment data structures returned by\n            this call.</p>"}))
    ListAssignmentsForHITResponse.type = Types::ListAssignmentsForHITResponse
    ListBonusPaymentsRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The ID of the HIT associated with the bonus payments to\n            retrieve. If not specified, all bonus payments for all assignments\n            for the given HIT are returned. Either the HITId parameter or the\n            AssignmentId parameter must be specified</p>"}))
    ListBonusPaymentsRequest.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>The ID of the assignment associated with the bonus payments\n            to retrieve. If specified, only bonus payments for the given\n            assignment are returned. Either the HITId parameter or the\n            AssignmentId parameter must be specified</p>"}))
    ListBonusPaymentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token</p>"}))
    ListBonusPaymentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListBonusPaymentsRequest.type = Types::ListBonusPaymentsRequest
    ListBonusPaymentsResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p>The number of bonus payments on this page in the filtered\n            results list, equivalent to the number of bonus payments being\n            returned by this call.\n        </p>"}))
    ListBonusPaymentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListBonusPaymentsResponse.add_member(:bonus_payments, Smithy::Schema::Shapes::ShapeRef.new(shape: BonusPaymentList, location_name: 'BonusPayments', traits: {"smithy.api#documentation" => "<p>A successful request to the ListBonusPayments operation\n            returns a list of BonusPayment objects.\n        </p>"}))
    ListBonusPaymentsResponse.type = Types::ListBonusPaymentsResponse
    ListHITsForQualificationTypeRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the Qualification type to use when querying HITs.\n        </p>", "smithy.api#required" => {}}))
    ListHITsForQualificationTypeRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination Token</p>"}))
    ListHITsForQualificationTypeRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n            Limit the number of results returned.\n        </p>"}))
    ListHITsForQualificationTypeRequest.type = Types::ListHITsForQualificationTypeRequest
    ListHITsForQualificationTypeResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHITsForQualificationTypeResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p> The number of HITs on this page in the filtered results\n            list, equivalent to the number of HITs being returned by this call.\t</p>"}))
    ListHITsForQualificationTypeResponse.add_member(:hi_ts, Smithy::Schema::Shapes::ShapeRef.new(shape: HITList, location_name: 'HITs', traits: {"smithy.api#documentation" => "<p> The list of HIT elements returned by the query.</p>"}))
    ListHITsForQualificationTypeResponse.type = Types::ListHITsForQualificationTypeResponse
    ListHITsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token</p>"}))
    ListHITsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListHITsRequest.type = Types::ListHITsRequest
    ListHITsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListHITsResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p>The number of HITs on this page in the filtered results list,\n            equivalent to the number of HITs being returned by this call.</p>"}))
    ListHITsResponse.add_member(:hi_ts, Smithy::Schema::Shapes::ShapeRef.new(shape: HITList, location_name: 'HITs', traits: {"smithy.api#documentation" => "<p> The list of HIT elements returned by the query.</p>"}))
    ListHITsResponse.type = Types::ListHITsResponse
    ListQualificationRequestsRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the QualificationType.</p>"}))
    ListQualificationRequestsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationRequestsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to return in a single call.\n        </p>"}))
    ListQualificationRequestsRequest.type = Types::ListQualificationRequestsRequest
    ListQualificationRequestsResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p>The number of Qualification requests on this page in the filtered results list,\n            equivalent to the number of Qualification requests being returned by this call.</p>"}))
    ListQualificationRequestsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationRequestsResponse.add_member(:qualification_requests, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequestList, location_name: 'QualificationRequests', traits: {"smithy.api#documentation" => "<p>The Qualification request. The response includes one\n            QualificationRequest element\n            for each Qualification request returned\n            by the query.</p>"}))
    ListQualificationRequestsResponse.type = Types::ListQualificationRequestsResponse
    ListQualificationTypesRequest.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Query', traits: {"smithy.api#documentation" => "<p> A text query against all of the searchable attributes of\n            Qualification types.\n        </p>"}))
    ListQualificationTypesRequest.add_member(:must_be_requestable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MustBeRequestable', traits: {"smithy.api#documentation" => "<p>Specifies that only Qualification types that a user can\n            request through the Amazon Mechanical Turk web site, such as by\n            taking a Qualification test, are returned as results of the search.\n            Some Qualification types, such as those assigned automatically by the\n            system, cannot be requested directly by users. If false, all\n            Qualification types, including those managed by the system, are\n            considered. Valid values are True | False.\n        </p>", "smithy.api#required" => {}}))
    ListQualificationTypesRequest.add_member(:must_be_owned_by_caller, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MustBeOwnedByCaller', traits: {"smithy.api#documentation" => "<p> Specifies that only Qualification types that the Requester\n            created are returned. If false, the operation returns all\n            Qualification types.\n        </p>"}))
    ListQualificationTypesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationTypesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of results to return in a single call.\n        </p>"}))
    ListQualificationTypesRequest.type = Types::ListQualificationTypesRequest
    ListQualificationTypesResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p> The number of Qualification types on this page in the\n            filtered results list, equivalent to the number of types this\n            operation returns.\n        </p>"}))
    ListQualificationTypesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListQualificationTypesResponse.add_member(:qualification_types, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeList, location_name: 'QualificationTypes', traits: {"smithy.api#documentation" => "<p> The list of QualificationType elements returned by the\n            query.\n        </p>"}))
    ListQualificationTypesResponse.type = Types::ListQualificationTypesResponse
    ListReviewPolicyResultsForHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the HIT to retrieve review results for.</p>", "smithy.api#required" => {}}))
    ListReviewPolicyResultsForHITRequest.add_member(:policy_levels, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicyLevelList, location_name: 'PolicyLevels', traits: {"smithy.api#documentation" => "<p>\n            The Policy Level(s) to retrieve review results for - HIT or Assignment.\n            If omitted, the default behavior is to retrieve all data for both policy levels.\n            For a list of all the described policies, see Review Policies.\n        </p>"}))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetrieveActions', traits: {"smithy.api#documentation" => "<p>\n            Specify if the operation should retrieve a list of the actions taken executing\n            the Review Policies and their outcomes.\n        </p>"}))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RetrieveResults', traits: {"smithy.api#documentation" => "<p>\n            Specify if the operation should retrieve a list of the results computed by the Review Policies.\n        </p>"}))
    ListReviewPolicyResultsForHITRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token</p>"}))
    ListReviewPolicyResultsForHITRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Limit the number of results returned.</p>"}))
    ListReviewPolicyResultsForHITRequest.type = Types::ListReviewPolicyResultsForHITRequest
    ListReviewPolicyResultsForHITResponse.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The HITId of the HIT for which results have been returned.</p>"}))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'AssignmentReviewPolicy', traits: {"smithy.api#documentation" => "<p> The name of the Assignment-level Review Policy. This\n            contains only the PolicyName element.\n        </p>"}))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: 'HITReviewPolicy', traits: {"smithy.api#documentation" => "<p>The name of the HIT-level Review Policy. This contains only\n            the PolicyName element.</p>"}))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_report, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewReport, location_name: 'AssignmentReviewReport', traits: {"smithy.api#documentation" => "<p> Contains both ReviewResult and ReviewAction elements for an\n            Assignment.\n        </p>"}))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_report, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewReport, location_name: 'HITReviewReport', traits: {"smithy.api#documentation" => "<p>Contains both ReviewResult and ReviewAction elements for a particular HIT.\n        </p>"}))
    ListReviewPolicyResultsForHITResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListReviewPolicyResultsForHITResponse.type = Types::ListReviewPolicyResultsForHITResponse
    ListReviewableHITsRequest.add_member(:hit_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the HIT type of the HITs to consider for the query.\n            If not specified, all HITs for the Reviewer are considered\n        </p>"}))
    ListReviewableHITsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewableHITStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n            Can be either <code>Reviewable</code> or <code>Reviewing</code>.\n            Reviewable is the default value.\n        </p>"}))
    ListReviewableHITsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination Token</p>"}))
    ListReviewableHITsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n            Limit the number of results returned.\n        </p>"}))
    ListReviewableHITsRequest.type = Types::ListReviewableHITsRequest
    ListReviewableHITsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListReviewableHITsResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p> The number of HITs on this page in the filtered results\n            list, equivalent to the number of HITs being returned by this call.\n        </p>"}))
    ListReviewableHITsResponse.add_member(:hi_ts, Smithy::Schema::Shapes::ShapeRef.new(shape: HITList, location_name: 'HITs', traits: {"smithy.api#documentation" => "<p> The list of HIT elements returned by the query.</p>"}))
    ListReviewableHITsResponse.type = Types::ListReviewableHITsResponse
    ListWorkerBlocksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination token</p>"}))
    ListWorkerBlocksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults'))
    ListWorkerBlocksRequest.type = Types::ListWorkerBlocksRequest
    ListWorkerBlocksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkerBlocksResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p> The number of assignments on the page in the filtered\n            results list, equivalent to the number of assignments returned by\n            this call.</p>"}))
    ListWorkerBlocksResponse.add_member(:worker_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerBlockList, location_name: 'WorkerBlocks', traits: {"smithy.api#documentation" => "<p> The list of WorkerBlocks, containing the collection of\n            Worker IDs and reasons for blocking.</p>"}))
    ListWorkerBlocksResponse.type = Types::ListWorkerBlocksResponse
    ListWorkersWithQualificationTypeRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the Qualification type of the Qualifications to\n            return.</p>", "smithy.api#required" => {}}))
    ListWorkersWithQualificationTypeRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n            The status of the Qualifications to return.\n            Can be <code>Granted | Revoked</code>.\n        </p>"}))
    ListWorkersWithQualificationTypeRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Pagination Token</p>"}))
    ListWorkersWithQualificationTypeRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultSize, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>\n            Limit the number of results returned.\n        </p>"}))
    ListWorkersWithQualificationTypeRequest.type = Types::ListWorkersWithQualificationTypeRequest
    ListWorkersWithQualificationTypeResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListWorkersWithQualificationTypeResponse.add_member(:num_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumResults', traits: {"smithy.api#documentation" => "<p> The number of Qualifications on this page in the filtered\n            results list, equivalent to the number of Qualifications being\n            returned by this call.</p>"}))
    ListWorkersWithQualificationTypeResponse.add_member(:qualifications, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationList, location_name: 'Qualifications', traits: {"smithy.api#documentation" => "<p> The list of Qualification elements returned by this call.\n        </p>"}))
    ListWorkersWithQualificationTypeResponse.type = Types::ListWorkersWithQualificationTypeResponse
    Locale.add_member(:country, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryParameters, location_name: 'Country', traits: {"smithy.api#documentation" => "<p> The country of the locale. Must be a valid ISO 3166 country\n            code. For example, the code US refers to the United States of\n            America.\n        </p>", "smithy.api#required" => {}}))
    Locale.add_member(:subdivision, Smithy::Schema::Shapes::ShapeRef.new(shape: CountryParameters, location_name: 'Subdivision', traits: {"smithy.api#documentation" => "<p>The state or subdivision of the locale. A valid ISO 3166-2\n            subdivision code. For example, the code WA refers to the state of\n            Washington.</p>"}))
    Locale.type = Types::Locale
    LocaleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Locale)
    NotificationSpecification.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>\n            The target for notification messages. The Destination’s format is determined by the specified Transport:\n        </p>\n        <ul>\n            <li>\n                <p>When Transport is Email, the Destination is your email address.</p>\n            </li>\n            <li>\n                <p>When Transport is SQS, the Destination is your queue URL.</p>\n            </li>\n            <li>\n                <p>When Transport is SNS, the Destination is the ARN of your topic.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    NotificationSpecification.add_member(:transport, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationTransport, location_name: 'Transport', traits: {"smithy.api#documentation" => "<p> The method Amazon Mechanical Turk uses to send the\n            notification. Valid Values: Email | SQS | SNS.\n        </p>", "smithy.api#required" => {}}))
    NotificationSpecification.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The version of the Notification API to use. Valid value is\n            2006-05-05.</p>", "smithy.api#required" => {}}))
    NotificationSpecification.add_member(:event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypeList, location_name: 'EventTypes', traits: {"smithy.api#documentation" => "<p> The list of events that should cause notifications to be\n            sent. Valid Values: AssignmentAccepted | AssignmentAbandoned |\n            AssignmentReturned | AssignmentSubmitted | AssignmentRejected |\n            AssignmentApproved | HITCreated | HITExtended | HITDisposed |\n            HITReviewable | HITExpired | Ping. The Ping event is only valid for\n            the SendTestEventNotification operation.\n        </p>", "smithy.api#required" => {}}))
    NotificationSpecification.type = Types::NotificationSpecification
    NotificationTransport.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Email', traits: {"smithy.api#enumValue" => "Email"}))
    NotificationTransport.add_member(:sqs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQS', traits: {"smithy.api#enumValue" => "SQS"}))
    NotificationTransport.add_member(:sns, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNS', traits: {"smithy.api#enumValue" => "SNS"}))
    NotifyWorkersFailureCode.add_member(:soft_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SoftFailure', traits: {"smithy.api#enumValue" => "SoftFailure"}))
    NotifyWorkersFailureCode.add_member(:hard_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HardFailure', traits: {"smithy.api#enumValue" => "HardFailure"}))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersFailureCode, location_name: 'NotifyWorkersFailureCode', traits: {"smithy.api#documentation" => "<p> Encoded value for the failure type.\n        </p>"}))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NotifyWorkersFailureMessage', traits: {"smithy.api#documentation" => "<p> A message detailing the reason the Worker could not be\n            notified.\n        </p>"}))
    NotifyWorkersFailureStatus.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p> The ID of the Worker.</p>"}))
    NotifyWorkersFailureStatus.type = Types::NotifyWorkersFailureStatus
    NotifyWorkersFailureStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersFailureStatus)
    NotifyWorkersRequest.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line of the email message to send. Can include up\n            to 200 characters.</p>", "smithy.api#required" => {}}))
    NotifyWorkersRequest.add_member(:message_text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MessageText', traits: {"smithy.api#documentation" => "<p>The text of the email message to send. Can include up to\n            4,096 characters</p>", "smithy.api#required" => {}}))
    NotifyWorkersRequest.add_member(:worker_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerIdList, location_name: 'WorkerIds', traits: {"smithy.api#documentation" => "<p>A list of Worker IDs you wish to notify. You\n            can notify upto\n            100 Workers at a time.</p>", "smithy.api#required" => {}}))
    NotifyWorkersRequest.type = Types::NotifyWorkersRequest
    NotifyWorkersResponse.add_member(:notify_workers_failure_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersFailureStatusList, location_name: 'NotifyWorkersFailureStatuses', traits: {"smithy.api#documentation" => "<p> When MTurk sends notifications to the list of Workers, it\n            returns back any failures it encounters in this list of\n            NotifyWorkersFailureStatus objects.\n        </p>"}))
    NotifyWorkersResponse.type = Types::NotifyWorkersResponse
    ParameterMapEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p> The QuestionID from the HIT that is used to identify which\n            question requires Mechanical Turk to score as part of the\n            ScoreMyKnownAnswers/2011-09-01 Review Policy.\n        </p>"}))
    ParameterMapEntry.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p> The list of answers to the question specified in the\n            MapEntry Key element. The Worker must match all values in order for\n            the answer to be scored correctly.\n        </p>"}))
    ParameterMapEntry.type = Types::ParameterMapEntry
    ParameterMapEntryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMapEntry)
    PolicyParameter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p> Name of the parameter from the list of Review Polices.\n        </p>"}))
    PolicyParameter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p> The list of values of the Parameter</p>"}))
    PolicyParameter.add_member(:map_entries, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterMapEntryList, location_name: 'MapEntries', traits: {"smithy.api#documentation" => "<p> List of ParameterMapEntry objects.\n        </p>"}))
    PolicyParameter.type = Types::PolicyParameter
    PolicyParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyParameter)
    Qualification.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p> The ID of the Qualification type for the Qualification.</p>"}))
    Qualification.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p> The ID of the Worker who possesses the Qualification.\n        </p>"}))
    Qualification.add_member(:grant_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'GrantTime', traits: {"smithy.api#documentation" => "<p> The date and time the Qualification was granted to the\n            Worker. If the Worker's Qualification was revoked, and then\n            re-granted based on a new Qualification request, GrantTime is the\n            date and time of the last call to the AcceptQualificationRequest\n            operation.</p>"}))
    Qualification.add_member(:integer_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IntegerValue', traits: {"smithy.api#documentation" => "<p> The value (score) of the Qualification, if the Qualification\n            has an integer value.</p>"}))
    Qualification.add_member(:locale_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'LocaleValue'))
    Qualification.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The status of the Qualification. Valid values are Granted |\n            Revoked.</p>"}))
    Qualification.type = Types::Qualification
    QualificationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Qualification)
    QualificationRequest.add_member(:qualification_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationRequestId', traits: {"smithy.api#documentation" => "<p>The ID of the Qualification request, a unique identifier\n            generated when the request was submitted.\n\n        </p>"}))
    QualificationRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p> The ID of the Qualification type the Worker is requesting,\n            as returned by the CreateQualificationType operation.\n        </p>"}))
    QualificationRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p> The ID of the Worker requesting the Qualification.</p>"}))
    QualificationRequest.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test', traits: {"smithy.api#documentation" => "<p> The contents of the Qualification test that was presented to\n            the Worker, if the type has a test and the Worker has submitted\n            answers. This value is identical to the QuestionForm associated with\n            the Qualification type at the time the Worker requests the\n            Qualification.</p>"}))
    QualificationRequest.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Answer', traits: {"smithy.api#documentation" => "<p> The Worker's answers for the Qualification type's test\n            contained in a QuestionFormAnswers document, if the type has a test\n            and the Worker has submitted answers. If the Worker does not provide\n            any answers, Answer may be empty.\n        </p>"}))
    QualificationRequest.add_member(:submit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubmitTime', traits: {"smithy.api#documentation" => "<p>The date and time the Qualification request had a status of\n            Submitted. This is either the time the Worker submitted answers for a\n            Qualification test, or the time the Worker requested the\n            Qualification if the Qualification type does not have a test.\n        </p>"}))
    QualificationRequest.type = Types::QualificationRequest
    QualificationRequestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequest)
    QualificationRequirement.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p> The ID of the Qualification type for the requirement.</p>", "smithy.api#required" => {}}))
    QualificationRequirement.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: Comparator, location_name: 'Comparator', traits: {"smithy.api#documentation" => "<p>The kind of comparison to make against a Qualification's\n            value. You can compare a Qualification's value to an IntegerValue to\n            see if it is LessThan, LessThanOrEqualTo, GreaterThan,\n            GreaterThanOrEqualTo, EqualTo, or NotEqualTo the IntegerValue. You\n            can compare it to a LocaleValue to see if it is EqualTo, or\n            NotEqualTo the LocaleValue. You can check to see if the value is In\n            or NotIn a set of IntegerValue\n            or LocaleValue values. Lastly, a\n            Qualification requirement can also\n            test if a Qualification Exists or\n            DoesNotExist in the user's profile,\n            regardless of its value.\n        </p>", "smithy.api#required" => {}}))
    QualificationRequirement.add_member(:integer_values, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerList, location_name: 'IntegerValues', traits: {"smithy.api#documentation" => "<p> The integer value to compare against the Qualification's\n            value. IntegerValue must not be present if Comparator is Exists or\n            DoesNotExist. IntegerValue can only be used if the Qualification type\n            has an integer value; it cannot be used with the Worker_Locale\n            QualificationType ID. When performing a set comparison by using the\n            In or the NotIn comparator, you can use up to 15 IntegerValue\n            elements in a QualificationRequirement data structure.\n        </p>"}))
    QualificationRequirement.add_member(:locale_values, Smithy::Schema::Shapes::ShapeRef.new(shape: LocaleList, location_name: 'LocaleValues', traits: {"smithy.api#documentation" => "<p> The locale value to compare against the Qualification's\n            value. The local value must be a valid ISO 3166 country code or\n            supports ISO 3166-2 subdivisions. LocaleValue can only be used with a\n            Worker_Locale QualificationType ID. LocaleValue can only be used with\n            the EqualTo, NotEqualTo, In, and NotIn comparators. You must only use\n            a single LocaleValue element when using the EqualTo or NotEqualTo\n            comparators. When performing a set comparison by using the In or the\n            NotIn comparator, you can use up to 30 LocaleValue elements in a\n            QualificationRequirement data structure.\n        </p>"}))
    QualificationRequirement.add_member(:required_to_preview, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequiredToPreview', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p> DEPRECATED: Use the <code>ActionsGuarded</code> field instead.\n            If RequiredToPreview is true, the question data for the HIT will not be shown\n            when a Worker whose Qualifications do not meet this requirement tries\n            to preview the HIT. That is, a Worker's Qualifications must meet all\n            of the requirements for which RequiredToPreview is true in order to\n            preview the HIT. If a Worker meets all of the requirements where\n            RequiredToPreview is true (or if there are no such requirements), but\n            does not meet all of the requirements for the HIT, the Worker will be\n            allowed to preview the HIT's question data, but will not be allowed\n            to accept and complete the HIT. The default is false. This should not\n            be used in combination with the <code>ActionsGuarded</code> field.\n        </p>"}))
    QualificationRequirement.add_member(:actions_guarded, Smithy::Schema::Shapes::ShapeRef.new(shape: HITAccessActions, location_name: 'ActionsGuarded', traits: {"smithy.api#documentation" => "<p> Setting this attribute prevents Workers whose Qualifications do not meet\n            this QualificationRequirement from taking the specified action. Valid arguments include\n            \"Accept\" (Worker cannot accept the HIT, but can preview the HIT and see it in their search results),\n            \"PreviewAndAccept\" (Worker cannot accept or preview the HIT, but can see the HIT in their search results),\n            and \"DiscoverPreviewAndAccept\" (Worker cannot accept, preview, or see the HIT in their search results). It's possible for you to create a HIT with multiple\n            QualificationRequirements (which can have different values for the ActionGuarded attribute). In this case,\n            the Worker is only permitted to perform an action when they have met all QualificationRequirements guarding\n            the action. The actions in the order of least restrictive to most restrictive are Discover, Preview and Accept.\n            For example, if a Worker meets all QualificationRequirements that are set to DiscoverPreviewAndAccept, but do\n            not meet all requirements that are set with PreviewAndAccept, then the Worker will be able to Discover, i.e. see the\n            HIT in their search result, but will not be able to Preview or Accept the HIT. ActionsGuarded should not be used in combination with the\n            <code>RequiredToPreview</code> field.\n        </p>"}))
    QualificationRequirement.type = Types::QualificationRequirement
    QualificationRequirementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationRequirement)
    QualificationStatus.add_member(:granted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Granted', traits: {"smithy.api#enumValue" => "Granted"}))
    QualificationStatus.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Revoked', traits: {"smithy.api#enumValue" => "Revoked"}))
    QualificationType.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p> A unique identifier for the Qualification type. A\n            Qualification type is given a Qualification type ID when you call the\n            CreateQualificationType operation.\n        </p>"}))
    QualificationType.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p> The date and time the Qualification type was created.\n        </p>"}))
    QualificationType.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p> The name of the Qualification type. The type name is used to\n            identify the type, and to find the type using a Qualification type\n            search.\n        </p>"}))
    QualificationType.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p> A long description for the Qualification type.\n        </p>"}))
    QualificationType.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Keywords', traits: {"smithy.api#documentation" => "<p> One or more words or phrases that describe theQualification\n            type, separated by commas. The Keywords make the type easier to find\n            using a search.\n        </p>"}))
    QualificationType.add_member(:qualification_type_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: 'QualificationTypeStatus', traits: {"smithy.api#documentation" => "<p> The status of the Qualification type. A Qualification type's\n            status determines if users can apply to receive a Qualification of\n            this type, and if HITs can be created with requirements based on this\n            type. Valid values are Active | Inactive.\n        </p>"}))
    QualificationType.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test', traits: {"smithy.api#documentation" => "<p> The questions for a Qualification test associated with this\n            Qualification type that a user can take to obtain a Qualification of\n            this type. This parameter must be specified if AnswerKey is present.\n            A Qualification type cannot have both a specified Test parameter and\n            an AutoGranted value of true.\n        </p>"}))
    QualificationType.add_member(:test_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TestDurationInSeconds', traits: {"smithy.api#documentation" => "<p> The amount of time, in seconds, given to a Worker to\n            complete the Qualification test, beginning from the time the Worker\n            requests the Qualification.\n        </p>"}))
    QualificationType.add_member(:answer_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnswerKey', traits: {"smithy.api#documentation" => "<p>The answers to the Qualification test specified in the Test\n            parameter.</p>"}))
    QualificationType.add_member(:retry_delay_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetryDelayInSeconds', traits: {"smithy.api#documentation" => "<p> The amount of time, in seconds, Workers must wait after\n            taking the Qualification test before they can take it again. Workers\n            can take a Qualification test multiple times if they were not granted\n            the Qualification from a previous attempt, or if the test offers a\n            gradient score and they want a better score. If not specified,\n            retries are disabled and Workers can request a Qualification only\n            once.\n        </p>"}))
    QualificationType.add_member(:is_requestable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IsRequestable', traits: {"smithy.api#documentation" => "<p> Specifies whether the Qualification type is one that a user\n            can request through the Amazon Mechanical Turk web site, such as by\n            taking a Qualification test. This value is False for Qualifications\n            assigned automatically by the system. Valid values are True | False.\n        </p>"}))
    QualificationType.add_member(:auto_granted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoGranted', traits: {"smithy.api#documentation" => "<p>Specifies that requests for the Qualification type are\n            granted immediately, without prompting the Worker with a\n            Qualification test. Valid values are True | False.</p>"}))
    QualificationType.add_member(:auto_granted_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoGrantedValue', traits: {"smithy.api#documentation" => "<p> The Qualification integer value to use for automatically\n            granted Qualifications, if AutoGranted is true. This is 1 by default.\n        </p>"}))
    QualificationType.type = Types::QualificationType
    QualificationTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType)
    QualificationTypeStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    QualificationTypeStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "Inactive"}))
    RejectAssignmentRequest.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the assignment. The assignment must correspond to a HIT created by the Requester.\n        </p>", "smithy.api#required" => {}}))
    RejectAssignmentRequest.add_member(:requester_feedback, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterFeedback', traits: {"smithy.api#documentation" => "<p>\n            A message for the Worker, which the Worker can see in the Status section of the web site.\n        </p>", "smithy.api#required" => {}}))
    RejectAssignmentRequest.type = Types::RejectAssignmentRequest
    RejectAssignmentResponse.type = Types::RejectAssignmentResponse
    RejectQualificationRequestRequest.add_member(:qualification_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QualificationRequestId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the Qualification request, as returned by the\n            <code>ListQualificationRequests</code>\n            operation.\n        </p>", "smithy.api#required" => {}}))
    RejectQualificationRequestRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A text message explaining why the request was rejected, to be\n            shown to the Worker who made the request.</p>"}))
    RejectQualificationRequestRequest.type = Types::RejectQualificationRequestRequest
    RejectQualificationRequestResponse.type = Types::RejectQualificationRequestResponse
    RequestError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    RequestError.add_member(:turk_error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: TurkErrorCode, location_name: 'TurkErrorCode'))
    RequestError.type = Types::RequestError
    ReviewActionDetail.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'ActionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the action.</p>"}))
    ReviewActionDetail.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ActionName', traits: {"smithy.api#documentation" => "<p> The nature of the action itself. The Review Policy is\n            responsible for examining the HIT and Assignments, emitting results,\n            and deciding which other actions will be necessary. </p>"}))
    ReviewActionDetail.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p> The specific HITId or AssignmentID targeted by the action.</p>"}))
    ReviewActionDetail.add_member(:target_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TargetType', traits: {"smithy.api#documentation" => "<p> The type of object in TargetId.</p>"}))
    ReviewActionDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewActionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p> The current disposition of the action: INTENDED, SUCCEEDED,\n            FAILED, or CANCELLED.\n        </p>"}))
    ReviewActionDetail.add_member(:complete_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CompleteTime', traits: {"smithy.api#documentation" => "<p> The date when the action was completed.</p>"}))
    ReviewActionDetail.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Result', traits: {"smithy.api#documentation" => "<p> A description of the outcome of the review.</p>"}))
    ReviewActionDetail.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p> Present only when the Results have a FAILED Status.</p>"}))
    ReviewActionDetail.type = Types::ReviewActionDetail
    ReviewActionDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewActionDetail)
    ReviewActionStatus.add_member(:intended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Intended', traits: {"smithy.api#enumValue" => "Intended"}))
    ReviewActionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    ReviewActionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    ReviewActionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Cancelled', traits: {"smithy.api#enumValue" => "Cancelled"}))
    ReviewPolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p> Name of a Review Policy: SimplePlurality/2011-09-01 or\n            ScoreMyKnownAnswers/2011-09-01\n        </p>", "smithy.api#required" => {}}))
    ReviewPolicy.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyParameterList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>Name of the parameter from the Review policy.</p>"}))
    ReviewPolicy.type = Types::ReviewPolicy
    ReviewPolicyLevel.add_member(:assignment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Assignment', traits: {"smithy.api#enumValue" => "Assignment"}))
    ReviewPolicyLevel.add_member(:hit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIT', traits: {"smithy.api#enumValue" => "HIT"}))
    ReviewPolicyLevelList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewPolicyLevel)
    ReviewReport.add_member(:review_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewResultDetailList, location_name: 'ReviewResults', traits: {"smithy.api#documentation" => "<p> A list of ReviewResults objects for each action specified in\n            the Review Policy.\n        </p>"}))
    ReviewReport.add_member(:review_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewActionDetailList, location_name: 'ReviewActions', traits: {"smithy.api#documentation" => "<p> A list of ReviewAction objects for each action specified in\n            the Review Policy.\n        </p>"}))
    ReviewReport.type = Types::ReviewReport
    ReviewResultDetail.add_member(:action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'ActionId', traits: {"smithy.api#documentation" => "<p> A unique identifier of the Review action result.\n        </p>"}))
    ReviewResultDetail.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'SubjectId', traits: {"smithy.api#documentation" => "<p>The HITID or AssignmentId about which this result was taken.\n            Note that HIT-level Review Policies will often emit results about\n            both the HIT itself and its Assignments, while Assignment-level\n            review policies generally only emit results about the Assignment\n            itself.\n        </p>"}))
    ReviewResultDetail.add_member(:subject_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubjectType', traits: {"smithy.api#documentation" => "<p> The type of the object from the SubjectId field.</p>"}))
    ReviewResultDetail.add_member(:question_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QuestionId', traits: {"smithy.api#documentation" => "<p> Specifies the QuestionId the result is describing. Depending\n            on whether the TargetType is a HIT or Assignment this results could\n            specify multiple values. If TargetType is HIT and QuestionId is\n            absent, then the result describes results of the HIT, including the\n            HIT agreement score. If ObjectType is Assignment and QuestionId is\n            absent, then the result describes the Worker's performance on the\n            HIT.\n        </p>"}))
    ReviewResultDetail.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p> Key identifies the particular piece of reviewed information.\n        </p>"}))
    ReviewResultDetail.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p> The values of Key provided by the review policies you have\n            selected.\n        </p>"}))
    ReviewResultDetail.type = Types::ReviewResultDetail
    ReviewResultDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReviewResultDetail)
    ReviewableHITStatus.add_member(:reviewable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewable', traits: {"smithy.api#enumValue" => "Reviewable"}))
    ReviewableHITStatus.add_member(:reviewing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Reviewing', traits: {"smithy.api#enumValue" => "Reviewing"}))
    SendBonusRequest.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p>The ID of the Worker being paid the bonus.</p>", "smithy.api#required" => {}}))
    SendBonusRequest.add_member(:bonus_amount, Smithy::Schema::Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: 'BonusAmount', traits: {"smithy.api#documentation" => "<p>\n            The Bonus amount is a US Dollar amount specified using a string (for example, \"5\" represents $5.00 USD and\n            \"101.42\" represents $101.42 USD). Do not include currency symbols or currency codes.\n        </p>", "smithy.api#required" => {}}))
    SendBonusRequest.add_member(:assignment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'AssignmentId', traits: {"smithy.api#documentation" => "<p>The ID of the assignment for which this bonus is paid.</p>", "smithy.api#required" => {}}))
    SendBonusRequest.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p>A message that explains the reason for the bonus payment. The\n            Worker receiving the bonus can see this message.</p>", "smithy.api#required" => {}}))
    SendBonusRequest.add_member(:unique_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: 'UniqueRequestToken', traits: {"smithy.api#documentation" => "<p>A unique identifier for this request, which allows you to\n            retry the call on error without granting multiple bonuses. This is\n            useful in cases such as network timeouts where it is unclear whether\n            or not the call succeeded on the server. If the bonus already exists\n            in the system from a previous call using the same UniqueRequestToken,\n            subsequent calls will return an error with a message containing the\n            request ID.</p>"}))
    SendBonusRequest.type = Types::SendBonusRequest
    SendBonusResponse.type = Types::SendBonusResponse
    SendTestEventNotificationRequest.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSpecification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>\n            The notification specification to test. This value is identical to the value\n            you would provide to the UpdateNotificationSettings operation when you establish\n            the notification specification for a HIT type.\n        </p>", "smithy.api#required" => {}}))
    SendTestEventNotificationRequest.add_member(:test_event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EventType, location_name: 'TestEventType', traits: {"smithy.api#documentation" => "<p>\n            The event to simulate to test the notification specification.\n            This event is included in the test message even if the notification specification\n            does not include the event type.\n            The notification specification does not filter out the test event.\n        </p>", "smithy.api#required" => {}}))
    SendTestEventNotificationRequest.type = Types::SendTestEventNotificationRequest
    SendTestEventNotificationResponse.type = Types::SendTestEventNotificationResponse
    ServiceFault.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ServiceFault.add_member(:turk_error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: TurkErrorCode, location_name: 'TurkErrorCode'))
    ServiceFault.type = Types::ServiceFault
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UpdateExpirationForHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>\n            The HIT to update.\n        </p>", "smithy.api#required" => {}}))
    UpdateExpirationForHITRequest.add_member(:expire_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExpireAt', traits: {"smithy.api#documentation" => "<p>\n            The date and time at which you want the HIT to expire\n        </p>", "smithy.api#required" => {}}))
    UpdateExpirationForHITRequest.type = Types::UpdateExpirationForHITRequest
    UpdateExpirationForHITResponse.type = Types::UpdateExpirationForHITResponse
    UpdateHITReviewStatusRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the HIT to update.\n        </p>", "smithy.api#required" => {}}))
    UpdateHITReviewStatusRequest.add_member(:revert, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revert', traits: {"smithy.api#documentation" => "<p>\n            Specifies how to update the HIT status. Default is <code>False</code>.\n        </p>\n        <ul>\n            <li>\n                <p>\n                    Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code>\n                </p>\n            </li>\n            <li>\n                <p>\n                    Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code>\n                </p>\n            </li>\n         </ul>"}))
    UpdateHITReviewStatusRequest.type = Types::UpdateHITReviewStatusRequest
    UpdateHITReviewStatusResponse.type = Types::UpdateHITReviewStatusResponse
    UpdateHITTypeOfHITRequest.add_member(:hit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITId', traits: {"smithy.api#documentation" => "<p>The HIT to update.</p>", "smithy.api#required" => {}}))
    UpdateHITTypeOfHITRequest.add_member(:hit_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the new HIT type.</p>", "smithy.api#required" => {}}))
    UpdateHITTypeOfHITRequest.type = Types::UpdateHITTypeOfHITRequest
    UpdateHITTypeOfHITResponse.type = Types::UpdateHITTypeOfHITResponse
    UpdateNotificationSettingsRequest.add_member(:hit_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'HITTypeId', traits: {"smithy.api#documentation" => "<p>\n            The ID of the HIT type whose notification specification is being updated.\n        </p>", "smithy.api#required" => {}}))
    UpdateNotificationSettingsRequest.add_member(:notification, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationSpecification, location_name: 'Notification', traits: {"smithy.api#documentation" => "<p>\n            The notification specification for the HIT type.\n        </p>"}))
    UpdateNotificationSettingsRequest.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Active', traits: {"smithy.api#documentation" => "<p>\n            Specifies whether notifications are sent for HITs of this HIT type,\n            according to the notification specification.\n            You must specify either the Notification parameter or the Active parameter\n            for the call to UpdateNotificationSettings to succeed.\n        </p>"}))
    UpdateNotificationSettingsRequest.type = Types::UpdateNotificationSettingsRequest
    UpdateNotificationSettingsResponse.type = Types::UpdateNotificationSettingsResponse
    UpdateQualificationTypeRequest.add_member(:qualification_type_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityId, location_name: 'QualificationTypeId', traits: {"smithy.api#documentation" => "<p>The ID of the Qualification type to update.</p>", "smithy.api#required" => {}}))
    UpdateQualificationTypeRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The new description of the Qualification type.</p>"}))
    UpdateQualificationTypeRequest.add_member(:qualification_type_status, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: 'QualificationTypeStatus', traits: {"smithy.api#documentation" => "<p>The new status of the Qualification type - Active | Inactive</p>"}))
    UpdateQualificationTypeRequest.add_member(:test, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Test', traits: {"smithy.api#documentation" => "<p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p>\n        <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p>\n        <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>"}))
    UpdateQualificationTypeRequest.add_member(:answer_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnswerKey', traits: {"smithy.api#documentation" => "<p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>"}))
    UpdateQualificationTypeRequest.add_member(:test_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'TestDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>"}))
    UpdateQualificationTypeRequest.add_member(:retry_delay_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'RetryDelayInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time, in seconds, that Workers must wait\n            after requesting a Qualification of the specified Qualification type\n            before they can retry the Qualification request. It is not possible to\n            disable retries for a Qualification type after it has been created with\n            retries enabled. If you want to disable retries, you must dispose of\n            the existing retry-enabled Qualification type using\n            DisposeQualificationType and then create a new Qualification type with\n            retries disabled using CreateQualificationType.</p>"}))
    UpdateQualificationTypeRequest.add_member(:auto_granted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoGranted', traits: {"smithy.api#documentation" => "<p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p>\n        <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>"}))
    UpdateQualificationTypeRequest.add_member(:auto_granted_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AutoGrantedValue', traits: {"smithy.api#documentation" => "<p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>"}))
    UpdateQualificationTypeRequest.type = Types::UpdateQualificationTypeRequest
    UpdateQualificationTypeResponse.add_member(:qualification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationType, location_name: 'QualificationType', traits: {"smithy.api#documentation" => "<p> Contains a QualificationType data structure.</p>"}))
    UpdateQualificationTypeResponse.type = Types::UpdateQualificationTypeResponse
    WorkerBlock.add_member(:worker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerId, location_name: 'WorkerId', traits: {"smithy.api#documentation" => "<p> The ID of the Worker who accepted the HIT.</p>"}))
    WorkerBlock.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reason', traits: {"smithy.api#documentation" => "<p> A message explaining the reason the Worker was blocked.\n        </p>"}))
    WorkerBlock.type = Types::WorkerBlock
    WorkerBlockList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkerBlock)

    MTurkRequesterServiceV20170117 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mturk#MTurkRequesterServiceV20170117"
      service.name = "MTurkRequesterServiceV20170117"
      service.version = "2017-01-17"
      service.traits = {"aws.api#service" => {"sdkId" => "MTurk", "arnNamespace" => "mturk-requester", "cloudFormationName" => "MTurk", "cloudTrailEventSource" => "mturk.amazonaws.com", "docId" => "mturk-requester-2017-01-17", "endpointPrefix" => "mturk-requester"}, "aws.auth#sigv4" => {"name" => "mturk-requester"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Mechanical Turk", "smithy.api#xmlNamespace" => {"uri" => "http://requester.mturk.com/2017-01-17/"}}
      service.add_operation(:accept_qualification_request, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#AcceptQualificationRequest"
        operation.name = "AcceptQualificationRequest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptQualificationRequestRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptQualificationRequestResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:approve_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ApproveAssignment"
        operation.name = "ApproveAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ApproveAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ApproveAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:associate_qualification_with_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#AssociateQualificationWithWorker"
        operation.name = "AssociateQualificationWithWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateQualificationWithWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateQualificationWithWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_additional_assignments_for_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateAdditionalAssignmentsForHIT"
        operation.name = "CreateAdditionalAssignmentsForHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdditionalAssignmentsForHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdditionalAssignmentsForHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHIT"
        operation.name = "CreateHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_hit_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHITType"
        operation.name = "CreateHITType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_hit_with_hit_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateHITWithHITType"
        operation.name = "CreateHITWithHITType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITWithHITTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateHITWithHITTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_qualification_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateQualificationType"
        operation.name = "CreateQualificationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQualificationTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateQualificationTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:create_worker_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#CreateWorkerBlock"
        operation.name = "CreateWorkerBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkerBlockResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:delete_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteHIT"
        operation.name = "DeleteHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_qualification_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteQualificationType"
        operation.name = "DeleteQualificationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQualificationTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteQualificationTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_worker_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DeleteWorkerBlock"
        operation.name = "DeleteWorkerBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkerBlockResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_qualification_from_worker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#DisassociateQualificationFromWorker"
        operation.name = "DisassociateQualificationFromWorker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateQualificationFromWorkerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateQualificationFromWorkerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:get_account_balance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetAccountBalance"
        operation.name = "GetAccountBalance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountBalanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountBalanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetAssignment"
        operation.name = "GetAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_file_upload_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetFileUploadURL"
        operation.name = "GetFileUploadURL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFileUploadURLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFileUploadURLResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetHIT"
        operation.name = "GetHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_qualification_score, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetQualificationScore"
        operation.name = "GetQualificationScore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationScoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationScoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_qualification_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#GetQualificationType"
        operation.name = "GetQualificationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetQualificationTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:list_assignments_for_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListAssignmentsForHIT"
        operation.name = "ListAssignmentsForHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssignmentsForHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssignmentsForHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListAssignmentsForHIT.new
      end)
      service.add_operation(:list_bonus_payments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListBonusPayments"
        operation.name = "ListBonusPayments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBonusPaymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBonusPaymentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListBonusPayments.new
      end)
      service.add_operation(:list_hi_ts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListHITs"
        operation.name = "ListHITs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListHITs.new
      end)
      service.add_operation(:list_hi_ts_for_qualification_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListHITsForQualificationType"
        operation.name = "ListHITsForQualificationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsForQualificationTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListHITsForQualificationTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListHITsForQualificationType.new
      end)
      service.add_operation(:list_qualification_requests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListQualificationRequests"
        operation.name = "ListQualificationRequests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationRequestsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationRequestsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQualificationRequests.new
      end)
      service.add_operation(:list_qualification_types, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListQualificationTypes"
        operation.name = "ListQualificationTypes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationTypesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListQualificationTypesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListQualificationTypes.new
      end)
      service.add_operation(:list_review_policy_results_for_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListReviewPolicyResultsForHIT"
        operation.name = "ListReviewPolicyResultsForHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewPolicyResultsForHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewPolicyResultsForHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListReviewPolicyResultsForHIT.new
      end)
      service.add_operation(:list_reviewable_hi_ts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListReviewableHITs"
        operation.name = "ListReviewableHITs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewableHITsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReviewableHITsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListReviewableHITs.new
      end)
      service.add_operation(:list_worker_blocks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListWorkerBlocks"
        operation.name = "ListWorkerBlocks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkerBlocksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkerBlocksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWorkerBlocks.new
      end)
      service.add_operation(:list_workers_with_qualification_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#ListWorkersWithQualificationType"
        operation.name = "ListWorkersWithQualificationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkersWithQualificationTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkersWithQualificationTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
        operation[:paginator] = Paginators::ListWorkersWithQualificationType.new
      end)
      service.add_operation(:notify_workers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#NotifyWorkers"
        operation.name = "NotifyWorkers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyWorkersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:reject_assignment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#RejectAssignment"
        operation.name = "RejectAssignment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAssignmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectAssignmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reject_qualification_request, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#RejectQualificationRequest"
        operation.name = "RejectQualificationRequest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectQualificationRequestRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RejectQualificationRequestResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:send_bonus, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#SendBonus"
        operation.name = "SendBonus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBonusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendBonusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:send_test_event_notification, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#SendTestEventNotification"
        operation.name = "SendTestEventNotification"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTestEventNotificationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendTestEventNotificationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)
      service.add_operation(:update_expiration_for_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateExpirationForHIT"
        operation.name = "UpdateExpirationForHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExpirationForHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateExpirationForHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hit_review_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateHITReviewStatus"
        operation.name = "UpdateHITReviewStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITReviewStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITReviewStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_hit_type_of_hit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateHITTypeOfHIT"
        operation.name = "UpdateHITTypeOfHIT"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITTypeOfHITRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateHITTypeOfHITResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_notification_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateNotificationSettings"
        operation.name = "UpdateNotificationSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationSettingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNotificationSettingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_qualification_type, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mturk#UpdateQualificationType"
        operation.name = "UpdateQualificationType"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQualificationTypeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateQualificationTypeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFault)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MTurk
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptQualificationRequestRequest = Shapes::StructureShape.new(name: 'AcceptQualificationRequestRequest')
    AcceptQualificationRequestResponse = Shapes::StructureShape.new(name: 'AcceptQualificationRequestResponse')
    ApproveAssignmentRequest = Shapes::StructureShape.new(name: 'ApproveAssignmentRequest')
    ApproveAssignmentResponse = Shapes::StructureShape.new(name: 'ApproveAssignmentResponse')
    Assignment = Shapes::StructureShape.new(name: 'Assignment')
    AssignmentList = Shapes::ListShape.new(name: 'AssignmentList')
    AssignmentStatus = Shapes::StringShape.new(name: 'AssignmentStatus')
    AssignmentStatusList = Shapes::ListShape.new(name: 'AssignmentStatusList')
    AssociateQualificationWithWorkerRequest = Shapes::StructureShape.new(name: 'AssociateQualificationWithWorkerRequest')
    AssociateQualificationWithWorkerResponse = Shapes::StructureShape.new(name: 'AssociateQualificationWithWorkerResponse')
    BonusPayment = Shapes::StructureShape.new(name: 'BonusPayment')
    BonusPaymentList = Shapes::ListShape.new(name: 'BonusPaymentList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Comparator = Shapes::StringShape.new(name: 'Comparator')
    CountryParameters = Shapes::StringShape.new(name: 'CountryParameters')
    CreateAdditionalAssignmentsForHITRequest = Shapes::StructureShape.new(name: 'CreateAdditionalAssignmentsForHITRequest')
    CreateAdditionalAssignmentsForHITResponse = Shapes::StructureShape.new(name: 'CreateAdditionalAssignmentsForHITResponse')
    CreateHITRequest = Shapes::StructureShape.new(name: 'CreateHITRequest')
    CreateHITResponse = Shapes::StructureShape.new(name: 'CreateHITResponse')
    CreateHITTypeRequest = Shapes::StructureShape.new(name: 'CreateHITTypeRequest')
    CreateHITTypeResponse = Shapes::StructureShape.new(name: 'CreateHITTypeResponse')
    CreateHITWithHITTypeRequest = Shapes::StructureShape.new(name: 'CreateHITWithHITTypeRequest')
    CreateHITWithHITTypeResponse = Shapes::StructureShape.new(name: 'CreateHITWithHITTypeResponse')
    CreateQualificationTypeRequest = Shapes::StructureShape.new(name: 'CreateQualificationTypeRequest')
    CreateQualificationTypeResponse = Shapes::StructureShape.new(name: 'CreateQualificationTypeResponse')
    CreateWorkerBlockRequest = Shapes::StructureShape.new(name: 'CreateWorkerBlockRequest')
    CreateWorkerBlockResponse = Shapes::StructureShape.new(name: 'CreateWorkerBlockResponse')
    CurrencyAmount = Shapes::StringShape.new(name: 'CurrencyAmount')
    CustomerId = Shapes::StringShape.new(name: 'CustomerId')
    CustomerIdList = Shapes::ListShape.new(name: 'CustomerIdList')
    DeleteHITRequest = Shapes::StructureShape.new(name: 'DeleteHITRequest')
    DeleteHITResponse = Shapes::StructureShape.new(name: 'DeleteHITResponse')
    DeleteQualificationTypeRequest = Shapes::StructureShape.new(name: 'DeleteQualificationTypeRequest')
    DeleteQualificationTypeResponse = Shapes::StructureShape.new(name: 'DeleteQualificationTypeResponse')
    DeleteWorkerBlockRequest = Shapes::StructureShape.new(name: 'DeleteWorkerBlockRequest')
    DeleteWorkerBlockResponse = Shapes::StructureShape.new(name: 'DeleteWorkerBlockResponse')
    DisassociateQualificationFromWorkerRequest = Shapes::StructureShape.new(name: 'DisassociateQualificationFromWorkerRequest')
    DisassociateQualificationFromWorkerResponse = Shapes::StructureShape.new(name: 'DisassociateQualificationFromWorkerResponse')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypeList = Shapes::ListShape.new(name: 'EventTypeList')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    GetAccountBalanceRequest = Shapes::StructureShape.new(name: 'GetAccountBalanceRequest')
    GetAccountBalanceResponse = Shapes::StructureShape.new(name: 'GetAccountBalanceResponse')
    GetAssignmentRequest = Shapes::StructureShape.new(name: 'GetAssignmentRequest')
    GetAssignmentResponse = Shapes::StructureShape.new(name: 'GetAssignmentResponse')
    GetFileUploadURLRequest = Shapes::StructureShape.new(name: 'GetFileUploadURLRequest')
    GetFileUploadURLResponse = Shapes::StructureShape.new(name: 'GetFileUploadURLResponse')
    GetHITRequest = Shapes::StructureShape.new(name: 'GetHITRequest')
    GetHITResponse = Shapes::StructureShape.new(name: 'GetHITResponse')
    GetQualificationScoreRequest = Shapes::StructureShape.new(name: 'GetQualificationScoreRequest')
    GetQualificationScoreResponse = Shapes::StructureShape.new(name: 'GetQualificationScoreResponse')
    GetQualificationTypeRequest = Shapes::StructureShape.new(name: 'GetQualificationTypeRequest')
    GetQualificationTypeResponse = Shapes::StructureShape.new(name: 'GetQualificationTypeResponse')
    HIT = Shapes::StructureShape.new(name: 'HIT')
    HITAccessActions = Shapes::StringShape.new(name: 'HITAccessActions')
    HITLayoutParameter = Shapes::StructureShape.new(name: 'HITLayoutParameter')
    HITLayoutParameterList = Shapes::ListShape.new(name: 'HITLayoutParameterList')
    HITList = Shapes::ListShape.new(name: 'HITList')
    HITReviewStatus = Shapes::StringShape.new(name: 'HITReviewStatus')
    HITStatus = Shapes::StringShape.new(name: 'HITStatus')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    ListAssignmentsForHITRequest = Shapes::StructureShape.new(name: 'ListAssignmentsForHITRequest')
    ListAssignmentsForHITResponse = Shapes::StructureShape.new(name: 'ListAssignmentsForHITResponse')
    ListBonusPaymentsRequest = Shapes::StructureShape.new(name: 'ListBonusPaymentsRequest')
    ListBonusPaymentsResponse = Shapes::StructureShape.new(name: 'ListBonusPaymentsResponse')
    ListHITsForQualificationTypeRequest = Shapes::StructureShape.new(name: 'ListHITsForQualificationTypeRequest')
    ListHITsForQualificationTypeResponse = Shapes::StructureShape.new(name: 'ListHITsForQualificationTypeResponse')
    ListHITsRequest = Shapes::StructureShape.new(name: 'ListHITsRequest')
    ListHITsResponse = Shapes::StructureShape.new(name: 'ListHITsResponse')
    ListQualificationRequestsRequest = Shapes::StructureShape.new(name: 'ListQualificationRequestsRequest')
    ListQualificationRequestsResponse = Shapes::StructureShape.new(name: 'ListQualificationRequestsResponse')
    ListQualificationTypesRequest = Shapes::StructureShape.new(name: 'ListQualificationTypesRequest')
    ListQualificationTypesResponse = Shapes::StructureShape.new(name: 'ListQualificationTypesResponse')
    ListReviewPolicyResultsForHITRequest = Shapes::StructureShape.new(name: 'ListReviewPolicyResultsForHITRequest')
    ListReviewPolicyResultsForHITResponse = Shapes::StructureShape.new(name: 'ListReviewPolicyResultsForHITResponse')
    ListReviewableHITsRequest = Shapes::StructureShape.new(name: 'ListReviewableHITsRequest')
    ListReviewableHITsResponse = Shapes::StructureShape.new(name: 'ListReviewableHITsResponse')
    ListWorkerBlocksRequest = Shapes::StructureShape.new(name: 'ListWorkerBlocksRequest')
    ListWorkerBlocksResponse = Shapes::StructureShape.new(name: 'ListWorkerBlocksResponse')
    ListWorkersWithQualificationTypeRequest = Shapes::StructureShape.new(name: 'ListWorkersWithQualificationTypeRequest')
    ListWorkersWithQualificationTypeResponse = Shapes::StructureShape.new(name: 'ListWorkersWithQualificationTypeResponse')
    Locale = Shapes::StructureShape.new(name: 'Locale')
    LocaleList = Shapes::ListShape.new(name: 'LocaleList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NotificationSpecification = Shapes::StructureShape.new(name: 'NotificationSpecification')
    NotificationTransport = Shapes::StringShape.new(name: 'NotificationTransport')
    NotifyWorkersFailureCode = Shapes::StringShape.new(name: 'NotifyWorkersFailureCode')
    NotifyWorkersFailureStatus = Shapes::StructureShape.new(name: 'NotifyWorkersFailureStatus')
    NotifyWorkersFailureStatusList = Shapes::ListShape.new(name: 'NotifyWorkersFailureStatusList')
    NotifyWorkersRequest = Shapes::StructureShape.new(name: 'NotifyWorkersRequest')
    NotifyWorkersResponse = Shapes::StructureShape.new(name: 'NotifyWorkersResponse')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterMapEntry = Shapes::StructureShape.new(name: 'ParameterMapEntry')
    ParameterMapEntryList = Shapes::ListShape.new(name: 'ParameterMapEntryList')
    PolicyParameter = Shapes::StructureShape.new(name: 'PolicyParameter')
    PolicyParameterList = Shapes::ListShape.new(name: 'PolicyParameterList')
    Qualification = Shapes::StructureShape.new(name: 'Qualification')
    QualificationList = Shapes::ListShape.new(name: 'QualificationList')
    QualificationRequest = Shapes::StructureShape.new(name: 'QualificationRequest')
    QualificationRequestList = Shapes::ListShape.new(name: 'QualificationRequestList')
    QualificationRequirement = Shapes::StructureShape.new(name: 'QualificationRequirement')
    QualificationRequirementList = Shapes::ListShape.new(name: 'QualificationRequirementList')
    QualificationStatus = Shapes::StringShape.new(name: 'QualificationStatus')
    QualificationType = Shapes::StructureShape.new(name: 'QualificationType')
    QualificationTypeList = Shapes::ListShape.new(name: 'QualificationTypeList')
    QualificationTypeStatus = Shapes::StringShape.new(name: 'QualificationTypeStatus')
    RejectAssignmentRequest = Shapes::StructureShape.new(name: 'RejectAssignmentRequest')
    RejectAssignmentResponse = Shapes::StructureShape.new(name: 'RejectAssignmentResponse')
    RejectQualificationRequestRequest = Shapes::StructureShape.new(name: 'RejectQualificationRequestRequest')
    RejectQualificationRequestResponse = Shapes::StructureShape.new(name: 'RejectQualificationRequestResponse')
    RequestError = Shapes::StructureShape.new(name: 'RequestError')
    ResultSize = Shapes::IntegerShape.new(name: 'ResultSize')
    ReviewActionDetail = Shapes::StructureShape.new(name: 'ReviewActionDetail')
    ReviewActionDetailList = Shapes::ListShape.new(name: 'ReviewActionDetailList')
    ReviewActionStatus = Shapes::StringShape.new(name: 'ReviewActionStatus')
    ReviewPolicy = Shapes::StructureShape.new(name: 'ReviewPolicy')
    ReviewPolicyLevel = Shapes::StringShape.new(name: 'ReviewPolicyLevel')
    ReviewPolicyLevelList = Shapes::ListShape.new(name: 'ReviewPolicyLevelList')
    ReviewReport = Shapes::StructureShape.new(name: 'ReviewReport')
    ReviewResultDetail = Shapes::StructureShape.new(name: 'ReviewResultDetail')
    ReviewResultDetailList = Shapes::ListShape.new(name: 'ReviewResultDetailList')
    ReviewableHITStatus = Shapes::StringShape.new(name: 'ReviewableHITStatus')
    SendBonusRequest = Shapes::StructureShape.new(name: 'SendBonusRequest')
    SendBonusResponse = Shapes::StructureShape.new(name: 'SendBonusResponse')
    SendTestEventNotificationRequest = Shapes::StructureShape.new(name: 'SendTestEventNotificationRequest')
    SendTestEventNotificationResponse = Shapes::StructureShape.new(name: 'SendTestEventNotificationResponse')
    ServiceFault = Shapes::StructureShape.new(name: 'ServiceFault')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TurkErrorCode = Shapes::StringShape.new(name: 'TurkErrorCode')
    UpdateExpirationForHITRequest = Shapes::StructureShape.new(name: 'UpdateExpirationForHITRequest')
    UpdateExpirationForHITResponse = Shapes::StructureShape.new(name: 'UpdateExpirationForHITResponse')
    UpdateHITReviewStatusRequest = Shapes::StructureShape.new(name: 'UpdateHITReviewStatusRequest')
    UpdateHITReviewStatusResponse = Shapes::StructureShape.new(name: 'UpdateHITReviewStatusResponse')
    UpdateHITTypeOfHITRequest = Shapes::StructureShape.new(name: 'UpdateHITTypeOfHITRequest')
    UpdateHITTypeOfHITResponse = Shapes::StructureShape.new(name: 'UpdateHITTypeOfHITResponse')
    UpdateNotificationSettingsRequest = Shapes::StructureShape.new(name: 'UpdateNotificationSettingsRequest')
    UpdateNotificationSettingsResponse = Shapes::StructureShape.new(name: 'UpdateNotificationSettingsResponse')
    UpdateQualificationTypeRequest = Shapes::StructureShape.new(name: 'UpdateQualificationTypeRequest')
    UpdateQualificationTypeResponse = Shapes::StructureShape.new(name: 'UpdateQualificationTypeResponse')
    WorkerBlock = Shapes::StructureShape.new(name: 'WorkerBlock')
    WorkerBlockList = Shapes::ListShape.new(name: 'WorkerBlockList')

    AcceptQualificationRequestRequest.add_member(:qualification_request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QualificationRequestId"))
    AcceptQualificationRequestRequest.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "IntegerValue"))
    AcceptQualificationRequestRequest.struct_class = Types::AcceptQualificationRequestRequest

    AcceptQualificationRequestResponse.struct_class = Types::AcceptQualificationRequestResponse

    ApproveAssignmentRequest.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "AssignmentId"))
    ApproveAssignmentRequest.add_member(:requester_feedback, Shapes::ShapeRef.new(shape: String, location_name: "RequesterFeedback"))
    ApproveAssignmentRequest.add_member(:override_rejection, Shapes::ShapeRef.new(shape: Boolean, location_name: "OverrideRejection"))
    ApproveAssignmentRequest.struct_class = Types::ApproveAssignmentRequest

    ApproveAssignmentResponse.struct_class = Types::ApproveAssignmentResponse

    Assignment.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "AssignmentId"))
    Assignment.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "WorkerId"))
    Assignment.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITId"))
    Assignment.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    Assignment.add_member(:auto_approval_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AutoApprovalTime"))
    Assignment.add_member(:accept_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AcceptTime"))
    Assignment.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    Assignment.add_member(:approval_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ApprovalTime"))
    Assignment.add_member(:rejection_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RejectionTime"))
    Assignment.add_member(:deadline, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Deadline"))
    Assignment.add_member(:answer, Shapes::ShapeRef.new(shape: String, location_name: "Answer"))
    Assignment.add_member(:requester_feedback, Shapes::ShapeRef.new(shape: String, location_name: "RequesterFeedback"))
    Assignment.struct_class = Types::Assignment

    AssignmentList.member = Shapes::ShapeRef.new(shape: Assignment)

    AssignmentStatusList.member = Shapes::ShapeRef.new(shape: AssignmentStatus)

    AssociateQualificationWithWorkerRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    AssociateQualificationWithWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, required: true, location_name: "WorkerId"))
    AssociateQualificationWithWorkerRequest.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "IntegerValue"))
    AssociateQualificationWithWorkerRequest.add_member(:send_notification, Shapes::ShapeRef.new(shape: Boolean, location_name: "SendNotification"))
    AssociateQualificationWithWorkerRequest.struct_class = Types::AssociateQualificationWithWorkerRequest

    AssociateQualificationWithWorkerResponse.struct_class = Types::AssociateQualificationWithWorkerResponse

    BonusPayment.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "WorkerId"))
    BonusPayment.add_member(:bonus_amount, Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: "BonusAmount"))
    BonusPayment.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "AssignmentId"))
    BonusPayment.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    BonusPayment.add_member(:grant_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "GrantTime"))
    BonusPayment.struct_class = Types::BonusPayment

    BonusPaymentList.member = Shapes::ShapeRef.new(shape: BonusPayment)

    CreateAdditionalAssignmentsForHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    CreateAdditionalAssignmentsForHITRequest.add_member(:number_of_additional_assignments, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NumberOfAdditionalAssignments"))
    CreateAdditionalAssignmentsForHITRequest.add_member(:unique_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "UniqueRequestToken"))
    CreateAdditionalAssignmentsForHITRequest.struct_class = Types::CreateAdditionalAssignmentsForHITRequest

    CreateAdditionalAssignmentsForHITResponse.struct_class = Types::CreateAdditionalAssignmentsForHITResponse

    CreateHITRequest.add_member(:max_assignments, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAssignments"))
    CreateHITRequest.add_member(:auto_approval_delay_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "AutoApprovalDelayInSeconds"))
    CreateHITRequest.add_member(:lifetime_in_seconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "LifetimeInSeconds"))
    CreateHITRequest.add_member(:assignment_duration_in_seconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "AssignmentDurationInSeconds"))
    CreateHITRequest.add_member(:reward, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "Reward"))
    CreateHITRequest.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Title"))
    CreateHITRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: String, location_name: "Keywords"))
    CreateHITRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateHITRequest.add_member(:question, Shapes::ShapeRef.new(shape: String, location_name: "Question"))
    CreateHITRequest.add_member(:requester_annotation, Shapes::ShapeRef.new(shape: String, location_name: "RequesterAnnotation"))
    CreateHITRequest.add_member(:qualification_requirements, Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: "QualificationRequirements"))
    CreateHITRequest.add_member(:unique_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "UniqueRequestToken"))
    CreateHITRequest.add_member(:assignment_review_policy, Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: "AssignmentReviewPolicy"))
    CreateHITRequest.add_member(:hit_review_policy, Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: "HITReviewPolicy"))
    CreateHITRequest.add_member(:hit_layout_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITLayoutId"))
    CreateHITRequest.add_member(:hit_layout_parameters, Shapes::ShapeRef.new(shape: HITLayoutParameterList, location_name: "HITLayoutParameters"))
    CreateHITRequest.struct_class = Types::CreateHITRequest

    CreateHITResponse.add_member(:hit, Shapes::ShapeRef.new(shape: HIT, location_name: "HIT"))
    CreateHITResponse.struct_class = Types::CreateHITResponse

    CreateHITTypeRequest.add_member(:auto_approval_delay_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "AutoApprovalDelayInSeconds"))
    CreateHITTypeRequest.add_member(:assignment_duration_in_seconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "AssignmentDurationInSeconds"))
    CreateHITTypeRequest.add_member(:reward, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "Reward"))
    CreateHITTypeRequest.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Title"))
    CreateHITTypeRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: String, location_name: "Keywords"))
    CreateHITTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateHITTypeRequest.add_member(:qualification_requirements, Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: "QualificationRequirements"))
    CreateHITTypeRequest.struct_class = Types::CreateHITTypeRequest

    CreateHITTypeResponse.add_member(:hit_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITTypeId"))
    CreateHITTypeResponse.struct_class = Types::CreateHITTypeResponse

    CreateHITWithHITTypeRequest.add_member(:hit_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITTypeId"))
    CreateHITWithHITTypeRequest.add_member(:max_assignments, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAssignments"))
    CreateHITWithHITTypeRequest.add_member(:lifetime_in_seconds, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "LifetimeInSeconds"))
    CreateHITWithHITTypeRequest.add_member(:question, Shapes::ShapeRef.new(shape: String, location_name: "Question"))
    CreateHITWithHITTypeRequest.add_member(:requester_annotation, Shapes::ShapeRef.new(shape: String, location_name: "RequesterAnnotation"))
    CreateHITWithHITTypeRequest.add_member(:unique_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "UniqueRequestToken"))
    CreateHITWithHITTypeRequest.add_member(:assignment_review_policy, Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: "AssignmentReviewPolicy"))
    CreateHITWithHITTypeRequest.add_member(:hit_review_policy, Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: "HITReviewPolicy"))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITLayoutId"))
    CreateHITWithHITTypeRequest.add_member(:hit_layout_parameters, Shapes::ShapeRef.new(shape: HITLayoutParameterList, location_name: "HITLayoutParameters"))
    CreateHITWithHITTypeRequest.struct_class = Types::CreateHITWithHITTypeRequest

    CreateHITWithHITTypeResponse.add_member(:hit, Shapes::ShapeRef.new(shape: HIT, location_name: "HIT"))
    CreateHITWithHITTypeResponse.struct_class = Types::CreateHITWithHITTypeResponse

    CreateQualificationTypeRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateQualificationTypeRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: String, location_name: "Keywords"))
    CreateQualificationTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateQualificationTypeRequest.add_member(:qualification_type_status, Shapes::ShapeRef.new(shape: QualificationTypeStatus, required: true, location_name: "QualificationTypeStatus"))
    CreateQualificationTypeRequest.add_member(:retry_delay_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "RetryDelayInSeconds"))
    CreateQualificationTypeRequest.add_member(:test, Shapes::ShapeRef.new(shape: String, location_name: "Test"))
    CreateQualificationTypeRequest.add_member(:answer_key, Shapes::ShapeRef.new(shape: String, location_name: "AnswerKey"))
    CreateQualificationTypeRequest.add_member(:test_duration_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "TestDurationInSeconds"))
    CreateQualificationTypeRequest.add_member(:auto_granted, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoGranted"))
    CreateQualificationTypeRequest.add_member(:auto_granted_value, Shapes::ShapeRef.new(shape: Integer, location_name: "AutoGrantedValue"))
    CreateQualificationTypeRequest.struct_class = Types::CreateQualificationTypeRequest

    CreateQualificationTypeResponse.add_member(:qualification_type, Shapes::ShapeRef.new(shape: QualificationType, location_name: "QualificationType"))
    CreateQualificationTypeResponse.struct_class = Types::CreateQualificationTypeResponse

    CreateWorkerBlockRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, required: true, location_name: "WorkerId"))
    CreateWorkerBlockRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Reason"))
    CreateWorkerBlockRequest.struct_class = Types::CreateWorkerBlockRequest

    CreateWorkerBlockResponse.struct_class = Types::CreateWorkerBlockResponse

    CustomerIdList.member = Shapes::ShapeRef.new(shape: CustomerId)

    DeleteHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    DeleteHITRequest.struct_class = Types::DeleteHITRequest

    DeleteHITResponse.struct_class = Types::DeleteHITResponse

    DeleteQualificationTypeRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    DeleteQualificationTypeRequest.struct_class = Types::DeleteQualificationTypeRequest

    DeleteQualificationTypeResponse.struct_class = Types::DeleteQualificationTypeResponse

    DeleteWorkerBlockRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, required: true, location_name: "WorkerId"))
    DeleteWorkerBlockRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    DeleteWorkerBlockRequest.struct_class = Types::DeleteWorkerBlockRequest

    DeleteWorkerBlockResponse.struct_class = Types::DeleteWorkerBlockResponse

    DisassociateQualificationFromWorkerRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, required: true, location_name: "WorkerId"))
    DisassociateQualificationFromWorkerRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    DisassociateQualificationFromWorkerRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    DisassociateQualificationFromWorkerRequest.struct_class = Types::DisassociateQualificationFromWorkerRequest

    DisassociateQualificationFromWorkerResponse.struct_class = Types::DisassociateQualificationFromWorkerResponse

    EventTypeList.member = Shapes::ShapeRef.new(shape: EventType)

    GetAccountBalanceRequest.struct_class = Types::GetAccountBalanceRequest

    GetAccountBalanceResponse.add_member(:available_balance, Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: "AvailableBalance"))
    GetAccountBalanceResponse.add_member(:on_hold_balance, Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: "OnHoldBalance"))
    GetAccountBalanceResponse.struct_class = Types::GetAccountBalanceResponse

    GetAssignmentRequest.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "AssignmentId"))
    GetAssignmentRequest.struct_class = Types::GetAssignmentRequest

    GetAssignmentResponse.add_member(:assignment, Shapes::ShapeRef.new(shape: Assignment, location_name: "Assignment"))
    GetAssignmentResponse.add_member(:hit, Shapes::ShapeRef.new(shape: HIT, location_name: "HIT"))
    GetAssignmentResponse.struct_class = Types::GetAssignmentResponse

    GetFileUploadURLRequest.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "AssignmentId"))
    GetFileUploadURLRequest.add_member(:question_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuestionIdentifier"))
    GetFileUploadURLRequest.struct_class = Types::GetFileUploadURLRequest

    GetFileUploadURLResponse.add_member(:file_upload_url, Shapes::ShapeRef.new(shape: String, location_name: "FileUploadURL"))
    GetFileUploadURLResponse.struct_class = Types::GetFileUploadURLResponse

    GetHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    GetHITRequest.struct_class = Types::GetHITRequest

    GetHITResponse.add_member(:hit, Shapes::ShapeRef.new(shape: HIT, location_name: "HIT"))
    GetHITResponse.struct_class = Types::GetHITResponse

    GetQualificationScoreRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    GetQualificationScoreRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, required: true, location_name: "WorkerId"))
    GetQualificationScoreRequest.struct_class = Types::GetQualificationScoreRequest

    GetQualificationScoreResponse.add_member(:qualification, Shapes::ShapeRef.new(shape: Qualification, location_name: "Qualification"))
    GetQualificationScoreResponse.struct_class = Types::GetQualificationScoreResponse

    GetQualificationTypeRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    GetQualificationTypeRequest.struct_class = Types::GetQualificationTypeRequest

    GetQualificationTypeResponse.add_member(:qualification_type, Shapes::ShapeRef.new(shape: QualificationType, location_name: "QualificationType"))
    GetQualificationTypeResponse.struct_class = Types::GetQualificationTypeResponse

    HIT.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITId"))
    HIT.add_member(:hit_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITTypeId"))
    HIT.add_member(:hit_group_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITGroupId"))
    HIT.add_member(:hit_layout_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITLayoutId"))
    HIT.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    HIT.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "Title"))
    HIT.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    HIT.add_member(:question, Shapes::ShapeRef.new(shape: String, location_name: "Question"))
    HIT.add_member(:keywords, Shapes::ShapeRef.new(shape: String, location_name: "Keywords"))
    HIT.add_member(:hit_status, Shapes::ShapeRef.new(shape: HITStatus, location_name: "HITStatus"))
    HIT.add_member(:max_assignments, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAssignments"))
    HIT.add_member(:reward, Shapes::ShapeRef.new(shape: CurrencyAmount, location_name: "Reward"))
    HIT.add_member(:auto_approval_delay_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "AutoApprovalDelayInSeconds"))
    HIT.add_member(:expiration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Expiration"))
    HIT.add_member(:assignment_duration_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "AssignmentDurationInSeconds"))
    HIT.add_member(:requester_annotation, Shapes::ShapeRef.new(shape: String, location_name: "RequesterAnnotation"))
    HIT.add_member(:qualification_requirements, Shapes::ShapeRef.new(shape: QualificationRequirementList, location_name: "QualificationRequirements"))
    HIT.add_member(:hit_review_status, Shapes::ShapeRef.new(shape: HITReviewStatus, location_name: "HITReviewStatus"))
    HIT.add_member(:number_of_assignments_pending, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfAssignmentsPending"))
    HIT.add_member(:number_of_assignments_available, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfAssignmentsAvailable"))
    HIT.add_member(:number_of_assignments_completed, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfAssignmentsCompleted"))
    HIT.struct_class = Types::HIT

    HITLayoutParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    HITLayoutParameter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    HITLayoutParameter.struct_class = Types::HITLayoutParameter

    HITLayoutParameterList.member = Shapes::ShapeRef.new(shape: HITLayoutParameter)

    HITList.member = Shapes::ShapeRef.new(shape: HIT)

    IntegerList.member = Shapes::ShapeRef.new(shape: Integer)

    ListAssignmentsForHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    ListAssignmentsForHITRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAssignmentsForHITRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListAssignmentsForHITRequest.add_member(:assignment_statuses, Shapes::ShapeRef.new(shape: AssignmentStatusList, location_name: "AssignmentStatuses"))
    ListAssignmentsForHITRequest.struct_class = Types::ListAssignmentsForHITRequest

    ListAssignmentsForHITResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAssignmentsForHITResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListAssignmentsForHITResponse.add_member(:assignments, Shapes::ShapeRef.new(shape: AssignmentList, location_name: "Assignments"))
    ListAssignmentsForHITResponse.struct_class = Types::ListAssignmentsForHITResponse

    ListBonusPaymentsRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITId"))
    ListBonusPaymentsRequest.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "AssignmentId"))
    ListBonusPaymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListBonusPaymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListBonusPaymentsRequest.struct_class = Types::ListBonusPaymentsRequest

    ListBonusPaymentsResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListBonusPaymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListBonusPaymentsResponse.add_member(:bonus_payments, Shapes::ShapeRef.new(shape: BonusPaymentList, location_name: "BonusPayments"))
    ListBonusPaymentsResponse.struct_class = Types::ListBonusPaymentsResponse

    ListHITsForQualificationTypeRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    ListHITsForQualificationTypeRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHITsForQualificationTypeRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListHITsForQualificationTypeRequest.struct_class = Types::ListHITsForQualificationTypeRequest

    ListHITsForQualificationTypeResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHITsForQualificationTypeResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListHITsForQualificationTypeResponse.add_member(:hits, Shapes::ShapeRef.new(shape: HITList, location_name: "HITs"))
    ListHITsForQualificationTypeResponse.struct_class = Types::ListHITsForQualificationTypeResponse

    ListHITsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHITsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListHITsRequest.struct_class = Types::ListHITsRequest

    ListHITsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListHITsResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListHITsResponse.add_member(:hits, Shapes::ShapeRef.new(shape: HITList, location_name: "HITs"))
    ListHITsResponse.struct_class = Types::ListHITsResponse

    ListQualificationRequestsRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "QualificationTypeId"))
    ListQualificationRequestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQualificationRequestsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListQualificationRequestsRequest.struct_class = Types::ListQualificationRequestsRequest

    ListQualificationRequestsResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListQualificationRequestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQualificationRequestsResponse.add_member(:qualification_requests, Shapes::ShapeRef.new(shape: QualificationRequestList, location_name: "QualificationRequests"))
    ListQualificationRequestsResponse.struct_class = Types::ListQualificationRequestsResponse

    ListQualificationTypesRequest.add_member(:query, Shapes::ShapeRef.new(shape: String, location_name: "Query"))
    ListQualificationTypesRequest.add_member(:must_be_requestable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "MustBeRequestable"))
    ListQualificationTypesRequest.add_member(:must_be_owned_by_caller, Shapes::ShapeRef.new(shape: Boolean, location_name: "MustBeOwnedByCaller"))
    ListQualificationTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQualificationTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListQualificationTypesRequest.struct_class = Types::ListQualificationTypesRequest

    ListQualificationTypesResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListQualificationTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListQualificationTypesResponse.add_member(:qualification_types, Shapes::ShapeRef.new(shape: QualificationTypeList, location_name: "QualificationTypes"))
    ListQualificationTypesResponse.struct_class = Types::ListQualificationTypesResponse

    ListReviewPolicyResultsForHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    ListReviewPolicyResultsForHITRequest.add_member(:policy_levels, Shapes::ShapeRef.new(shape: ReviewPolicyLevelList, location_name: "PolicyLevels"))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_actions, Shapes::ShapeRef.new(shape: Boolean, location_name: "RetrieveActions"))
    ListReviewPolicyResultsForHITRequest.add_member(:retrieve_results, Shapes::ShapeRef.new(shape: Boolean, location_name: "RetrieveResults"))
    ListReviewPolicyResultsForHITRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListReviewPolicyResultsForHITRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListReviewPolicyResultsForHITRequest.struct_class = Types::ListReviewPolicyResultsForHITRequest

    ListReviewPolicyResultsForHITResponse.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITId"))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_policy, Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: "AssignmentReviewPolicy"))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_policy, Shapes::ShapeRef.new(shape: ReviewPolicy, location_name: "HITReviewPolicy"))
    ListReviewPolicyResultsForHITResponse.add_member(:assignment_review_report, Shapes::ShapeRef.new(shape: ReviewReport, location_name: "AssignmentReviewReport"))
    ListReviewPolicyResultsForHITResponse.add_member(:hit_review_report, Shapes::ShapeRef.new(shape: ReviewReport, location_name: "HITReviewReport"))
    ListReviewPolicyResultsForHITResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListReviewPolicyResultsForHITResponse.struct_class = Types::ListReviewPolicyResultsForHITResponse

    ListReviewableHITsRequest.add_member(:hit_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "HITTypeId"))
    ListReviewableHITsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ReviewableHITStatus, location_name: "Status"))
    ListReviewableHITsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListReviewableHITsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListReviewableHITsRequest.struct_class = Types::ListReviewableHITsRequest

    ListReviewableHITsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListReviewableHITsResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListReviewableHITsResponse.add_member(:hits, Shapes::ShapeRef.new(shape: HITList, location_name: "HITs"))
    ListReviewableHITsResponse.struct_class = Types::ListReviewableHITsResponse

    ListWorkerBlocksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListWorkerBlocksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListWorkerBlocksRequest.struct_class = Types::ListWorkerBlocksRequest

    ListWorkerBlocksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListWorkerBlocksResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListWorkerBlocksResponse.add_member(:worker_blocks, Shapes::ShapeRef.new(shape: WorkerBlockList, location_name: "WorkerBlocks"))
    ListWorkerBlocksResponse.struct_class = Types::ListWorkerBlocksResponse

    ListWorkersWithQualificationTypeRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    ListWorkersWithQualificationTypeRequest.add_member(:status, Shapes::ShapeRef.new(shape: QualificationStatus, location_name: "Status"))
    ListWorkersWithQualificationTypeRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListWorkersWithQualificationTypeRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultSize, location_name: "MaxResults"))
    ListWorkersWithQualificationTypeRequest.struct_class = Types::ListWorkersWithQualificationTypeRequest

    ListWorkersWithQualificationTypeResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListWorkersWithQualificationTypeResponse.add_member(:num_results, Shapes::ShapeRef.new(shape: Integer, location_name: "NumResults"))
    ListWorkersWithQualificationTypeResponse.add_member(:qualifications, Shapes::ShapeRef.new(shape: QualificationList, location_name: "Qualifications"))
    ListWorkersWithQualificationTypeResponse.struct_class = Types::ListWorkersWithQualificationTypeResponse

    Locale.add_member(:country, Shapes::ShapeRef.new(shape: CountryParameters, required: true, location_name: "Country"))
    Locale.add_member(:subdivision, Shapes::ShapeRef.new(shape: CountryParameters, location_name: "Subdivision"))
    Locale.struct_class = Types::Locale

    LocaleList.member = Shapes::ShapeRef.new(shape: Locale)

    NotificationSpecification.add_member(:destination, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Destination"))
    NotificationSpecification.add_member(:transport, Shapes::ShapeRef.new(shape: NotificationTransport, required: true, location_name: "Transport"))
    NotificationSpecification.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Version"))
    NotificationSpecification.add_member(:event_types, Shapes::ShapeRef.new(shape: EventTypeList, required: true, location_name: "EventTypes"))
    NotificationSpecification.struct_class = Types::NotificationSpecification

    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_code, Shapes::ShapeRef.new(shape: NotifyWorkersFailureCode, location_name: "NotifyWorkersFailureCode"))
    NotifyWorkersFailureStatus.add_member(:notify_workers_failure_message, Shapes::ShapeRef.new(shape: String, location_name: "NotifyWorkersFailureMessage"))
    NotifyWorkersFailureStatus.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "WorkerId"))
    NotifyWorkersFailureStatus.struct_class = Types::NotifyWorkersFailureStatus

    NotifyWorkersFailureStatusList.member = Shapes::ShapeRef.new(shape: NotifyWorkersFailureStatus)

    NotifyWorkersRequest.add_member(:subject, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Subject"))
    NotifyWorkersRequest.add_member(:message_text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageText"))
    NotifyWorkersRequest.add_member(:worker_ids, Shapes::ShapeRef.new(shape: CustomerIdList, required: true, location_name: "WorkerIds"))
    NotifyWorkersRequest.struct_class = Types::NotifyWorkersRequest

    NotifyWorkersResponse.add_member(:notify_workers_failure_statuses, Shapes::ShapeRef.new(shape: NotifyWorkersFailureStatusList, location_name: "NotifyWorkersFailureStatuses"))
    NotifyWorkersResponse.struct_class = Types::NotifyWorkersResponse

    ParameterMapEntry.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    ParameterMapEntry.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "Values"))
    ParameterMapEntry.struct_class = Types::ParameterMapEntry

    ParameterMapEntryList.member = Shapes::ShapeRef.new(shape: ParameterMapEntry)

    PolicyParameter.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    PolicyParameter.add_member(:values, Shapes::ShapeRef.new(shape: StringList, location_name: "Values"))
    PolicyParameter.add_member(:map_entries, Shapes::ShapeRef.new(shape: ParameterMapEntryList, location_name: "MapEntries"))
    PolicyParameter.struct_class = Types::PolicyParameter

    PolicyParameterList.member = Shapes::ShapeRef.new(shape: PolicyParameter)

    Qualification.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "QualificationTypeId"))
    Qualification.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "WorkerId"))
    Qualification.add_member(:grant_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "GrantTime"))
    Qualification.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "IntegerValue"))
    Qualification.add_member(:locale_value, Shapes::ShapeRef.new(shape: Locale, location_name: "LocaleValue"))
    Qualification.add_member(:status, Shapes::ShapeRef.new(shape: QualificationStatus, location_name: "Status"))
    Qualification.struct_class = Types::Qualification

    QualificationList.member = Shapes::ShapeRef.new(shape: Qualification)

    QualificationRequest.add_member(:qualification_request_id, Shapes::ShapeRef.new(shape: String, location_name: "QualificationRequestId"))
    QualificationRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "QualificationTypeId"))
    QualificationRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "WorkerId"))
    QualificationRequest.add_member(:test, Shapes::ShapeRef.new(shape: String, location_name: "Test"))
    QualificationRequest.add_member(:answer, Shapes::ShapeRef.new(shape: String, location_name: "Answer"))
    QualificationRequest.add_member(:submit_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "SubmitTime"))
    QualificationRequest.struct_class = Types::QualificationRequest

    QualificationRequestList.member = Shapes::ShapeRef.new(shape: QualificationRequest)

    QualificationRequirement.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QualificationTypeId"))
    QualificationRequirement.add_member(:comparator, Shapes::ShapeRef.new(shape: Comparator, required: true, location_name: "Comparator"))
    QualificationRequirement.add_member(:integer_values, Shapes::ShapeRef.new(shape: IntegerList, location_name: "IntegerValues"))
    QualificationRequirement.add_member(:locale_values, Shapes::ShapeRef.new(shape: LocaleList, location_name: "LocaleValues"))
    QualificationRequirement.add_member(:required_to_preview, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "RequiredToPreview"))
    QualificationRequirement.add_member(:actions_guarded, Shapes::ShapeRef.new(shape: HITAccessActions, location_name: "ActionsGuarded"))
    QualificationRequirement.struct_class = Types::QualificationRequirement

    QualificationRequirementList.member = Shapes::ShapeRef.new(shape: QualificationRequirement)

    QualificationType.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "QualificationTypeId"))
    QualificationType.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    QualificationType.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    QualificationType.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    QualificationType.add_member(:keywords, Shapes::ShapeRef.new(shape: String, location_name: "Keywords"))
    QualificationType.add_member(:qualification_type_status, Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: "QualificationTypeStatus"))
    QualificationType.add_member(:test, Shapes::ShapeRef.new(shape: String, location_name: "Test"))
    QualificationType.add_member(:test_duration_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "TestDurationInSeconds"))
    QualificationType.add_member(:answer_key, Shapes::ShapeRef.new(shape: String, location_name: "AnswerKey"))
    QualificationType.add_member(:retry_delay_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "RetryDelayInSeconds"))
    QualificationType.add_member(:is_requestable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsRequestable"))
    QualificationType.add_member(:auto_granted, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoGranted"))
    QualificationType.add_member(:auto_granted_value, Shapes::ShapeRef.new(shape: Integer, location_name: "AutoGrantedValue"))
    QualificationType.struct_class = Types::QualificationType

    QualificationTypeList.member = Shapes::ShapeRef.new(shape: QualificationType)

    RejectAssignmentRequest.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "AssignmentId"))
    RejectAssignmentRequest.add_member(:requester_feedback, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequesterFeedback"))
    RejectAssignmentRequest.struct_class = Types::RejectAssignmentRequest

    RejectAssignmentResponse.struct_class = Types::RejectAssignmentResponse

    RejectQualificationRequestRequest.add_member(:qualification_request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QualificationRequestId"))
    RejectQualificationRequestRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    RejectQualificationRequestRequest.struct_class = Types::RejectQualificationRequestRequest

    RejectQualificationRequestResponse.struct_class = Types::RejectQualificationRequestResponse

    ReviewActionDetail.add_member(:action_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "ActionId"))
    ReviewActionDetail.add_member(:action_name, Shapes::ShapeRef.new(shape: String, location_name: "ActionName"))
    ReviewActionDetail.add_member(:target_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "TargetId"))
    ReviewActionDetail.add_member(:target_type, Shapes::ShapeRef.new(shape: String, location_name: "TargetType"))
    ReviewActionDetail.add_member(:status, Shapes::ShapeRef.new(shape: ReviewActionStatus, location_name: "Status"))
    ReviewActionDetail.add_member(:complete_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CompleteTime"))
    ReviewActionDetail.add_member(:result, Shapes::ShapeRef.new(shape: String, location_name: "Result"))
    ReviewActionDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    ReviewActionDetail.struct_class = Types::ReviewActionDetail

    ReviewActionDetailList.member = Shapes::ShapeRef.new(shape: ReviewActionDetail)

    ReviewPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PolicyName"))
    ReviewPolicy.add_member(:parameters, Shapes::ShapeRef.new(shape: PolicyParameterList, location_name: "Parameters"))
    ReviewPolicy.struct_class = Types::ReviewPolicy

    ReviewPolicyLevelList.member = Shapes::ShapeRef.new(shape: ReviewPolicyLevel)

    ReviewReport.add_member(:review_results, Shapes::ShapeRef.new(shape: ReviewResultDetailList, location_name: "ReviewResults"))
    ReviewReport.add_member(:review_actions, Shapes::ShapeRef.new(shape: ReviewActionDetailList, location_name: "ReviewActions"))
    ReviewReport.struct_class = Types::ReviewReport

    ReviewResultDetail.add_member(:action_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "ActionId"))
    ReviewResultDetail.add_member(:subject_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "SubjectId"))
    ReviewResultDetail.add_member(:subject_type, Shapes::ShapeRef.new(shape: String, location_name: "SubjectType"))
    ReviewResultDetail.add_member(:question_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "QuestionId"))
    ReviewResultDetail.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    ReviewResultDetail.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    ReviewResultDetail.struct_class = Types::ReviewResultDetail

    ReviewResultDetailList.member = Shapes::ShapeRef.new(shape: ReviewResultDetail)

    SendBonusRequest.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, required: true, location_name: "WorkerId"))
    SendBonusRequest.add_member(:bonus_amount, Shapes::ShapeRef.new(shape: CurrencyAmount, required: true, location_name: "BonusAmount"))
    SendBonusRequest.add_member(:assignment_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "AssignmentId"))
    SendBonusRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Reason"))
    SendBonusRequest.add_member(:unique_request_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "UniqueRequestToken"))
    SendBonusRequest.struct_class = Types::SendBonusRequest

    SendBonusResponse.struct_class = Types::SendBonusResponse

    SendTestEventNotificationRequest.add_member(:notification, Shapes::ShapeRef.new(shape: NotificationSpecification, required: true, location_name: "Notification"))
    SendTestEventNotificationRequest.add_member(:test_event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "TestEventType"))
    SendTestEventNotificationRequest.struct_class = Types::SendTestEventNotificationRequest

    SendTestEventNotificationResponse.struct_class = Types::SendTestEventNotificationResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    UpdateExpirationForHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    UpdateExpirationForHITRequest.add_member(:expire_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "ExpireAt"))
    UpdateExpirationForHITRequest.struct_class = Types::UpdateExpirationForHITRequest

    UpdateExpirationForHITResponse.struct_class = Types::UpdateExpirationForHITResponse

    UpdateHITReviewStatusRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    UpdateHITReviewStatusRequest.add_member(:revert, Shapes::ShapeRef.new(shape: Boolean, location_name: "Revert"))
    UpdateHITReviewStatusRequest.struct_class = Types::UpdateHITReviewStatusRequest

    UpdateHITReviewStatusResponse.struct_class = Types::UpdateHITReviewStatusResponse

    UpdateHITTypeOfHITRequest.add_member(:hit_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITId"))
    UpdateHITTypeOfHITRequest.add_member(:hit_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITTypeId"))
    UpdateHITTypeOfHITRequest.struct_class = Types::UpdateHITTypeOfHITRequest

    UpdateHITTypeOfHITResponse.struct_class = Types::UpdateHITTypeOfHITResponse

    UpdateNotificationSettingsRequest.add_member(:hit_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "HITTypeId"))
    UpdateNotificationSettingsRequest.add_member(:notification, Shapes::ShapeRef.new(shape: NotificationSpecification, location_name: "Notification"))
    UpdateNotificationSettingsRequest.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "Active"))
    UpdateNotificationSettingsRequest.struct_class = Types::UpdateNotificationSettingsRequest

    UpdateNotificationSettingsResponse.struct_class = Types::UpdateNotificationSettingsResponse

    UpdateQualificationTypeRequest.add_member(:qualification_type_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "QualificationTypeId"))
    UpdateQualificationTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateQualificationTypeRequest.add_member(:qualification_type_status, Shapes::ShapeRef.new(shape: QualificationTypeStatus, location_name: "QualificationTypeStatus"))
    UpdateQualificationTypeRequest.add_member(:test, Shapes::ShapeRef.new(shape: String, location_name: "Test"))
    UpdateQualificationTypeRequest.add_member(:answer_key, Shapes::ShapeRef.new(shape: String, location_name: "AnswerKey"))
    UpdateQualificationTypeRequest.add_member(:test_duration_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "TestDurationInSeconds"))
    UpdateQualificationTypeRequest.add_member(:retry_delay_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "RetryDelayInSeconds"))
    UpdateQualificationTypeRequest.add_member(:auto_granted, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoGranted"))
    UpdateQualificationTypeRequest.add_member(:auto_granted_value, Shapes::ShapeRef.new(shape: Integer, location_name: "AutoGrantedValue"))
    UpdateQualificationTypeRequest.struct_class = Types::UpdateQualificationTypeRequest

    UpdateQualificationTypeResponse.add_member(:qualification_type, Shapes::ShapeRef.new(shape: QualificationType, location_name: "QualificationType"))
    UpdateQualificationTypeResponse.struct_class = Types::UpdateQualificationTypeResponse

    WorkerBlock.add_member(:worker_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "WorkerId"))
    WorkerBlock.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "Reason"))
    WorkerBlock.struct_class = Types::WorkerBlock

    WorkerBlockList.member = Shapes::ShapeRef.new(shape: WorkerBlock)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-01-17"

      api.metadata = {
        "apiVersion" => "2017-01-17",
        "endpointPrefix" => "mturk-requester",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Amazon MTurk",
        "serviceFullName" => "Amazon Mechanical Turk",
        "serviceId" => "MTurk",
        "signatureVersion" => "v4",
        "targetPrefix" => "MTurkRequesterServiceV20170117",
        "uid" => "mturk-requester-2017-01-17",
      }

      api.add_operation(:accept_qualification_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptQualificationRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptQualificationRequestRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptQualificationRequestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:approve_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApproveAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApproveAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: ApproveAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:associate_qualification_with_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateQualificationWithWorker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateQualificationWithWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateQualificationWithWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:create_additional_assignments_for_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAdditionalAssignmentsForHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAdditionalAssignmentsForHITRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAdditionalAssignmentsForHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:create_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHITRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:create_hit_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHITType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHITTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHITTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:create_hit_with_hit_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateHITWithHITType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateHITWithHITTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateHITWithHITTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:create_qualification_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQualificationType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateQualificationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQualificationTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:create_worker_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkerBlock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkerBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkerBlockResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:delete_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteHITRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:delete_qualification_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQualificationType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQualificationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteQualificationTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:delete_worker_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkerBlock"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkerBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkerBlockResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:disassociate_qualification_from_worker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateQualificationFromWorker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateQualificationFromWorkerRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateQualificationFromWorkerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:get_account_balance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountBalance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccountBalanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountBalanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:get_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:get_file_upload_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFileUploadURL"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFileUploadURLRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFileUploadURLResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:get_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetHITRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:get_qualification_score, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQualificationScore"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQualificationScoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQualificationScoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:get_qualification_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQualificationType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQualificationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQualificationTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:list_assignments_for_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssignmentsForHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssignmentsForHITRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssignmentsForHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bonus_payments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBonusPayments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBonusPaymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBonusPaymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHITs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHITsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHITsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_hits_for_qualification_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHITsForQualificationType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListHITsForQualificationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHITsForQualificationTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_qualification_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQualificationRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQualificationRequestsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQualificationRequestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_qualification_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQualificationTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQualificationTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQualificationTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_review_policy_results_for_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReviewPolicyResultsForHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReviewPolicyResultsForHITRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReviewPolicyResultsForHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reviewable_hits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReviewableHITs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListReviewableHITsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReviewableHITsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_worker_blocks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkerBlocks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkerBlocksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkerBlocksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workers_with_qualification_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkersWithQualificationType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkersWithQualificationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkersWithQualificationTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:notify_workers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyWorkers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: NotifyWorkersRequest)
        o.output = Shapes::ShapeRef.new(shape: NotifyWorkersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:reject_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:reject_qualification_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectQualificationRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectQualificationRequestRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectQualificationRequestResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:send_bonus, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendBonus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendBonusRequest)
        o.output = Shapes::ShapeRef.new(shape: SendBonusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:send_test_event_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendTestEventNotification"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendTestEventNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: SendTestEventNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:update_expiration_for_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateExpirationForHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateExpirationForHITRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateExpirationForHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:update_hit_review_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHITReviewStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateHITReviewStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateHITReviewStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:update_hit_type_of_hit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateHITTypeOfHIT"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateHITTypeOfHITRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateHITTypeOfHITResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:update_notification_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotificationSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotificationSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)

      api.add_operation(:update_qualification_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQualificationType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateQualificationTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQualificationTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFault)
        o.errors << Shapes::ShapeRef.new(shape: RequestError)
      end)
    end

  end
end

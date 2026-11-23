# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectScheduling
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActorInfo = Shapes::UnionShape.new(name: 'ActorInfo')
    ApprovalType = Shapes::StringShape.new(name: 'ApprovalType')
    ApproveTimeOffRequest = Shapes::StructureShape.new(name: 'ApproveTimeOffRequest')
    ApproveTimeOffResponse = Shapes::StructureShape.new(name: 'ApproveTimeOffResponse')
    CancelTimeOffRequest = Shapes::StructureShape.new(name: 'CancelTimeOffRequest')
    CancelTimeOffResponse = Shapes::StructureShape.new(name: 'CancelTimeOffResponse')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateTimeOffRequest = Shapes::StructureShape.new(name: 'CreateTimeOffRequest')
    CreateTimeOffResponse = Shapes::StructureShape.new(name: 'CreateTimeOffResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Duration = Shapes::StructureShape.new(name: 'Duration')
    DurationUnit = Shapes::StringShape.new(name: 'DurationUnit')
    DurationValue = Shapes::IntegerShape.new(name: 'DurationValue')
    GetTimeOffRequest = Shapes::StructureShape.new(name: 'GetTimeOffRequest')
    GetTimeOffResponse = Shapes::StructureShape.new(name: 'GetTimeOffResponse')
    InstanceIdOrArn = Shapes::StringShape.new(name: 'InstanceIdOrArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Message = Shapes::StringShape.new(name: 'Message')
    PutTimeOffBalanceRequest = Shapes::StructureShape.new(name: 'PutTimeOffBalanceRequest')
    PutTimeOffBalanceResponse = Shapes::StructureShape.new(name: 'PutTimeOffBalanceResponse')
    RejectTimeOffRequest = Shapes::StructureShape.new(name: 'RejectTimeOffRequest')
    RejectTimeOffResponse = Shapes::StructureShape.new(name: 'RejectTimeOffResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuleFailureAction = Shapes::StringShape.new(name: 'RuleFailureAction')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShiftActivityId = Shapes::StringShape.new(name: 'ShiftActivityId')
    ShiftActivityIdOrArn = Shapes::StringShape.new(name: 'ShiftActivityIdOrArn')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeOffId = Shapes::StringShape.new(name: 'TimeOffId')
    TimeOffStatus = Shapes::StringShape.new(name: 'TimeOffStatus')
    TimeOffValidationCode = Shapes::StringShape.new(name: 'TimeOffValidationCode')
    TimeOffValidationResult = Shapes::StructureShape.new(name: 'TimeOffValidationResult')
    TimeOffValidationResults = Shapes::ListShape.new(name: 'TimeOffValidationResults')
    TimeOffValidationSeverity = Shapes::StringShape.new(name: 'TimeOffValidationSeverity')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIdOrArn = Shapes::StringShape.new(name: 'UserIdOrArn')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActorInfo.add_member(:connect_user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ConnectUserArn"))
    ActorInfo.add_member(:aws_identity_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "AWSIdentityArn"))
    ActorInfo.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ActorInfo.add_member_subclass(:connect_user_arn, Types::ActorInfo::ConnectUserArn)
    ActorInfo.add_member_subclass(:aws_identity_arn, Types::ActorInfo::AwsIdentityArn)
    ActorInfo.add_member_subclass(:unknown, Types::ActorInfo::Unknown)
    ActorInfo.struct_class = Types::ActorInfo

    ApproveTimeOffRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    ApproveTimeOffRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdOrArn, required: true, location: "uri", location_name: "UserId"))
    ApproveTimeOffRequest.add_member(:time_off_id, Shapes::ShapeRef.new(shape: TimeOffId, required: true, location: "uri", location_name: "TimeOffId"))
    ApproveTimeOffRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ApproveTimeOffRequest.add_member(:rule_failure_action, Shapes::ShapeRef.new(shape: RuleFailureAction, location_name: "RuleFailureAction"))
    ApproveTimeOffRequest.struct_class = Types::ApproveTimeOffRequest

    ApproveTimeOffResponse.struct_class = Types::ApproveTimeOffResponse

    CancelTimeOffRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    CancelTimeOffRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdOrArn, required: true, location: "uri", location_name: "UserId"))
    CancelTimeOffRequest.add_member(:time_off_id, Shapes::ShapeRef.new(shape: TimeOffId, required: true, location: "uri", location_name: "TimeOffId"))
    CancelTimeOffRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CancelTimeOffRequest.struct_class = Types::CancelTimeOffRequest

    CancelTimeOffResponse.struct_class = Types::CancelTimeOffResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateTimeOffRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    CreateTimeOffRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdOrArn, required: true, location: "uri", location_name: "UserId"))
    CreateTimeOffRequest.add_member(:shift_activity_id, Shapes::ShapeRef.new(shape: ShiftActivityIdOrArn, required: true, location_name: "ShiftActivityId"))
    CreateTimeOffRequest.add_member(:start_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartAt"))
    CreateTimeOffRequest.add_member(:end_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndAt"))
    CreateTimeOffRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateTimeOffRequest.add_member(:approval_type, Shapes::ShapeRef.new(shape: ApprovalType, required: true, location_name: "ApprovalType"))
    CreateTimeOffRequest.add_member(:rule_failure_action, Shapes::ShapeRef.new(shape: RuleFailureAction, location_name: "RuleFailureAction"))
    CreateTimeOffRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateTimeOffRequest.struct_class = Types::CreateTimeOffRequest

    CreateTimeOffResponse.add_member(:time_off_id, Shapes::ShapeRef.new(shape: TimeOffId, required: true, location_name: "TimeOffId"))
    CreateTimeOffResponse.struct_class = Types::CreateTimeOffResponse

    Duration.add_member(:value, Shapes::ShapeRef.new(shape: DurationValue, required: true, location_name: "Value"))
    Duration.add_member(:unit, Shapes::ShapeRef.new(shape: DurationUnit, required: true, location_name: "Unit"))
    Duration.struct_class = Types::Duration

    GetTimeOffRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    GetTimeOffRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdOrArn, required: true, location: "uri", location_name: "UserId"))
    GetTimeOffRequest.add_member(:time_off_id, Shapes::ShapeRef.new(shape: TimeOffId, required: true, location: "uri", location_name: "TimeOffId"))
    GetTimeOffRequest.struct_class = Types::GetTimeOffRequest

    GetTimeOffResponse.add_member(:time_off_id, Shapes::ShapeRef.new(shape: TimeOffId, required: true, location_name: "TimeOffId"))
    GetTimeOffResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location_name: "UserId"))
    GetTimeOffResponse.add_member(:shift_activity_id, Shapes::ShapeRef.new(shape: ShiftActivityId, required: true, location_name: "ShiftActivityId"))
    GetTimeOffResponse.add_member(:start_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartAt"))
    GetTimeOffResponse.add_member(:end_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndAt"))
    GetTimeOffResponse.add_member(:status, Shapes::ShapeRef.new(shape: TimeOffStatus, required: true, location_name: "Status"))
    GetTimeOffResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetTimeOffResponse.add_member(:validation_results, Shapes::ShapeRef.new(shape: TimeOffValidationResults, location_name: "ValidationResults"))
    GetTimeOffResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: ActorInfo, required: true, location_name: "CreatedBy"))
    GetTimeOffResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedAt"))
    GetTimeOffResponse.add_member(:updated_by, Shapes::ShapeRef.new(shape: ActorInfo, location_name: "UpdatedBy"))
    GetTimeOffResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "UpdatedAt"))
    GetTimeOffResponse.struct_class = Types::GetTimeOffResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    PutTimeOffBalanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    PutTimeOffBalanceRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdOrArn, required: true, location: "uri", location_name: "UserId"))
    PutTimeOffBalanceRequest.add_member(:shift_activity_id, Shapes::ShapeRef.new(shape: ShiftActivityIdOrArn, required: true, location: "uri", location_name: "ShiftActivityId"))
    PutTimeOffBalanceRequest.add_member(:balance, Shapes::ShapeRef.new(shape: Duration, required: true, location_name: "Balance"))
    PutTimeOffBalanceRequest.struct_class = Types::PutTimeOffBalanceRequest

    PutTimeOffBalanceResponse.struct_class = Types::PutTimeOffBalanceResponse

    RejectTimeOffRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceIdOrArn, required: true, location: "uri", location_name: "InstanceId"))
    RejectTimeOffRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserIdOrArn, required: true, location: "uri", location_name: "UserId"))
    RejectTimeOffRequest.add_member(:time_off_id, Shapes::ShapeRef.new(shape: TimeOffId, required: true, location: "uri", location_name: "TimeOffId"))
    RejectTimeOffRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    RejectTimeOffRequest.struct_class = Types::RejectTimeOffRequest

    RejectTimeOffResponse.struct_class = Types::RejectTimeOffResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TimeOffValidationResult.add_member(:severity, Shapes::ShapeRef.new(shape: TimeOffValidationSeverity, required: true, location_name: "Severity"))
    TimeOffValidationResult.add_member(:code, Shapes::ShapeRef.new(shape: TimeOffValidationCode, required: true, location_name: "Code"))
    TimeOffValidationResult.struct_class = Types::TimeOffValidationResult

    TimeOffValidationResults.member = Shapes::ShapeRef.new(shape: TimeOffValidationResult)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "FieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-07-16"

      api.metadata = {
        "apiVersion" => "2026-07-16",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "connect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Connect Scheduling",
        "serviceId" => "ConnectScheduling",
        "signatureVersion" => "v4",
        "signingName" => "connect",
        "uid" => "connectscheduling-2026-07-16",
      }

      api.add_operation(:approve_time_off, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApproveTimeOff"
        o.http_method = "POST"
        o.http_request_uri = "/scheduling/instances/{InstanceId}/users/{UserId}/timeoffs/{TimeOffId}/approve"
        o.input = Shapes::ShapeRef.new(shape: ApproveTimeOffRequest)
        o.output = Shapes::ShapeRef.new(shape: ApproveTimeOffResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:cancel_time_off, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTimeOff"
        o.http_method = "POST"
        o.http_request_uri = "/scheduling/instances/{InstanceId}/users/{UserId}/timeoffs/{TimeOffId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelTimeOffRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelTimeOffResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_time_off, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTimeOff"
        o.http_method = "POST"
        o.http_request_uri = "/scheduling/instances/{InstanceId}/users/{UserId}/timeoffs"
        o.input = Shapes::ShapeRef.new(shape: CreateTimeOffRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTimeOffResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_time_off, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTimeOff"
        o.http_method = "GET"
        o.http_request_uri = "/scheduling/instances/{InstanceId}/users/{UserId}/timeoffs/{TimeOffId}"
        o.input = Shapes::ShapeRef.new(shape: GetTimeOffRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTimeOffResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_time_off_balance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTimeOffBalance"
        o.http_method = "PUT"
        o.http_request_uri = "/scheduling/instances/{InstanceId}/users/{UserId}/timeoff-balances/{ShiftActivityId}"
        o.input = Shapes::ShapeRef.new(shape: PutTimeOffBalanceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTimeOffBalanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reject_time_off, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectTimeOff"
        o.http_method = "POST"
        o.http_request_uri = "/scheduling/instances/{InstanceId}/users/{UserId}/timeoffs/{TimeOffId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectTimeOffRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectTimeOffResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end

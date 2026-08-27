# frozen_string_literal: true

# This is generated code!

module Aws::CloudControl
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#AlreadyExistsException", name: "AlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "AlreadyExistsException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CancelResourceRequestOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#CancelResourceRequestOperationInput", name: "CancelResourceRequestOperationInput")
    CancelResourceRequestOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#CancelResourceRequestOperationOutput", name: "CancelResourceRequestOperationOutput")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-A-Za-z0-9+/=]+$"})
    ClientTokenConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ClientTokenConflictException", name: "ClientTokenConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ClientTokenConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentModificationException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ConcurrentOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ConcurrentOperationException", name: "ConcurrentOperationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentOperationException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#CreateResourceOperationInput", name: "CreateResourceOperationInput")
    CreateResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#CreateResourceOperationOutput", name: "CreateResourceOperationOutput")
    DeleteResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#DeleteResourceOperationInput", name: "DeleteResourceOperationInput")
    DeleteResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#DeleteResourceOperationOutput", name: "DeleteResourceOperationOutput")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^.+$"})
    GeneralServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#GeneralServiceException", name: "GeneralServiceException", traits: {"aws.protocols#awsQueryError" => {"code" => "GeneralServiceException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#GetResourceOperationInput", name: "GetResourceOperationInput")
    GetResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#GetResourceOperationOutput", name: "GetResourceOperationOutput")
    GetResourceRequestStatusOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#GetResourceRequestStatusOperationInput", name: "GetResourceRequestStatusOperationInput")
    GetResourceRequestStatusOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#GetResourceRequestStatusOperationOutput", name: "GetResourceRequestStatusOperationOutput")
    HandlerErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#HandlerErrorCode", name: "HandlerErrorCode", traits: {"smithy.api#enum" => [{"value" => "NotUpdatable", "name" => "NOT_UPDATABLE"}, {"value" => "InvalidRequest", "name" => "INVALID_REQUEST"}, {"value" => "AccessDenied", "name" => "ACCESS_DENIED"}, {"value" => "UnauthorizedTaggingOperation", "name" => "UNAUTHORIZED_TAGGING_OPERATION"}, {"value" => "InvalidCredentials", "name" => "INVALID_CREDENTIALS"}, {"value" => "AlreadyExists", "name" => "ALREADY_EXISTS"}, {"value" => "NotFound", "name" => "NOT_FOUND"}, {"value" => "ResourceConflict", "name" => "RESOURCE_CONFLICT"}, {"value" => "Throttling", "name" => "THROTTLING"}, {"value" => "ServiceLimitExceeded", "name" => "SERVICE_LIMIT_EXCEEDED"}, {"value" => "NotStabilized", "name" => "NOT_STABILIZED"}, {"value" => "GeneralServiceException", "name" => "GENERAL_SERVICE_EXCEPTION"}, {"value" => "ServiceInternalError", "name" => "SERVICE_INTERNAL_ERROR"}, {"value" => "ServiceTimeout", "name" => "SERVICE_TIMEOUT"}, {"value" => "NetworkFailure", "name" => "NETWORK_FAILURE"}, {"value" => "InternalFailure", "name" => "INTERNAL_FAILURE"}]})
    HandlerFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#HandlerFailureException", name: "HandlerFailureException", traits: {"aws.protocols#awsQueryError" => {"code" => "HandlerFailureException", "httpResponseCode" => 502}, "smithy.api#error" => "server", "smithy.api#httpError" => 502})
    HandlerInternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#HandlerInternalFailureException", name: "HandlerInternalFailureException", traits: {"aws.protocols#awsQueryError" => {"code" => "HandlerInternalFailureException", "httpResponseCode" => 502}, "smithy.api#error" => "server", "smithy.api#httpError" => 502})
    HandlerNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#HandlerNextToken", name: "HandlerNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => "^.+$"})
    HookFailureMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#HookFailureMode", name: "HookFailureMode", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-A-Za-z_]+$"})
    HookInvocationPoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#HookInvocationPoint", name: "HookInvocationPoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-A-Za-z_]+$"})
    HookProgressEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#HookProgressEvent", name: "HookProgressEvent")
    HookStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#HookStatus", name: "HookStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-A-Za-z_]+$"})
    HookTypeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#HookTypeArn", name: "HookTypeArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws.*:.+:.*:.*:.+$"})
    HooksProgressEvent = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudcontrol#HooksProgressEvent", name: "HooksProgressEvent")
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#Identifier", name: "Identifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.+$"})
    InvalidCredentialsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#InvalidCredentialsException", name: "InvalidCredentialsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidCredentialsException", "httpResponseCode" => 401}, "smithy.api#error" => "client", "smithy.api#httpError" => 401})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#InvalidRequestException", name: "InvalidRequestException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidRequestException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListResourceRequestsOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ListResourceRequestsOperationInput", name: "ListResourceRequestsOperationInput")
    ListResourceRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ListResourceRequestsOutput", name: "ListResourceRequestsOutput")
    ListResourcesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ListResourcesOperationInput", name: "ListResourcesOperationInput")
    ListResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ListResourcesOutput", name: "ListResourcesOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudcontrol#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NetworkFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#NetworkFailureException", name: "NetworkFailureException", traits: {"aws.protocols#awsQueryError" => {"code" => "NetworkFailureException", "httpResponseCode" => 502}, "smithy.api#error" => "server", "smithy.api#httpError" => 502})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[-A-Za-z0-9+/=]+$"})
    NotStabilizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#NotStabilizedException", name: "NotStabilizedException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotStabilizedException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotUpdatableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#NotUpdatableException", name: "NotUpdatableException", traits: {"aws.protocols#awsQueryError" => {"code" => "NotUpdatableException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Operation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#Operation", name: "Operation", traits: {"smithy.api#enum" => [{"value" => "CREATE", "name" => "CREATE"}, {"value" => "DELETE", "name" => "DELETE"}, {"value" => "UPDATE", "name" => "UPDATE"}]})
    OperationStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#OperationStatus", name: "OperationStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCEL_IN_PROGRESS", "name" => "CANCEL_IN_PROGRESS"}, {"value" => "CANCEL_COMPLETE", "name" => "CANCEL_COMPLETE"}]})
    OperationStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudcontrol#OperationStatuses", name: "OperationStatuses")
    Operations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudcontrol#Operations", name: "Operations")
    PatchDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#PatchDocument", name: "PatchDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    PrivateTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#PrivateTypeException", name: "PrivateTypeException", traits: {"aws.protocols#awsQueryError" => {"code" => "PrivateTypeException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ProgressEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ProgressEvent", name: "ProgressEvent")
    Properties = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#Properties", name: "Properties", traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    RequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#RequestToken", name: "RequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[-A-Za-z0-9+/=]+$"})
    RequestTokenNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#RequestTokenNotFoundException", name: "RequestTokenNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "RequestTokenNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ResourceConflictException", name: "ResourceConflictException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceConflictException", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ResourceDescription", name: "ResourceDescription")
    ResourceDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudcontrol#ResourceDescriptions", name: "ResourceDescriptions")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceRequestStatusFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ResourceRequestStatusFilter", name: "ResourceRequestStatusFilter")
    ResourceRequestStatusSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudcontrol#ResourceRequestStatusSummaries", name: "ResourceRequestStatusSummaries")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.+:iam::[0-9]{12}:role/.+$"})
    ServiceInternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ServiceInternalErrorException", name: "ServiceInternalErrorException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceInternalErrorException", "httpResponseCode" => 502}, "smithy.api#error" => "server", "smithy.api#httpError" => 502})
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ServiceLimitExceededException", name: "ServiceLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "ServiceLimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "ThrottlingException", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudcontrol#Timestamp", name: "Timestamp")
    TypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#TypeName", name: "TypeName", traits: {"smithy.api#length" => {"min" => 10, "max" => 196}, "smithy.api#pattern" => "^[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}$"})
    TypeNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#TypeNotFoundException", name: "TypeNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "TypeNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    TypeVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudcontrol#TypeVersionId", name: "TypeVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9-]+$"})
    UnsupportedActionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#UnsupportedActionException", name: "UnsupportedActionException", traits: {"aws.protocols#awsQueryError" => {"code" => "UnsupportedActionException", "httpResponseCode" => 405}, "smithy.api#error" => "client", "smithy.api#httpError" => 405})
    UpdateResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#UpdateResourceOperationInput", name: "UpdateResourceOperationInput")
    UpdateResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudcontrol#UpdateResourceOperationOutput", name: "UpdateResourceOperationOutput")

    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    CancelResourceRequestOperationInput.add_member(:request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestToken, name: "RequestToken", traits: {"smithy.api#required" => {}}))
    CancelResourceRequestOperationInput.type = Types::CancelResourceRequestOperationInput
    CancelResourceRequestOperationOutput.add_member(:progress_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "ProgressEvent"))
    CancelResourceRequestOperationOutput.type = Types::CancelResourceRequestOperationOutput
    ClientTokenConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ClientTokenConflictException.type = Types::ClientTokenConflictException
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConcurrentOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentOperationException.type = Types::ConcurrentOperationException
    CreateResourceOperationInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    CreateResourceOperationInput.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "TypeVersionId"))
    CreateResourceOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    CreateResourceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateResourceOperationInput.add_member(:desired_state, ::Smithy::Schema::Shapes::MemberShape.new(target: Properties, name: "DesiredState", traits: {"smithy.api#required" => {}}))
    CreateResourceOperationInput.type = Types::CreateResourceOperationInput
    CreateResourceOperationOutput.add_member(:progress_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "ProgressEvent"))
    CreateResourceOperationOutput.type = Types::CreateResourceOperationOutput
    DeleteResourceOperationInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    DeleteResourceOperationInput.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "TypeVersionId"))
    DeleteResourceOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    DeleteResourceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteResourceOperationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    DeleteResourceOperationInput.type = Types::DeleteResourceOperationInput
    DeleteResourceOperationOutput.add_member(:progress_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "ProgressEvent"))
    DeleteResourceOperationOutput.type = Types::DeleteResourceOperationOutput
    GeneralServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    GeneralServiceException.type = Types::GeneralServiceException
    GetResourceOperationInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    GetResourceOperationInput.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "TypeVersionId"))
    GetResourceOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    GetResourceOperationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetResourceOperationInput.type = Types::GetResourceOperationInput
    GetResourceOperationOutput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    GetResourceOperationOutput.add_member(:resource_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "ResourceDescription"))
    GetResourceOperationOutput.type = Types::GetResourceOperationOutput
    GetResourceRequestStatusOperationInput.add_member(:request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestToken, name: "RequestToken", traits: {"smithy.api#required" => {}}))
    GetResourceRequestStatusOperationInput.type = Types::GetResourceRequestStatusOperationInput
    GetResourceRequestStatusOperationOutput.add_member(:progress_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "ProgressEvent"))
    GetResourceRequestStatusOperationOutput.add_member(:hooks_progress_event, ::Smithy::Schema::Shapes::MemberShape.new(target: HooksProgressEvent, name: "HooksProgressEvent"))
    GetResourceRequestStatusOperationOutput.type = Types::GetResourceRequestStatusOperationOutput
    HandlerFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    HandlerFailureException.type = Types::HandlerFailureException
    HandlerInternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    HandlerInternalFailureException.type = Types::HandlerInternalFailureException
    HookProgressEvent.add_member(:hook_type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "HookTypeName"))
    HookProgressEvent.add_member(:hook_type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "HookTypeVersionId"))
    HookProgressEvent.add_member(:hook_type_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HookTypeArn, name: "HookTypeArn"))
    HookProgressEvent.add_member(:invocation_point, ::Smithy::Schema::Shapes::MemberShape.new(target: HookInvocationPoint, name: "InvocationPoint"))
    HookProgressEvent.add_member(:hook_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HookStatus, name: "HookStatus"))
    HookProgressEvent.add_member(:hook_event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "HookEventTime"))
    HookProgressEvent.add_member(:hook_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "HookStatusMessage"))
    HookProgressEvent.add_member(:failure_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HookFailureMode, name: "FailureMode"))
    HookProgressEvent.type = Types::HookProgressEvent
    HooksProgressEvent.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HookProgressEvent, name: "member")
    InvalidCredentialsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidCredentialsException.type = Types::InvalidCredentialsException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    ListResourceRequestsOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResourceRequestsOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceRequestsOperationInput.add_member(:resource_request_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequestStatusFilter, name: "ResourceRequestStatusFilter"))
    ListResourceRequestsOperationInput.type = Types::ListResourceRequestsOperationInput
    ListResourceRequestsOutput.add_member(:resource_request_status_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequestStatusSummaries, name: "ResourceRequestStatusSummaries"))
    ListResourceRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListResourceRequestsOutput.type = Types::ListResourceRequestsOutput
    ListResourcesOperationInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    ListResourcesOperationInput.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "TypeVersionId"))
    ListResourcesOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    ListResourcesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerNextToken, name: "NextToken"))
    ListResourcesOperationInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListResourcesOperationInput.add_member(:resource_model, ::Smithy::Schema::Shapes::MemberShape.new(target: Properties, name: "ResourceModel"))
    ListResourcesOperationInput.type = Types::ListResourcesOperationInput
    ListResourcesOutput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    ListResourcesOutput.add_member(:resource_descriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescriptions, name: "ResourceDescriptions"))
    ListResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerNextToken, name: "NextToken"))
    ListResourcesOutput.type = Types::ListResourcesOutput
    NetworkFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NetworkFailureException.type = Types::NetworkFailureException
    NotStabilizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotStabilizedException.type = Types::NotStabilizedException
    NotUpdatableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NotUpdatableException.type = Types::NotUpdatableException
    OperationStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "member")
    Operations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "member")
    PrivateTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PrivateTypeException.type = Types::PrivateTypeException
    ProgressEvent.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName"))
    ProgressEvent.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier"))
    ProgressEvent.add_member(:request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestToken, name: "RequestToken"))
    ProgressEvent.add_member(:hooks_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestToken, name: "HooksRequestToken"))
    ProgressEvent.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    ProgressEvent.add_member(:operation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "OperationStatus"))
    ProgressEvent.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EventTime"))
    ProgressEvent.add_member(:resource_model, ::Smithy::Schema::Shapes::MemberShape.new(target: Properties, name: "ResourceModel"))
    ProgressEvent.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ProgressEvent.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HandlerErrorCode, name: "ErrorCode"))
    ProgressEvent.add_member(:retry_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RetryAfter"))
    ProgressEvent.type = Types::ProgressEvent
    RequestTokenNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    RequestTokenNotFoundException.type = Types::RequestTokenNotFoundException
    ResourceConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceConflictException.type = Types::ResourceConflictException
    ResourceDescription.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier"))
    ResourceDescription.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: Properties, name: "Properties"))
    ResourceDescription.type = Types::ResourceDescription
    ResourceDescriptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceRequestStatusFilter.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: Operations, name: "Operations"))
    ResourceRequestStatusFilter.add_member(:operation_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatuses, name: "OperationStatuses"))
    ResourceRequestStatusFilter.type = Types::ResourceRequestStatusFilter
    ResourceRequestStatusSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "member")
    ServiceInternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceInternalErrorException.type = Types::ServiceInternalErrorException
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    TypeNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TypeNotFoundException.type = Types::TypeNotFoundException
    UnsupportedActionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    UnsupportedActionException.type = Types::UnsupportedActionException
    UpdateResourceOperationInput.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeName, name: "TypeName", traits: {"smithy.api#required" => {}}))
    UpdateResourceOperationInput.add_member(:type_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeVersionId, name: "TypeVersionId"))
    UpdateResourceOperationInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    UpdateResourceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateResourceOperationInput.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    UpdateResourceOperationInput.add_member(:patch_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PatchDocument, name: "PatchDocument", traits: {"smithy.api#required" => {}}))
    UpdateResourceOperationInput.type = Types::UpdateResourceOperationInput
    UpdateResourceOperationOutput.add_member(:progress_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "ProgressEvent"))
    UpdateResourceOperationOutput.type = Types::UpdateResourceOperationOutput

    CloudApiService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudcontrol#CloudApiService"
      service.name = "CloudApiService"
      service.version = "2021-09-30"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudControl", "cloudTrailEventSource" => "cloudcontrolapi.amazonaws.com", "endpointPrefix" => "cloudcontrolapi"}, "aws.auth#sigv4" => {"name" => "cloudcontrolapi"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "AWS Cloud Control API"}
      service.add_operation(:cancel_resource_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#CancelResourceRequest"
        operation.name = "CancelResourceRequest"
        operation.input = CancelResourceRequestOperationInput
        operation.output = CancelResourceRequestOperationOutput
        operation.errors << ConcurrentModificationException
        operation.errors << RequestTokenNotFoundException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#CreateResource"
        operation.name = "CreateResource"
        operation.input = CreateResourceOperationInput
        operation.output = CreateResourceOperationOutput
        operation.errors << AlreadyExistsException
        operation.errors << ClientTokenConflictException
        operation.errors << ConcurrentOperationException
        operation.errors << GeneralServiceException
        operation.errors << HandlerFailureException
        operation.errors << HandlerInternalFailureException
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidRequestException
        operation.errors << NetworkFailureException
        operation.errors << NotStabilizedException
        operation.errors << NotUpdatableException
        operation.errors << PrivateTypeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceInternalErrorException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TypeNotFoundException
        operation.errors << UnsupportedActionException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#DeleteResource"
        operation.name = "DeleteResource"
        operation.input = DeleteResourceOperationInput
        operation.output = DeleteResourceOperationOutput
        operation.errors << AlreadyExistsException
        operation.errors << ClientTokenConflictException
        operation.errors << ConcurrentOperationException
        operation.errors << GeneralServiceException
        operation.errors << HandlerFailureException
        operation.errors << HandlerInternalFailureException
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidRequestException
        operation.errors << NetworkFailureException
        operation.errors << NotStabilizedException
        operation.errors << NotUpdatableException
        operation.errors << PrivateTypeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceInternalErrorException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TypeNotFoundException
        operation.errors << UnsupportedActionException
        operation.traits = {}
      end)
      service.add_operation(:get_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#GetResource"
        operation.name = "GetResource"
        operation.input = GetResourceOperationInput
        operation.output = GetResourceOperationOutput
        operation.errors << AlreadyExistsException
        operation.errors << GeneralServiceException
        operation.errors << HandlerFailureException
        operation.errors << HandlerInternalFailureException
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidRequestException
        operation.errors << NetworkFailureException
        operation.errors << NotStabilizedException
        operation.errors << NotUpdatableException
        operation.errors << PrivateTypeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceInternalErrorException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TypeNotFoundException
        operation.errors << UnsupportedActionException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_request_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#GetResourceRequestStatus"
        operation.name = "GetResourceRequestStatus"
        operation.input = GetResourceRequestStatusOperationInput
        operation.output = GetResourceRequestStatusOperationOutput
        operation.errors << RequestTokenNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_resource_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#ListResourceRequests"
        operation.name = "ListResourceRequests"
        operation.input = ListResourceRequestsOperationInput
        operation.output = ListResourceRequestsOutput
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourceRequests.new
      end)
      service.add_operation(:list_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#ListResources"
        operation.name = "ListResources"
        operation.input = ListResourcesOperationInput
        operation.output = ListResourcesOutput
        operation.errors << AlreadyExistsException
        operation.errors << GeneralServiceException
        operation.errors << HandlerFailureException
        operation.errors << HandlerInternalFailureException
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidRequestException
        operation.errors << NetworkFailureException
        operation.errors << NotStabilizedException
        operation.errors << NotUpdatableException
        operation.errors << PrivateTypeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceInternalErrorException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TypeNotFoundException
        operation.errors << UnsupportedActionException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResources.new
      end)
      service.add_operation(:update_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudcontrol#UpdateResource"
        operation.name = "UpdateResource"
        operation.input = UpdateResourceOperationInput
        operation.output = UpdateResourceOperationOutput
        operation.errors << AlreadyExistsException
        operation.errors << ClientTokenConflictException
        operation.errors << ConcurrentOperationException
        operation.errors << GeneralServiceException
        operation.errors << HandlerFailureException
        operation.errors << HandlerInternalFailureException
        operation.errors << InvalidCredentialsException
        operation.errors << InvalidRequestException
        operation.errors << NetworkFailureException
        operation.errors << NotStabilizedException
        operation.errors << NotUpdatableException
        operation.errors << PrivateTypeException
        operation.errors << ResourceConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceInternalErrorException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << TypeNotFoundException
        operation.errors << UnsupportedActionException
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

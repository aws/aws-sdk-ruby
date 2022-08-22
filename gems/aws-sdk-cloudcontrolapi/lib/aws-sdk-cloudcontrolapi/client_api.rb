# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudControlApi
  # @api private
  module ClientApi

    include Seahorse::Model

    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    CancelResourceRequestInput = Shapes::StructureShape.new(name: 'CancelResourceRequestInput')
    CancelResourceRequestOutput = Shapes::StructureShape.new(name: 'CancelResourceRequestOutput')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClientTokenConflictException = Shapes::StructureShape.new(name: 'ClientTokenConflictException')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConcurrentOperationException = Shapes::StructureShape.new(name: 'ConcurrentOperationException')
    CreateResourceInput = Shapes::StructureShape.new(name: 'CreateResourceInput')
    CreateResourceOutput = Shapes::StructureShape.new(name: 'CreateResourceOutput')
    DeleteResourceInput = Shapes::StructureShape.new(name: 'DeleteResourceInput')
    DeleteResourceOutput = Shapes::StructureShape.new(name: 'DeleteResourceOutput')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GeneralServiceException = Shapes::StructureShape.new(name: 'GeneralServiceException')
    GetResourceInput = Shapes::StructureShape.new(name: 'GetResourceInput')
    GetResourceOutput = Shapes::StructureShape.new(name: 'GetResourceOutput')
    GetResourceRequestStatusInput = Shapes::StructureShape.new(name: 'GetResourceRequestStatusInput')
    GetResourceRequestStatusOutput = Shapes::StructureShape.new(name: 'GetResourceRequestStatusOutput')
    HandlerErrorCode = Shapes::StringShape.new(name: 'HandlerErrorCode')
    HandlerFailureException = Shapes::StructureShape.new(name: 'HandlerFailureException')
    HandlerInternalFailureException = Shapes::StructureShape.new(name: 'HandlerInternalFailureException')
    HandlerNextToken = Shapes::StringShape.new(name: 'HandlerNextToken')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    InvalidCredentialsException = Shapes::StructureShape.new(name: 'InvalidCredentialsException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListResourceRequestsInput = Shapes::StructureShape.new(name: 'ListResourceRequestsInput')
    ListResourceRequestsOutput = Shapes::StructureShape.new(name: 'ListResourceRequestsOutput')
    ListResourcesInput = Shapes::StructureShape.new(name: 'ListResourcesInput')
    ListResourcesOutput = Shapes::StructureShape.new(name: 'ListResourcesOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NetworkFailureException = Shapes::StructureShape.new(name: 'NetworkFailureException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotStabilizedException = Shapes::StructureShape.new(name: 'NotStabilizedException')
    NotUpdatableException = Shapes::StructureShape.new(name: 'NotUpdatableException')
    Operation = Shapes::StringShape.new(name: 'Operation')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationStatuses = Shapes::ListShape.new(name: 'OperationStatuses')
    Operations = Shapes::ListShape.new(name: 'Operations')
    PatchDocument = Shapes::StringShape.new(name: 'PatchDocument')
    PrivateTypeException = Shapes::StructureShape.new(name: 'PrivateTypeException')
    ProgressEvent = Shapes::StructureShape.new(name: 'ProgressEvent')
    Properties = Shapes::StringShape.new(name: 'Properties')
    RequestToken = Shapes::StringShape.new(name: 'RequestToken')
    RequestTokenNotFoundException = Shapes::StructureShape.new(name: 'RequestTokenNotFoundException')
    ResourceConflictException = Shapes::StructureShape.new(name: 'ResourceConflictException')
    ResourceDescription = Shapes::StructureShape.new(name: 'ResourceDescription')
    ResourceDescriptions = Shapes::ListShape.new(name: 'ResourceDescriptions')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceRequestStatusFilter = Shapes::StructureShape.new(name: 'ResourceRequestStatusFilter')
    ResourceRequestStatusSummaries = Shapes::ListShape.new(name: 'ResourceRequestStatusSummaries')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    ServiceInternalErrorException = Shapes::StructureShape.new(name: 'ServiceInternalErrorException')
    ServiceLimitExceededException = Shapes::StructureShape.new(name: 'ServiceLimitExceededException')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TypeName = Shapes::StringShape.new(name: 'TypeName')
    TypeNotFoundException = Shapes::StructureShape.new(name: 'TypeNotFoundException')
    TypeVersionId = Shapes::StringShape.new(name: 'TypeVersionId')
    UnsupportedActionException = Shapes::StructureShape.new(name: 'UnsupportedActionException')
    UpdateResourceInput = Shapes::StructureShape.new(name: 'UpdateResourceInput')
    UpdateResourceOutput = Shapes::StructureShape.new(name: 'UpdateResourceOutput')

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    CancelResourceRequestInput.add_member(:request_token, Shapes::ShapeRef.new(shape: RequestToken, required: true, location_name: "RequestToken"))
    CancelResourceRequestInput.struct_class = Types::CancelResourceRequestInput

    CancelResourceRequestOutput.add_member(:progress_event, Shapes::ShapeRef.new(shape: ProgressEvent, location_name: "ProgressEvent"))
    CancelResourceRequestOutput.struct_class = Types::CancelResourceRequestOutput

    ClientTokenConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ClientTokenConflictException.struct_class = Types::ClientTokenConflictException

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConcurrentOperationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConcurrentOperationException.struct_class = Types::ConcurrentOperationException

    CreateResourceInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "TypeName"))
    CreateResourceInput.add_member(:type_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "TypeVersionId"))
    CreateResourceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CreateResourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateResourceInput.add_member(:desired_state, Shapes::ShapeRef.new(shape: Properties, required: true, location_name: "DesiredState"))
    CreateResourceInput.struct_class = Types::CreateResourceInput

    CreateResourceOutput.add_member(:progress_event, Shapes::ShapeRef.new(shape: ProgressEvent, location_name: "ProgressEvent"))
    CreateResourceOutput.struct_class = Types::CreateResourceOutput

    DeleteResourceInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "TypeName"))
    DeleteResourceInput.add_member(:type_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "TypeVersionId"))
    DeleteResourceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    DeleteResourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DeleteResourceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Identifier"))
    DeleteResourceInput.struct_class = Types::DeleteResourceInput

    DeleteResourceOutput.add_member(:progress_event, Shapes::ShapeRef.new(shape: ProgressEvent, location_name: "ProgressEvent"))
    DeleteResourceOutput.struct_class = Types::DeleteResourceOutput

    GeneralServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    GeneralServiceException.struct_class = Types::GeneralServiceException

    GetResourceInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "TypeName"))
    GetResourceInput.add_member(:type_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "TypeVersionId"))
    GetResourceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    GetResourceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Identifier"))
    GetResourceInput.struct_class = Types::GetResourceInput

    GetResourceOutput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    GetResourceOutput.add_member(:resource_description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "ResourceDescription"))
    GetResourceOutput.struct_class = Types::GetResourceOutput

    GetResourceRequestStatusInput.add_member(:request_token, Shapes::ShapeRef.new(shape: RequestToken, required: true, location_name: "RequestToken"))
    GetResourceRequestStatusInput.struct_class = Types::GetResourceRequestStatusInput

    GetResourceRequestStatusOutput.add_member(:progress_event, Shapes::ShapeRef.new(shape: ProgressEvent, location_name: "ProgressEvent"))
    GetResourceRequestStatusOutput.struct_class = Types::GetResourceRequestStatusOutput

    HandlerFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    HandlerFailureException.struct_class = Types::HandlerFailureException

    HandlerInternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    HandlerInternalFailureException.struct_class = Types::HandlerInternalFailureException

    InvalidCredentialsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidCredentialsException.struct_class = Types::InvalidCredentialsException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListResourceRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResourceRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceRequestsInput.add_member(:resource_request_status_filter, Shapes::ShapeRef.new(shape: ResourceRequestStatusFilter, location_name: "ResourceRequestStatusFilter"))
    ListResourceRequestsInput.struct_class = Types::ListResourceRequestsInput

    ListResourceRequestsOutput.add_member(:resource_request_status_summaries, Shapes::ShapeRef.new(shape: ResourceRequestStatusSummaries, location_name: "ResourceRequestStatusSummaries"))
    ListResourceRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceRequestsOutput.struct_class = Types::ListResourceRequestsOutput

    ListResourcesInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "TypeName"))
    ListResourcesInput.add_member(:type_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "TypeVersionId"))
    ListResourcesInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    ListResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: HandlerNextToken, location_name: "NextToken"))
    ListResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListResourcesInput.add_member(:resource_model, Shapes::ShapeRef.new(shape: Properties, location_name: "ResourceModel"))
    ListResourcesInput.struct_class = Types::ListResourcesInput

    ListResourcesOutput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    ListResourcesOutput.add_member(:resource_descriptions, Shapes::ShapeRef.new(shape: ResourceDescriptions, location_name: "ResourceDescriptions"))
    ListResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: HandlerNextToken, location_name: "NextToken"))
    ListResourcesOutput.struct_class = Types::ListResourcesOutput

    NetworkFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NetworkFailureException.struct_class = Types::NetworkFailureException

    NotStabilizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotStabilizedException.struct_class = Types::NotStabilizedException

    NotUpdatableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotUpdatableException.struct_class = Types::NotUpdatableException

    OperationStatuses.member = Shapes::ShapeRef.new(shape: OperationStatus)

    Operations.member = Shapes::ShapeRef.new(shape: Operation)

    PrivateTypeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    PrivateTypeException.struct_class = Types::PrivateTypeException

    ProgressEvent.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, location_name: "TypeName"))
    ProgressEvent.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "Identifier"))
    ProgressEvent.add_member(:request_token, Shapes::ShapeRef.new(shape: RequestToken, location_name: "RequestToken"))
    ProgressEvent.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    ProgressEvent.add_member(:operation_status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "OperationStatus"))
    ProgressEvent.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventTime"))
    ProgressEvent.add_member(:resource_model, Shapes::ShapeRef.new(shape: Properties, location_name: "ResourceModel"))
    ProgressEvent.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ProgressEvent.add_member(:error_code, Shapes::ShapeRef.new(shape: HandlerErrorCode, location_name: "ErrorCode"))
    ProgressEvent.add_member(:retry_after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RetryAfter"))
    ProgressEvent.struct_class = Types::ProgressEvent

    RequestTokenNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RequestTokenNotFoundException.struct_class = Types::RequestTokenNotFoundException

    ResourceConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceConflictException.struct_class = Types::ResourceConflictException

    ResourceDescription.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, location_name: "Identifier"))
    ResourceDescription.add_member(:properties, Shapes::ShapeRef.new(shape: Properties, location_name: "Properties"))
    ResourceDescription.struct_class = Types::ResourceDescription

    ResourceDescriptions.member = Shapes::ShapeRef.new(shape: ResourceDescription)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceRequestStatusFilter.add_member(:operations, Shapes::ShapeRef.new(shape: Operations, location_name: "Operations"))
    ResourceRequestStatusFilter.add_member(:operation_statuses, Shapes::ShapeRef.new(shape: OperationStatuses, location_name: "OperationStatuses"))
    ResourceRequestStatusFilter.struct_class = Types::ResourceRequestStatusFilter

    ResourceRequestStatusSummaries.member = Shapes::ShapeRef.new(shape: ProgressEvent)

    ServiceInternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceInternalErrorException.struct_class = Types::ServiceInternalErrorException

    ServiceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceLimitExceededException.struct_class = Types::ServiceLimitExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TypeNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TypeNotFoundException.struct_class = Types::TypeNotFoundException

    UnsupportedActionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnsupportedActionException.struct_class = Types::UnsupportedActionException

    UpdateResourceInput.add_member(:type_name, Shapes::ShapeRef.new(shape: TypeName, required: true, location_name: "TypeName"))
    UpdateResourceInput.add_member(:type_version_id, Shapes::ShapeRef.new(shape: TypeVersionId, location_name: "TypeVersionId"))
    UpdateResourceInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    UpdateResourceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    UpdateResourceInput.add_member(:identifier, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "Identifier"))
    UpdateResourceInput.add_member(:patch_document, Shapes::ShapeRef.new(shape: PatchDocument, required: true, location_name: "PatchDocument"))
    UpdateResourceInput.struct_class = Types::UpdateResourceInput

    UpdateResourceOutput.add_member(:progress_event, Shapes::ShapeRef.new(shape: ProgressEvent, location_name: "ProgressEvent"))
    UpdateResourceOutput.struct_class = Types::UpdateResourceOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-09-30"

      api.metadata = {
        "apiVersion" => "2021-09-30",
        "endpointPrefix" => "cloudcontrolapi",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "CloudControlApi",
        "serviceFullName" => "AWS Cloud Control API",
        "serviceId" => "CloudControl",
        "signatureVersion" => "v4",
        "signingName" => "cloudcontrolapi",
        "targetPrefix" => "CloudApiService",
        "uid" => "cloudcontrol-2021-09-30",
      }

      api.add_operation(:cancel_resource_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelResourceRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelResourceRequestInput)
        o.output = Shapes::ShapeRef.new(shape: CancelResourceRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTokenNotFoundException)
      end)

      api.add_operation(:create_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: GeneralServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotUpdatableException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PrivateTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionException)
        o.errors << Shapes::ShapeRef.new(shape: NotStabilizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTokenConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: GeneralServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotUpdatableException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PrivateTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionException)
        o.errors << Shapes::ShapeRef.new(shape: NotStabilizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTokenConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: GeneralServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotUpdatableException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PrivateTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionException)
        o.errors << Shapes::ShapeRef.new(shape: NotStabilizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_resource_request_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceRequestStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceRequestStatusInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourceRequestStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: RequestTokenNotFoundException)
      end)

      api.add_operation(:list_resource_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceRequestsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: GeneralServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotUpdatableException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PrivateTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionException)
        o.errors << Shapes::ShapeRef.new(shape: NotStabilizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerInternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: GeneralServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotUpdatableException)
        o.errors << Shapes::ShapeRef.new(shape: TypeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: PrivateTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NetworkFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedActionException)
        o.errors << Shapes::ShapeRef.new(shape: NotStabilizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceInternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: HandlerFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCredentialsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ClientTokenConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end

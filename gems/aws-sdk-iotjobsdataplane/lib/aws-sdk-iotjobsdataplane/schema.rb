# frozen_string_literal: true

# This is generated code!

module Aws::IoTJobsDataPlane
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApproximateSecondsBeforeTimedOut = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#ApproximateSecondsBeforeTimedOut', name: 'ApproximateSecondsBeforeTimedOut')
    BinaryBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotjobsdataplane#BinaryBlob', name: 'BinaryBlob')
    BinaryParameterValue = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotjobsdataplane#BinaryParameterValue', name: 'BinaryParameterValue', traits: {"smithy.api#length" => {"min" => 1}})
    BooleanParameterValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotjobsdataplane#BooleanParameterValue', name: 'BooleanParameterValue')
    CertificateValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#CertificateValidationException', name: 'CertificateValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientRequestTokenV2 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#ClientRequestTokenV2', name: 'ClientRequestTokenV2', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"})
    CommandArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandArn', name: 'CommandArn')
    CommandExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandExecutionId', name: 'CommandExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    CommandExecutionParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandExecutionParameterMap', name: 'CommandExecutionParameterMap', traits: {"smithy.api#length" => {"min" => 1}})
    CommandExecutionTimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandExecutionTimeoutInSeconds', name: 'CommandExecutionTimeoutInSeconds', traits: {"smithy.api#range" => {"min" => 1}})
    CommandParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandParameterName', name: 'CommandParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 192}, "smithy.api#pattern" => "^[.$a-zA-Z0-9_-]+$"})
    CommandParameterValue = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandParameterValue', name: 'CommandParameterValue')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DescribeJobExecutionJobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#DescribeJobExecutionJobId', name: 'DescribeJobExecutionJobId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]+|^\\$next$"})
    DescribeJobExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#DescribeJobExecutionRequest', name: 'DescribeJobExecutionRequest')
    DescribeJobExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#DescribeJobExecutionResponse', name: 'DescribeJobExecutionResponse')
    DetailsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#DetailsKey', name: 'DetailsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    DetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotjobsdataplane#DetailsMap', name: 'DetailsMap')
    DetailsValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#DetailsValue', name: 'DetailsValue', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[^\\p{C}]+$"})
    DoubleParameterValue = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotjobsdataplane#DoubleParameterValue', name: 'DoubleParameterValue')
    ExecutionNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#ExecutionNumber', name: 'ExecutionNumber')
    ExpectedVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#ExpectedVersion', name: 'ExpectedVersion')
    GetPendingJobExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#GetPendingJobExecutionsRequest', name: 'GetPendingJobExecutionsRequest')
    GetPendingJobExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#GetPendingJobExecutionsResponse', name: 'GetPendingJobExecutionsResponse')
    IncludeExecutionState = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotjobsdataplane#IncludeExecutionState', name: 'IncludeExecutionState')
    IncludeJobDocument = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotjobsdataplane#IncludeJobDocument', name: 'IncludeJobDocument')
    IntegerParameterValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#IntegerParameterValue', name: 'IntegerParameterValue')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateTransitionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#InvalidStateTransitionException', name: 'InvalidStateTransitionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    JobDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#JobDocument', name: 'JobDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}})
    JobExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecution', name: 'JobExecution')
    JobExecutionState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionState', name: 'JobExecutionState')
    JobExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionStatus', name: 'JobExecutionStatus')
    JobExecutionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionSummary', name: 'JobExecutionSummary')
    JobExecutionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionSummaryList', name: 'JobExecutionSummaryList')
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    LastUpdatedAt = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#LastUpdatedAt', name: 'LastUpdatedAt', traits: {"smithy.api#default" => 0})
    LongParameterValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#LongParameterValue', name: 'LongParameterValue')
    QueuedAt = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#QueuedAt', name: 'QueuedAt', traits: {"smithy.api#default" => 0})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartCommandExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartCommandExecutionRequest', name: 'StartCommandExecutionRequest')
    StartCommandExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartCommandExecutionResponse', name: 'StartCommandExecutionResponse')
    StartNextPendingJobExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartNextPendingJobExecutionRequest', name: 'StartNextPendingJobExecutionRequest')
    StartNextPendingJobExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartNextPendingJobExecutionResponse', name: 'StartNextPendingJobExecutionResponse')
    StartedAt = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#StartedAt', name: 'StartedAt')
    StepTimeoutInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#StepTimeoutInMinutes', name: 'StepTimeoutInMinutes')
    StringParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#StringParameterValue', name: 'StringParameterValue', traits: {"smithy.api#length" => {"min" => 1}})
    TargetArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    TerminalStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#TerminalStateException', name: 'TerminalStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ThingName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#ThingName', name: 'ThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnsignedLongParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#UnsignedLongParameterValue', name: 'UnsignedLongParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[0-9]*$"})
    UpdateJobExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#UpdateJobExecutionRequest', name: 'UpdateJobExecutionRequest')
    UpdateJobExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#UpdateJobExecutionResponse', name: 'UpdateJobExecutionResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VersionNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#VersionNumber', name: 'VersionNumber', traits: {"smithy.api#default" => 0})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#errorMessage', name: 'ErrorMessage')
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#resourceId', name: 'ResourceId')

    CertificateValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    CertificateValidationException.type = Types::CertificateValidationException
    CommandExecutionParameterMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandParameterName)
    CommandExecutionParameterMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandParameterValue)
    CommandParameterValue.add_member(:s, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringParameterValue, location_name: 'S'))
    CommandParameterValue.add_member(:b, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanParameterValue, location_name: 'B'))
    CommandParameterValue.add_member(:i, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerParameterValue, location_name: 'I'))
    CommandParameterValue.add_member(:l, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LongParameterValue, location_name: 'L'))
    CommandParameterValue.add_member(:d, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleParameterValue, location_name: 'D'))
    CommandParameterValue.add_member(:bin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryParameterValue, location_name: 'BIN'))
    CommandParameterValue.add_member(:ul, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLongParameterValue, location_name: 'UL'))
    CommandParameterValue.type = Types::CommandParameterValue
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId'))
    ConflictException.type = Types::ConflictException
    DescribeJobExecutionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobExecutionJobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobExecutionRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobExecutionRequest.add_member(:include_job_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeJobDocument, location_name: 'includeJobDocument', traits: {"smithy.api#httpQuery" => "includeJobDocument"}))
    DescribeJobExecutionRequest.add_member(:execution_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber', traits: {"smithy.api#httpQuery" => "executionNumber"}))
    DescribeJobExecutionRequest.type = Types::DescribeJobExecutionRequest
    DescribeJobExecutionResponse.add_member(:execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecution, location_name: 'execution'))
    DescribeJobExecutionResponse.type = Types::DescribeJobExecutionResponse
    DetailsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsKey)
    DetailsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsValue)
    GetPendingJobExecutionsRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPendingJobExecutionsRequest.type = Types::GetPendingJobExecutionsRequest
    GetPendingJobExecutionsResponse.add_member(:in_progress_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSummaryList, location_name: 'inProgressJobs'))
    GetPendingJobExecutionsResponse.add_member(:queued_jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSummaryList, location_name: 'queuedJobs'))
    GetPendingJobExecutionsResponse.type = Types::GetPendingJobExecutionsResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateTransitionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidStateTransitionException.type = Types::InvalidStateTransitionException
    JobExecution.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId'))
    JobExecution.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName'))
    JobExecution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: 'status'))
    JobExecution.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails'))
    JobExecution.add_member(:queued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueuedAt, location_name: 'queuedAt', traits: {"smithy.api#default" => 0}))
    JobExecution.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt'))
    JobExecution.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#default" => 0}))
    JobExecution.add_member(:approximate_seconds_before_timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateSecondsBeforeTimedOut, location_name: 'approximateSecondsBeforeTimedOut'))
    JobExecution.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNumber, location_name: 'versionNumber', traits: {"smithy.api#default" => 0}))
    JobExecution.add_member(:execution_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber'))
    JobExecution.add_member(:job_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDocument, location_name: 'jobDocument'))
    JobExecution.type = Types::JobExecution
    JobExecutionState.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: 'status'))
    JobExecutionState.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails'))
    JobExecutionState.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNumber, location_name: 'versionNumber', traits: {"smithy.api#default" => 0}))
    JobExecutionState.type = Types::JobExecutionState
    JobExecutionStatus.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    JobExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobExecutionStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobExecutionStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    JobExecutionStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    JobExecutionStatus.add_member(:removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "REMOVED"}))
    JobExecutionStatus.add_member(:canceled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    JobExecutionSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId'))
    JobExecutionSummary.add_member(:queued_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QueuedAt, location_name: 'queuedAt', traits: {"smithy.api#default" => 0}))
    JobExecutionSummary.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt'))
    JobExecutionSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#default" => 0}))
    JobExecutionSummary.add_member(:version_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNumber, location_name: 'versionNumber', traits: {"smithy.api#default" => 0}))
    JobExecutionSummary.add_member(:execution_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber'))
    JobExecutionSummary.type = Types::JobExecutionSummary
    JobExecutionSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSummary)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartCommandExecutionRequest.add_member(:target_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#required" => {}}))
    StartCommandExecutionRequest.add_member(:command_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandArn, location_name: 'commandArn', traits: {"smithy.api#required" => {}}))
    StartCommandExecutionRequest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionParameterMap, location_name: 'parameters'))
    StartCommandExecutionRequest.add_member(:execution_timeout_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionTimeoutInSeconds, location_name: 'executionTimeoutSeconds'))
    StartCommandExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenV2, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartCommandExecutionRequest.type = Types::StartCommandExecutionRequest
    StartCommandExecutionResponse.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionId, location_name: 'executionId'))
    StartCommandExecutionResponse.type = Types::StartCommandExecutionResponse
    StartNextPendingJobExecutionRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartNextPendingJobExecutionRequest.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails'))
    StartNextPendingJobExecutionRequest.add_member(:step_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepTimeoutInMinutes, location_name: 'stepTimeoutInMinutes'))
    StartNextPendingJobExecutionRequest.type = Types::StartNextPendingJobExecutionRequest
    StartNextPendingJobExecutionResponse.add_member(:execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecution, location_name: 'execution'))
    StartNextPendingJobExecutionResponse.type = Types::StartNextPendingJobExecutionResponse
    TerminalStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TerminalStateException.type = Types::TerminalStateException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.add_member(:payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryBlob, location_name: 'payload'))
    ThrottlingException.type = Types::ThrottlingException
    UpdateJobExecutionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobExecutionRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobExecutionRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateJobExecutionRequest.add_member(:status_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails'))
    UpdateJobExecutionRequest.add_member(:step_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepTimeoutInMinutes, location_name: 'stepTimeoutInMinutes'))
    UpdateJobExecutionRequest.add_member(:expected_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedVersion, location_name: 'expectedVersion'))
    UpdateJobExecutionRequest.add_member(:include_job_execution_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeExecutionState, location_name: 'includeJobExecutionState'))
    UpdateJobExecutionRequest.add_member(:include_job_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeJobDocument, location_name: 'includeJobDocument'))
    UpdateJobExecutionRequest.add_member(:execution_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber'))
    UpdateJobExecutionRequest.type = Types::UpdateJobExecutionRequest
    UpdateJobExecutionResponse.add_member(:execution_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionState, location_name: 'executionState'))
    UpdateJobExecutionResponse.add_member(:job_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDocument, location_name: 'jobDocument'))
    UpdateJobExecutionResponse.type = Types::UpdateJobExecutionResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    IotLaserThingJobManagerExternalService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotjobsdataplane#IotLaserThingJobManagerExternalService"
      service.name = "IotLaserThingJobManagerExternalService"
      service.version = "2017-09-29"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Jobs Data Plane", "arnNamespace" => "iot-jobs-data", "cloudFormationName" => "IoTJobsDataPlane", "cloudTrailEventSource" => "iotjobsdataplane.amazonaws.com", "docId" => "iot-jobs-data-2017-09-29", "endpointPrefix" => "data.jobs.iot"}, "aws.auth#sigv4" => {"name" => "iot-jobs-data"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Jobs Data Plane"}
      service.add_operation(:describe_job_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#DescribeJobExecution"
        operation.name = "DescribeJobExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminalStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/things/{thingName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:get_pending_job_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#GetPendingJobExecutions"
        operation.name = "GetPendingJobExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingJobExecutionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingJobExecutionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/things/{thingName}/jobs", "code" => 200}}
      end)
      service.add_operation(:start_command_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#StartCommandExecution"
        operation.name = "StartCommandExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommandExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommandExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/command-executions", "code" => 200}}
      end)
      service.add_operation(:start_next_pending_job_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#StartNextPendingJobExecution"
        operation.name = "StartNextPendingJobExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartNextPendingJobExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartNextPendingJobExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/things/{thingName}/jobs/$next", "code" => 200}}
      end)
      service.add_operation(:update_job_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#UpdateJobExecution"
        operation.name = "UpdateJobExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobExecutionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobExecutionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/things/{thingName}/jobs/{jobId}", "code" => 200}}
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

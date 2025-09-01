# frozen_string_literal: true

# This is generated code!

module Aws::IoTJobsDataPlane
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApproximateSecondsBeforeTimedOut = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#ApproximateSecondsBeforeTimedOut', name: 'ApproximateSecondsBeforeTimedOut')
    BinaryBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotjobsdataplane#BinaryBlob', name: 'BinaryBlob')
    BinaryParameterValue = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.iotjobsdataplane#BinaryParameterValue', name: 'BinaryParameterValue', traits: {"smithy.api#length" => {"min" => 1}})
    BooleanParameterValue = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotjobsdataplane#BooleanParameterValue', name: 'BooleanParameterValue')
    CertificateValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#CertificateValidationException', name: 'CertificateValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientRequestTokenV2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#ClientRequestTokenV2', name: 'ClientRequestTokenV2', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]+$"})
    CommandArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandArn', name: 'CommandArn')
    CommandExecutionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandExecutionId', name: 'CommandExecutionId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    CommandExecutionParameterMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandExecutionParameterMap', name: 'CommandExecutionParameterMap', traits: {"smithy.api#length" => {"min" => 1}})
    CommandExecutionTimeoutInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandExecutionTimeoutInSeconds', name: 'CommandExecutionTimeoutInSeconds', traits: {"smithy.api#range" => {"min" => 1}})
    CommandParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandParameterName', name: 'CommandParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 192}, "smithy.api#pattern" => "^[.$a-zA-Z0-9_-]+$"})
    CommandParameterValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#CommandParameterValue', name: 'CommandParameterValue')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DescribeJobExecutionJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#DescribeJobExecutionJobId', name: 'DescribeJobExecutionJobId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_-]+|^\\$next$"})
    DescribeJobExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#DescribeJobExecutionRequest', name: 'DescribeJobExecutionRequest')
    DescribeJobExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#DescribeJobExecutionResponse', name: 'DescribeJobExecutionResponse')
    DetailsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#DetailsKey', name: 'DetailsKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    DetailsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotjobsdataplane#DetailsMap', name: 'DetailsMap')
    DetailsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#DetailsValue', name: 'DetailsValue', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[^\\p{C}]+$"})
    DoubleParameterValue = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.iotjobsdataplane#DoubleParameterValue', name: 'DoubleParameterValue')
    ExecutionNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#ExecutionNumber', name: 'ExecutionNumber')
    ExpectedVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#ExpectedVersion', name: 'ExpectedVersion')
    GetPendingJobExecutionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#GetPendingJobExecutionsRequest', name: 'GetPendingJobExecutionsRequest')
    GetPendingJobExecutionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#GetPendingJobExecutionsResponse', name: 'GetPendingJobExecutionsResponse')
    IncludeExecutionState = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotjobsdataplane#IncludeExecutionState', name: 'IncludeExecutionState')
    IncludeJobDocument = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotjobsdataplane#IncludeJobDocument', name: 'IncludeJobDocument')
    IntegerParameterValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#IntegerParameterValue', name: 'IntegerParameterValue')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidStateTransitionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#InvalidStateTransitionException', name: 'InvalidStateTransitionException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    JobDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#JobDocument', name: 'JobDocument', traits: {"smithy.api#length" => {"min" => 0, "max" => 32768}})
    JobExecution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecution', name: 'JobExecution')
    JobExecutionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionState', name: 'JobExecutionState')
    JobExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionStatus', name: 'JobExecutionStatus')
    JobExecutionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionSummary', name: 'JobExecutionSummary')
    JobExecutionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotjobsdataplane#JobExecutionSummaryList', name: 'JobExecutionSummaryList')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    LastUpdatedAt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#LastUpdatedAt', name: 'LastUpdatedAt', traits: {"smithy.api#default" => 0})
    LongParameterValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#LongParameterValue', name: 'LongParameterValue')
    QueuedAt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#QueuedAt', name: 'QueuedAt', traits: {"smithy.api#default" => 0})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartCommandExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartCommandExecutionRequest', name: 'StartCommandExecutionRequest')
    StartCommandExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartCommandExecutionResponse', name: 'StartCommandExecutionResponse')
    StartNextPendingJobExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartNextPendingJobExecutionRequest', name: 'StartNextPendingJobExecutionRequest')
    StartNextPendingJobExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#StartNextPendingJobExecutionResponse', name: 'StartNextPendingJobExecutionResponse')
    StartedAt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#StartedAt', name: 'StartedAt')
    StepTimeoutInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#StepTimeoutInMinutes', name: 'StepTimeoutInMinutes')
    StringParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#StringParameterValue', name: 'StringParameterValue', traits: {"smithy.api#length" => {"min" => 1}})
    TargetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#TargetArn', name: 'TargetArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    TerminalStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#TerminalStateException', name: 'TerminalStateException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#ThingName', name: 'ThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnsignedLongParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#UnsignedLongParameterValue', name: 'UnsignedLongParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^[0-9]*$"})
    UpdateJobExecutionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#UpdateJobExecutionRequest', name: 'UpdateJobExecutionRequest')
    UpdateJobExecutionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#UpdateJobExecutionResponse', name: 'UpdateJobExecutionResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotjobsdataplane#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VersionNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotjobsdataplane#VersionNumber', name: 'VersionNumber', traits: {"smithy.api#default" => 0})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#errorMessage', name: 'ErrorMessage')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotjobsdataplane#resourceId', name: 'ResourceId')

    CertificateValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Additional information about the exception.</p>"}))
    CertificateValidationException.type = Types::CertificateValidationException
    CommandExecutionParameterMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: CommandParameterName)
    CommandExecutionParameterMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CommandParameterValue)
    CommandParameterValue.add_member(:s, Smithy::Schema::Shapes::ShapeRef.new(shape: StringParameterValue, location_name: 'S', traits: {"smithy.api#documentation" => "<p>An attribute of type String. For example:</p>\n         <p>\n            <code>\"S\": \"Hello\"</code>\n         </p>"}))
    CommandParameterValue.add_member(:b, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanParameterValue, location_name: 'B', traits: {"smithy.api#documentation" => "<p>An attribute of type Boolean. For example:</p>\n         <p>\n            <code>\"BOOL\": true</code>\n         </p>"}))
    CommandParameterValue.add_member(:i, Smithy::Schema::Shapes::ShapeRef.new(shape: IntegerParameterValue, location_name: 'I', traits: {"smithy.api#documentation" => "<p>An attribute of type Integer (Thirty-Two Bits).</p>"}))
    CommandParameterValue.add_member(:l, Smithy::Schema::Shapes::ShapeRef.new(shape: LongParameterValue, location_name: 'L', traits: {"smithy.api#documentation" => "<p>An attribute of type Long.</p>"}))
    CommandParameterValue.add_member(:d, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleParameterValue, location_name: 'D', traits: {"smithy.api#documentation" => "<p>An attribute of type Double (Sixty-Four Bits).</p>"}))
    CommandParameterValue.add_member(:bin, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryParameterValue, location_name: 'BIN', traits: {"smithy.api#documentation" => "<p>An attribute of type Binary.</p>"}))
    CommandParameterValue.add_member(:ul, Smithy::Schema::Shapes::ShapeRef.new(shape: UnsignedLongParameterValue, location_name: 'UL', traits: {"smithy.api#documentation" => "<p>An attribute of type Unsigned Long.</p>"}))
    CommandParameterValue.type = Types::CommandParameterValue
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>A conflict occurred while performing the API request on the resource ID.</p>"}))
    ConflictException.type = Types::ConflictException
    DescribeJobExecutionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobExecutionJobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to this job when it was created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobExecutionRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The thing name associated with the device the job execution is running on.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobExecutionRequest.add_member(:include_job_document, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeJobDocument, location_name: 'includeJobDocument', traits: {"smithy.api#documentation" => "<p>Optional. Unless set to false, the response contains the job document. The default is\n         true.</p>", "smithy.api#httpQuery" => "includeJobDocument"}))
    DescribeJobExecutionRequest.add_member(:execution_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber', traits: {"smithy.api#documentation" => "<p>Optional. A number that identifies a particular job execution on a particular device.\n         If not specified, the latest job execution is returned.</p>", "smithy.api#httpQuery" => "executionNumber"}))
    DescribeJobExecutionRequest.type = Types::DescribeJobExecutionRequest
    DescribeJobExecutionResponse.add_member(:execution, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecution, location_name: 'execution', traits: {"smithy.api#documentation" => "<p>Contains data about a job execution.</p>"}))
    DescribeJobExecutionResponse.type = Types::DescribeJobExecutionResponse
    DetailsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsKey)
    DetailsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsValue)
    GetPendingJobExecutionsRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing that is executing the job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPendingJobExecutionsRequest.type = Types::GetPendingJobExecutionsRequest
    GetPendingJobExecutionsResponse.add_member(:in_progress_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSummaryList, location_name: 'inProgressJobs', traits: {"smithy.api#documentation" => "<p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>"}))
    GetPendingJobExecutionsResponse.add_member(:queued_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSummaryList, location_name: 'queuedJobs', traits: {"smithy.api#documentation" => "<p>A list of JobExecutionSummary objects with status QUEUED.</p>"}))
    GetPendingJobExecutionsResponse.type = Types::GetPendingJobExecutionsResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidStateTransitionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InvalidStateTransitionException.type = Types::InvalidStateTransitionException
    JobExecution.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier you assigned to this job when it was created.</p>"}))
    JobExecution.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing that is executing the job.</p>"}))
    JobExecution.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the job execution. Can be one of: \"QUEUED\", \"IN_PROGRESS\", \"FAILED\",\n         \"SUCCESS\", \"CANCELED\", \"TIMED_OUT\", \"REJECTED\", or \"REMOVED\".</p>"}))
    JobExecution.add_member(:status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails', traits: {"smithy.api#documentation" => "<p>A collection of name/value pairs that describe the status of the job\n         execution.</p>\n         <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>"}))
    JobExecution.add_member(:queued_at, Smithy::Schema::Shapes::ShapeRef.new(shape: QueuedAt, location_name: 'queuedAt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in seconds since the epoch, when the job execution was enqueued.</p>"}))
    JobExecution.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time, in seconds since the epoch, when the job execution was started.</p>"}))
    JobExecution.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in seconds since the epoch, when the job execution was last updated.\n      </p>"}))
    JobExecution.add_member(:approximate_seconds_before_timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: ApproximateSecondsBeforeTimedOut, location_name: 'approximateSecondsBeforeTimedOut', traits: {"smithy.api#documentation" => "<p>The estimated number of seconds that remain before the job execution status will be\n         changed to <code>TIMED_OUT</code>. The actual job execution timeout can occur up to 60\n         seconds later than the estimated duration.</p>"}))
    JobExecution.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNumber, location_name: 'versionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The version of the job execution. Job execution versions are incremented each time\n         they are updated by a device.</p>"}))
    JobExecution.add_member(:execution_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber', traits: {"smithy.api#documentation" => "<p>A number that identifies a particular job execution on a particular device. It can be\n         used later in commands that return or update job execution information.</p>"}))
    JobExecution.add_member(:job_document, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDocument, location_name: 'jobDocument', traits: {"smithy.api#documentation" => "<p>The content of the job document.</p>"}))
    JobExecution.type = Types::JobExecution
    JobExecutionState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the job execution. Can be one of: \"QUEUED\", \"IN_PROGRESS\", \"FAILED\",\n         \"SUCCESS\", \"CANCELED\", \"TIMED_OUT\", \"REJECTED\", or \"REMOVED\".</p>"}))
    JobExecutionState.add_member(:status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails', traits: {"smithy.api#documentation" => "<p>A collection of name/value pairs that describe the status of the job\n         execution.</p>\n         <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>"}))
    JobExecutionState.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNumber, location_name: 'versionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The version of the job execution. Job execution versions are incremented each time\n         they are updated by a device.</p>"}))
    JobExecutionState.type = Types::JobExecutionState
    JobExecutionStatus.add_member(:queued, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUEUED', traits: {"smithy.api#enumValue" => "QUEUED"}))
    JobExecutionStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobExecutionStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobExecutionStatus.add_member(:timed_out, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TIMED_OUT', traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    JobExecutionStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    JobExecutionStatus.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "REMOVED"}))
    JobExecutionStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    JobExecutionSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier you assigned to this job when it was created.</p>"}))
    JobExecutionSummary.add_member(:queued_at, Smithy::Schema::Shapes::ShapeRef.new(shape: QueuedAt, location_name: 'queuedAt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in seconds since the epoch, when the job execution was enqueued.</p>"}))
    JobExecutionSummary.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: StartedAt, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time, in seconds since the epoch, when the job execution started.</p>"}))
    JobExecutionSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: 'lastUpdatedAt', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time, in seconds since the epoch, when the job execution was last\n         updated.</p>"}))
    JobExecutionSummary.add_member(:version_number, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionNumber, location_name: 'versionNumber', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The version of the job execution. Job execution versions are incremented each time\n         IoT Jobs receives an update from a device.</p>"}))
    JobExecutionSummary.add_member(:execution_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber', traits: {"smithy.api#documentation" => "<p>A number that identifies a particular job execution on a particular device.</p>"}))
    JobExecutionSummary.type = Types::JobExecutionSummary
    JobExecutionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionSummary)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message for the exception.</p>"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartCommandExecutionRequest.add_member(:target_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetArn, location_name: 'targetArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the device where the command execution is\n         occurring.</p>", "smithy.api#required" => {}}))
    StartCommandExecutionRequest.add_member(:command_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandArn, location_name: 'commandArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of the command. For example,\n            <code>arn:aws:iot:<region>:<accountid>:command/<commandName></code>\n         </p>", "smithy.api#required" => {}}))
    StartCommandExecutionRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionParameterMap, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>A list of parameters that are required by the <code>StartCommandExecution</code> API\n         when performing the command on a device.</p>"}))
    StartCommandExecutionRequest.add_member(:execution_timeout_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionTimeoutInSeconds, location_name: 'executionTimeoutSeconds', traits: {"smithy.api#documentation" => "<p>Specifies the amount of time in second the device has to finish the command execution. A\n         timer is started as soon as the command execution is created. If the command execution\n         status is not set to another terminal state before the timer expires, it will automatically\n         update to <code>TIMED_OUT</code>.</p>"}))
    StartCommandExecutionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenV2, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token is used to implement idempotency. It ensures that the request completes\n         no more than one time. If you retry a request with the same token and the same parameters,\n         the request will complete successfully. However, if you retry the request using the same\n         token but different parameters, an HTTP 409 conflict occurs. If you omit this value, Amazon Web Services\n         SDKs will automatically generate a unique client request.</p>", "smithy.api#idempotencyToken" => {}}))
    StartCommandExecutionRequest.type = Types::StartCommandExecutionRequest
    StartCommandExecutionResponse.add_member(:execution_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionId, location_name: 'executionId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the command execution.</p>"}))
    StartCommandExecutionResponse.type = Types::StartCommandExecutionResponse
    StartNextPendingJobExecutionRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing associated with the device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartNextPendingJobExecutionRequest.add_member(:status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails', traits: {"smithy.api#documentation" => "<p>A collection of name/value pairs that describe the status of the job execution. If\n         not specified, the statusDetails are unchanged.</p>\n         <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>"}))
    StartNextPendingJobExecutionRequest.add_member(:step_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: StepTimeoutInMinutes, location_name: 'stepTimeoutInMinutes', traits: {"smithy.api#documentation" => "<p>Specifies the amount of time this device has to finish execution of this job. If the job\n         execution status is not set to a terminal state before this timer expires, or before the\n         timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to\n            <code>IN_PROGRESS</code>, and specifying a new timeout value in field\n            <code>stepTimeoutInMinutes</code>) the job execution status will be automatically set to\n            <code>TIMED_OUT</code>. Note that setting the step timeout has no effect on the in\n         progress timeout that may have been specified when the job was created\n            (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>\n         <p>Valid values for this parameter range from 1 to 10080 (1 minute to 7 days).</p>"}))
    StartNextPendingJobExecutionRequest.type = Types::StartNextPendingJobExecutionRequest
    StartNextPendingJobExecutionResponse.add_member(:execution, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecution, location_name: 'execution', traits: {"smithy.api#documentation" => "<p>A JobExecution object.</p>"}))
    StartNextPendingJobExecutionResponse.type = Types::StartNextPendingJobExecutionResponse
    TerminalStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TerminalStateException.type = Types::TerminalStateException
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message associated with the exception.</p>"}))
    ThrottlingException.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryBlob, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The payload associated with the exception.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateJobExecutionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier assigned to this job when it was created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobExecutionRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the thing associated with the device.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobExecutionRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED).\n         This must be specified on every update.</p>", "smithy.api#required" => {}}))
    UpdateJobExecutionRequest.add_member(:status_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DetailsMap, location_name: 'statusDetails', traits: {"smithy.api#documentation" => "<p> Optional. A collection of name/value pairs that describe the status of the job\n         execution. If not specified, the statusDetails are unchanged.</p>\n         <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>"}))
    UpdateJobExecutionRequest.add_member(:step_timeout_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: StepTimeoutInMinutes, location_name: 'stepTimeoutInMinutes', traits: {"smithy.api#documentation" => "<p>Specifies the amount of time this device has to finish execution of this job. If the job\n         execution status is not set to a terminal state before this timer expires, or before the\n         timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to\n            <code>IN_PROGRESS</code>, and specifying a new timeout value in this field) the job\n         execution status will be automatically set to <code>TIMED_OUT</code>. Note that setting or\n         resetting the step timeout has no effect on the in progress timeout that may have been\n         specified when the job was created (<code>CreateJob</code> using field\n            <code>timeoutConfig</code>).</p>\n         <p>Valid values for this parameter range from 1 to 10080 (1 minute to 7 days). A value of\n         -1 is also valid and will cancel the current step timer (created by an earlier use of\n            <code>UpdateJobExecutionRequest</code>).</p>"}))
    UpdateJobExecutionRequest.add_member(:expected_version, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpectedVersion, location_name: 'expectedVersion', traits: {"smithy.api#documentation" => "<p>Optional. The expected current version of the job execution. Each time you update the\n         job execution, its version is incremented. If the version of the job execution stored in\n         Jobs does not match, the update is rejected with a VersionMismatch error, and an\n         ErrorResponse that contains the current job execution status data is returned. (This makes\n         it unnecessary to perform a separate DescribeJobExecution request in order to obtain the\n         job execution status data.)</p>"}))
    UpdateJobExecutionRequest.add_member(:include_job_execution_state, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeExecutionState, location_name: 'includeJobExecutionState', traits: {"smithy.api#documentation" => "<p>Optional. When included and set to true, the response contains the JobExecutionState\n         data. The default is false.</p>"}))
    UpdateJobExecutionRequest.add_member(:include_job_document, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeJobDocument, location_name: 'includeJobDocument', traits: {"smithy.api#documentation" => "<p>Optional. When set to true, the response contains the job document. The default is\n         false.</p>"}))
    UpdateJobExecutionRequest.add_member(:execution_number, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: 'executionNumber', traits: {"smithy.api#documentation" => "<p>Optional. A number that identifies a particular job execution on a particular\n         device.</p>"}))
    UpdateJobExecutionRequest.type = Types::UpdateJobExecutionRequest
    UpdateJobExecutionResponse.add_member(:execution_state, Smithy::Schema::Shapes::ShapeRef.new(shape: JobExecutionState, location_name: 'executionState', traits: {"smithy.api#documentation" => "<p>A JobExecutionState object.</p>"}))
    UpdateJobExecutionResponse.add_member(:job_document, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDocument, location_name: 'jobDocument', traits: {"smithy.api#documentation" => "<p>The contents of the Job Documents.</p>"}))
    UpdateJobExecutionResponse.type = Types::UpdateJobExecutionResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException

    IotLaserThingJobManagerExternalService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotjobsdataplane#IotLaserThingJobManagerExternalService"
      service.name = "IotLaserThingJobManagerExternalService"
      service.version = "2017-09-29"
      service.traits = {"aws.api#service" => {"sdkId" => "IoT Jobs Data Plane", "arnNamespace" => "iot-jobs-data", "cloudFormationName" => "IoTJobsDataPlane", "cloudTrailEventSource" => "iotjobsdataplane.amazonaws.com", "docId" => "iot-jobs-data-2017-09-29", "endpointPrefix" => "data.jobs.iot"}, "aws.auth#sigv4" => {"name" => "iot-jobs-data"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Jobs Data Plane"}
      service.add_operation(:describe_job_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#DescribeJobExecution"
        operation.name = "DescribeJobExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TerminalStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/things/{thingName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:get_pending_job_executions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#GetPendingJobExecutions"
        operation.name = "GetPendingJobExecutions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingJobExecutionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPendingJobExecutionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/things/{thingName}/jobs", "code" => 200}}
      end)
      service.add_operation(:start_command_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#StartCommandExecution"
        operation.name = "StartCommandExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommandExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommandExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/command-executions", "code" => 200}}
      end)
      service.add_operation(:start_next_pending_job_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#StartNextPendingJobExecution"
        operation.name = "StartNextPendingJobExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartNextPendingJobExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartNextPendingJobExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/things/{thingName}/jobs/$next", "code" => 200}}
      end)
      service.add_operation(:update_job_execution, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotjobsdataplane#UpdateJobExecution"
        operation.name = "UpdateJobExecution"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobExecutionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobExecutionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateValidationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/things/{thingName}/jobs/{jobId}", "code" => 200}}
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

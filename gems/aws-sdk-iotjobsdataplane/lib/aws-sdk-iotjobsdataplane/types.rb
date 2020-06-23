# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTJobsDataPlane
  module Types

    # The certificate is invalid.
    #
    # @!attribute [rw] message
    #   Additional information about the exception.
    #   @return [String]
    #
    class CertificateValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "DescribeJobExecutionJobId", # required
    #         thing_name: "ThingName", # required
    #         include_job_document: false,
    #         execution_number: 1,
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The thing name associated with the device the job execution is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] include_job_document
    #   Optional. When set to true, the response contains the job document.
    #   The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_number
    #   Optional. A number that identifies a particular job execution on a
    #   particular device. If not specified, the latest job execution is
    #   returned.
    #   @return [Integer]
    #
    class DescribeJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :include_job_document,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   Contains data about a job execution.
    #   @return [Types::JobExecution]
    #
    class DescribeJobExecutionResponse < Struct.new(
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPendingJobExecutionsRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing that is executing the job.
    #   @return [String]
    #
    class GetPendingJobExecutionsRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] in_progress_jobs
    #   A list of JobExecutionSummary objects with status IN\_PROGRESS.
    #   @return [Array<Types::JobExecutionSummary>]
    #
    # @!attribute [rw] queued_jobs
    #   A list of JobExecutionSummary objects with status QUEUED.
    #   @return [Array<Types::JobExecutionSummary>]
    #
    class GetPendingJobExecutionsResponse < Struct.new(
      :in_progress_jobs,
      :queued_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contents of the request were invalid. For example, this code is
    # returned when an UpdateJobExecution request contains invalid status
    # details. The message contains details about the error.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update attempted to change the job execution to a state that is
    # invalid because of the job execution's current state (for example, an
    # attempt to change a request in state SUCCESS to state IN\_PROGRESS).
    # In this case, the body of the error message also contains the
    # executionState field.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidStateTransitionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data about a job execution.
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing that is executing the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job execution. Can be one of: "QUEUED",
    #   "IN\_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    #   "REJECTED", or "REMOVED".
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] queued_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was enqueued.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was started.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_seconds_before_timed_out
    #   The estimated number of seconds that remain before the job execution
    #   status will be changed to `TIMED_OUT`.
    #   @return [Integer]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time they are updated by a device.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_number
    #   A number that identifies a particular job execution on a particular
    #   device. It can be used later in commands that return or update job
    #   execution information.
    #   @return [Integer]
    #
    # @!attribute [rw] job_document
    #   The content of the job document.
    #   @return [String]
    #
    class JobExecution < Struct.new(
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :queued_at,
      :started_at,
      :last_updated_at,
      :approximate_seconds_before_timed_out,
      :version_number,
      :execution_number,
      :job_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data about the state of a job execution.
    #
    # @!attribute [rw] status
    #   The status of the job execution. Can be one of: "QUEUED",
    #   "IN\_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    #   "REJECTED", or "REMOVED".
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time they are updated by a device.
    #   @return [Integer]
    #
    class JobExecutionState < Struct.new(
      :status,
      :status_details,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a subset of information about a job execution.
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] queued_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was enqueued.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   started.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the job execution
    #   was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time AWS IoT Jobs receives an update from a device.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_number
    #   A number that identifies a particular job execution on a particular
    #   device.
    #   @return [Integer]
    #
    class JobExecutionSummary < Struct.new(
      :job_id,
      :queued_at,
      :started_at,
      :last_updated_at,
      :version_number,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartNextPendingJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         thing_name: "ThingName", # required
    #         status_details: {
    #           "DetailsKey" => "DetailsValue",
    #         },
    #         step_timeout_in_minutes: 1,
    #       }
    #
    # @!attribute [rw] thing_name
    #   The name of the thing associated with the device.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution. If not specified, the statusDetails are unchanged.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] step_timeout_in_minutes
    #   Specifies the amount of time this device has to finish execution of
    #   this job. If the job execution status is not set to a terminal state
    #   before this timer expires, or before the timer is reset (by calling
    #   `UpdateJobExecution`, setting the status to `IN_PROGRESS` and
    #   specifying a new timeout value in field `stepTimeoutInMinutes`) the
    #   job execution status will be automatically set to `TIMED_OUT`. Note
    #   that setting this timeout has no effect on that job execution
    #   timeout which may have been specified when the job was created
    #   (`CreateJob` using field `timeoutConfig`).
    #   @return [Integer]
    #
    class StartNextPendingJobExecutionRequest < Struct.new(
      :thing_name,
      :status_details,
      :step_timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   A JobExecution object.
    #   @return [Types::JobExecution]
    #
    class StartNextPendingJobExecutionResponse < Struct.new(
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job is in a terminal state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class TerminalStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   The message associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload associated with the exception.
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         thing_name: "ThingName", # required
    #         status: "QUEUED", # required, accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, TIMED_OUT, REJECTED, REMOVED, CANCELED
    #         status_details: {
    #           "DetailsKey" => "DetailsValue",
    #         },
    #         step_timeout_in_minutes: 1,
    #         expected_version: 1,
    #         include_job_execution_state: false,
    #         include_job_document: false,
    #         execution_number: 1,
    #       }
    #
    # @!attribute [rw] job_id
    #   The unique identifier assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing associated with the device.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status for the job execution (IN\_PROGRESS, FAILED, SUCCESS,
    #   or REJECTED). This must be specified on every update.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Optional. A collection of name/value pairs that describe the status
    #   of the job execution. If not specified, the statusDetails are
    #   unchanged.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] step_timeout_in_minutes
    #   Specifies the amount of time this device has to finish execution of
    #   this job. If the job execution status is not set to a terminal state
    #   before this timer expires, or before the timer is reset (by again
    #   calling `UpdateJobExecution`, setting the status to `IN_PROGRESS`
    #   and specifying a new timeout value in this field) the job execution
    #   status will be automatically set to `TIMED_OUT`. Note that setting
    #   or resetting this timeout has no effect on that job execution
    #   timeout which may have been specified when the job was created
    #   (`CreateJob` using field `timeoutConfig`).
    #   @return [Integer]
    #
    # @!attribute [rw] expected_version
    #   Optional. The expected current version of the job execution. Each
    #   time you update the job execution, its version is incremented. If
    #   the version of the job execution stored in Jobs does not match, the
    #   update is rejected with a VersionMismatch error, and an
    #   ErrorResponse that contains the current job execution status data is
    #   returned. (This makes it unnecessary to perform a separate
    #   DescribeJobExecution request in order to obtain the job execution
    #   status data.)
    #   @return [Integer]
    #
    # @!attribute [rw] include_job_execution_state
    #   Optional. When included and set to true, the response contains the
    #   JobExecutionState data. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_job_document
    #   Optional. When set to true, the response contains the job document.
    #   The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_number
    #   Optional. A number that identifies a particular job execution on a
    #   particular device.
    #   @return [Integer]
    #
    class UpdateJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :step_timeout_in_minutes,
      :expected_version,
      :include_job_execution_state,
      :include_job_document,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_state
    #   A JobExecutionState object.
    #   @return [Types::JobExecutionState]
    #
    # @!attribute [rw] job_document
    #   The contents of the Job Documents.
    #   @return [String]
    #
    class UpdateJobExecutionResponse < Struct.new(
      :execution_state,
      :job_document)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

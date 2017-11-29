# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTJobsDataPlane
  module Types

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
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   Contains data about a job execution.
    #   @return [Types::JobExecution]
    #
    class DescribeJobExecutionResponse < Struct.new(
      :execution)
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
      :version_number,
      :execution_number,
      :job_document)
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
    class StartNextPendingJobExecutionRequest < Struct.new(
      :thing_name,
      :status_details)
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   A JobExecution object.
    #   @return [Types::JobExecution]
    #
    class StartNextPendingJobExecutionResponse < Struct.new(
      :execution)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJobExecutionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         thing_name: "ThingName", # required
    #         status: "QUEUED", # required, accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, REJECTED, REMOVED, CANCELED
    #         status_details: {
    #           "DetailsKey" => "DetailsValue",
    #         },
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
      :expected_version,
      :include_job_execution_state,
      :include_job_document,
      :execution_number)
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
      include Aws::Structure
    end

  end
end

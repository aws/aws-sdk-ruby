# frozen_string_literal: true

# This is generated code!

module Aws::IoTJobsDataPlane
  # This module contains the types returned by client operations.
  module Types

    # <p>The certificate is invalid.</p>
    # @!attribute message
    #   <p>Additional information about the exception.</p>
    #   @return [String]
    class CertificateValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of values used to describe a specific command parameter.</p>
    # @!attribute s
    #   <p>An attribute of type String. For example:</p>
    #            <p>
    #               <code>"S": "Hello"</code>
    #            </p>
    #   @return [String]
    # @!attribute b
    #   <p>An attribute of type Boolean. For example:</p>
    #            <p>
    #               <code>"BOOL": true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute i
    #   <p>An attribute of type Integer (Thirty-Two Bits).</p>
    #   @return [Integer]
    # @!attribute l
    #   <p>An attribute of type Long.</p>
    #   @return [Integer]
    # @!attribute d
    #   <p>An attribute of type Double (Sixty-Four Bits).</p>
    #   @return [Float]
    # @!attribute bin
    #   <p>An attribute of type Binary.</p>
    #   @return [String]
    # @!attribute ul
    #   <p>An attribute of type Unsigned Long.</p>
    #   @return [String]
    class CommandParameterValue < Struct.new(
      nil,
      :s,
      :b,
      :i,
      :l,
      :d,
      :bin,
      :ul,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict has occurred when performing the API request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>A conflict occurred while performing the API request on the resource ID.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The thing name associated with the device the job execution is running on.</p>
    #   @return [String]
    # @!attribute include_job_document
    #   <p>Optional. Unless set to false, the response contains the job document. The default is
    #            true.</p>
    #   @return [Boolean]
    # @!attribute execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular device.
    #            If not specified, the latest job execution is returned.</p>
    #   @return [Integer]
    class DescribeJobExecutionRequest < Struct.new(
      nil,
      :job_id,
      :thing_name,
      :include_job_document,
      :execution_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution
    #   <p>Contains data about a job execution.</p>
    #   @return [Types::JobExecution]
    class DescribeJobExecutionResponse < Struct.new(
      nil,
      :execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing that is executing the job.</p>
    #   @return [String]
    class GetPendingJobExecutionsRequest < Struct.new(
      nil,
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute in_progress_jobs
    #   <p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>
    #   @return [Array<Types::JobExecutionSummary>]
    # @!attribute queued_jobs
    #   <p>A list of JobExecutionSummary objects with status QUEUED.</p>
    #   @return [Array<Types::JobExecutionSummary>]
    class GetPendingJobExecutionsResponse < Struct.new(
      nil,
      :in_progress_jobs,
      :queued_jobs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred when performing the API request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The contents of the request were invalid.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An update attempted to change the job execution to a state that is invalid because of
    #          the job execution's current state (for example, an attempt to change a request in state
    #          SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains
    #          the executionState field.</p>
    # @!attribute message
    #   @return [String]
    class InvalidStateTransitionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains data about a job execution.</p>
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing that is executing the job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED",
    #            "SUCCESS", "CANCELED", "TIMED_OUT", "REJECTED", or "REMOVED".</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job
    #            execution.</p>
    #            <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute queued_at
    #   <p>The time, in seconds since the epoch, when the job execution was enqueued.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The time, in seconds since the epoch, when the job execution was started.</p>
    #   @return [Integer]
    # @!attribute last_updated_at
    #   <p>The time, in seconds since the epoch, when the job execution was last updated.
    #         </p>
    #   @return [Integer]
    # @!attribute approximate_seconds_before_timed_out
    #   <p>The estimated number of seconds that remain before the job execution status will be
    #            changed to <code>TIMED_OUT</code>. The actual job execution timeout can occur up to 60
    #            seconds later than the estimated duration.</p>
    #   @return [Integer]
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time
    #            they are updated by a device.</p>
    #   @return [Integer]
    # @!attribute execution_number
    #   <p>A number that identifies a particular job execution on a particular device. It can be
    #            used later in commands that return or update job execution information.</p>
    #   @return [Integer]
    # @!attribute job_document
    #   <p>The content of the job document.</p>
    #   @return [String]
    class JobExecution < Struct.new(
      nil,
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
      :job_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:queued_at] = 0 unless options.key?(:queued_at)
        options[:last_updated_at] = 0 unless options.key?(:last_updated_at)
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>Contains data about the state of a job execution.</p>
    # @!attribute status
    #   <p>The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED",
    #            "SUCCESS", "CANCELED", "TIMED_OUT", "REJECTED", or "REMOVED".</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job
    #            execution.</p>
    #            <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time
    #            they are updated by a device.</p>
    #   @return [Integer]
    class JobExecutionState < Struct.new(
      nil,
      :status,
      :status_details,
      :version_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>Contains a subset of information about a job execution.</p>
    # @!attribute job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute queued_at
    #   <p>The time, in seconds since the epoch, when the job execution was enqueued.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The time, in seconds since the epoch, when the job execution started.</p>
    #   @return [Integer]
    # @!attribute last_updated_at
    #   <p>The time, in seconds since the epoch, when the job execution was last
    #            updated.</p>
    #   @return [Integer]
    # @!attribute version_number
    #   <p>The version of the job execution. Job execution versions are incremented each time
    #            IoT Jobs receives an update from a device.</p>
    #   @return [Integer]
    # @!attribute execution_number
    #   <p>A number that identifies a particular job execution on a particular device.</p>
    #   @return [Integer]
    class JobExecutionSummary < Struct.new(
      nil,
      :job_id,
      :queued_at,
      :started_at,
      :last_updated_at,
      :version_number,
      :execution_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:queued_at] = 0 unless options.key?(:queued_at)
        options[:last_updated_at] = 0 unless options.key?(:last_updated_at)
        options[:version_number] = 0 unless options.key?(:version_number)
        super
      end
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota has been exceeded for this request.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unavailable.</p>
    # @!attribute message
    #   <p>The message for the exception.</p>
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The Amazon Resource Number (ARN) of the device where the command execution is
    #            occurring.</p>
    #   @return [String]
    # @!attribute command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. For example,
    #               <code>arn:aws:iot:<region>:<accountid>:command/<commandName></code>
    #            </p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of parameters that are required by the <code>StartCommandExecution</code> API
    #            when performing the command on a device.</p>
    #   @return [Hash<String, Types::CommandParameterValue>]
    # @!attribute execution_timeout_seconds
    #   <p>Specifies the amount of time in second the device has to finish the command execution. A
    #            timer is started as soon as the command execution is created. If the command execution
    #            status is not set to another terminal state before the timer expires, it will automatically
    #            update to <code>TIMED_OUT</code>.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>The client token is used to implement idempotency. It ensures that the request completes
    #            no more than one time. If you retry a request with the same token and the same parameters,
    #            the request will complete successfully. However, if you retry the request using the same
    #            token but different parameters, an HTTP 409 conflict occurs. If you omit this value, Amazon Web Services
    #            SDKs will automatically generate a unique client request.</p>
    #   @return [String]
    class StartCommandExecutionRequest < Struct.new(
      nil,
      :target_arn,
      :command_arn,
      :parameters,
      :execution_timeout_seconds,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>A unique identifier for the command execution.</p>
    #   @return [String]
    class StartCommandExecutionResponse < Struct.new(
      nil,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing associated with the device.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If
    #            not specified, the statusDetails are unchanged.</p>
    #            <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #            execution status is not set to a terminal state before this timer expires, or before the
    #            timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to
    #               <code>IN_PROGRESS</code>, and specifying a new timeout value in field
    #               <code>stepTimeoutInMinutes</code>) the job execution status will be automatically set to
    #               <code>TIMED_OUT</code>. Note that setting the step timeout has no effect on the in
    #            progress timeout that may have been specified when the job was created
    #               (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
    #            <p>Valid values for this parameter range from 1 to 10080 (1 minute to 7 days).</p>
    #   @return [Integer]
    class StartNextPendingJobExecutionRequest < Struct.new(
      nil,
      :thing_name,
      :status_details,
      :step_timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution
    #   <p>A JobExecution object.</p>
    #   @return [Types::JobExecution]
    class StartNextPendingJobExecutionResponse < Struct.new(
      nil,
      :execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The job is in a terminal state.</p>
    # @!attribute message
    #   @return [String]
    class TerminalStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate exceeds the limit.</p>
    # @!attribute message
    #   <p>The message associated with the exception.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The payload associated with the exception.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing associated with the device.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED).
    #            This must be specified on every update.</p>
    #   @return [String]
    # @!attribute status_details
    #   <p> Optional. A collection of name/value pairs that describe the status of the job
    #            execution. If not specified, the statusDetails are unchanged.</p>
    #            <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>
    #   @return [Hash<String, String>]
    # @!attribute step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #            execution status is not set to a terminal state before this timer expires, or before the
    #            timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to
    #               <code>IN_PROGRESS</code>, and specifying a new timeout value in this field) the job
    #            execution status will be automatically set to <code>TIMED_OUT</code>. Note that setting or
    #            resetting the step timeout has no effect on the in progress timeout that may have been
    #            specified when the job was created (<code>CreateJob</code> using field
    #               <code>timeoutConfig</code>).</p>
    #            <p>Valid values for this parameter range from 1 to 10080 (1 minute to 7 days). A value of
    #            -1 is also valid and will cancel the current step timer (created by an earlier use of
    #               <code>UpdateJobExecutionRequest</code>).</p>
    #   @return [Integer]
    # @!attribute expected_version
    #   <p>Optional. The expected current version of the job execution. Each time you update the
    #            job execution, its version is incremented. If the version of the job execution stored in
    #            Jobs does not match, the update is rejected with a VersionMismatch error, and an
    #            ErrorResponse that contains the current job execution status data is returned. (This makes
    #            it unnecessary to perform a separate DescribeJobExecution request in order to obtain the
    #            job execution status data.)</p>
    #   @return [Integer]
    # @!attribute include_job_execution_state
    #   <p>Optional. When included and set to true, the response contains the JobExecutionState
    #            data. The default is false.</p>
    #   @return [Boolean]
    # @!attribute include_job_document
    #   <p>Optional. When set to true, the response contains the job document. The default is
    #            false.</p>
    #   @return [Boolean]
    # @!attribute execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular
    #            device.</p>
    #   @return [Integer]
    class UpdateJobExecutionRequest < Struct.new(
      nil,
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :step_timeout_in_minutes,
      :expected_version,
      :include_job_execution_state,
      :include_job_document,
      :execution_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_state
    #   <p>A JobExecutionState object.</p>
    #   @return [Types::JobExecutionState]
    # @!attribute job_document
    #   <p>The contents of the Job Documents.</p>
    #   @return [String]
    class UpdateJobExecutionResponse < Struct.new(
      nil,
      :execution_state,
      :job_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A validation error occurred when performing the API request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end

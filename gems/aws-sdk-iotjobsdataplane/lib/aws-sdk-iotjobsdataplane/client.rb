# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotjobsdataplane)

module Aws::IoTJobsDataPlane
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iotjobsdataplane

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Gets details of a job execution.
    #
    # @option params [required, String] :job_id
    #   The unique identifier assigned to this job when it was created.
    #
    # @option params [required, String] :thing_name
    #   The thing name associated with the device the job execution is running
    #   on.
    #
    # @option params [Boolean] :include_job_document
    #   Optional. When set to true, the response contains the job document.
    #   The default is false.
    #
    # @option params [Integer] :execution_number
    #   Optional. A number that identifies a particular job execution on a
    #   particular device. If not specified, the latest job execution is
    #   returned.
    #
    # @return [Types::DescribeJobExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobExecutionResponse#execution #execution} => Types::JobExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_execution({
    #     job_id: "DescribeJobExecutionJobId", # required
    #     thing_name: "ThingName", # required
    #     include_job_document: false,
    #     execution_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.execution.job_id #=> String
    #   resp.execution.thing_name #=> String
    #   resp.execution.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution.status_details #=> Hash
    #   resp.execution.status_details["DetailsKey"] #=> String
    #   resp.execution.queued_at #=> Integer
    #   resp.execution.started_at #=> Integer
    #   resp.execution.last_updated_at #=> Integer
    #   resp.execution.version_number #=> Integer
    #   resp.execution.execution_number #=> Integer
    #   resp.execution.job_document #=> String
    #
    # @overload describe_job_execution(params = {})
    # @param [Hash] params ({})
    def describe_job_execution(params = {}, options = {})
      req = build_request(:describe_job_execution, params)
      req.send_request(options)
    end

    # Gets the list of all jobs for a thing that are not in a terminal
    # status.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing that is executing the job.
    #
    # @return [Types::GetPendingJobExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPendingJobExecutionsResponse#in_progress_jobs #in_progress_jobs} => Array&lt;Types::JobExecutionSummary&gt;
    #   * {Types::GetPendingJobExecutionsResponse#queued_jobs #queued_jobs} => Array&lt;Types::JobExecutionSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pending_job_executions({
    #     thing_name: "ThingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.in_progress_jobs #=> Array
    #   resp.in_progress_jobs[0].job_id #=> String
    #   resp.in_progress_jobs[0].queued_at #=> Integer
    #   resp.in_progress_jobs[0].started_at #=> Integer
    #   resp.in_progress_jobs[0].last_updated_at #=> Integer
    #   resp.in_progress_jobs[0].version_number #=> Integer
    #   resp.in_progress_jobs[0].execution_number #=> Integer
    #   resp.queued_jobs #=> Array
    #   resp.queued_jobs[0].job_id #=> String
    #   resp.queued_jobs[0].queued_at #=> Integer
    #   resp.queued_jobs[0].started_at #=> Integer
    #   resp.queued_jobs[0].last_updated_at #=> Integer
    #   resp.queued_jobs[0].version_number #=> Integer
    #   resp.queued_jobs[0].execution_number #=> Integer
    #
    # @overload get_pending_job_executions(params = {})
    # @param [Hash] params ({})
    def get_pending_job_executions(params = {}, options = {})
      req = build_request(:get_pending_job_executions, params)
      req.send_request(options)
    end

    # Gets and starts the next pending (status IN\_PROGRESS or QUEUED) job
    # execution for a thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing associated with the device.
    #
    # @option params [Hash<String,String>] :status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution. If not specified, the statusDetails are unchanged.
    #
    # @return [Types::StartNextPendingJobExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartNextPendingJobExecutionResponse#execution #execution} => Types::JobExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_next_pending_job_execution({
    #     thing_name: "ThingName", # required
    #     status_details: {
    #       "DetailsKey" => "DetailsValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.execution.job_id #=> String
    #   resp.execution.thing_name #=> String
    #   resp.execution.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution.status_details #=> Hash
    #   resp.execution.status_details["DetailsKey"] #=> String
    #   resp.execution.queued_at #=> Integer
    #   resp.execution.started_at #=> Integer
    #   resp.execution.last_updated_at #=> Integer
    #   resp.execution.version_number #=> Integer
    #   resp.execution.execution_number #=> Integer
    #   resp.execution.job_document #=> String
    #
    # @overload start_next_pending_job_execution(params = {})
    # @param [Hash] params ({})
    def start_next_pending_job_execution(params = {}, options = {})
      req = build_request(:start_next_pending_job_execution, params)
      req.send_request(options)
    end

    # Updates the status of a job execution.
    #
    # @option params [required, String] :job_id
    #   The unique identifier assigned to this job when it was created.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing associated with the device.
    #
    # @option params [required, String] :status
    #   The new status for the job execution (IN\_PROGRESS, FAILED, SUCCESS,
    #   or REJECTED). This must be specified on every update.
    #
    # @option params [Hash<String,String>] :status_details
    #   Optional. A collection of name/value pairs that describe the status of
    #   the job execution. If not specified, the statusDetails are unchanged.
    #
    # @option params [Integer] :expected_version
    #   Optional. The expected current version of the job execution. Each time
    #   you update the job execution, its version is incremented. If the
    #   version of the job execution stored in Jobs does not match, the update
    #   is rejected with a VersionMismatch error, and an ErrorResponse that
    #   contains the current job execution status data is returned. (This
    #   makes it unnecessary to perform a separate DescribeJobExecution
    #   request in order to obtain the job execution status data.)
    #
    # @option params [Boolean] :include_job_execution_state
    #   Optional. When included and set to true, the response contains the
    #   JobExecutionState data. The default is false.
    #
    # @option params [Boolean] :include_job_document
    #   Optional. When set to true, the response contains the job document.
    #   The default is false.
    #
    # @option params [Integer] :execution_number
    #   Optional. A number that identifies a particular job execution on a
    #   particular device.
    #
    # @return [Types::UpdateJobExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobExecutionResponse#execution_state #execution_state} => Types::JobExecutionState
    #   * {Types::UpdateJobExecutionResponse#job_document #job_document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_execution({
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     status: "QUEUED", # required, accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, REJECTED, REMOVED, CANCELED
    #     status_details: {
    #       "DetailsKey" => "DetailsValue",
    #     },
    #     expected_version: 1,
    #     include_job_execution_state: false,
    #     include_job_document: false,
    #     execution_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_state.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution_state.status_details #=> Hash
    #   resp.execution_state.status_details["DetailsKey"] #=> String
    #   resp.execution_state.version_number #=> Integer
    #   resp.job_document #=> String
    #
    # @overload update_job_execution(params = {})
    # @param [Hash] params ({})
    def update_job_execution(params = {}, options = {})
      req = build_request(:update_job_execution, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-iotjobsdataplane'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end

# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::IoTJobsDataPlane
  # An API client for Aws::IoTJobsDataPlane.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotLaserThingJobManagerExternalService

    add_plugin(::Aws::IoTJobsDataPlane::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTJobsDataPlane::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Gets details of a job execution.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeJobExecution</a> action.</p>
    # @param [Hash, Types::DescribeJobExecutionRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    # @option params [String] :thing_name
    #   <p>The thing name associated with the device the job execution is running on.</p>
    # @option params [Boolean] :include_job_document
    #   <p>Optional. Unless set to false, the response contains the job document. The default is
    #            true.</p>
    # @option params [Integer] :execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular device.
    #            If not specified, the latest job execution is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "DescribeJobExecutionJobId", # required
    #     thing_name: "ThingName", # required
    #     include_job_document: false,
    #     execution_number: 1
    #   }
    #   options = {}
    #   response = client.describe_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution: {
    #       job_id: "JobId",
    #       thing_name: "ThingName",
    #       status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #       status_details: {
    #         "DetailsKey" => "DetailsValue"
    #       },
    #       queued_at: 1,
    #       started_at: 1,
    #       last_updated_at: 1,
    #       approximate_seconds_before_timed_out: 1,
    #       version_number: 1,
    #       execution_number: 1,
    #       job_document: "JobDocument"
    #     }
    #   }
    # @return [Types::DescribeJobExecutionResponse]
    def describe_job_execution(params = {}, options = {})
      request = build_request(:describe_job_execution, params)
      request.send_request(options)
    end

    # <p>Gets the list of all jobs for a thing that are not in a terminal status.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPendingJobExecutions</a> action.</p>
    # @param [Hash, Types::GetPendingJobExecutionsRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing that is executing the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #   }
    #   options = {}
    #   response = client.get_pending_job_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     in_progress_jobs: [
    #       {
    #         job_id: "JobId",
    #         queued_at: 1,
    #         started_at: 1,
    #         last_updated_at: 1,
    #         version_number: 1,
    #         execution_number: 1
    #       }
    #     ],
    #     queued_jobs: [
    #       {
    #         job_id: "JobId",
    #         queued_at: 1,
    #         started_at: 1,
    #         last_updated_at: 1,
    #         version_number: 1,
    #         execution_number: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetPendingJobExecutionsResponse]
    def get_pending_job_executions(params = {}, options = {})
      request = build_request(:get_pending_job_executions, params)
      request.send_request(options)
    end

    # <p>Using the command created with the <code>CreateCommand</code> API, start a command
    #          execution on a specific device.</p>
    # @param [Hash, Types::StartCommandExecutionRequest] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Number (ARN) of the device where the command execution is
    #            occurring.</p>
    # @option params [String] :command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. For example,
    #               <code>arn:aws:iot:<region>:<accountid>:command/<commandName></code>
    #            </p>
    # @option params [Hash<String, Types::CommandParameterValue>] :parameters
    #   <p>A list of parameters that are required by the <code>StartCommandExecution</code> API
    #            when performing the command on a device.</p>
    # @option params [Integer] :execution_timeout_seconds
    #   <p>Specifies the amount of time in second the device has to finish the command execution. A
    #            timer is started as soon as the command execution is created. If the command execution
    #            status is not set to another terminal state before the timer expires, it will automatically
    #            update to <code>TIMED_OUT</code>.</p>
    # @option params [String] :client_token
    #   <p>The client token is used to implement idempotency. It ensures that the request completes
    #            no more than one time. If you retry a request with the same token and the same parameters,
    #            the request will complete successfully. However, if you retry the request using the same
    #            token but different parameters, an HTTP 409 conflict occurs. If you omit this value, Amazon Web Services
    #            SDKs will automatically generate a unique client request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetArn", # required
    #     command_arn: "CommandArn", # required
    #     parameters: {
    #       "CommandParameterName" => {
    #         s: "StringParameterValue",
    #         b: false,
    #         i: 1,
    #         l: 1,
    #         d: 1.0,
    #         bin: "data",
    #         ul: "UnsignedLongParameterValue"
    #       }
    #     },
    #     execution_timeout_seconds: 1,
    #     client_token: "ClientRequestTokenV2"
    #   }
    #   options = {}
    #   response = client.start_command_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "CommandExecutionId"
    #   }
    # @return [Types::StartCommandExecutionResponse]
    def start_command_execution(params = {}, options = {})
      request = build_request(:start_command_execution, params)
      request.send_request(options)
    end

    # <p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a
    #          thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartNextPendingJobExecution</a> action.</p>
    # @param [Hash, Types::StartNextPendingJobExecutionRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing associated with the device.</p>
    # @option params [Hash<String, String>] :status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If
    #            not specified, the statusDetails are unchanged.</p>
    #            <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>
    # @option params [Integer] :step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #            execution status is not set to a terminal state before this timer expires, or before the
    #            timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to
    #               <code>IN_PROGRESS</code>, and specifying a new timeout value in field
    #               <code>stepTimeoutInMinutes</code>) the job execution status will be automatically set to
    #               <code>TIMED_OUT</code>. Note that setting the step timeout has no effect on the in
    #            progress timeout that may have been specified when the job was created
    #               (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
    #            <p>Valid values for this parameter range from 1 to 10080 (1 minute to 7 days).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     status_details: {
    #       "DetailsKey" => "DetailsValue"
    #     },
    #     step_timeout_in_minutes: 1
    #   }
    #   options = {}
    #   response = client.start_next_pending_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution: {
    #       job_id: "JobId",
    #       thing_name: "ThingName",
    #       status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #       status_details: {
    #         "DetailsKey" => "DetailsValue"
    #       },
    #       queued_at: 1,
    #       started_at: 1,
    #       last_updated_at: 1,
    #       approximate_seconds_before_timed_out: 1,
    #       version_number: 1,
    #       execution_number: 1,
    #       job_document: "JobDocument"
    #     }
    #   }
    # @return [Types::StartNextPendingJobExecutionResponse]
    def start_next_pending_job_execution(params = {}, options = {})
      request = build_request(:start_next_pending_job_execution, params)
      request.send_request(options)
    end

    # <p>Updates the status of a job execution.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotjobsdataplane.html">UpdateJobExecution</a> action.</p>
    # @param [Hash, Types::UpdateJobExecutionRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing associated with the device.</p>
    # @option params [String] :status
    #   <p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED).
    #            This must be specified on every update.</p>
    # @option params [Hash<String, String>] :status_details
    #   <p> Optional. A collection of name/value pairs that describe the status of the job
    #            execution. If not specified, the statusDetails are unchanged.</p>
    #            <p>The maximum length of the value in the name/value pair is 1,024 characters.</p>
    # @option params [Integer] :step_timeout_in_minutes
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
    # @option params [Integer] :expected_version
    #   <p>Optional. The expected current version of the job execution. Each time you update the
    #            job execution, its version is incremented. If the version of the job execution stored in
    #            Jobs does not match, the update is rejected with a VersionMismatch error, and an
    #            ErrorResponse that contains the current job execution status data is returned. (This makes
    #            it unnecessary to perform a separate DescribeJobExecution request in order to obtain the
    #            job execution status data.)</p>
    # @option params [Boolean] :include_job_execution_state
    #   <p>Optional. When included and set to true, the response contains the JobExecutionState
    #            data. The default is false.</p>
    # @option params [Boolean] :include_job_document
    #   <p>Optional. When set to true, the response contains the job document. The default is
    #            false.</p>
    # @option params [Integer] :execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular
    #            device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"], # required
    #     status_details: {
    #       "DetailsKey" => "DetailsValue"
    #     },
    #     step_timeout_in_minutes: 1,
    #     expected_version: 1,
    #     include_job_execution_state: false,
    #     include_job_document: false,
    #     execution_number: 1
    #   }
    #   options = {}
    #   response = client.update_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_state: {
    #       status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #       status_details: {
    #         "DetailsKey" => "DetailsValue"
    #       },
    #       version_number: 1
    #     },
    #     job_document: "JobDocument"
    #   }
    # @return [Types::UpdateJobExecutionResponse]
    def update_job_execution(params = {}, options = {})
      request = build_request(:update_job_execution, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-iotjobsdataplane'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end

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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::CodeGuruProfiler
  # An API client for Aws::CodeGuruProfiler.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeGuruProfiler

    add_plugin(::Aws::CodeGuruProfiler::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
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
    #  Custom Endpoint
    # @option options [Aws::CodeGuruProfiler::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Add up to 2 anomaly notifications channels for a profiling group.</p>
    # @param [Hash, Types::AddNotificationChannelsInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group that we are setting up notifications for.</p>
    # @option params [Array<Types::Channel>] :channels
    #   <p>One or 2 channels to report to when anomalies are detected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     channels: [ # required
    #       {
    #         id: "ChannelId",
    #         uri: "ChannelUri", # required
    #         event_publishers: ["EventPublisher"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_notification_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_configuration: {
    #       channels: [
    #         {
    #           id: "ChannelId",
    #           uri: "ChannelUri", # required
    #           event_publishers: ["EventPublisher"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AddNotificationChannelsOutput]
    def add_notification_channels(params = {}, options = {})
      request = build_request(:add_notification_channels, params)
      request.send_request(options)
    end

    # <p>
    #          Returns the time series of values for a requested list 
    #          of frame metrics from a time period.</p>
    # @param [Hash, Types::BatchGetFrameMetricDataInput] params
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group associated with the 
    #            the frame metrics used to return the time series values.
    #         </p>
    # @option params [Time] :start_time
    #   <p>
    #            The start time of the time period for the frame metrics used to return the time series values. 
    #            This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    # @option params [Time] :end_time
    #   <p>
    #            The end time of the time period for the returned time series values. 
    #            This is specified 
    #            using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #            millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    # @option params [String] :period
    #   <p>
    #            The duration of the frame metrics used to return the time series values. 
    #            Specify using the ISO 8601 format. The maximum period duration 
    #            is one day (<code>PT24H</code> or <code>P1D</code>).
    #         </p>
    # @option params [String] :target_resolution
    #   <p>The requested resolution of time steps for the returned time series of values. 
    #            If the requested target resolution is not available due to data not being retained we provide a best effort 
    #            result by falling back to the most granular available resolution after the target resolution. 
    #            There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::FrameMetric>] :frame_metrics
    #   <p>
    #            The details of the metrics that are used to request a time series of values. The metric includes 
    #            the name of the frame, the aggregation type to calculate the metric value for the 
    #            frame, and the thread states to use to get the count for the metric value of the frame.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     period: "Period",
    #     target_resolution: "AggregationPeriod",
    #     frame_metrics: [
    #       {
    #         frame_name: "String", # required
    #         type: "MetricType", # required
    #         thread_states: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_frame_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     resolution: "AggregationPeriod", # required
    #     end_times: [ # required
    #       {
    #         value: Time.now, # required
    #       }
    #     ],
    #     unprocessed_end_times: { # required
    #       "String" => [
    #         {
    #           value: Time.now, # required
    #         }
    #       ]
    #     },
    #     frame_metric_data: [ # required
    #       {
    #         frame_metric: { # required
    #           frame_name: "String", # required
    #           type: "MetricType", # required
    #           thread_states: ["String"], # required
    #         },
    #         values: [1.0], # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetFrameMetricDataOutput]
    def batch_get_frame_metric_data(params = {}, options = {})
      request = build_request(:batch_get_frame_metric_data, params)
      request.send_request(options)
    end

    # <p>
    #           Used by profiler agents to report their current state and to receive remote 
    #           configuration updates. For example, <code>ConfigureAgent</code> can be used 
    #          to tell an agent whether to profile or not and for how long to return profiling data.
    #       </p>
    # @param [Hash, Types::ConfigureAgentInput] params
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group for which the configured agent is collecting profiling data.
    #         </p>
    # @option params [String] :fleet_instance_id
    #   <p> A universally unique identifier (UUID) for a profiling instance. For example, if the
    #            profiling instance is an Amazon EC2 instance, it is the instance ID. If it is an AWS
    #            Fargate container, it is the container's task ID. </p>
    # @option params [Hash<String, String>] :metadata
    #   <p> Metadata captured about the compute platform the agent is running on. It includes
    #            information about sampling and reporting. The valid fields are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPUTE_PLATFORM</code> - The compute platform on which the agent is running
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AGENT_ID</code> - The ID for an agent instance.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_REQUEST_ID</code> - The AWS request ID of a Lambda invocation.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXECUTION_ENVIRONMENT</code> - The execution environment a Lambda function is running on.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_FUNCTION_ARN</code> - The Amazon Resource Name (ARN) that is used to invoke a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_MEMORY_LIMIT_IN_MB</code> - The memory allocated to a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_REMAINING_TIME_IN_MILLISECONDS</code> - The time in milliseconds before execution of a Lambda function times out.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS</code> - The time in milliseconds between two invocations of a Lambda function.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS</code> - The time in milliseconds for the previous Lambda invocation.
    #               </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     fleet_instance_id: "FleetInstanceId",
    #     metadata: {
    #       "MetadataField" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.configure_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: { # required
    #       should_profile: false, # required
    #       period_in_seconds: 1, # required
    #       agent_parameters: {
    #         "AgentParameterField" => "String"
    #       }
    #     }
    #   }
    # @return [Types::ConfigureAgentOutput]
    def configure_agent(params = {}, options = {})
      request = build_request(:configure_agent, params)
      request.send_request(options)
    end

    # <p>Creates a profiling group.</p>
    # @param [Hash, Types::CreateProfilingGroupInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to create.</p>
    # @option params [String] :compute_platform
    #   <p>
    #            The compute platform of the profiling group. Use <code>AWSLambda</code> if your application 
    #            runs on AWS Lambda. Use <code>Default</code> if your application runs on a compute platform that 
    #            is not AWS Lambda, such an Amazon EC2 instance, an on-premises server, or a different platform. 
    #            If not specified, <code>Default</code> is used.         
    #         </p>
    # @option params [String] :client_token
    #   <p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the
    #            accidental creation of duplicate profiling groups if there are failures and retries. </p>
    # @option params [Types::AgentOrchestrationConfig] :agent_orchestration_config
    #   <p>
    #            Specifies whether profiling is enabled or disabled for the created profiling group.
    #         </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #            A list of tags to add to the created profiling group.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     compute_platform: "ComputePlatform",
    #     client_token: "ClientToken", # required
    #     agent_orchestration_config: {
    #       profiling_enabled: false, # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_profiling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiling_group: { # required
    #       name: "ProfilingGroupName",
    #       agent_orchestration_config: {
    #         profiling_enabled: false, # required
    #       },
    #       arn: "ProfilingGroupArn",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       profiling_status: {
    #         latest_agent_profile_reported_at: Time.now,
    #         latest_aggregated_profile: {
    #           start: Time.now,
    #           period: "AggregationPeriod"
    #         },
    #         latest_agent_orchestrated_at: Time.now
    #       },
    #       compute_platform: "ComputePlatform",
    #       tags: {
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateProfilingGroupOutput]
    def create_profiling_group(params = {}, options = {})
      request = build_request(:create_profiling_group, params)
      request.send_request(options)
    end

    # <p>Deletes a profiling group.</p>
    # @param [Hash, Types::DeleteProfilingGroupInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_profiling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProfilingGroupOutput]
    def delete_profiling_group(params = {}, options = {})
      request = build_request(:delete_profiling_group, params)
      request.send_request(options)
    end

    # <p>
    #          Returns a <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                <code>ProfilingGroupDescription</code>
    #             </a> 
    #          object that contains information about the requested profiling group.
    #       </p>
    # @param [Hash, Types::DescribeProfilingGroupInput] params
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group to get information about.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #   }
    #   options = {}
    #   response = client.describe_profiling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiling_group: { # required
    #       name: "ProfilingGroupName",
    #       agent_orchestration_config: {
    #         profiling_enabled: false, # required
    #       },
    #       arn: "ProfilingGroupArn",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       profiling_status: {
    #         latest_agent_profile_reported_at: Time.now,
    #         latest_aggregated_profile: {
    #           start: Time.now,
    #           period: "AggregationPeriod"
    #         },
    #         latest_agent_orchestrated_at: Time.now
    #       },
    #       compute_platform: "ComputePlatform",
    #       tags: {
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::DescribeProfilingGroupOutput]
    def describe_profiling_group(params = {}, options = {})
      request = build_request(:describe_profiling_group, params)
      request.send_request(options)
    end

    # <p>
    #             Returns a list of 
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html">
    #                <code>FindingsReportSummary</code>
    #             </a> 
    #             objects that contain analysis results for all profiling groups in your AWS account.
    #         </p>
    # @param [Hash, Types::GetFindingsReportAccountSummaryInput] params
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>GetFindingsReportAccountSummary</code>
    #            request where <code>maxResults</code> was used and the results exceeded the value of that parameter.
    #            Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code> GetFindingsReportAccountSummary</code> in paginated output. 
    #               When this parameter is used, <code>GetFindingsReportAccountSummary</code> only returns <code>maxResults</code> 
    #               results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial 
    #               request can be seen by sending another <code>GetFindingsReportAccountSummary</code> request with the returned 
    #               <code>nextToken</code> value.</p>
    # @option params [Boolean] :daily_reports_only
    #   <p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set 
    #               to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>, 
    #               analysis data is returned from smaller time windows (for example, one hour).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     daily_reports_only: false
    #   }
    #   options = {}
    #   response = client.get_findings_report_account_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_summaries: [ # required
    #       {
    #         id: "FindingsReportId",
    #         profiling_group_name: "String",
    #         profile_start_time: Time.now,
    #         profile_end_time: Time.now,
    #         total_number_of_findings: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::GetFindingsReportAccountSummaryOutput]
    def get_findings_report_account_summary(params = {}, options = {})
      request = build_request(:get_findings_report_account_summary, params)
      request.send_request(options)
    end

    # <p>Get the current configuration for anomaly notifications for a profiling group.</p>
    # @param [Hash, Types::GetNotificationConfigurationInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group we want to get the notification configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_configuration: { # required
    #       channels: [
    #         {
    #           id: "ChannelId",
    #           uri: "ChannelUri", # required
    #           event_publishers: ["EventPublisher"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetNotificationConfigurationOutput]
    def get_notification_configuration(params = {}, options = {})
      request = build_request(:get_notification_configuration, params)
      request.send_request(options)
    end

    # <p>
    #             Returns the JSON-formatted resource-based policy on a profiling group.
    #         </p>
    # @param [Hash, Types::GetPolicyInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String", # required
    #     revision_id: "RevisionId", # required
    #   }
    # @return [Types::GetPolicyOutput]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>
    #          Gets the aggregated profile of a profiling group for a specified time range. 
    #          Amazon CodeGuru Profiler collects posted agent profiles for a profiling group 
    #          into aggregated profiles.  
    #      </p>
    #       
    #          <note>
    #             <p>
    #             Because aggregated profiles expire over time <code>GetProfile</code> is not idempotent.
    #          </p>
    #          </note>
    #       
    #          <p>
    #          Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: <code>startTime</code>, 
    #          <code>endTime</code>, <code>period</code>. The maximum time range allowed is 7 days. If you specify all 3 parameters, 
    #          an exception is thrown. If you specify only <code>period</code>, the latest aggregated profile is returned. 
    #       </p>
    #       
    #          <p>
    #          Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to 
    #          UTC. The aggregation period of an aggregated profile determines how long it is retained. For more 
    #          information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html">
    #                <code>AggregatedProfileTime</code>
    #             </a>. The aggregated profile's aggregation period determines how long  
    #          it is retained by CodeGuru Profiler.
    #       </p>
    #       
    #          <ul>
    #             <li>
    #                <p>
    #                If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                If the aggregation period is 1 hour, the aggregated profile is retained for 60 days.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                If the aggregation period is 1 day, the aggregated profile is retained for 3 years.
    #             </p>
    #             </li>
    #          </ul>
    #       
    #          <p>There are two use cases for calling <code>GetProfile</code>.</p>
    #          <ol>
    #             <li>
    #                <p>
    #                If you want to return an aggregated profile that already exists, use 
    #                <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html">
    #                      <code>ListProfileTimes</code>
    #                   </a> to 
    #                view the time ranges of existing aggregated profiles. Use them in a <code>GetProfile</code> request to return a specific, 
    #                existing aggregated profile.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, 
    #                then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time 
    #                range and return them as one aggregated profile. 
    #             </p>
    #             
    #                <p> If aggregated profiles do not exist for the full time range requested, then
    #                aggregated profiles for a smaller time range are returned. For example, if the
    #                requested time range is from 00:00 to 00:20, and the existing aggregated profiles are
    #                from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. </p>
    #             
    #             
    #             </li>
    #          </ol>
    # @param [Hash, Types::GetProfileInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to get.</p>
    # @option params [Time] :start_time
    #   <p>The start time of the profile to get. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>
    #         
    #            <p>
    #            If you specify <code>startTime</code>, then you must also specify <code>period</code> 
    #            or <code>endTime</code>, but not both.
    #         </p>
    # @option params [String] :period
    #   <p>
    #            Used with <code>startTime</code> or <code>endTime</code> to specify 
    #            the time range for the returned aggregated profile. Specify using 
    #            the ISO 8601 format. For example, <code>P1DT1H1M1S</code>.
    #         </p>
    #         
    #            <p>
    #            To get the latest aggregated profile, specify only <code>period</code>. 
    #         </p>
    # @option params [Time] :end_time
    #   <p>
    #            The end time of the requested profile. Specify using 
    #            the ISO 8601 format. For example, 
    #            2020-06-01T13:15:02.001Z  represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.
    #         </p>
    #            <p>
    #            If you specify <code>endTime</code>, then you must also specify <code>period</code> 
    #            or <code>startTime</code>, but not both.
    #         </p>
    # @option params [Integer] :max_depth
    #   <p>
    #            The maximum depth of the stacks in the code that is represented in 
    #            the aggregated profile. For example, if CodeGuru Profiler finds a method <code>A</code>, 
    #            which calls method <code>B</code>, which calls method <code>C</code>, which 
    #            calls method <code>D</code>, then the depth is 4. If the <code>maxDepth</code> is 
    #            set to 2, then the aggregated profile contains representations of methods <code>A</code> 
    #            and <code>B</code>.
    #         </p>
    # @option params [String] :accept
    #   <p>
    #            The format of the returned profiling data. The format maps to the 
    #            <code>Accept</code> and <code>Content-Type</code> headers of the 
    #            HTTP request. You can specify one of the following: 
    #           or the default .
    #         </p>
    #         
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>application/json</code> — standard JSON format 
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, 
    #                  see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>.
    #               </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now,
    #     period: "Period",
    #     end_time: Time.now,
    #     max_depth: 1,
    #     accept: "String"
    #   }
    #   options = {}
    #   response = client.get_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile: "data", # required
    #     content_type: "String", # required
    #     content_encoding: "String"
    #   }
    # @return [Types::GetProfileOutput]
    def get_profile(params = {}, options = {})
      request = build_request(:get_profile, params)
      request.send_request(options)
    end

    # <p>
    #             Returns a list of 
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html">
    #                <code>Recommendation</code>
    #             </a> 
    #             objects that contain recommendations for a profiling group for a given time period. A list of 
    #             <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html">
    #                <code>Anomaly</code>
    #             </a> 
    #             objects that contains details about anomalies detected in the profiling group for the same time period is also 
    #             returned.
    #         </p>
    # @param [Hash, Types::GetRecommendationsInput] params
    # @option params [String] :profiling_group_name
    #   <p>
    #               The name of the profiling group to get analysis data about.
    #           </p>
    # @option params [Time] :start_time
    #   <p>
    #               The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    # @option params [Time] :end_time
    #   <p>
    #               The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC. 
    #           </p>
    # @option params [String] :locale
    #   <p>
    #               The language used to provide analysis. Specify using a string that is one 
    #               of the following <code>BCP 47</code> language codes.
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>de-DE</code> - German, Germany
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>en-GB</code> - English, United Kingdom
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>en-US</code> - English, United States
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>es-ES</code> - Spanish, Spain
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>fr-FR</code> - French, France
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>it-IT</code> - Italian, Italy
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ja-JP</code> - Japanese, Japan
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ko-KR</code> - Korean, Republic of Korea
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>pt-BR</code> - Portugese, Brazil
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>zh-CN</code> - Chinese, China
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>zh-TW</code> - Chinese, Taiwan
    #                   </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     locale: "Locale"
    #   }
    #   options = {}
    #   response = client.get_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     profile_start_time: Time.now, # required
    #     profile_end_time: Time.now, # required
    #     recommendations: [ # required
    #       {
    #         all_matches_count: 1, # required
    #         all_matches_sum: 1.0, # required
    #         pattern: { # required
    #           id: "String",
    #           name: "String",
    #           description: "String",
    #           resolution_steps: "String",
    #           target_frames: [
    #             ["String"]
    #           ],
    #           threshold_percent: 1.0,
    #           counters_to_aggregate: ["String"]
    #         },
    #         top_matches: [ # required
    #           {
    #             target_frames_index: 1,
    #             frame_address: "String",
    #             threshold_breach_value: 1.0
    #           }
    #         ],
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
    #     ],
    #     anomalies: [ # required
    #       {
    #         metric: { # required
    #           frame_name: "String", # required
    #           type: "MetricType", # required
    #           thread_states: ["String"], # required
    #         },
    #         reason: "String", # required
    #         instances: [ # required
    #           {
    #             id: "String", # required
    #             start_time: Time.now, # required
    #             end_time: Time.now,
    #             user_feedback: {
    #               type: "FeedbackType", # required
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetRecommendationsOutput]
    def get_recommendations(params = {}, options = {})
      request = build_request(:get_recommendations, params)
      request.send_request(options)
    end

    # <p>List the available reports for a given profiling group and time range.</p>
    # @param [Hash, Types::ListFindingsReportsInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group from which to search for analysis data.</p>
    # @option params [Time] :start_time
    #   <p>
    #               The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC. 
    #           </p>
    # @option params [Time] :end_time
    #   <p>
    #               The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. 
    #               This is specified 
    #               using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 
    #               millisecond past June 1, 2020 1:15:02 PM UTC.
    #           </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListFindingsReportsRequest</code>
    #            request where <code>maxResults</code> was used and the results exceeded the value of that parameter.
    #            Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #         the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of report results returned by <code>ListFindingsReports</code>
    #            in paginated output. When this parameter is used, <code>ListFindingsReports</code> only returns
    #            <code>maxResults</code> results in a single page along with a <code>nextToken</code> response
    #            element. The remaining results of the initial request
    #            can be seen by sending another <code>ListFindingsReports</code> request with the returned
    #            <code>nextToken</code> value.</p>
    # @option params [Boolean] :daily_reports_only
    #   <p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set 
    #           to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>, 
    #           analysis data is returned from smaller time windows (for example, one hour).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     daily_reports_only: false
    #   }
    #   options = {}
    #   response = client.list_findings_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings_report_summaries: [ # required
    #       {
    #         id: "FindingsReportId",
    #         profiling_group_name: "String",
    #         profile_start_time: Time.now,
    #         profile_end_time: Time.now,
    #         total_number_of_findings: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListFindingsReportsOutput]
    def list_findings_reports(params = {}, options = {})
      request = build_request(:list_findings_reports, params)
      request.send_request(options)
    end

    # <p>Lists the start times of the available aggregated profiles of a profiling group 
    #         for an aggregation period within the specified time range.</p>
    # @param [Hash, Types::ListProfileTimesInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group.</p>
    # @option params [Time] :start_time
    #   <p>The start time of the time range from which to list the profiles.</p>
    # @option params [Time] :end_time
    #   <p>The end time of the time range from which to list the profiles.</p>
    # @option params [String] :period
    #   <p>
    #            The aggregation period. This specifies the period during which an aggregation profile 
    #            collects posted agent profiles for a profiling group. There are 3 valid values.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>P1D</code> — 1 day
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT1H</code> — 1 hour
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PT5M</code> — 5 minutes
    #               </p>
    #               </li>
    #            </ul>
    # @option params [String] :order_by
    #   <p>The order (ascending or descending by start time of the profile) to
    #           use when listing profiles. Defaults to <code>TIMESTAMP_DESCENDING</code>.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of profile time results returned by <code>ListProfileTimes</code> 
    #            in paginated output. When this parameter is used, <code>ListProfileTimes</code> only returns 
    #            <code>maxResults</code> results in a single page with a <code>nextToken</code> response 
    #            element. The remaining results of the initial request 
    #            can be seen by sending another <code>ListProfileTimes</code> request with the returned 
    #            <code>nextToken</code> value. 
    #         </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #            <code>ListProfileTimes</code> request where <code>maxResults</code> was used and the results 
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results 
    #            that returned the <code>nextToken</code> value. 
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve 
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: "AggregationPeriod", # required
    #     order_by: "OrderBy",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_profile_times(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_times: [ # required
    #       {
    #         start: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProfileTimesOutput]
    def list_profile_times(params = {}, options = {})
      request = build_request(:list_profile_times, params)
      request.send_request(options)
    end

    # <p>
    #          Returns a list of profiling groups. The profiling groups are returned as 
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                <code>ProfilingGroupDescription</code>
    #             </a> 
    #          objects.
    #       </p>
    # @param [Hash, Types::ListProfilingGroupsInput] params
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated 
    #            <code>ListProfilingGroups</code> request where <code>maxResults</code> was used and the results 
    #            exceeded the value of that parameter. Pagination continues from the end of the previous results 
    #            that returned the <code>nextToken</code> value. 
    #         </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve 
    #            the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of profiling groups results returned by <code>ListProfilingGroups</code> 
    #            in paginated output. When this parameter is used, <code>ListProfilingGroups</code> only returns 
    #            <code>maxResults</code> results in a single page along with a <code>nextToken</code> response 
    #            element. The remaining results of the initial request 
    #            can be seen by sending another <code>ListProfilingGroups</code> request with the returned 
    #            <code>nextToken</code> value. 
    #         </p>
    # @option params [Boolean] :include_description
    #   <p>A <code>Boolean</code> value indicating whether to include a description. If <code>true</code>, 
    #         then a list of 
    #            <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html">
    #                  <code>ProfilingGroupDescription</code>
    #               </a> objects 
    #         that contain detailed information about profiling groups is returned. If <code>false</code>, then 
    #         a list of profiling group names is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     include_description: false
    #   }
    #   options = {}
    #   response = client.list_profiling_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiling_group_names: ["ProfilingGroupName"], # required
    #     profiling_groups: [
    #       {
    #         name: "ProfilingGroupName",
    #         agent_orchestration_config: {
    #           profiling_enabled: false, # required
    #         },
    #         arn: "ProfilingGroupArn",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         profiling_status: {
    #           latest_agent_profile_reported_at: Time.now,
    #           latest_aggregated_profile: {
    #             start: Time.now,
    #             period: "AggregationPeriod"
    #           },
    #           latest_agent_orchestrated_at: Time.now
    #         },
    #         compute_platform: "ComputePlatform",
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProfilingGroupsOutput]
    def list_profiling_groups(params = {}, options = {})
      request = build_request(:list_profiling_groups, params)
      request.send_request(options)
    end

    # <p>
    #          Returns a list of the tags that are assigned to a specified resource.
    #       </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that contains the tags to return.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ProfilingGroupArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #          Submits profiling data to an aggregated profile of a profiling group. To get an  
    #          aggregated profile that is created with this profiling data, use 
    #          <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html">
    #                <code>GetProfile</code>
    #             </a>.
    #       </p>
    # @param [Hash, Types::PostAgentProfileInput] params
    # @option params [String] :profiling_group_name
    #   <p>
    #            The name of the profiling group with the aggregated profile that receives the 
    #            submitted profiling data.
    #         </p>
    # @option params [String] :agent_profile
    #   <p>
    #            The submitted profiling data.
    #         </p>
    # @option params [String] :profile_token
    #   <p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the
    #            accidental submission of duplicate profiling data if there are failures and retries. </p>
    # @option params [String] :content_type
    #   <p>
    #            The format of the submitted profiling data. The format maps to the 
    #            <code>Accept</code> and <code>Content-Type</code> headers of the 
    #            HTTP request. You can specify one of the following: 
    #            or the default .
    #         </p>
    #         
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>application/json</code> — standard JSON format 
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, 
    #                  see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>.
    #               </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     agent_profile: "data", # required
    #     profile_token: "ClientToken",
    #     content_type: "String", # required
    #   }
    #   options = {}
    #   response = client.post_agent_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PostAgentProfileOutput]
    def post_agent_profile(params = {}, options = {})
      request = build_request(:post_agent_profile, params)
      request.send_request(options)
    end

    # <p>
    #             Adds permissions to a profiling group's resource-based policy 
    #             that are provided using an action group. If a profiling group doesn't have 
    #             a resource-based policy, one is created for it using the permissions in the action group and 
    #             the roles and users in the <code>principals</code> parameter.
    #         </p>
    #         
    #         <p> The one supported action group that can be added is <code>agentPermission</code>
    #             which grants <code>ConfigureAgent</code> and <code>PostAgent</code> permissions. For
    #             more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based
    #                 policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User
    #                 Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                <code>ConfigureAgent</code>
    #             </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html">
    #                <code>PostAgentProfile</code>
    #             </a>. </p>
    #         
    #         <p>
    #             The first time you call <code>PutPermission</code> on a profiling group, do not specify a <code>revisionId</code> because 
    #             it doesn't have a resource-based policy. Subsequent calls must provide a <code>revisionId</code> to specify 
    #             which revision of the resource-based policy to add the permissions to.
    #         </p>
    #         
    #         <p>
    #             The response contains the profiling group's JSON-formatted resource policy. 
    #         </p>
    # @param [Hash, Types::PutPermissionInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to grant access to.</p>
    # @option params [String] :action_group
    #   <p>
    #               Specifies an action group that contains permissions to add to 
    #               a profiling group resource. One action group is supported, <code>agentPermissions</code>, which 
    #               grants permission to perform actions required by the profiling agent, <code>ConfigureAgent</code> 
    #               and <code>PostAgentProfile</code> permissions.
    #           </p>
    # @option params [Array<String>] :principals
    #   <p>
    #               A list ARNs for the roles and users you want to grant access to the profiling group. 
    #               Wildcards are not are supported in the ARNs.
    #           </p>
    # @option params [String] :revision_id
    #   <p>
    #               A universally unique identifier (UUID) for the revision of the policy you 
    #               are adding to the profiling group. Do not specify 
    #               this when you add permissions to a profiling group for the first time. If a policy already exists on the 
    #               profiling group, you must specify the <code>revisionId</code>.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     action_group: "ActionGroup", # required
    #     principals: ["Principal"], # required
    #     revision_id: "RevisionId"
    #   }
    #   options = {}
    #   response = client.put_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String", # required
    #     revision_id: "RevisionId", # required
    #   }
    # @return [Types::PutPermissionOutput]
    def put_permission(params = {}, options = {})
      request = build_request(:put_permission, params)
      request.send_request(options)
    end

    # <p>Remove one anomaly notifications channel for a profiling group.</p>
    # @param [Hash, Types::RemoveNotificationChannelInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group we want to change notification configuration for.</p>
    # @option params [String] :channel_id
    #   <p>The id of the channel that we want to stop receiving notifications.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     channel_id: "ChannelId", # required
    #   }
    #   options = {}
    #   response = client.remove_notification_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_configuration: {
    #       channels: [
    #         {
    #           id: "ChannelId",
    #           uri: "ChannelUri", # required
    #           event_publishers: ["EventPublisher"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::RemoveNotificationChannelOutput]
    def remove_notification_channel(params = {}, options = {})
      request = build_request(:remove_notification_channel, params)
      request.send_request(options)
    end

    # <p> Removes permissions from a profiling group's resource-based policy that are provided
    #             using an action group. The one supported action group that can be removed is
    #                 <code>agentPermission</code> which grants <code>ConfigureAgent</code> and
    #                 <code>PostAgent</code> permissions. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based policies in CodeGuru Profiler</a> in the <i>Amazon
    #                 CodeGuru Profiler User Guide</i>, <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
    #                <code>ConfigureAgent</code>
    #             </a>, and <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html">
    #                <code>PostAgentProfile</code>
    #             </a>. </p>
    # @param [Hash, Types::RemovePermissionInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group.</p>
    # @option params [String] :action_group
    #   <p>
    #               Specifies an action group that contains the permissions to remove from 
    #               a profiling group's resource-based policy. One action group is supported, <code>agentPermissions</code>, which 
    #               grants <code>ConfigureAgent</code> and <code>PostAgentProfile</code> permissions.
    #           </p>
    # @option params [String] :revision_id
    #   <p>
    #               A universally unique identifier (UUID) for the revision of the resource-based policy from which 
    #               you want to remove permissions.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     action_group: "ActionGroup", # required
    #     revision_id: "RevisionId", # required
    #   }
    #   options = {}
    #   response = client.remove_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String", # required
    #     revision_id: "RevisionId", # required
    #   }
    # @return [Types::RemovePermissionOutput]
    def remove_permission(params = {}, options = {})
      request = build_request(:remove_permission, params)
      request.send_request(options)
    end

    # <p>Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is 
    #             useful or not.</p>
    # @param [Hash, Types::SubmitFeedbackInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group that is associated with the analysis data.</p>
    # @option params [String] :anomaly_instance_id
    #   <p>The universally unique identifier (UUID) of the 
    #               <a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html">
    #                  <code>AnomalyInstance</code>
    #               </a> object 
    #               that is included in the analysis data.</p>
    # @option params [String] :type
    #   <p>
    #               The feedback tpye. Thee are two valid values, <code>Positive</code> and <code>Negative</code>.
    #           </p>
    # @option params [String] :comment
    #   <p>Optional feedback about this anomaly.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     anomaly_instance_id: "AnomalyInstanceId", # required
    #     type: "FeedbackType", # required
    #     comment: "String"
    #   }
    #   options = {}
    #   response = client.submit_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SubmitFeedbackOutput]
    def submit_feedback(params = {}, options = {})
      request = build_request(:submit_feedback, params)
      request.send_request(options)
    end

    # <p>
    #          Use to assign one or more tags to a resource.
    #       </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that the tags are added to.
    #         </p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #            The list of tags that are added to the specified resource.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ProfilingGroupArn", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>
    #          Use to remove one or more tags from a resource.
    #       </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the resource that contains the tags to remove.
    #         </p>
    # @option params [Array<String>] :tag_keys
    #   <p>
    #            A list of tag keys. Existing tags of resources with keys in this list are removed from 
    #            the specified resource.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ProfilingGroupArn", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a profiling group.</p>
    # @param [Hash, Types::UpdateProfilingGroupInput] params
    # @option params [String] :profiling_group_name
    #   <p>The name of the profiling group to update.</p>
    # @option params [Types::AgentOrchestrationConfig] :agent_orchestration_config
    #   <p>
    #            Specifies whether profiling is enabled or disabled for a profiling group. 
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profiling_group_name: "ProfilingGroupName", # required
    #     agent_orchestration_config: { # required
    #       profiling_enabled: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_profiling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiling_group: { # required
    #       name: "ProfilingGroupName",
    #       agent_orchestration_config: {
    #         profiling_enabled: false, # required
    #       },
    #       arn: "ProfilingGroupArn",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       profiling_status: {
    #         latest_agent_profile_reported_at: Time.now,
    #         latest_aggregated_profile: {
    #           start: Time.now,
    #           period: "AggregationPeriod"
    #         },
    #         latest_agent_orchestrated_at: Time.now
    #       },
    #       compute_platform: "ComputePlatform",
    #       tags: {
    #         "String" => "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateProfilingGroupOutput]
    def update_profiling_group(params = {}, options = {})
      request = build_request(:update_profiling_group, params)
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
      context[:gem_name] = 'aws-sdk-codeguruprofiler'
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

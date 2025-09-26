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

module Aws::RoboMaker
  # An API client for Aws::RoboMaker.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Robomaker

    add_plugin(::Aws::RoboMaker::Plugins::Endpoint)
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
    # @option options [Aws::RoboMaker::EndpointProvider] :endpoint_provider
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

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Deletes one or more worlds in a batch operation.</p>
    # @param [Hash, Types::BatchDeleteWorldsRequest] params
    # @option params [Array<String>] :worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worlds: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_worlds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_worlds: ["Arn"]
    #   }
    # @return [Types::BatchDeleteWorldsResponse]
    def batch_delete_worlds(params = {}, options = {})
      request = build_request(:batch_delete_worlds, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes one or more simulation jobs.</p>
    # @param [Hash, Types::BatchDescribeSimulationJobRequest] params
    # @option params [Array<String>] :jobs
    #   <p>A list of Amazon Resource Names (ARNs) of simulation jobs to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     jobs: ["Arn"], # required
    #   }
    #   options = {}
    #   response = client.batch_describe_simulation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         arn: "Arn",
    #         name: "Name",
    #         status: "Pending" # One of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"],
    #         last_started_at: Time.now,
    #         last_updated_at: Time.now,
    #         failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #         failure_code: "InternalServiceError" # One of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"],
    #         failure_reason: "GenericString",
    #         client_request_token: "ClientRequestToken",
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key"
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false
    #         },
    #         max_job_duration_in_seconds: 1,
    #         simulation_time_millis: 1,
    #         iam_role: "IamRole",
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             world_configs: [
    #               {
    #                 world: "Arn"
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name",
    #             s3_bucket: "S3Bucket",
    #             s3_keys: [
    #               {
    #                 s3_key: "S3KeyOrPrefix",
    #                 etag: "S3Etag"
    #               }
    #             ],
    #             type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #             destination: "Path"
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         vpc_config: {
    #           subnets: ["NonEmptyString"],
    #           security_groups: ["NonEmptyString"],
    #           vpc_id: "GenericString",
    #           assign_public_ip: false
    #         },
    #         network_interface: {
    #           network_interface_id: "GenericString",
    #           private_ip_address: "GenericString",
    #           public_ip_address: "GenericString"
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #           compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #           gpu_unit_limit: 1
    #         }
    #       }
    #     ],
    #     unprocessed_jobs: ["Arn"]
    #   }
    # @return [Types::BatchDescribeSimulationJobResponse]
    def batch_describe_simulation_job(params = {}, options = {})
      request = build_request(:batch_describe_simulation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Cancels the specified deployment job.</p>
    # @param [Hash, Types::CancelDeploymentJobRequest] params
    # @option params [String] :job
    #   <p>The deployment job ARN to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.cancel_deployment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::CancelDeploymentJobResponse]
    def cancel_deployment_job(params = {}, options = {})
      request = build_request(:cancel_deployment_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Cancels the specified simulation job.</p>
    # @param [Hash, Types::CancelSimulationJobRequest] params
    # @option params [String] :job
    #   <p>The simulation job ARN to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.cancel_simulation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelSimulationJobResponse]
    def cancel_simulation_job(params = {}, options = {})
      request = build_request(:cancel_simulation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Cancels a simulation job batch. When you cancel a simulation job batch, you are also
    #          cancelling all of the active simulation jobs created as part of the batch. </p>
    # @param [Hash, Types::CancelSimulationJobBatchRequest] params
    # @option params [String] :batch
    #   <p>The id of the batch to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch: "Arn", # required
    #   }
    #   options = {}
    #   response = client.cancel_simulation_job_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelSimulationJobBatchResponse]
    def cancel_simulation_job_batch(params = {}, options = {})
      request = build_request(:cancel_simulation_job_batch, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Cancels the specified export job.</p>
    # @param [Hash, Types::CancelWorldExportJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world export job to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.cancel_world_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelWorldExportJobResponse]
    def cancel_world_export_job(params = {}, options = {})
      request = build_request(:cancel_world_export_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Cancels the specified world generator job.</p>
    # @param [Hash, Types::CancelWorldGenerationJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world generator job to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.cancel_world_generation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelWorldGenerationJobResponse]
    def cancel_world_generation_job(params = {}, options = {})
      request = build_request(:cancel_world_generation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used. For more information, see the January 31, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Deploys a specific version of a robot application to robots in a fleet.</p>
    #          <p>The robot application must have a numbered <code>applicationVersion</code> for
    #                consistency reasons. To create a new version, use <code>CreateRobotApplicationVersion</code> or see 
    #             <a href="https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html">Creating a Robot Application Version</a>.
    #          </p>
    #          <note>
    #             <p>After 90 days, deployment jobs expire and will be deleted. They will no longer be
    #             accessible. </p>
    #          </note>
    # @param [Hash, Types::CreateDeploymentJobRequest] params
    # @option params [Types::DeploymentConfig] :deployment_config
    #   <p>The requested deployment configuration.</p>
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet to deploy.</p>
    # @option params [Array<Types::DeploymentApplicationConfig>] :deployment_application_configs
    #   <p>The deployment application configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment
    #            job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_config: {
    #       concurrent_deployment_percentage: 1,
    #       failure_threshold_percentage: 1,
    #       robot_deployment_timeout_in_seconds: 1,
    #       download_condition_file: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         etag: "S3Etag"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #     fleet: "Arn", # required
    #     deployment_application_configs: [ # required
    #       {
    #         application: "Arn", # required
    #         application_version: "DeploymentVersion", # required
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           pre_launch_file: "Path",
    #           launch_file: "Command", # required
    #           post_launch_file: "Path",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           }
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     fleet: "Arn",
    #     status: "Pending" # One of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"],
    #     deployment_application_configs: [
    #       {
    #         application: "Arn", # required
    #         application_version: "DeploymentVersion", # required
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           pre_launch_file: "Path",
    #           launch_file: "Command", # required
    #           post_launch_file: "Path",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           }
    #         }
    #       }
    #     ],
    #     failure_reason: "GenericString",
    #     failure_code: "ResourceNotFound" # One of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"],
    #     created_at: Time.now,
    #     deployment_config: {
    #       concurrent_deployment_percentage: 1,
    #       failure_threshold_percentage: 1,
    #       robot_deployment_timeout_in_seconds: 1,
    #       download_condition_file: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         etag: "S3Etag"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::CreateDeploymentJobResponse]
    def create_deployment_job(params = {}, options = {})
      request = build_request(:create_deployment_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used. For more information, see the January 31, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Creates a fleet, a logical group of robots running the same robot application.</p>
    # @param [Hash, Types::CreateFleetRequest] params
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     created_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::CreateFleetResponse]
    def create_fleet(params = {}, options = {})
      request = build_request(:create_fleet, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used. For more information, see the January 31, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Creates a robot.</p>
    # @param [Hash, Types::CreateRobotRequest] params
    # @option params [String] :name
    #   <p>The name for the robot.</p>
    # @option params [String] :architecture
    #   <p>The target architecture of the robot.</p>
    # @option params [String] :greengrass_group_id
    #   <p>The Greengrass group id.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the robot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"], # required
    #     greengrass_group_id: "Id", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_robot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     created_at: Time.now,
    #     greengrass_group_id: "Id",
    #     architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::CreateRobotResponse]
    def create_robot(params = {}, options = {})
      request = build_request(:create_robot, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a robot application. </p>
    # @param [Hash, Types::CreateRobotApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the robot application.</p>
    # @option params [Array<Types::SourceConfig>] :sources
    #   <p>The sources of the robot application.</p>
    # @option params [Types::RobotSoftwareSuite] :robot_software_suite
    #   <p>The robot software suite used by the robot application.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the robot
    #            application.</p>
    # @option params [Types::Environment] :environment
    #   <p>The object that contains that URI of the Docker image that you use for your robot
    #            application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: { # required
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.create_robot_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     last_updated_at: Time.now,
    #     revision_id: "RevisionId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    # @return [Types::CreateRobotApplicationResponse]
    def create_robot_application(params = {}, options = {})
      request = build_request(:create_robot_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a version of a robot application.</p>
    # @param [Hash, Types::CreateRobotApplicationVersionRequest] params
    # @option params [String] :application
    #   <p>The application information for the robot application.</p>
    # @option params [String] :current_revision_id
    #   <p>The current revision id for the robot application. If you provide a value and it matches
    #            the latest revision ID, a new version will be created.</p>
    # @option params [Array<String>] :s3_etags
    #   <p>The Amazon S3 identifier for the zip file bundle that you use for your robot
    #            application.</p>
    # @option params [String] :image_digest
    #   <p>A SHA256 identifier for the Docker image that you use for your robot application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     current_revision_id: "RevisionId",
    #     s3_etags: ["S3Etag"],
    #     image_digest: "ImageDigest"
    #   }
    #   options = {}
    #   response = client.create_robot_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     last_updated_at: Time.now,
    #     revision_id: "RevisionId",
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    # @return [Types::CreateRobotApplicationVersionResponse]
    def create_robot_application_version(params = {}, options = {})
      request = build_request(:create_robot_application_version, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a simulation application.</p>
    # @param [Hash, Types::CreateSimulationApplicationRequest] params
    # @option params [String] :name
    #   <p>The name of the simulation application.</p>
    # @option params [Array<Types::SourceConfig>] :sources
    #   <p>The sources of the simulation application.</p>
    # @option params [Types::SimulationSoftwareSuite] :simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    # @option params [Types::RobotSoftwareSuite] :robot_software_suite
    #   <p>The robot software suite used by the simulation application.</p>
    # @option params [Types::RenderingEngine] :rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            application.</p>
    # @option params [Types::Environment] :environment
    #   <p>The object that contains the Docker image URI used to create your simulation
    #            application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: { # required
    #       name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #       version: "SimulationSoftwareSuiteVersionType"
    #     },
    #     robot_software_suite: { # required
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     rendering_engine: {
    #       name: "OGRE" # One of: ["OGRE"],
    #       version: "RenderingEngineVersionType"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.create_simulation_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: {
    #       name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #       version: "SimulationSoftwareSuiteVersionType"
    #     },
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     rendering_engine: {
    #       name: "OGRE" # One of: ["OGRE"],
    #       version: "RenderingEngineVersionType"
    #     },
    #     last_updated_at: Time.now,
    #     revision_id: "RevisionId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    # @return [Types::CreateSimulationApplicationResponse]
    def create_simulation_application(params = {}, options = {})
      request = build_request(:create_simulation_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a simulation application with a specific revision id.</p>
    # @param [Hash, Types::CreateSimulationApplicationVersionRequest] params
    # @option params [String] :application
    #   <p>The application information for the simulation application.</p>
    # @option params [String] :current_revision_id
    #   <p>The current revision id for the simulation application. If you provide a value and it
    #            matches the latest revision ID, a new version will be created.</p>
    # @option params [Array<String>] :s3_etags
    #   <p>The Amazon S3 eTag identifier for the zip file bundle that you use to create the
    #            simulation application.</p>
    # @option params [String] :image_digest
    #   <p>The SHA256 digest used to identify the Docker image URI used to created the simulation
    #            application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     current_revision_id: "RevisionId",
    #     s3_etags: ["S3Etag"],
    #     image_digest: "ImageDigest"
    #   }
    #   options = {}
    #   response = client.create_simulation_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: {
    #       name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #       version: "SimulationSoftwareSuiteVersionType"
    #     },
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     rendering_engine: {
    #       name: "OGRE" # One of: ["OGRE"],
    #       version: "RenderingEngineVersionType"
    #     },
    #     last_updated_at: Time.now,
    #     revision_id: "RevisionId",
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    # @return [Types::CreateSimulationApplicationVersionResponse]
    def create_simulation_application_version(params = {}, options = {})
      request = build_request(:create_simulation_application_version, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a simulation job.</p>
    #          <note>
    #             <p>After 90 days, simulation jobs expire and will be deleted. They will no longer be
    #             accessible. </p>
    #          </note>
    # @param [Hash, Types::CreateSimulationJobRequest] params
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [Types::OutputLocation] :output_location
    #   <p>Location for output files generated by the simulation job.</p>
    # @option params [Types::LoggingConfig] :logging_config
    #   <p>The logging configuration.</p>
    # @option params [Integer] :max_job_duration_in_seconds
    #   <p>The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When
    #               <code>maxJobDurationInSeconds</code> is reached, the simulation job will status will
    #            transition to <code>Completed</code>.</p>
    # @option params [String] :iam_role
    #   <p>The IAM role name that allows the simulation instance to call the AWS APIs that are
    #            specified in its associated policies on your behalf. This is how credentials are passed in
    #            to your simulation job. </p>
    # @option params [String] :failure_behavior
    #   <p>The failure behavior the simulation job.</p>
    #            <dl>
    #               <dt>Continue</dt>
    #               <dd>
    #                  <p>Leaves the instance running for its maximum timeout duration after a
    #                        <code>4XX</code> error code.</p>
    #               </dd>
    #               <dt>Fail</dt>
    #               <dd>
    #                  <p>Stop the simulation job and terminate the instance.</p>
    #               </dd>
    #            </dl>
    # @option params [Array<Types::RobotApplicationConfig>] :robot_applications
    #   <p>The robot application to use in the simulation job.</p>
    # @option params [Array<Types::SimulationApplicationConfig>] :simulation_applications
    #   <p>The simulation application to use in the simulation job.</p>
    # @option params [Array<Types::DataSourceConfig>] :data_sources
    #   <p>Specify data sources to mount read-only files from S3 into your simulation. These files
    #            are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>
    #            <note>
    #               <p>There is a limit of 100 files and a combined size of 25GB for all
    #                  <code>DataSourceConfig</code> objects. </p>
    #            </note>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            job.</p>
    # @option params [Types::VPCConfig] :vpc_config
    #   <p>If your simulation job accesses resources in a VPC, you provide this parameter
    #            identifying the list of security group IDs and subnet IDs. These must belong to the same
    #            VPC. You must provide at least one security group and one subnet ID. </p>
    # @option params [Types::Compute] :compute
    #   <p>Compute information for the simulation job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     output_location: {
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key"
    #     },
    #     logging_config: {
    #       record_all_ros_topics: false
    #     },
    #     max_job_duration_in_seconds: 1, # required
    #     iam_role: "IamRole", # required
    #     failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #     robot_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command",
    #           launch_file: "Command",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: ["NonEmptyString"]
    #         },
    #         upload_configurations: [
    #           {
    #             name: "Name", # required
    #             path: "Path", # required
    #             upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: "Name", # required
    #             command: "UnrestrictedCommand", # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     simulation_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command",
    #           launch_file: "Command",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: ["NonEmptyString"]
    #         },
    #         upload_configurations: [
    #           {
    #             name: "Name", # required
    #             path: "Path", # required
    #             upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #           }
    #         ],
    #         world_configs: [
    #           {
    #             world: "Arn"
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: "Name", # required
    #             command: "UnrestrictedCommand", # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     data_sources: [
    #       {
    #         name: "Name", # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_keys: ["S3KeyOrPrefix"], # required
    #         type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #         destination: "Path"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     vpc_config: {
    #       subnets: ["NonEmptyString"], # required
    #       security_groups: ["NonEmptyString"],
    #       assign_public_ip: false
    #     },
    #     compute: {
    #       simulation_unit_limit: 1,
    #       compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #       gpu_unit_limit: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_simulation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"],
    #     last_started_at: Time.now,
    #     last_updated_at: Time.now,
    #     failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"],
    #     client_request_token: "ClientRequestToken",
    #     output_location: {
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key"
    #     },
    #     logging_config: {
    #       record_all_ros_topics: false
    #     },
    #     max_job_duration_in_seconds: 1,
    #     simulation_time_millis: 1,
    #     iam_role: "IamRole",
    #     robot_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command",
    #           launch_file: "Command",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: ["NonEmptyString"]
    #         },
    #         upload_configurations: [
    #           {
    #             name: "Name", # required
    #             path: "Path", # required
    #             upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: "Name", # required
    #             command: "UnrestrictedCommand", # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     simulation_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command",
    #           launch_file: "Command",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: ["NonEmptyString"]
    #         },
    #         upload_configurations: [
    #           {
    #             name: "Name", # required
    #             path: "Path", # required
    #             upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #           }
    #         ],
    #         world_configs: [
    #           {
    #             world: "Arn"
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: "Name", # required
    #             command: "UnrestrictedCommand", # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     data_sources: [
    #       {
    #         name: "Name",
    #         s3_bucket: "S3Bucket",
    #         s3_keys: [
    #           {
    #             s3_key: "S3KeyOrPrefix",
    #             etag: "S3Etag"
    #           }
    #         ],
    #         type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #         destination: "Path"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     vpc_config: {
    #       subnets: ["NonEmptyString"],
    #       security_groups: ["NonEmptyString"],
    #       vpc_id: "GenericString",
    #       assign_public_ip: false
    #     },
    #     compute: {
    #       simulation_unit_limit: 1,
    #       compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #       gpu_unit_limit: 1
    #     }
    #   }
    # @return [Types::CreateSimulationJobResponse]
    def create_simulation_job(params = {}, options = {})
      request = build_request(:create_simulation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a world export job.</p>
    # @param [Hash, Types::CreateWorldExportJobRequest] params
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [Array<String>] :worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to export.</p>
    # @option params [Types::OutputLocation] :output_location
    #   <p>The output location.</p>
    # @option params [String] :iam_role
    #   <p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
    #            the export.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the world export
    #            job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     worlds: ["Arn"], # required
    #     output_location: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key"
    #     },
    #     iam_role: "IamRole", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_world_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"],
    #     created_at: Time.now,
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"],
    #     client_request_token: "ClientRequestToken",
    #     output_location: {
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key"
    #     },
    #     iam_role: "IamRole",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateWorldExportJobResponse]
    def create_world_export_job(params = {}, options = {})
      request = build_request(:create_world_export_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates worlds using the specified template.</p>
    # @param [Hash, Types::CreateWorldGenerationJobRequest] params
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template describing the worlds you want to
    #            create.</p>
    # @option params [Types::WorldCount] :world_count
    #   <p>Information about the world count.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the world generator
    #            job.</p>
    # @option params [Hash<String, String>] :world_tags
    #   <p>A map that contains tag keys and tag values that are attached to the generated
    #            worlds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     template: "Arn", # required
    #     world_count: { # required
    #       floorplan_count: 1,
    #       interior_count_per_floorplan: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     world_tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_world_generation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"],
    #     created_at: Time.now,
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"],
    #     client_request_token: "ClientRequestToken",
    #     template: "Arn",
    #     world_count: {
    #       floorplan_count: 1,
    #       interior_count_per_floorplan: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     world_tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateWorldGenerationJobResponse]
    def create_world_generation_job(params = {}, options = {})
      request = build_request(:create_world_generation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Creates a world template.</p>
    # @param [Hash, Types::CreateWorldTemplateRequest] params
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [String] :name
    #   <p>The name of the world template.</p>
    # @option params [String] :template_body
    #   <p>The world template body.</p>
    # @option params [Types::TemplateLocation] :template_location
    #   <p>The location of the world template.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the world
    #            template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     name: "TemplateName",
    #     template_body: "Json",
    #     template_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_world_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     client_request_token: "ClientRequestToken",
    #     created_at: Time.now,
    #     name: "TemplateName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateWorldTemplateResponse]
    def create_world_template(params = {}, options = {})
      request = build_request(:create_world_template, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Deletes a fleet.</p>
    # @param [Hash, Types::DeleteFleetRequest] params
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::DeleteFleetResponse]
    def delete_fleet(params = {}, options = {})
      request = build_request(:delete_fleet, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Deletes a robot.</p>
    # @param [Hash, Types::DeleteRobotRequest] params
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     robot: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_robot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::DeleteRobotResponse]
    def delete_robot(params = {}, options = {})
      request = build_request(:delete_robot, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Deletes a robot application.</p>
    # @param [Hash, Types::DeleteRobotApplicationRequest] params
    # @option params [String] :application
    #   <p>The Amazon Resource Name (ARN) of the the robot application.</p>
    # @option params [String] :application_version
    #   <p>The version of the robot application to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     application_version: "Version"
    #   }
    #   options = {}
    #   response = client.delete_robot_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRobotApplicationResponse]
    def delete_robot_application(params = {}, options = {})
      request = build_request(:delete_robot_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Deletes a simulation application.</p>
    # @param [Hash, Types::DeleteSimulationApplicationRequest] params
    # @option params [String] :application
    #   <p>The application information for the simulation application to delete.</p>
    # @option params [String] :application_version
    #   <p>The version of the simulation application to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     application_version: "Version"
    #   }
    #   options = {}
    #   response = client.delete_simulation_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSimulationApplicationResponse]
    def delete_simulation_application(params = {}, options = {})
      request = build_request(:delete_simulation_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Deletes a world template.</p>
    # @param [Hash, Types::DeleteWorldTemplateRequest] params
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_world_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWorldTemplateResponse]
    def delete_world_template(params = {}, options = {})
      request = build_request(:delete_world_template, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Deregisters a robot.</p>
    # @param [Hash, Types::DeregisterRobotRequest] params
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet: "Arn", # required
    #     robot: "Arn", # required
    #   }
    #   options = {}
    #   response = client.deregister_robot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet: "Arn",
    #     robot: "Arn"
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::DeregisterRobotResponse]
    def deregister_robot(params = {}, options = {})
      request = build_request(:deregister_robot, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Describes a deployment job.</p>
    # @param [Hash, Types::DescribeDeploymentJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_deployment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     fleet: "Arn",
    #     status: "Pending" # One of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"],
    #     deployment_config: {
    #       concurrent_deployment_percentage: 1,
    #       failure_threshold_percentage: 1,
    #       robot_deployment_timeout_in_seconds: 1,
    #       download_condition_file: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         etag: "S3Etag"
    #       }
    #     },
    #     deployment_application_configs: [
    #       {
    #         application: "Arn", # required
    #         application_version: "DeploymentVersion", # required
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           pre_launch_file: "Path",
    #           launch_file: "Command", # required
    #           post_launch_file: "Path",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           }
    #         }
    #       }
    #     ],
    #     failure_reason: "GenericString",
    #     failure_code: "ResourceNotFound" # One of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"],
    #     created_at: Time.now,
    #     robot_deployment_summary: [
    #       {
    #         arn: "Arn",
    #         deployment_start_time: Time.now,
    #         deployment_finish_time: Time.now,
    #         status: "Available" # One of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"],
    #         progress_detail: {
    #           current_progress: "Validating" # One of: ["Validating", "DownloadingExtracting", "ExecutingDownloadCondition", "ExecutingPreLaunch", "Launching", "ExecutingPostLaunch", "Finished"],
    #           percent_done: 1.0,
    #           estimated_time_remaining_seconds: 1,
    #           target_resource: "GenericString"
    #         },
    #         failure_reason: "GenericString",
    #         failure_code: "ResourceNotFound" # One of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::DescribeDeploymentJobResponse]
    def describe_deployment_job(params = {}, options = {})
      request = build_request(:describe_deployment_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Describes a fleet.</p>
    # @param [Hash, Types::DescribeFleetRequest] params
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name",
    #     arn: "Arn",
    #     robots: [
    #       {
    #         arn: "Arn",
    #         name: "Name",
    #         fleet_arn: "Arn",
    #         status: "Available" # One of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"],
    #         green_grass_group_id: "Id",
    #         created_at: Time.now,
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"],
    #         last_deployment_job: "Arn",
    #         last_deployment_time: Time.now
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_deployment_status: "Pending" # One of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"],
    #     last_deployment_job: "Arn",
    #     last_deployment_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::DescribeFleetResponse]
    def describe_fleet(params = {}, options = {})
      request = build_request(:describe_fleet, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>Describes a robot.</p>
    # @param [Hash, Types::DescribeRobotRequest] params
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     robot: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_robot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     fleet_arn: "Arn",
    #     status: "Available" # One of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"],
    #     greengrass_group_id: "Id",
    #     created_at: Time.now,
    #     architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"],
    #     last_deployment_job: "Arn",
    #     last_deployment_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::DescribeRobotResponse]
    def describe_robot(params = {}, options = {})
      request = build_request(:describe_robot, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a robot application.</p>
    # @param [Hash, Types::DescribeRobotApplicationRequest] params
    # @option params [String] :application
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    # @option params [String] :application_version
    #   <p>The version of the robot application to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     application_version: "Version"
    #   }
    #   options = {}
    #   response = client.describe_robot_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     revision_id: "RevisionId",
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment: {
    #       uri: "RepositoryUrl"
    #     },
    #     image_digest: "ImageDigest"
    #   }
    # @return [Types::DescribeRobotApplicationResponse]
    def describe_robot_application(params = {}, options = {})
      request = build_request(:describe_robot_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a simulation application.</p>
    # @param [Hash, Types::DescribeSimulationApplicationRequest] params
    # @option params [String] :application
    #   <p>The application information for the simulation application.</p>
    # @option params [String] :application_version
    #   <p>The version of the simulation application to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     application_version: "Version"
    #   }
    #   options = {}
    #   response = client.describe_simulation_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: {
    #       name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #       version: "SimulationSoftwareSuiteVersionType"
    #     },
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     rendering_engine: {
    #       name: "OGRE" # One of: ["OGRE"],
    #       version: "RenderingEngineVersionType"
    #     },
    #     revision_id: "RevisionId",
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment: {
    #       uri: "RepositoryUrl"
    #     },
    #     image_digest: "ImageDigest"
    #   }
    # @return [Types::DescribeSimulationApplicationResponse]
    def describe_simulation_application(params = {}, options = {})
      request = build_request(:describe_simulation_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a simulation job.</p>
    # @param [Hash, Types::DescribeSimulationJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (ARN) of the simulation job to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_simulation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     status: "Pending" # One of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"],
    #     last_started_at: Time.now,
    #     last_updated_at: Time.now,
    #     failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"],
    #     failure_reason: "GenericString",
    #     client_request_token: "ClientRequestToken",
    #     output_location: {
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key"
    #     },
    #     logging_config: {
    #       record_all_ros_topics: false
    #     },
    #     max_job_duration_in_seconds: 1,
    #     simulation_time_millis: 1,
    #     iam_role: "IamRole",
    #     robot_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command",
    #           launch_file: "Command",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: ["NonEmptyString"]
    #         },
    #         upload_configurations: [
    #           {
    #             name: "Name", # required
    #             path: "Path", # required
    #             upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: "Name", # required
    #             command: "UnrestrictedCommand", # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     simulation_applications: [
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command",
    #           launch_file: "Command",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: ["NonEmptyString"]
    #         },
    #         upload_configurations: [
    #           {
    #             name: "Name", # required
    #             path: "Path", # required
    #             upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #           }
    #         ],
    #         world_configs: [
    #           {
    #             world: "Arn"
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: "Name", # required
    #             command: "UnrestrictedCommand", # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     data_sources: [
    #       {
    #         name: "Name",
    #         s3_bucket: "S3Bucket",
    #         s3_keys: [
    #           {
    #             s3_key: "S3KeyOrPrefix",
    #             etag: "S3Etag"
    #           }
    #         ],
    #         type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #         destination: "Path"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     vpc_config: {
    #       subnets: ["NonEmptyString"],
    #       security_groups: ["NonEmptyString"],
    #       vpc_id: "GenericString",
    #       assign_public_ip: false
    #     },
    #     network_interface: {
    #       network_interface_id: "GenericString",
    #       private_ip_address: "GenericString",
    #       public_ip_address: "GenericString"
    #     },
    #     compute: {
    #       simulation_unit_limit: 1,
    #       compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #       gpu_unit_limit: 1
    #     }
    #   }
    # @return [Types::DescribeSimulationJobResponse]
    def describe_simulation_job(params = {}, options = {})
      request = build_request(:describe_simulation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a simulation job batch.</p>
    # @param [Hash, Types::DescribeSimulationJobBatchRequest] params
    # @option params [String] :batch
    #   <p>The id of the batch to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     batch: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_simulation_job_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"],
    #     last_updated_at: Time.now,
    #     created_at: Time.now,
    #     client_request_token: "ClientRequestToken",
    #     batch_policy: {
    #       timeout_in_seconds: 1,
    #       max_concurrency: 1
    #     },
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError"],
    #     failure_reason: "GenericString",
    #     failed_requests: [
    #       {
    #         request: {
    #           output_location: {
    #             s3_bucket: "S3Bucket",
    #             s3_prefix: "S3Key"
    #           },
    #           logging_config: {
    #             record_all_ros_topics: false
    #           },
    #           max_job_duration_in_seconds: 1, # required
    #           iam_role: "IamRole",
    #           failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #           use_default_applications: false,
    #           robot_applications: [
    #             {
    #               application: "Arn", # required
    #               application_version: "Version",
    #               launch_config: { # required
    #                 package_name: "Command",
    #                 launch_file: "Command",
    #                 environment_variables: {
    #                   "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #                 },
    #                 port_forwarding_config: {
    #                   port_mappings: [
    #                     {
    #                       job_port: 1, # required
    #                       application_port: 1, # required
    #                       enable_on_public_ip: false
    #                     }
    #                   ]
    #                 },
    #                 stream_ui: false,
    #                 command: ["NonEmptyString"]
    #               },
    #               upload_configurations: [
    #                 {
    #                   name: "Name", # required
    #                   path: "Path", # required
    #                   upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #                 }
    #               ],
    #               use_default_upload_configurations: false,
    #               tools: [
    #                 {
    #                   stream_ui: false,
    #                   name: "Name", # required
    #                   command: "UnrestrictedCommand", # required
    #                   stream_output_to_cloud_watch: false,
    #                   exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #                 }
    #               ],
    #               use_default_tools: false
    #             }
    #           ],
    #           simulation_applications: [
    #             {
    #               application: "Arn", # required
    #               application_version: "Version",
    #               launch_config: { # required
    #                 package_name: "Command",
    #                 launch_file: "Command",
    #                 environment_variables: {
    #                   "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #                 },
    #                 port_forwarding_config: {
    #                   port_mappings: [
    #                     {
    #                       job_port: 1, # required
    #                       application_port: 1, # required
    #                       enable_on_public_ip: false
    #                     }
    #                   ]
    #                 },
    #                 stream_ui: false,
    #                 command: ["NonEmptyString"]
    #               },
    #               upload_configurations: [
    #                 {
    #                   name: "Name", # required
    #                   path: "Path", # required
    #                   upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #                 }
    #               ],
    #               world_configs: [
    #                 {
    #                   world: "Arn"
    #                 }
    #               ],
    #               use_default_upload_configurations: false,
    #               tools: [
    #                 {
    #                   stream_ui: false,
    #                   name: "Name", # required
    #                   command: "UnrestrictedCommand", # required
    #                   stream_output_to_cloud_watch: false,
    #                   exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #                 }
    #               ],
    #               use_default_tools: false
    #             }
    #           ],
    #           data_sources: [
    #             {
    #               name: "Name", # required
    #               s3_bucket: "S3Bucket", # required
    #               s3_keys: ["S3KeyOrPrefix"], # required
    #               type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #               destination: "Path"
    #             }
    #           ],
    #           vpc_config: {
    #             subnets: ["NonEmptyString"], # required
    #             security_groups: ["NonEmptyString"],
    #             assign_public_ip: false
    #           },
    #           compute: {
    #             simulation_unit_limit: 1,
    #             compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #             gpu_unit_limit: 1
    #           },
    #           tags: {
    #             "TagKey" => "TagValue"
    #           }
    #         },
    #         failure_reason: "GenericString",
    #         failure_code: "InternalServiceError" # One of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"],
    #         failed_at: Time.now
    #       }
    #     ],
    #     pending_requests: [
    #       {
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key"
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: "IamRole",
    #         failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #         use_default_applications: false,
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             world_configs: [
    #               {
    #                 world: "Arn"
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_keys: ["S3KeyOrPrefix"], # required
    #             type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #             destination: "Path"
    #           }
    #         ],
    #         vpc_config: {
    #           subnets: ["NonEmptyString"], # required
    #           security_groups: ["NonEmptyString"],
    #           assign_public_ip: false
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #           compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #           gpu_unit_limit: 1
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     created_requests: [
    #       {
    #         arn: "Arn",
    #         last_updated_at: Time.now,
    #         name: "Name",
    #         status: "Pending" # One of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"],
    #         simulation_application_names: ["Name"],
    #         robot_application_names: ["Name"],
    #         data_source_names: ["Name"],
    #         compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeSimulationJobBatchResponse]
    def describe_simulation_job_batch(params = {}, options = {})
      request = build_request(:describe_simulation_job_batch, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a world.</p>
    # @param [Hash, Types::DescribeWorldRequest] params
    # @option params [String] :world
    #   <p>The Amazon Resource Name (arn) of the world you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     world: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_world(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     generation_job: "Arn",
    #     template: "Arn",
    #     created_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     world_description_body: "Json"
    #   }
    # @return [Types::DescribeWorldResponse]
    def describe_world(params = {}, options = {})
      request = build_request(:describe_world, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a world export job.</p>
    # @param [Hash, Types::DescribeWorldExportJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world export job to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_world_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"],
    #     created_at: Time.now,
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"],
    #     failure_reason: "GenericString",
    #     client_request_token: "ClientRequestToken",
    #     worlds: ["Arn"],
    #     output_location: {
    #       s3_bucket: "S3Bucket",
    #       s3_prefix: "S3Key"
    #     },
    #     iam_role: "IamRole",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeWorldExportJobResponse]
    def describe_world_export_job(params = {}, options = {})
      request = build_request(:describe_world_export_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a world generation job.</p>
    # @param [Hash, Types::DescribeWorldGenerationJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world generation job to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_world_generation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"],
    #     created_at: Time.now,
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"],
    #     failure_reason: "GenericString",
    #     client_request_token: "ClientRequestToken",
    #     template: "Arn",
    #     world_count: {
    #       floorplan_count: 1,
    #       interior_count_per_floorplan: 1
    #     },
    #     finished_worlds_summary: {
    #       finished_count: 1,
    #       succeeded_worlds: ["Arn"],
    #       failure_summary: {
    #         total_failure_count: 1,
    #         failures: [
    #           {
    #             failure_code: "InternalServiceError" # One of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"],
    #             sample_failure_reason: "GenericString",
    #             failure_count: 1
    #           }
    #         ]
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     world_tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeWorldGenerationJobResponse]
    def describe_world_generation_job(params = {}, options = {})
      request = build_request(:describe_world_generation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Describes a world template.</p>
    # @param [Hash, Types::DescribeWorldTemplateRequest] params
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_world_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     client_request_token: "ClientRequestToken",
    #     name: "TemplateName",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     version: "GenericString"
    #   }
    # @return [Types::DescribeWorldTemplateResponse]
    def describe_world_template(params = {}, options = {})
      request = build_request(:describe_world_template, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Gets the world template body.</p>
    # @param [Hash, Types::GetWorldTemplateBodyRequest] params
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    # @option params [String] :generation_job
    #   <p>The Amazon Resource Name (arn) of the world generator job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: "Arn",
    #     generation_job: "Arn"
    #   }
    #   options = {}
    #   response = client.get_world_template_body(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_body: "Json"
    #   }
    # @return [Types::GetWorldTemplateBodyResponse]
    def get_world_template_body(params = {}, options = {})
      request = build_request(:get_world_template_body, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>
    #          Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.
    #       </p>
    # @param [Hash, Types::ListDeploymentJobsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
    #            filtering, you must use the complete value of the filtered item. You can use up to three
    #            filters, but they must be for the same named item. For example, if you are looking for
    #            items with the status <code>InProgress</code> or the status <code>Pending</code>.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListDeploymentJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListDeploymentJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListDeploymentJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListDeploymentJobs</code> returns up to 200 results and a <code>nextToken</code>
    #            value if applicable. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_deployment_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_jobs: [
    #       {
    #         arn: "Arn",
    #         fleet: "Arn",
    #         status: "Pending" # One of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"],
    #         deployment_application_configs: [
    #           {
    #             application: "Arn", # required
    #             application_version: "DeploymentVersion", # required
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               pre_launch_file: "Path",
    #               launch_file: "Command", # required
    #               post_launch_file: "Path",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               }
    #             }
    #           }
    #         ],
    #         deployment_config: {
    #           concurrent_deployment_percentage: 1,
    #           failure_threshold_percentage: 1,
    #           robot_deployment_timeout_in_seconds: 1,
    #           download_condition_file: {
    #             bucket: "S3Bucket", # required
    #             key: "S3Key", # required
    #             etag: "S3Etag"
    #           }
    #         },
    #         failure_reason: "GenericString",
    #         failure_code: "ResourceNotFound" # One of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"],
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::ListDeploymentJobsResponse]
    def list_deployment_jobs(params = {}, options = {})
      request = build_request(:list_deployment_jobs, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>
    #          Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.
    #       </p>
    # @param [Hash, Types::ListFleetsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListFleets</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #               the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListFleets</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListFleets</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListFleets</code> returns up to 200 results and a <code>nextToken</code> value if
    #            applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_details: [
    #       {
    #         name: "Name",
    #         arn: "Arn",
    #         created_at: Time.now,
    #         last_deployment_status: "Pending" # One of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"],
    #         last_deployment_job: "Arn",
    #         last_deployment_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::ListFleetsResponse]
    def list_fleets(params = {}, options = {})
      request = build_request(:list_fleets, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Returns a list of robot application. You can optionally provide filters to retrieve
    #          specific robot applications.</p>
    # @param [Hash, Types::ListRobotApplicationsRequest] params
    # @option params [String] :version_qualifier
    #   <p>The version qualifier of the robot application.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobotApplications</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListRobotApplications</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListRobotApplications</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListRobotApplications</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     version_qualifier: "VersionQualifier",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_robot_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     robot_application_summaries: [
    #       {
    #         name: "Name",
    #         arn: "Arn",
    #         version: "Version",
    #         last_updated_at: Time.now,
    #         robot_software_suite: {
    #           name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #           version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRobotApplicationsResponse]
    def list_robot_applications(params = {}, options = {})
      request = build_request(:list_robot_applications, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>
    #          Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    #       </p>
    # @param [Hash, Types::ListRobotsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobots</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListRobots</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListRobots</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListRobots</code> returns up to 200 results and a <code>nextToken</code> value if
    #            applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
    #            filtering, you must use the complete value of the filtered item. You can use up to three
    #            filters, but they must be for the same named item. For example, if you are looking for
    #            items with the status <code>Registered</code> or the status <code>Available</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_robots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     robots: [
    #       {
    #         arn: "Arn",
    #         name: "Name",
    #         fleet_arn: "Arn",
    #         status: "Available" # One of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"],
    #         green_grass_group_id: "Id",
    #         created_at: Time.now,
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"],
    #         last_deployment_job: "Arn",
    #         last_deployment_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::ListRobotsResponse]
    def list_robots(params = {}, options = {})
      request = build_request(:list_robots, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Returns a list of simulation applications. You can optionally provide filters to
    #          retrieve specific simulation applications. </p>
    # @param [Hash, Types::ListSimulationApplicationsRequest] params
    # @option params [String] :version_qualifier
    #   <p>The version qualifier of the simulation application.</p>
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationApplications</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListSimulationApplications</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationApplications</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
    #            not used, then <code>ListSimulationApplications</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional list of filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     version_qualifier: "VersionQualifier",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_simulation_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     simulation_application_summaries: [
    #       {
    #         name: "Name",
    #         arn: "Arn",
    #         version: "Version",
    #         last_updated_at: Time.now,
    #         robot_software_suite: {
    #           name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #           version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #         },
    #         simulation_software_suite: {
    #           name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #           version: "SimulationSoftwareSuiteVersionType"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSimulationApplicationsResponse]
    def list_simulation_applications(params = {}, options = {})
      request = build_request(:list_simulation_applications, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Returns a list simulation job batches. You can optionally provide filters to retrieve
    #          specific simulation batch jobs. </p>
    # @param [Hash, Types::ListSimulationJobBatchesRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobBatches</code> again and assign that token
    #            to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListSimulationJobBatches</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationJobBatches</code> request with the returned
    #               <code>nextToken</code> value. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_simulation_job_batches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     simulation_job_batch_summaries: [
    #       {
    #         arn: "Arn",
    #         last_updated_at: Time.now,
    #         created_at: Time.now,
    #         status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"],
    #         failed_request_count: 1,
    #         pending_request_count: 1,
    #         created_request_count: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSimulationJobBatchesResponse]
    def list_simulation_job_batches(params = {}, options = {})
      request = build_request(:list_simulation_job_batches, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Returns a list of simulation jobs. You can optionally provide filters to retrieve
    #          specific simulation jobs. </p>
    # @param [Hash, Types::ListSimulationJobsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListSimulationJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 1000. If this parameter is not used, then
    #               <code>ListSimulationJobs</code> returns up to 1000 results and a <code>nextToken</code>
    #            value if applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>simulationApplicationName</code> and
    #               <code>robotApplicationName</code> are supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters, but they must be for
    #            the same named item. For example, if you are looking for items with the status
    #               <code>Preparing</code> or the status <code>Running</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_simulation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     simulation_job_summaries: [ # required
    #       {
    #         arn: "Arn",
    #         last_updated_at: Time.now,
    #         name: "Name",
    #         status: "Pending" # One of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"],
    #         simulation_application_names: ["Name"],
    #         robot_application_names: ["Name"],
    #         data_source_names: ["Name"],
    #         compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSimulationJobsResponse]
    def list_simulation_jobs(params = {}, options = {})
      request = build_request(:list_simulation_jobs, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Lists all tags on a AWS RoboMaker resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Lists world export jobs.</p>
    # @param [Hash, Types::ListWorldExportJobsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldExportJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorldExportJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldExportJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorldExportJobs</code> returns up to 100 results and a <code>nextToken</code>
    #            value if applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results. You can use <code>generationJobId</code> and
    #               <code>templateId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_world_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     world_export_job_summaries: [ # required
    #       {
    #         arn: "Arn",
    #         status: "Pending" # One of: ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"],
    #         created_at: Time.now,
    #         worlds: ["Arn"],
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorldExportJobsResponse]
    def list_world_export_jobs(params = {}, options = {})
      request = build_request(:list_world_export_jobs, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Lists world generator jobs.</p>
    # @param [Hash, Types::ListWorldGenerationJobsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldGenerationJobsRequest</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorldGeneratorJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldGeneratorJobs</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
    #            not used, then <code>ListWorldGeneratorJobs</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results. You can use <code>status</code> and
    #               <code>templateId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_world_generation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     world_generation_job_summaries: [ # required
    #       {
    #         arn: "Arn",
    #         template: "Arn",
    #         created_at: Time.now,
    #         status: "Pending" # One of: ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"],
    #         world_count: {
    #           floorplan_count: 1,
    #           interior_count_per_floorplan: 1
    #         },
    #         succeeded_world_count: 1,
    #         failed_world_count: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorldGenerationJobsResponse]
    def list_world_generation_jobs(params = {}, options = {})
      request = build_request(:list_world_generation_jobs, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Lists world templates.</p>
    # @param [Hash, Types::ListWorldTemplatesRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldTemplates</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorldTemplates</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code>
    #            value if applicable. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_world_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_summaries: [
    #       {
    #         arn: "Arn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         name: "TemplateName",
    #         version: "GenericString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorldTemplatesResponse]
    def list_world_templates(params = {}, options = {})
      request = build_request(:list_world_templates, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Lists worlds.</p>
    # @param [Hash, Types::ListWorldsRequest] params
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorlds</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorlds</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorlds</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorlds</code> returns up to 100 results and a <code>nextToken</code> value if
    #            applicable. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optional filters to limit results. You can use <code>status</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Name",
    #         values: ["Name"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_worlds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     world_summaries: [
    #       {
    #         arn: "Arn",
    #         created_at: Time.now,
    #         generation_job: "Arn",
    #         template: "Arn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorldsResponse]
    def list_worlds(params = {}, options = {})
      request = build_request(:list_worlds, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Registers a robot with a fleet.</p>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used. For more information, see the January 31, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022">Support policy</a> page.</p>
    #          </important>
    # @param [Hash, Types::RegisterRobotRequest] params
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fleet: "Arn", # required
    #     robot: "Arn", # required
    #   }
    #   options = {}
    #   response = client.register_robot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet: "Arn",
    #     robot: "Arn"
    #   }
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::RegisterRobotResponse]
    def register_robot(params = {}, options = {})
      request = build_request(:register_robot, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Restarts a running simulation job.</p>
    # @param [Hash, Types::RestartSimulationJobRequest] params
    # @option params [String] :job
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job: "Arn", # required
    #   }
    #   options = {}
    #   response = client.restart_simulation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RestartSimulationJobResponse]
    def restart_simulation_job(params = {}, options = {})
      request = build_request(:restart_simulation_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Starts a new simulation job batch. The batch is defined using one or more
    #             <code>SimulationJobRequest</code> objects. </p>
    # @param [Hash, Types::StartSimulationJobBatchRequest] params
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [Types::BatchPolicy] :batch_policy
    #   <p>The batch policy.</p>
    # @option params [Array<Types::SimulationJobRequest>] :create_simulation_job_requests
    #   <p>A list of simulation job requests to create in the batch.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment job
    #            batch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken",
    #     batch_policy: {
    #       timeout_in_seconds: 1,
    #       max_concurrency: 1
    #     },
    #     create_simulation_job_requests: [ # required
    #       {
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key"
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: "IamRole",
    #         failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #         use_default_applications: false,
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             world_configs: [
    #               {
    #                 world: "Arn"
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_keys: ["S3KeyOrPrefix"], # required
    #             type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #             destination: "Path"
    #           }
    #         ],
    #         vpc_config: {
    #           subnets: ["NonEmptyString"], # required
    #           security_groups: ["NonEmptyString"],
    #           assign_public_ip: false
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #           compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #           gpu_unit_limit: 1
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_simulation_job_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"],
    #     created_at: Time.now,
    #     client_request_token: "ClientRequestToken",
    #     batch_policy: {
    #       timeout_in_seconds: 1,
    #       max_concurrency: 1
    #     },
    #     failure_code: "InternalServiceError" # One of: ["InternalServiceError"],
    #     failure_reason: "GenericString",
    #     failed_requests: [
    #       {
    #         request: {
    #           output_location: {
    #             s3_bucket: "S3Bucket",
    #             s3_prefix: "S3Key"
    #           },
    #           logging_config: {
    #             record_all_ros_topics: false
    #           },
    #           max_job_duration_in_seconds: 1, # required
    #           iam_role: "IamRole",
    #           failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #           use_default_applications: false,
    #           robot_applications: [
    #             {
    #               application: "Arn", # required
    #               application_version: "Version",
    #               launch_config: { # required
    #                 package_name: "Command",
    #                 launch_file: "Command",
    #                 environment_variables: {
    #                   "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #                 },
    #                 port_forwarding_config: {
    #                   port_mappings: [
    #                     {
    #                       job_port: 1, # required
    #                       application_port: 1, # required
    #                       enable_on_public_ip: false
    #                     }
    #                   ]
    #                 },
    #                 stream_ui: false,
    #                 command: ["NonEmptyString"]
    #               },
    #               upload_configurations: [
    #                 {
    #                   name: "Name", # required
    #                   path: "Path", # required
    #                   upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #                 }
    #               ],
    #               use_default_upload_configurations: false,
    #               tools: [
    #                 {
    #                   stream_ui: false,
    #                   name: "Name", # required
    #                   command: "UnrestrictedCommand", # required
    #                   stream_output_to_cloud_watch: false,
    #                   exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #                 }
    #               ],
    #               use_default_tools: false
    #             }
    #           ],
    #           simulation_applications: [
    #             {
    #               application: "Arn", # required
    #               application_version: "Version",
    #               launch_config: { # required
    #                 package_name: "Command",
    #                 launch_file: "Command",
    #                 environment_variables: {
    #                   "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #                 },
    #                 port_forwarding_config: {
    #                   port_mappings: [
    #                     {
    #                       job_port: 1, # required
    #                       application_port: 1, # required
    #                       enable_on_public_ip: false
    #                     }
    #                   ]
    #                 },
    #                 stream_ui: false,
    #                 command: ["NonEmptyString"]
    #               },
    #               upload_configurations: [
    #                 {
    #                   name: "Name", # required
    #                   path: "Path", # required
    #                   upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #                 }
    #               ],
    #               world_configs: [
    #                 {
    #                   world: "Arn"
    #                 }
    #               ],
    #               use_default_upload_configurations: false,
    #               tools: [
    #                 {
    #                   stream_ui: false,
    #                   name: "Name", # required
    #                   command: "UnrestrictedCommand", # required
    #                   stream_output_to_cloud_watch: false,
    #                   exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #                 }
    #               ],
    #               use_default_tools: false
    #             }
    #           ],
    #           data_sources: [
    #             {
    #               name: "Name", # required
    #               s3_bucket: "S3Bucket", # required
    #               s3_keys: ["S3KeyOrPrefix"], # required
    #               type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #               destination: "Path"
    #             }
    #           ],
    #           vpc_config: {
    #             subnets: ["NonEmptyString"], # required
    #             security_groups: ["NonEmptyString"],
    #             assign_public_ip: false
    #           },
    #           compute: {
    #             simulation_unit_limit: 1,
    #             compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #             gpu_unit_limit: 1
    #           },
    #           tags: {
    #             "TagKey" => "TagValue"
    #           }
    #         },
    #         failure_reason: "GenericString",
    #         failure_code: "InternalServiceError" # One of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"],
    #         failed_at: Time.now
    #       }
    #     ],
    #     pending_requests: [
    #       {
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key"
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: "IamRole",
    #         failure_behavior: "Fail" # One of: ["Fail", "Continue"],
    #         use_default_applications: false,
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command",
    #               launch_file: "Command",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: ["NonEmptyString"]
    #             },
    #             upload_configurations: [
    #               {
    #                 name: "Name", # required
    #                 path: "Path", # required
    #                 upload_behavior: "UPLOAD_ON_TERMINATE" # One of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"], # required
    #               }
    #             ],
    #             world_configs: [
    #               {
    #                 world: "Arn"
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: "Name", # required
    #                 command: "UnrestrictedCommand", # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: "FAIL" # One of: ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_keys: ["S3KeyOrPrefix"], # required
    #             type: "Prefix" # One of: ["Prefix", "Archive", "File"],
    #             destination: "Path"
    #           }
    #         ],
    #         vpc_config: {
    #           subnets: ["NonEmptyString"], # required
    #           security_groups: ["NonEmptyString"],
    #           assign_public_ip: false
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #           compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"],
    #           gpu_unit_limit: 1
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     created_requests: [
    #       {
    #         arn: "Arn",
    #         last_updated_at: Time.now,
    #         name: "Name",
    #         status: "Pending" # One of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"],
    #         simulation_application_names: ["Name"],
    #         robot_application_names: ["Name"],
    #         data_source_names: ["Name"],
    #         compute_type: "CPU" # One of: ["CPU", "GPU_AND_CPU"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::StartSimulationJobBatchResponse]
    def start_simulation_job_batch(params = {}, options = {})
      request = build_request(:start_simulation_job_batch, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <important>
    #             <p>This API is no longer supported. For more information, see the May 2, 2022 update in the <a href="https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022">Support policy</a> page.</p>
    #          </important>
    #          <p>
    #          Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
    #       </p>
    # @param [Hash, Types::SyncDeploymentJobRequest] params
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    # @option params [String] :fleet
    #   <p>The target fleet for the synchronization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken", # required
    #     fleet: "Arn", # required
    #   }
    #   options = {}
    #   response = client.sync_deployment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     fleet: "Arn",
    #     status: "Pending" # One of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"],
    #     deployment_config: {
    #       concurrent_deployment_percentage: 1,
    #       failure_threshold_percentage: 1,
    #       robot_deployment_timeout_in_seconds: 1,
    #       download_condition_file: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         etag: "S3Etag"
    #       }
    #     },
    #     deployment_application_configs: [
    #       {
    #         application: "Arn", # required
    #         application_version: "DeploymentVersion", # required
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           pre_launch_file: "Path",
    #           launch_file: "Command", # required
    #           post_launch_file: "Path",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #           }
    #         }
    #       }
    #     ],
    #     failure_reason: "GenericString",
    #     failure_code: "ResourceNotFound" # One of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"],
    #     created_at: Time.now
    #   }
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    # @return [Types::SyncDeploymentJobResponse]
    def sync_deployment_job(params = {}, options = {})
      request = build_request(:sync_deployment_job, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Adds or edits tags for a AWS RoboMaker resource.</p>
    #          <p>Each tag consists of a tag key and a tag value. Tag keys and tag values are both
    #          required, but tag values can be empty strings. </p>
    #          <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management
    #             User Guide</i>. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Removes the specified tags from the specified AWS RoboMaker resource.</p>
    #          <p>To remove a tag, specify the tag key. To change the tag value of an existing tag key,
    #          use <a href="https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html">
    #                <code>TagResource</code>
    #             </a>. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing
    #            tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A map that contains tag keys and tag values that will be unattached from the
    #            resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Updates a robot application.</p>
    # @param [Hash, Types::UpdateRobotApplicationRequest] params
    # @option params [String] :application
    #   <p>The application information for the robot application.</p>
    # @option params [Array<Types::SourceConfig>] :sources
    #   <p>The sources of the robot application.</p>
    # @option params [Types::RobotSoftwareSuite] :robot_software_suite
    #   <p>The robot software suite used by the robot application.</p>
    # @option params [String] :current_revision_id
    #   <p>The revision id for the robot application.</p>
    # @option params [Types::Environment] :environment
    #   <p>The object that contains the Docker image URI for your robot application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: { # required
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     current_revision_id: "RevisionId",
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.update_robot_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     last_updated_at: Time.now,
    #     revision_id: "RevisionId",
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    # @return [Types::UpdateRobotApplicationResponse]
    def update_robot_application(params = {}, options = {})
      request = build_request(:update_robot_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Updates a simulation application.</p>
    # @param [Hash, Types::UpdateSimulationApplicationRequest] params
    # @option params [String] :application
    #   <p>The application information for the simulation application.</p>
    # @option params [Array<Types::SourceConfig>] :sources
    #   <p>The sources of the simulation application.</p>
    # @option params [Types::SimulationSoftwareSuite] :simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    # @option params [Types::RobotSoftwareSuite] :robot_software_suite
    #   <p>Information about the robot software suite.</p>
    # @option params [Types::RenderingEngine] :rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    # @option params [String] :current_revision_id
    #   <p>The revision id for the robot application.</p>
    # @option params [Types::Environment] :environment
    #   <p>The object that contains the Docker image URI for your simulation application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "Arn", # required
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: { # required
    #       name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #       version: "SimulationSoftwareSuiteVersionType"
    #     },
    #     robot_software_suite: { # required
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     rendering_engine: {
    #       name: "OGRE" # One of: ["OGRE"],
    #       version: "RenderingEngineVersionType"
    #     },
    #     current_revision_id: "RevisionId",
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    #   options = {}
    #   response = client.update_simulation_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "Name",
    #     version: "Version",
    #     sources: [
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         etag: "S3Etag",
    #         architecture: "X86_64" # One of: ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: {
    #       name: "Gazebo" # One of: ["Gazebo", "RosbagPlay", "SimulationRuntime"],
    #       version: "SimulationSoftwareSuiteVersionType"
    #     },
    #     robot_software_suite: {
    #       name: "ROS" # One of: ["ROS", "ROS2", "General"],
    #       version: "Kinetic" # One of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     },
    #     rendering_engine: {
    #       name: "OGRE" # One of: ["OGRE"],
    #       version: "RenderingEngineVersionType"
    #     },
    #     last_updated_at: Time.now,
    #     revision_id: "RevisionId",
    #     environment: {
    #       uri: "RepositoryUrl"
    #     }
    #   }
    # @return [Types::UpdateSimulationApplicationResponse]
    def update_simulation_application(params = {}, options = {})
      request = build_request(:update_simulation_application, params)
      request.send_request(options)
    end

    # <important>
    #             <p>End of support notice: On September 10, 2025, Amazon Web Services
    #          will discontinue support for Amazon Web Services RoboMaker. After September 10, 2025, you will
    #          no longer be able to access the Amazon Web Services RoboMaker console or Amazon Web Services RoboMaker resources. 
    #          For more information on transitioning to Batch to help run containerized
    #          simulations, visit <a href="https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/">https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/</a>.
    #       </p>
    #          </important>
    #          <p>Updates a world template.</p>
    # @param [Hash, Types::UpdateWorldTemplateRequest] params
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template to update.</p>
    # @option params [String] :name
    #   <p>The name of the template.</p>
    # @option params [String] :template_body
    #   <p>The world template body.</p>
    # @option params [Types::TemplateLocation] :template_location
    #   <p>The location of the world template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template: "Arn", # required
    #     name: "TemplateName",
    #     template_body: "Json",
    #     template_location: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_world_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     name: "TemplateName",
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::UpdateWorldTemplateResponse]
    def update_world_template(params = {}, options = {})
      request = build_request(:update_world_template, params)
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
      context[:gem_name] = 'aws-sdk-robomaker'
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

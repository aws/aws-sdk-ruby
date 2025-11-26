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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:emrserverless)

module Aws::EMRServerless
  # An API client for Aws::EMRServerless.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsToledoWebService
    @identifier = :emrserverless

    add_plugin(::Aws::EMRServerless::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EMRServerless::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Cancels a job run.</p>
    # @param [Hash, Types::CancelJobRunInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application on which the job run will be canceled.</p>
    # @option params [String] :job_run_id
    #   <p>The ID of the job run to cancel.</p>
    # @option params [Integer] :shutdown_grace_period_in_seconds
    #   <p>The duration in seconds to wait before forcefully terminating the job after cancellation is requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     shutdown_grace_period_in_seconds: 1
    #   }
    #   options = {}
    #   response = client.cancel_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #   }
    # @return [Types::CancelJobRunOutput]
    def cancel_job_run(params = {}, options = {})
      request = build_request(:cancel_job_run, params)
      request.send_request(options)
    end

    # <p>Creates an application.</p>
    # @param [Hash, Types::CreateApplicationInput] params
    # @option params [String] :name
    #   <p>The name of the application.</p>
    # @option params [String] :release_label
    #   <p>The Amazon EMR release associated with the application.</p>
    # @option params [String] :type
    #   <p>The type of application you want to start, such as Spark or Hive.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token of the application to create. Its value must be unique for each request.</p>
    # @option params [Hash<String, Types::InitialCapacityConfig>] :initial_capacity
    #   <p>The capacity to initialize when the application is created.</p>
    # @option params [Types::MaximumAllowedResources] :maximum_capacity
    #   <p>The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the application.</p>
    # @option params [Types::AutoStartConfig] :auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    # @option params [Types::AutoStopConfig] :auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    # @option params [String] :architecture
    #   <p>The CPU architecture of an application.</p>
    # @option params [Types::ImageConfigurationInput] :image_configuration
    #   <p>The image configuration for all worker types. You can either set this parameter or <code>imageConfiguration</code> for each worker type in <code>workerTypeSpecifications</code>.</p>
    # @option params [Hash<String, Types::WorkerTypeSpecificationInput>] :worker_type_specifications
    #   <p>The key-value pairs that specify worker type to <code>WorkerTypeSpecificationInput</code>. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include <code>Driver</code> and <code>Executor</code> for Spark applications and <code>HiveDriver</code> and <code>TezTask</code> for Hive applications. You can either set image details in this parameter for each worker type, or in <code>imageConfiguration</code> for all worker types.</p>
    # @option params [Array<Types::Configuration>] :runtime_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html">Configuration</a> specifications to use when creating an application. Each configuration consists of a classification and properties. This configuration is applied to all the job runs submitted under the application.</p>
    # @option params [Types::MonitoringConfiguration] :monitoring_configuration
    #   <p>The configuration setting for monitoring.</p>
    # @option params [Types::InteractiveConfiguration] :interactive_configuration
    #   <p>The interactive configuration object that enables the interactive use cases to use when running an application.</p>
    # @option params [Types::SchedulerConfiguration] :scheduler_configuration
    #   <p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>
    # @option params [Types::IdentityCenterConfigurationInput] :identity_center_configuration
    #   <p>The IAM Identity Center Configuration accepts the Identity Center instance parameter required to enable trusted identity propagation. This configuration allows identity propagation between integrated services and the Identity Center instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApplicationName",
    #     release_label: "ReleaseLabel", # required
    #     type: "EngineType", # required
    #     client_token: "ClientToken", # required
    #     initial_capacity: {
    #       "WorkerTypeString" => {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #           disk_type: "DiskType"
    #         }
    #       }
    #     },
    #     maximum_capacity: {
    #       cpu: "CpuSize", # required
    #       memory: "MemorySize", # required
    #       disk: "DiskSize"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     auto_start_configuration: {
    #       enabled: false
    #     },
    #     auto_stop_configuration: {
    #       enabled: false,
    #       idle_timeout_minutes: 1
    #     },
    #     network_configuration: {
    #       subnet_ids: ["SubnetString"],
    #       security_group_ids: ["SecurityGroupString"]
    #     },
    #     architecture: "Architecture",
    #     image_configuration: {
    #       image_uri: "ImageUri"
    #     },
    #     worker_type_specifications: {
    #       "WorkerTypeString" => {
    #         image_configuration: {
    #           image_uri: "ImageUri"
    #         }
    #       }
    #     },
    #     runtime_configuration: [
    #       {
    #         classification: "String1024", # required
    #         properties: {
    #           "ConfigurationPropertyKey" => "ConfigurationPropertyValue"
    #         },
    #         configurations: {
    #           # recursive ConfigurationList
    #         }
    #       }
    #     ],
    #     monitoring_configuration: {
    #       s3_monitoring_configuration: {
    #         log_uri: "UriString",
    #         encryption_key_arn: "EncryptionKeyArn"
    #       },
    #       managed_persistence_monitoring_configuration: {
    #         enabled: false,
    #         encryption_key_arn: "EncryptionKeyArn"
    #       },
    #       cloud_watch_logging_configuration: {
    #         enabled: false, # required
    #         log_group_name: "LogGroupName",
    #         log_stream_name_prefix: "LogStreamNamePrefix",
    #         encryption_key_arn: "EncryptionKeyArn",
    #         log_types: {
    #           "WorkerTypeString" => ["LogTypeString"]
    #         }
    #       },
    #       prometheus_monitoring_configuration: {
    #         remote_write_url: "PrometheusUrlString"
    #       }
    #     },
    #     interactive_configuration: {
    #       studio_enabled: false,
    #       livy_endpoint_enabled: false
    #     },
    #     scheduler_configuration: {
    #       queue_timeout_minutes: 1,
    #       max_concurrent_runs: 1
    #     },
    #     identity_center_configuration: {
    #       identity_center_instance_arn: "IdentityCenterInstanceArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId", # required
    #     name: "ApplicationName",
    #     arn: "ApplicationArn", # required
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Deletes an application. An application has to be in a stopped or created state in order to be deleted.</p>
    # @param [Hash, Types::DeleteApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application that will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationOutput]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a specified application.</p>
    # @param [Hash, Types::GetApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application that will be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: { # required
    #       application_id: "ApplicationId", # required
    #       name: "ApplicationName",
    #       arn: "ApplicationArn", # required
    #       release_label: "ReleaseLabel", # required
    #       type: "EngineType", # required
    #       state: "ApplicationState", # required
    #       state_details: "String256",
    #       initial_capacity: {
    #         "WorkerTypeString" => {
    #           worker_count: 1, # required
    #           worker_configuration: {
    #             cpu: "CpuSize", # required
    #             memory: "MemorySize", # required
    #             disk: "DiskSize",
    #             disk_type: "DiskType"
    #           }
    #         }
    #       },
    #       maximum_capacity: {
    #         cpu: "CpuSize", # required
    #         memory: "MemorySize", # required
    #         disk: "DiskSize"
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       auto_start_configuration: {
    #         enabled: false
    #       },
    #       auto_stop_configuration: {
    #         enabled: false,
    #         idle_timeout_minutes: 1
    #       },
    #       network_configuration: {
    #         subnet_ids: ["SubnetString"],
    #         security_group_ids: ["SecurityGroupString"]
    #       },
    #       architecture: "Architecture",
    #       image_configuration: {
    #         image_uri: "ImageUri", # required
    #         resolved_image_digest: "ImageDigest"
    #       },
    #       worker_type_specifications: {
    #         "WorkerTypeString" => {
    #           image_configuration: {
    #             image_uri: "ImageUri", # required
    #             resolved_image_digest: "ImageDigest"
    #           }
    #         }
    #       },
    #       runtime_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "ConfigurationPropertyKey" => "ConfigurationPropertyValue"
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           }
    #         }
    #       ],
    #       monitoring_configuration: {
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString",
    #           encryption_key_arn: "EncryptionKeyArn"
    #         },
    #         managed_persistence_monitoring_configuration: {
    #           enabled: false,
    #           encryption_key_arn: "EncryptionKeyArn"
    #         },
    #         cloud_watch_logging_configuration: {
    #           enabled: false, # required
    #           log_group_name: "LogGroupName",
    #           log_stream_name_prefix: "LogStreamNamePrefix",
    #           encryption_key_arn: "EncryptionKeyArn",
    #           log_types: {
    #             "WorkerTypeString" => ["LogTypeString"]
    #           }
    #         },
    #         prometheus_monitoring_configuration: {
    #           remote_write_url: "PrometheusUrlString"
    #         }
    #       },
    #       interactive_configuration: {
    #         studio_enabled: false,
    #         livy_endpoint_enabled: false
    #       },
    #       scheduler_configuration: {
    #         queue_timeout_minutes: 1,
    #         max_concurrent_runs: 1
    #       },
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #         identity_center_application_arn: "IdentityCenterApplicationArn"
    #       }
    #     }
    #   }
    # @return [Types::GetApplicationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Creates and returns a URL that you can use to access the application UIs for a job run.</p> <p>For jobs in a running state, the application UI is a live user interface such as the Spark or Tez web UI. For completed jobs, the application UI is a persistent application user interface such as the Spark History Server or persistent Tez UI.</p> <note> <p>The URL is valid for one hour after you generate it. To access the application UI after that hour elapses, you must invoke the API again to generate a new URL.</p> </note>
    # @param [Hash, Types::GetDashboardForJobRunInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :job_run_id
    #   <p>The ID of the job run.</p>
    # @option params [Integer] :attempt
    #   <p>An optimal parameter that indicates the amount of attempts for the job. If not specified, this value defaults to the attempt of the latest job.</p>
    # @option params [Boolean] :access_system_profile_logs
    #   <p>Allows access to system profile logs for Lake Formation-enabled jobs. Default is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     attempt: 1,
    #     access_system_profile_logs: false
    #   }
    #   options = {}
    #   response = client.get_dashboard_for_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "Url"
    #   }
    # @return [Types::GetDashboardForJobRunOutput]
    def get_dashboard_for_job_run(params = {}, options = {})
      request = build_request(:get_dashboard_for_job_run, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a job run.</p>
    # @param [Hash, Types::GetJobRunInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application on which the job run is submitted.</p>
    # @option params [String] :job_run_id
    #   <p>The ID of the job run.</p>
    # @option params [Integer] :attempt
    #   <p>An optimal parameter that indicates the amount of attempts for the job. If not specified, this value defaults to the attempt of the latest job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     attempt: 1
    #   }
    #   options = {}
    #   response = client.get_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_run: { # required
    #       application_id: "ApplicationId", # required
    #       job_run_id: "JobRunId", # required
    #       name: "String256",
    #       arn: "JobArn", # required
    #       created_by: "RequestIdentityUserArn", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       execution_role: "IAMRoleArn", # required
    #       execution_iam_policy: {
    #         policy: "PolicyDocument",
    #         policy_arns: ["Arn"]
    #       },
    #       state: "JobRunState", # required
    #       state_details: "String256", # required
    #       release_label: "ReleaseLabel", # required
    #       configuration_overrides: {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "ConfigurationPropertyKey" => "ConfigurationPropertyValue"
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             }
    #           }
    #         ],
    #         monitoring_configuration: {
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString",
    #             encryption_key_arn: "EncryptionKeyArn"
    #           },
    #           managed_persistence_monitoring_configuration: {
    #             enabled: false,
    #             encryption_key_arn: "EncryptionKeyArn"
    #           },
    #           cloud_watch_logging_configuration: {
    #             enabled: false, # required
    #             log_group_name: "LogGroupName",
    #             log_stream_name_prefix: "LogStreamNamePrefix",
    #             encryption_key_arn: "EncryptionKeyArn",
    #             log_types: {
    #               "WorkerTypeString" => ["LogTypeString"]
    #             }
    #           },
    #           prometheus_monitoring_configuration: {
    #             remote_write_url: "PrometheusUrlString"
    #           }
    #         }
    #       },
    #       job_driver: { # required
    #         # One of:
    #         spark_submit: {
    #           entry_point: "EntryPointPath", # required
    #           entry_point_arguments: ["EntryPointArgument"],
    #           spark_submit_parameters: "SparkSubmitParameters"
    #         },
    #         hive: {
    #           query: "Query", # required
    #           init_query_file: "InitScriptPath",
    #           parameters: "HiveCliParameters"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       total_resource_utilization: {
    #         v_cpu_hour: 1.0,
    #         memory_gb_hour: 1.0,
    #         storage_gb_hour: 1.0
    #       },
    #       network_configuration: {
    #         subnet_ids: ["SubnetString"],
    #         security_group_ids: ["SecurityGroupString"]
    #       },
    #       total_execution_duration_seconds: 1,
    #       execution_timeout_minutes: 1,
    #       billed_resource_utilization: {
    #         v_cpu_hour: 1.0,
    #         memory_gb_hour: 1.0,
    #         storage_gb_hour: 1.0
    #       },
    #       mode: "JobRunMode",
    #       retry_policy: {
    #         max_attempts: 1,
    #         max_failed_attempts_per_hour: 1
    #       },
    #       attempt: 1,
    #       attempt_created_at: Time.now,
    #       attempt_updated_at: Time.now,
    #       started_at: Time.now,
    #       ended_at: Time.now,
    #       queued_duration_milliseconds: 1
    #     }
    #   }
    # @return [Types::GetJobRunOutput]
    def get_job_run(params = {}, options = {})
      request = build_request(:get_job_run, params)
      request.send_request(options)
    end

    # <p>Lists applications based on a set of parameters.</p>
    # @param [Hash, Types::ListApplicationsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of application results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of applications that can be listed.</p>
    # @option params [Array<String>] :states
    #   <p>An optional filter for application states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     states: ["ApplicationState"]
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [ # required
    #       {
    #         id: "ApplicationId", # required
    #         name: "ApplicationName",
    #         arn: "ApplicationArn", # required
    #         release_label: "ReleaseLabel", # required
    #         type: "EngineType", # required
    #         state: "ApplicationState", # required
    #         state_details: "String256",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         architecture: "Architecture"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists all attempt of a job run.</p>
    # @param [Hash, Types::ListJobRunAttemptsRequest] params
    # @option params [String] :application_id
    #   <p>The ID of the application for which to list job runs.</p>
    # @option params [String] :job_run_id
    #   <p>The ID of the job run to list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of job run attempt results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of job run attempts to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_job_run_attempts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_run_attempts: [ # required
    #       {
    #         application_id: "ApplicationId", # required
    #         id: "JobRunId", # required
    #         name: "String256",
    #         mode: "JobRunMode",
    #         arn: "JobArn", # required
    #         created_by: "RequestIdentityUserArn", # required
    #         job_created_at: Time.now, # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         execution_role: "IAMRoleArn", # required
    #         state: "JobRunState", # required
    #         state_details: "String256", # required
    #         release_label: "ReleaseLabel", # required
    #         type: "JobRunType",
    #         attempt: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobRunAttemptsResponse]
    def list_job_run_attempts(params = {}, options = {})
      request = build_request(:list_job_run_attempts, params)
      request.send_request(options)
    end

    # <p>Lists job runs based on a set of parameters.</p>
    # @param [Hash, Types::ListJobRunsInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application for which to list the job run.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of job run results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    # @option params [Time] :created_at_after
    #   <p>The lower bound of the option to filter by creation date and time.</p>
    # @option params [Time] :created_at_before
    #   <p>The upper bound of the option to filter by creation date and time.</p>
    # @option params [Array<String>] :states
    #   <p>An optional filter for job run states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    # @option params [String] :mode
    #   <p>The mode of the job runs to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     created_at_after: Time.now,
    #     created_at_before: Time.now,
    #     states: ["JobRunState"],
    #     mode: "JobRunMode"
    #   }
    #   options = {}
    #   response = client.list_job_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_runs: [ # required
    #       {
    #         application_id: "ApplicationId", # required
    #         id: "JobRunId", # required
    #         name: "String256",
    #         mode: "JobRunMode",
    #         arn: "JobArn", # required
    #         created_by: "RequestIdentityUserArn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         execution_role: "IAMRoleArn", # required
    #         state: "JobRunState", # required
    #         state_details: "String256", # required
    #         release_label: "ReleaseLabel", # required
    #         type: "JobRunType",
    #         attempt: 1,
    #         attempt_created_at: Time.now,
    #         attempt_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobRunsOutput]
    def list_job_runs(params = {}, options = {})
      request = build_request(:list_job_runs, params)
      request.send_request(options)
    end

    # <p>Lists the tags assigned to the resources.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a specified application and initializes initial capacity if configured.</p>
    # @param [Hash, Types::StartApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.start_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartApplicationOutput]
    def start_application(params = {}, options = {})
      request = build_request(:start_application, params)
      request.send_request(options)
    end

    # <p>Starts a job run.</p>
    # @param [Hash, Types::StartJobRunInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application on which to run the job.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token of the job run to start. Its value must be unique for each request.</p>
    # @option params [String] :execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    # @option params [Types::JobRunExecutionIamPolicy] :execution_iam_policy
    #   <p>You can pass an optional IAM policy. The resulting job IAM role permissions will be an intersection of this policy and the policy associated with your job execution role.</p>
    # @option params [Types::JobDriver] :job_driver
    #   <p>The job driver for the job run.</p>
    # @option params [Types::ConfigurationOverrides] :configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the job run.</p>
    # @option params [Integer] :execution_timeout_minutes
    #   <p>The maximum duration for the job run to run. If the job run runs beyond this duration, it will be automatically cancelled.</p>
    # @option params [String] :name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    # @option params [String] :mode
    #   <p>The mode of the job run when it starts.</p>
    # @option params [Types::RetryPolicy] :retry_policy
    #   <p>The retry policy when job run starts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken", # required
    #     execution_role_arn: "IAMRoleArn", # required
    #     execution_iam_policy: {
    #       policy: "PolicyDocument",
    #       policy_arns: ["Arn"]
    #     },
    #     job_driver: {
    #       # One of:
    #       spark_submit: {
    #         entry_point: "EntryPointPath", # required
    #         entry_point_arguments: ["EntryPointArgument"],
    #         spark_submit_parameters: "SparkSubmitParameters"
    #       },
    #       hive: {
    #         query: "Query", # required
    #         init_query_file: "InitScriptPath",
    #         parameters: "HiveCliParameters"
    #       }
    #     },
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "ConfigurationPropertyKey" => "ConfigurationPropertyValue"
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           }
    #         }
    #       ],
    #       monitoring_configuration: {
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString",
    #           encryption_key_arn: "EncryptionKeyArn"
    #         },
    #         managed_persistence_monitoring_configuration: {
    #           enabled: false,
    #           encryption_key_arn: "EncryptionKeyArn"
    #         },
    #         cloud_watch_logging_configuration: {
    #           enabled: false, # required
    #           log_group_name: "LogGroupName",
    #           log_stream_name_prefix: "LogStreamNamePrefix",
    #           encryption_key_arn: "EncryptionKeyArn",
    #           log_types: {
    #             "WorkerTypeString" => ["LogTypeString"]
    #           }
    #         },
    #         prometheus_monitoring_configuration: {
    #           remote_write_url: "PrometheusUrlString"
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     execution_timeout_minutes: 1,
    #     name: "String256",
    #     mode: "JobRunMode",
    #     retry_policy: {
    #       max_attempts: 1,
    #       max_failed_attempts_per_hour: 1
    #     }
    #   }
    #   options = {}
    #   response = client.start_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationId", # required
    #     job_run_id: "JobRunId", # required
    #     arn: "JobArn", # required
    #   }
    # @return [Types::StartJobRunOutput]
    def start_job_run(params = {}, options = {})
      request = build_request(:start_job_run, params)
      request.send_request(options)
    end

    # <p>Stops a specified application and releases initial capacity if configured. All scheduled and running jobs must be completed or cancelled before stopping an application.</p>
    # @param [Hash, Types::StopApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.stop_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopApplicationOutput]
    def stop_application(params = {}, options = {})
      request = build_request(:stop_application, params)
      request.send_request(options)
    end

    # <p>Assigns tags to resources. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your Amazon Web Services resources by attributes such as purpose, owner, or environment. When you have many resources of the same type, you can quickly identify a specific resource based on the tags you've assigned to it. </p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Removes tags from resources.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
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

    # <p>Updates a specified application. An application has to be in a stopped or created state in order to be updated.</p>
    # @param [Hash, Types::UpdateApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application to update.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token of the application to update. Its value must be unique for each request.</p>
    # @option params [Hash<String, Types::InitialCapacityConfig>] :initial_capacity
    #   <p>The capacity to initialize when the application is updated.</p>
    # @option params [Types::MaximumAllowedResources] :maximum_capacity
    #   <p>The maximum capacity to allocate when the application is updated. This is cumulative across all workers at any given point in time during the lifespan of the application. No new resources will be created once any one of the defined limits is hit.</p>
    # @option params [Types::AutoStartConfig] :auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    # @option params [Types::AutoStopConfig] :auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    # @option params [String] :architecture
    #   <p>The CPU architecture of an application.</p>
    # @option params [Types::ImageConfigurationInput] :image_configuration
    #   <p>The image configuration to be used for all worker types. You can either set this parameter or <code>imageConfiguration</code> for each worker type in <code>WorkerTypeSpecificationInput</code>.</p>
    # @option params [Hash<String, Types::WorkerTypeSpecificationInput>] :worker_type_specifications
    #   <p>The key-value pairs that specify worker type to <code>WorkerTypeSpecificationInput</code>. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include <code>Driver</code> and <code>Executor</code> for Spark applications and <code>HiveDriver</code> and <code>TezTask</code> for Hive applications. You can either set image details in this parameter for each worker type, or in <code>imageConfiguration</code> for all worker types.</p>
    # @option params [Types::InteractiveConfiguration] :interactive_configuration
    #   <p>The interactive configuration object that contains new interactive use cases when the application is updated.</p>
    # @option params [String] :release_label
    #   <p>The Amazon EMR release label for the application. You can change the release label to use a different release of Amazon EMR.</p>
    # @option params [Array<Types::Configuration>] :runtime_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html">Configuration</a> specifications to use when updating an application. Each configuration consists of a classification and properties. This configuration is applied across all the job runs submitted under the application.</p>
    # @option params [Types::MonitoringConfiguration] :monitoring_configuration
    #   <p>The configuration setting for monitoring.</p>
    # @option params [Types::SchedulerConfiguration] :scheduler_configuration
    #   <p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>
    # @option params [Types::IdentityCenterConfigurationInput] :identity_center_configuration
    #   <p>Specifies the IAM Identity Center configuration used to enable or disable trusted identity propagation. When provided, this configuration determines how the application interacts with IAM Identity Center for user authentication and access control.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken", # required
    #     initial_capacity: {
    #       "WorkerTypeString" => {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #           disk_type: "DiskType"
    #         }
    #       }
    #     },
    #     maximum_capacity: {
    #       cpu: "CpuSize", # required
    #       memory: "MemorySize", # required
    #       disk: "DiskSize"
    #     },
    #     auto_start_configuration: {
    #       enabled: false
    #     },
    #     auto_stop_configuration: {
    #       enabled: false,
    #       idle_timeout_minutes: 1
    #     },
    #     network_configuration: {
    #       subnet_ids: ["SubnetString"],
    #       security_group_ids: ["SecurityGroupString"]
    #     },
    #     architecture: "Architecture",
    #     image_configuration: {
    #       image_uri: "ImageUri"
    #     },
    #     worker_type_specifications: {
    #       "WorkerTypeString" => {
    #         image_configuration: {
    #           image_uri: "ImageUri"
    #         }
    #       }
    #     },
    #     interactive_configuration: {
    #       studio_enabled: false,
    #       livy_endpoint_enabled: false
    #     },
    #     release_label: "ReleaseLabel",
    #     runtime_configuration: [
    #       {
    #         classification: "String1024", # required
    #         properties: {
    #           "ConfigurationPropertyKey" => "ConfigurationPropertyValue"
    #         },
    #         configurations: {
    #           # recursive ConfigurationList
    #         }
    #       }
    #     ],
    #     monitoring_configuration: {
    #       s3_monitoring_configuration: {
    #         log_uri: "UriString",
    #         encryption_key_arn: "EncryptionKeyArn"
    #       },
    #       managed_persistence_monitoring_configuration: {
    #         enabled: false,
    #         encryption_key_arn: "EncryptionKeyArn"
    #       },
    #       cloud_watch_logging_configuration: {
    #         enabled: false, # required
    #         log_group_name: "LogGroupName",
    #         log_stream_name_prefix: "LogStreamNamePrefix",
    #         encryption_key_arn: "EncryptionKeyArn",
    #         log_types: {
    #           "WorkerTypeString" => ["LogTypeString"]
    #         }
    #       },
    #       prometheus_monitoring_configuration: {
    #         remote_write_url: "PrometheusUrlString"
    #       }
    #     },
    #     scheduler_configuration: {
    #       queue_timeout_minutes: 1,
    #       max_concurrent_runs: 1
    #     },
    #     identity_center_configuration: {
    #       identity_center_instance_arn: "IdentityCenterInstanceArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: { # required
    #       application_id: "ApplicationId", # required
    #       name: "ApplicationName",
    #       arn: "ApplicationArn", # required
    #       release_label: "ReleaseLabel", # required
    #       type: "EngineType", # required
    #       state: "ApplicationState", # required
    #       state_details: "String256",
    #       initial_capacity: {
    #         "WorkerTypeString" => {
    #           worker_count: 1, # required
    #           worker_configuration: {
    #             cpu: "CpuSize", # required
    #             memory: "MemorySize", # required
    #             disk: "DiskSize",
    #             disk_type: "DiskType"
    #           }
    #         }
    #       },
    #       maximum_capacity: {
    #         cpu: "CpuSize", # required
    #         memory: "MemorySize", # required
    #         disk: "DiskSize"
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       auto_start_configuration: {
    #         enabled: false
    #       },
    #       auto_stop_configuration: {
    #         enabled: false,
    #         idle_timeout_minutes: 1
    #       },
    #       network_configuration: {
    #         subnet_ids: ["SubnetString"],
    #         security_group_ids: ["SecurityGroupString"]
    #       },
    #       architecture: "Architecture",
    #       image_configuration: {
    #         image_uri: "ImageUri", # required
    #         resolved_image_digest: "ImageDigest"
    #       },
    #       worker_type_specifications: {
    #         "WorkerTypeString" => {
    #           image_configuration: {
    #             image_uri: "ImageUri", # required
    #             resolved_image_digest: "ImageDigest"
    #           }
    #         }
    #       },
    #       runtime_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "ConfigurationPropertyKey" => "ConfigurationPropertyValue"
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           }
    #         }
    #       ],
    #       monitoring_configuration: {
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString",
    #           encryption_key_arn: "EncryptionKeyArn"
    #         },
    #         managed_persistence_monitoring_configuration: {
    #           enabled: false,
    #           encryption_key_arn: "EncryptionKeyArn"
    #         },
    #         cloud_watch_logging_configuration: {
    #           enabled: false, # required
    #           log_group_name: "LogGroupName",
    #           log_stream_name_prefix: "LogStreamNamePrefix",
    #           encryption_key_arn: "EncryptionKeyArn",
    #           log_types: {
    #             "WorkerTypeString" => ["LogTypeString"]
    #           }
    #         },
    #         prometheus_monitoring_configuration: {
    #           remote_write_url: "PrometheusUrlString"
    #         }
    #       },
    #       interactive_configuration: {
    #         studio_enabled: false,
    #         livy_endpoint_enabled: false
    #       },
    #       scheduler_configuration: {
    #         queue_timeout_minutes: 1,
    #         max_concurrent_runs: 1
    #       },
    #       identity_center_configuration: {
    #         identity_center_instance_arn: "IdentityCenterInstanceArn",
    #         identity_center_application_arn: "IdentityCenterApplicationArn"
    #       }
    #     }
    #   }
    # @return [Types::UpdateApplicationOutput]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
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
      context[:gem_name] = 'aws-sdk-emrserverless'
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

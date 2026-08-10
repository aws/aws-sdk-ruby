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
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mgn)

module Aws::Mgn
  # An API client for Aws::Mgn.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ApplicationMigrationService
    @identifier = :mgn

    add_plugin(::Aws::Mgn::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Mgn::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
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

    # <p>Archive application.</p>
    # @param [Hash, Types::ArchiveApplicationInput] params
    # @option params [String] :application_id
    #   <p>Application ID.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.archive_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationID",
    #     arn: "ARN",
    #     name: "ApplicationName",
    #     description: "ApplicationDescription",
    #     is_archived: false,
    #     application_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       health_status: "ApplicationHealthStatus",
    #       progress_status: "ApplicationProgressStatus",
    #       total_source_servers: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     wave_id: "WaveID"
    #   }
    # @return [Types::ArchiveApplicationOutput]
    def archive_application(params = {}, options = {})
      request = build_request(:archive_application, params)
      request.send_request(options)
    end

    # <p>Archive wave.</p>
    # @param [Hash, Types::ArchiveWaveInput] params
    # @option params [String] :wave_id
    #   <p>Wave ID.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wave_id: "WaveID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.archive_wave(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wave_id: "WaveID",
    #     arn: "ARN",
    #     name: "WaveName",
    #     description: "WaveDescription",
    #     is_archived: false,
    #     wave_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       replication_started_date_time: "ISO8601DatetimeString",
    #       health_status: "WaveHealthStatus",
    #       progress_status: "WaveProgressStatus",
    #       total_applications: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ArchiveWaveOutput]
    def archive_wave(params = {}, options = {})
      request = build_request(:archive_wave, params)
      request.send_request(options)
    end

    # <p>Associate applications to wave.</p>
    # @param [Hash, Types::AssociateApplicationsInput] params
    # @option params [String] :wave_id
    #   <p>Wave ID.</p>
    # @option params [Array<String>] :application_i_ds
    #   <p>Application IDs list.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wave_id: "WaveID", # required
    #     application_i_ds: ["ApplicationID"], # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.associate_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateApplicationsOutput]
    def associate_applications(params = {}, options = {})
      request = build_request(:associate_applications, params)
      request.send_request(options)
    end

    # <p>Associate source servers to application.</p>
    # @param [Hash, Types::AssociateSourceServersInput] params
    # @option params [String] :application_id
    #   <p>Application ID.</p>
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Source server IDs list.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationID", # required
    #     source_server_i_ds: ["SourceServerID"], # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.associate_source_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateSourceServersOutput]
    def associate_source_servers(params = {}, options = {})
      request = build_request(:associate_source_servers, params)
      request.send_request(options)
    end

    # <p>Allows the user to set the SourceServer.LifeCycle.state property for specific Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER. This command only works if the Source Server is already launchable (dataReplicationInfo.lagDuration is not null.)</p>
    # @param [Hash, Types::ChangeServerLifeCycleStateInput] params
    # @option params [String] :source_server_id
    #   <p>The request to change the source server migration lifecycle state by source server ID.</p>
    # @option params [Types::ChangeServerLifeCycleStateSourceServerLifecycle] :life_cycle
    #   <p>The request to change the source server migration lifecycle state.</p>
    # @option params [String] :account_id
    #   <p>The request to change the source server migration account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     life_cycle: { # required
    #       state: "ChangeServerLifeCycleStateSourceServerLifecycleState", # required
    #     },
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.change_server_life_cycle_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::ChangeServerLifeCycleStateOutput]
    def change_server_life_cycle_state(params = {}, options = {})
      request = build_request(:change_server_life_cycle_state, params)
      request.send_request(options)
    end

    # <p>Create application.</p>
    # @param [Hash, Types::CreateApplicationInput] params
    # @option params [String] :name
    #   <p>Application name.</p>
    # @option params [String] :description
    #   <p>Application description.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Application tags.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApplicationName", # required
    #     description: "ApplicationDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationID",
    #     arn: "ARN",
    #     name: "ApplicationName",
    #     description: "ApplicationDescription",
    #     is_archived: false,
    #     application_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       health_status: "ApplicationHealthStatus",
    #       progress_status: "ApplicationProgressStatus",
    #       total_source_servers: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     wave_id: "WaveID"
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Create Connector.</p>
    # @param [Hash, Types::CreateConnectorRequest] params
    # @option params [String] :name
    #   <p>Create Connector request name.</p>
    # @option params [String] :ssm_instance_id
    #   <p>Create Connector request SSM instance ID.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Create Connector request tags.</p>
    # @option params [Types::ConnectorSsmCommandConfig] :ssm_command_config
    #   <p>Create Connector request SSM command config.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectorName", # required
    #     ssm_instance_id: "SsmInstanceID", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     ssm_command_config: {
    #       s3_output_enabled: false, # required
    #       output_s3_bucket_name: "S3BucketName",
    #       cloud_watch_output_enabled: false, # required
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.create_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_id: "ConnectorID",
    #     name: "ConnectorName",
    #     ssm_instance_id: "SsmInstanceID",
    #     arn: "ARN",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     ssm_command_config: {
    #       s3_output_enabled: false, # required
    #       output_s3_bucket_name: "S3BucketName",
    #       cloud_watch_output_enabled: false, # required
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName"
    #     }
    #   }
    # @return [Types::CreateConnectorOutput]
    def create_connector(params = {}, options = {})
      request = build_request(:create_connector, params)
      request.send_request(options)
    end

    # <p>Creates a new Launch Configuration Template.</p>
    # @param [Hash, Types::CreateLaunchConfigurationTemplateInput] params
    # @option params [Types::PostLaunchActions] :post_launch_actions
    #   <p>Launch configuration template post launch actions.</p>
    # @option params [Boolean] :enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    # @option params [String] :map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Request to associate tags during creation of a Launch Configuration Template.</p>
    # @option params [String] :launch_disposition
    #   <p>Launch disposition.</p>
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    # @option params [Boolean] :copy_private_ip
    #   <p>Copy private Ip.</p>
    # @option params [Boolean] :associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Copy tags.</p>
    # @option params [Types::Licensing] :licensing
    #   <p>Configure Licensing.</p>
    # @option params [String] :boot_mode
    #   <p>Launch configuration template boot mode.</p>
    # @option params [Integer] :small_volume_max_size
    #   <p>Small volume maximum size.</p>
    # @option params [Types::LaunchTemplateDiskConf] :small_volume_conf
    #   <p>Small volume config.</p>
    # @option params [Types::LaunchTemplateDiskConf] :large_volume_conf
    #   <p>Large volume config.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     associate_public_ip_address: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     small_volume_max_size: 1,
    #     small_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     },
    #     large_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_launch_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     arn: "ARN",
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     ec2_launch_template_id: "EC2LaunchConfigurationTemplateID",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     associate_public_ip_address: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     small_volume_max_size: 1,
    #     small_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     },
    #     large_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     }
    #   }
    # @return [Types::CreateLaunchConfigurationTemplateOutput]
    def create_launch_configuration_template(params = {}, options = {})
      request = build_request(:create_launch_configuration_template, params)
      request.send_request(options)
    end

    # <p>Creates a new ReplicationConfigurationTemplate.</p>
    # @param [Hash, Types::CreateReplicationConfigurationTemplateInput] params
    # @option params [String] :staging_area_subnet_id
    #   <p>Request to configure the Staging Area subnet ID during Replication Settings template creation.</p>
    # @option params [Boolean] :associate_default_security_group
    #   <p>Request to associate the default Application Migration Service Security group with the Replication Settings template.</p>
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>Request to configure the Replication Server Security group ID during Replication Settings template creation.</p>
    # @option params [String] :replication_server_instance_type
    #   <p>Request to configure the Replication Server instance type during Replication Settings template creation.</p>
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Request to use Dedicated Replication Servers during Replication Settings template creation.</p>
    # @option params [String] :default_large_staging_disk_type
    #   <p>Request to configure the default large staging disk EBS volume type during Replication Settings template creation.</p>
    # @option params [String] :ebs_encryption
    #   <p>Request to configure EBS encryption during Replication Settings template creation.</p>
    # @option params [String] :ebs_encryption_key_arn
    #   <p>Request to configure an EBS encryption key during Replication Settings template creation.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Request to configure bandwidth throttling during Replication Settings template creation.</p>
    # @option params [String] :data_plane_routing
    #   <p>Request to configure  data plane routing during Replication Settings template creation.</p>
    # @option params [Boolean] :create_public_ip
    #   <p>Request to create Public IP during Replication Settings template creation.</p>
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>Request to configure Staging Area tags during Replication Settings template creation.</p>
    # @option params [Boolean] :use_fips_endpoint
    #   <p>Request to use Fips Endpoint during Replication Settings template creation.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Request to configure tags during Replication Settings template creation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     staging_area_subnet_id: "SubnetID", # required
    #     associate_default_security_group: false, # required
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"], # required
    #     replication_server_instance_type: "EC2InstanceType", # required
    #     use_dedicated_replication_server: false, # required
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType", # required
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption", # required
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1, # required
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting", # required
    #     create_public_ip: false, # required
    #     staging_area_tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_replication_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     arn: "ARN",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateReplicationConfigurationTemplateOutput]
    def create_replication_configuration_template(params = {}, options = {})
      request = build_request(:create_replication_configuration_template, params)
      request.send_request(options)
    end

    # <p>Create wave.</p>
    # @param [Hash, Types::CreateWaveInput] params
    # @option params [String] :name
    #   <p>Wave name.</p>
    # @option params [String] :description
    #   <p>Wave description.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Wave tags.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WaveName", # required
    #     description: "WaveDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.create_wave(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wave_id: "WaveID",
    #     arn: "ARN",
    #     name: "WaveName",
    #     description: "WaveDescription",
    #     is_archived: false,
    #     wave_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       replication_started_date_time: "ISO8601DatetimeString",
    #       health_status: "WaveHealthStatus",
    #       progress_status: "WaveProgressStatus",
    #       total_applications: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateWaveOutput]
    def create_wave(params = {}, options = {})
      request = build_request(:create_wave, params)
      request.send_request(options)
    end

    # <p>Delete application.</p>
    # @param [Hash, Types::DeleteApplicationInput] params
    # @option params [String] :application_id
    #   <p>Application ID.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationID", # required
    #     account_id: "AccountID"
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

    # <p>Delete Connector.</p>
    # @param [Hash, Types::DeleteConnectorRequest] params
    # @option params [String] :connector_id
    #   <p>Delete Connector request connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorID", # required
    #   }
    #   options = {}
    #   response = client.delete_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connector(params = {}, options = {})
      request = build_request(:delete_connector, params)
      request.send_request(options)
    end

    # <p>Deletes a single Job by ID.</p>
    # @param [Hash, Types::DeleteJobInput] params
    # @option params [String] :job_id
    #   <p>Request to delete Job from service by Job ID.</p>
    # @option params [String] :account_id
    #   <p>Request to delete Job from service by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.delete_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteJobOutput]
    def delete_job(params = {}, options = {})
      request = build_request(:delete_job, params)
      request.send_request(options)
    end

    # <p>Deletes a single Launch Configuration Template by ID.</p>
    # @param [Hash, Types::DeleteLaunchConfigurationTemplateInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>ID of resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #   }
    #   options = {}
    #   response = client.delete_launch_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLaunchConfigurationTemplateOutput]
    def delete_launch_configuration_template(params = {}, options = {})
      request = build_request(:delete_launch_configuration_template, params)
      request.send_request(options)
    end

    # <p>Deletes a single Replication Configuration Template by ID</p>
    # @param [Hash, Types::DeleteReplicationConfigurationTemplateInput] params
    # @option params [String] :replication_configuration_template_id
    #   <p>Request to delete Replication Configuration Template from service by Replication Configuration Template ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReplicationConfigurationTemplateOutput]
    def delete_replication_configuration_template(params = {}, options = {})
      request = build_request(:delete_replication_configuration_template, params)
      request.send_request(options)
    end

    # <p>Deletes a single source server by ID.</p>
    # @param [Hash, Types::DeleteSourceServerInput] params
    # @option params [String] :source_server_id
    #   <p>Request to delete Source Server from service by Server ID.</p>
    # @option params [String] :account_id
    #   <p>Request to delete Source Server from service by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.delete_source_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSourceServerOutput]
    def delete_source_server(params = {}, options = {})
      request = build_request(:delete_source_server, params)
      request.send_request(options)
    end

    # <p>Deletes a given vCenter client by ID.</p>
    # @param [Hash, Types::DeleteVcenterClientInput] params
    # @option params [String] :vcenter_client_id
    #   <p>ID of resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vcenter_client_id: "VcenterClientID", # required
    #   }
    #   options = {}
    #   response = client.delete_vcenter_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vcenter_client(params = {}, options = {})
      request = build_request(:delete_vcenter_client, params)
      request.send_request(options)
    end

    # <p>Delete wave.</p>
    # @param [Hash, Types::DeleteWaveInput] params
    # @option params [String] :wave_id
    #   <p>Wave ID.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wave_id: "WaveID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.delete_wave(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWaveOutput]
    def delete_wave(params = {}, options = {})
      request = build_request(:delete_wave, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed job log items with paging.</p>
    # @param [Hash, Types::DescribeJobLogItemsInput] params
    # @option params [String] :job_id
    #   <p>Request to describe Job log job ID.</p>
    # @option params [Integer] :max_results
    #   <p>Request to describe Job log item maximum results.</p>
    # @option params [String] :next_token
    #   <p>Request to describe Job log next token.</p>
    # @option params [String] :account_id
    #   <p>Request to describe Job log Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.describe_job_log_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         log_date_time: "ISO8601DatetimeString",
    #         event: "JobLogEvent",
    #         event_data: {
    #           source_server_id: "SourceServerID",
    #           conversion_server_id: "EC2InstanceID",
    #           target_instance_id: "EC2InstanceID",
    #           raw_error: "LargeBoundedString"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeJobLogItemsOutput]
    def describe_job_log_items(params = {}, options = {})
      request = build_request(:describe_job_log_items, params)
      request.send_request(options)
    end

    # <p>Returns a list of Jobs. Use the JobsID and fromDate and toData filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are normally created by the StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.</p>
    # @param [Hash, Types::DescribeJobsInput] params
    # @option params [Types::DescribeJobsRequestFilters] :filters
    #   <p>Request to describe Job log filters.</p>
    # @option params [Integer] :max_results
    #   <p>Request to describe job log items by max results.</p>
    # @option params [String] :next_token
    #   <p>Request to describe job log items by next token.</p>
    # @option params [String] :account_id
    #   <p>Request to describe job log items by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       job_i_ds: ["JobID"],
    #       from_date: "ISO8601DatetimeString",
    #       to_date: "ISO8601DatetimeString"
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.describe_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         job_id: "JobID", # required
    #         arn: "ARN",
    #         type: "JobType",
    #         initiated_by: "InitiatedBy",
    #         creation_date_time: "ISO8601DatetimeString",
    #         end_date_time: "ISO8601DatetimeString",
    #         status: "JobStatus",
    #         participating_servers: [
    #           {
    #             source_server_id: "SourceServerID", # required
    #             launch_status: "LaunchStatus",
    #             launched_ec2_instance_id: "EC2InstanceID",
    #             post_launch_actions_status: {
    #               ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #               post_launch_actions_launch_status_list: [
    #                 {
    #                   ssm_document: {
    #                     action_name: "BoundedString", # required
    #                     ssm_document_name: "SsmDocumentName", # required
    #                     timeout_seconds: 1,
    #                     must_succeed_for_cutover: false,
    #                     parameters: {
    #                       "SsmDocumentParameterName" => [
    #                         {
    #                           parameter_type: "SsmParameterStoreParameterType", # required
    #                           parameter_name: "SsmParameterStoreParameterName", # required
    #                         }
    #                       ]
    #                     },
    #                     external_parameters: {
    #                       "SsmDocumentParameterName" => {
    #                         # One of:
    #                         dynamic_path: "JmesPathString"
    #                       }
    #                     }
    #                   },
    #                   ssm_document_type: "SsmDocumentType",
    #                   execution_id: "BoundedString",
    #                   execution_status: "PostLaunchActionExecutionStatus",
    #                   failure_reason: "BoundedString"
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeJobsOutput]
    def describe_jobs(params = {}, options = {})
      request = build_request(:describe_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all Launch Configuration Templates, filtered by Launch Configuration Template IDs</p>
    # @param [Hash, Types::DescribeLaunchConfigurationTemplatesInput] params
    # @option params [Array<String>] :launch_configuration_template_i_ds
    #   <p>Request to filter Launch Configuration Templates list by Launch Configuration Template ID.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum results to be returned in DescribeLaunchConfigurationTemplates.</p>
    # @option params [String] :next_token
    #   <p>Next pagination token returned from DescribeLaunchConfigurationTemplates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_i_ds: ["LaunchConfigurationTemplateID"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_launch_configuration_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #         arn: "ARN",
    #         post_launch_actions: {
    #           deployment: "PostLaunchActionsDeploymentType",
    #           s3_log_bucket: "S3LogBucketName",
    #           s3_output_key_prefix: "BoundedString",
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           ssm_documents: [
    #             {
    #               action_name: "BoundedString", # required
    #               ssm_document_name: "SsmDocumentName", # required
    #               timeout_seconds: 1,
    #               must_succeed_for_cutover: false,
    #               parameters: {
    #                 "SsmDocumentParameterName" => [
    #                   {
    #                     parameter_type: "SsmParameterStoreParameterType", # required
    #                     parameter_name: "SsmParameterStoreParameterName", # required
    #                   }
    #                 ]
    #               },
    #               external_parameters: {
    #                 "SsmDocumentParameterName" => {
    #                   # One of:
    #                   dynamic_path: "JmesPathString"
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         enable_map_auto_tagging: false,
    #         map_auto_tagging_mpe_id: "TagValue",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         ec2_launch_template_id: "EC2LaunchConfigurationTemplateID",
    #         launch_disposition: "LaunchDisposition",
    #         target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #         copy_private_ip: false,
    #         associate_public_ip_address: false,
    #         copy_tags: false,
    #         licensing: {
    #           os_byol: false
    #         },
    #         boot_mode: "BootMode",
    #         small_volume_max_size: 1,
    #         small_volume_conf: {
    #           volume_type: "VolumeType",
    #           iops: 1,
    #           throughput: 1
    #         },
    #         large_volume_conf: {
    #           volume_type: "VolumeType",
    #           iops: 1,
    #           throughput: 1
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeLaunchConfigurationTemplatesOutput]
    def describe_launch_configuration_templates(params = {}, options = {})
      request = build_request(:describe_launch_configuration_templates, params)
      request.send_request(options)
    end

    # <p>Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.</p>
    # @param [Hash, Types::DescribeReplicationConfigurationTemplatesInput] params
    # @option params [Array<String>] :replication_configuration_template_i_ds
    #   <p>Request to describe Replication Configuration template by template IDs.</p>
    # @option params [Integer] :max_results
    #   <p>Request to describe Replication Configuration template by max results.</p>
    # @option params [String] :next_token
    #   <p>Request to describe Replication Configuration template by next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration_template_i_ds: ["ReplicationConfigurationTemplateID"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_replication_configuration_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #         arn: "ARN",
    #         staging_area_subnet_id: "SubnetID",
    #         associate_default_security_group: false,
    #         replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #         replication_server_instance_type: "EC2InstanceType",
    #         use_dedicated_replication_server: false,
    #         default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #         ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #         ebs_encryption_key_arn: "ARN",
    #         bandwidth_throttling: 1,
    #         data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #         create_public_ip: false,
    #         staging_area_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         use_fips_endpoint: false,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeReplicationConfigurationTemplatesOutput]
    def describe_replication_configuration_templates(params = {}, options = {})
      request = build_request(:describe_replication_configuration_templates, params)
      request.send_request(options)
    end

    # <p>Retrieves all SourceServers or multiple SourceServers by ID.</p>
    # @param [Hash, Types::DescribeSourceServersInput] params
    # @option params [Types::DescribeSourceServersRequestFilters] :filters
    #   <p>Request to filter Source Servers list.</p>
    # @option params [Integer] :max_results
    #   <p>Request to filter Source Servers list by maximum results.</p>
    # @option params [String] :next_token
    #   <p>Request to filter Source Servers list by next token.</p>
    # @option params [String] :account_id
    #   <p>Request to filter Source Servers list by Accoun ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       source_server_i_ds: ["SourceServerID"],
    #       is_archived: false,
    #       replication_types: ["ReplicationType"],
    #       life_cycle_states: ["LifeCycleState"],
    #       application_i_ds: ["ApplicationID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.describe_source_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         source_server_id: "SourceServerID",
    #         arn: "ARN",
    #         is_archived: false,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         launched_instance: {
    #           ec2_instance_id: "EC2InstanceID",
    #           job_id: "JobID",
    #           first_boot: "FirstBoot"
    #         },
    #         data_replication_info: {
    #           lag_duration: "ISO8601DurationString",
    #           eta_date_time: "ISO8601DatetimeString",
    #           replicated_disks: [
    #             {
    #               device_name: "BoundedString",
    #               total_storage_bytes: 1,
    #               replicated_storage_bytes: 1,
    #               rescanned_storage_bytes: 1,
    #               backlogged_storage_bytes: 1
    #             }
    #           ],
    #           data_replication_state: "DataReplicationState",
    #           data_replication_initiation: {
    #             start_date_time: "ISO8601DatetimeString",
    #             next_attempt_date_time: "ISO8601DatetimeString",
    #             steps: [
    #               {
    #                 name: "DataReplicationInitiationStepName",
    #                 status: "DataReplicationInitiationStepStatus"
    #               }
    #             ]
    #           },
    #           data_replication_error: {
    #             error: "DataReplicationErrorString",
    #             raw_error: "LargeBoundedString"
    #           },
    #           last_snapshot_date_time: "ISO8601DatetimeString"
    #         },
    #         life_cycle: {
    #           added_to_service_date_time: "ISO8601DatetimeString",
    #           first_byte_date_time: "ISO8601DatetimeString",
    #           elapsed_replication_duration: "ISO8601DurationString",
    #           last_seen_by_service_date_time: "ISO8601DatetimeString",
    #           last_test: {
    #             initiated: {
    #               api_call_date_time: "ISO8601DatetimeString",
    #               job_id: "JobID"
    #             },
    #             reverted: {
    #               api_call_date_time: "ISO8601DatetimeString"
    #             },
    #             finalized: {
    #               api_call_date_time: "ISO8601DatetimeString"
    #             }
    #           },
    #           last_cutover: {
    #             initiated: {
    #               api_call_date_time: "ISO8601DatetimeString",
    #               job_id: "JobID"
    #             },
    #             reverted: {
    #               api_call_date_time: "ISO8601DatetimeString"
    #             },
    #             finalized: {
    #               api_call_date_time: "ISO8601DatetimeString"
    #             }
    #           },
    #           state: "LifeCycleState"
    #         },
    #         source_properties: {
    #           last_updated_date_time: "ISO8601DatetimeString",
    #           recommended_instance_type: "EC2InstanceType",
    #           identification_hints: {
    #             fqdn: "BoundedString",
    #             hostname: "BoundedString",
    #             vm_ware_uuid: "BoundedString",
    #             aws_instance_id: "EC2InstanceID",
    #             vm_path: "BoundedString"
    #           },
    #           network_interfaces: [
    #             {
    #               mac_address: "BoundedString",
    #               ips: ["BoundedString"],
    #               is_primary: false
    #             }
    #           ],
    #           disks: [
    #             {
    #               device_name: "BoundedString",
    #               bytes: 1
    #             }
    #           ],
    #           cpus: [
    #             {
    #               cores: 1,
    #               model_name: "BoundedString"
    #             }
    #           ],
    #           ram_bytes: 1,
    #           os: {
    #             full_string: "BoundedString"
    #           }
    #         },
    #         replication_type: "ReplicationType",
    #         vcenter_client_id: "VcenterClientID",
    #         application_id: "ApplicationID",
    #         user_provided_id: "BoundedString",
    #         fqdn_for_action_framework: "BoundedString",
    #         connector_action: {
    #           credentials_secret_arn: "SecretArn",
    #           connector_arn: "ConnectorArn"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeSourceServersOutput]
    def describe_source_servers(params = {}, options = {})
      request = build_request(:describe_source_servers, params)
      request.send_request(options)
    end

    # <p>Returns a list of the installed vCenter clients.</p>
    # @param [Hash, Types::DescribeVcenterClientsInput] params
    # @option params [Integer] :max_results
    #   <p>Maximum results to be returned in DescribeVcenterClients.</p>
    # @option params [String] :next_token
    #   <p>Next pagination token to be provided for DescribeVcenterClients.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.describe_vcenter_clients(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         vcenter_client_id: "VcenterClientID",
    #         arn: "ARN",
    #         hostname: "BoundedString",
    #         vcenter_uuid: "BoundedString",
    #         datacenter_name: "BoundedString",
    #         last_seen_datetime: "ISO8601DatetimeString",
    #         source_server_tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::DescribeVcenterClientsOutput]
    def describe_vcenter_clients(params = {}, options = {})
      request = build_request(:describe_vcenter_clients, params)
      request.send_request(options)
    end

    # <p>Disassociate applications from wave.</p>
    # @param [Hash, Types::DisassociateApplicationsInput] params
    # @option params [String] :wave_id
    #   <p>Wave ID.</p>
    # @option params [Array<String>] :application_i_ds
    #   <p>Application IDs list.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wave_id: "WaveID", # required
    #     application_i_ds: ["ApplicationID"], # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.disassociate_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateApplicationsOutput]
    def disassociate_applications(params = {}, options = {})
      request = build_request(:disassociate_applications, params)
      request.send_request(options)
    end

    # <p>Disassociate source servers from application.</p>
    # @param [Hash, Types::DisassociateSourceServersInput] params
    # @option params [String] :application_id
    #   <p>Application ID.</p>
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Source server IDs list.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationID", # required
    #     source_server_i_ds: ["SourceServerID"], # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.disassociate_source_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateSourceServersOutput]
    def disassociate_source_servers(params = {}, options = {})
      request = build_request(:disassociate_source_servers, params)
      request.send_request(options)
    end

    # <p>Disconnects specific Source Servers from Application Migration Service. Data replication is stopped immediately. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. If the agent on the source server has not been prevented from communicating with the Application Migration Service service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    # @param [Hash, Types::DisconnectFromServiceInput] params
    # @option params [String] :source_server_id
    #   <p>Request to disconnect Source Server from service by Server ID.</p>
    # @option params [String] :account_id
    #   <p>Request to disconnect Source Server from service by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.disconnect_from_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::DisconnectFromServiceOutput]
    def disconnect_from_service(params = {}, options = {})
      request = build_request(:disconnect_from_service, params)
      request.send_request(options)
    end

    # <p>Finalizes the cutover immediately for specific Source Servers. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. The AWS Replication Agent will receive a command to uninstall itself (within 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be changed to DISCONNECTED; The SourceServer.lifeCycle.state will be changed to CUTOVER; The totalStorageBytes property fo each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    # @param [Hash, Types::FinalizeCutoverInput] params
    # @option params [String] :source_server_id
    #   <p>Request to finalize Cutover by Source Server ID.</p>
    # @option params [String] :account_id
    #   <p>Request to finalize Cutover by Source Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.finalize_cutover(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::FinalizeCutoverOutput]
    def finalize_cutover(params = {}, options = {})
      request = build_request(:finalize_cutover, params)
      request.send_request(options)
    end

    # <p>Lists all LaunchConfigurations available, filtered by Source Server IDs.</p>
    # @param [Hash, Types::GetLaunchConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>Request to get Launch Configuration information by Source Server ID.</p>
    # @option params [String] :account_id
    #   <p>Request to get Launch Configuration information by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.get_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     ec2_launch_template_id: "BoundedString",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue"
    #   }
    # @return [Types::GetLaunchConfigurationOutput]
    def get_launch_configuration(params = {}, options = {})
      request = build_request(:get_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Lists all ReplicationConfigurations, filtered by Source Server ID.</p>
    # @param [Hash, Types::GetReplicationConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>Request to get Replication Configuration by Source Server ID.</p>
    # @option params [String] :account_id
    #   <p>Request to get Replication Configuration by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.get_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         is_boot_disk: false,
    #         staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType",
    #         iops: 1,
    #         throughput: 1
    #       }
    #     ],
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false
    #   }
    # @return [Types::GetReplicationConfigurationOutput]
    def get_replication_configuration(params = {}, options = {})
      request = build_request(:get_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Initialize Application Migration Service.</p>
    # @param [Hash, Types::InitializeServiceInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.initialize_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::InitializeServiceOutput]
    def initialize_service(params = {}, options = {})
      request = build_request(:initialize_service, params)
      request.send_request(options)
    end

    # <p>Retrieves all applications or multiple applications by ID.</p>
    # @param [Hash, Types::ListApplicationsInput] params
    # @option params [Types::ListApplicationsRequestFilters] :filters
    #   <p>Applications list filters.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum results to return when listing applications.</p>
    # @option params [String] :next_token
    #   <p>Request next token.</p>
    # @option params [String] :account_id
    #   <p>Applications list Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       application_i_ds: ["ApplicationID"],
    #       is_archived: false,
    #       wave_i_ds: ["WaveID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "ApplicationID",
    #         arn: "ARN",
    #         name: "ApplicationName",
    #         description: "ApplicationDescription",
    #         is_archived: false,
    #         application_aggregated_status: {
    #           last_update_date_time: "ISO8601DatetimeString",
    #           health_status: "ApplicationHealthStatus",
    #           progress_status: "ApplicationProgressStatus",
    #           total_source_servers: 1
    #         },
    #         creation_date_time: "ISO8601DatetimeString",
    #         last_modified_date_time: "ISO8601DatetimeString",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         wave_id: "WaveID"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListApplicationsOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>List Connectors.</p>
    # @param [Hash, Types::ListConnectorsRequest] params
    # @option params [Types::ListConnectorsRequestFilters] :filters
    #   <p>List Connectors Request filters.</p>
    # @option params [Integer] :max_results
    #   <p>List Connectors Request max results.</p>
    # @option params [String] :next_token
    #   <p>List Connectors Request next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       connector_i_ds: ["ConnectorID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         connector_id: "ConnectorID",
    #         name: "ConnectorName",
    #         ssm_instance_id: "SsmInstanceID",
    #         arn: "ARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         ssm_command_config: {
    #           s3_output_enabled: false, # required
    #           output_s3_bucket_name: "S3BucketName",
    #           cloud_watch_output_enabled: false, # required
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListConnectorsResponse]
    def list_connectors(params = {}, options = {})
      request = build_request(:list_connectors, params)
      request.send_request(options)
    end

    # <p>List export errors.</p>
    # @param [Hash, Types::ListExportErrorsInput] params
    # @option params [String] :export_id
    #   <p>List export errors request export id.</p>
    # @option params [Integer] :max_results
    #   <p>List export errors request max results.</p>
    # @option params [String] :next_token
    #   <p>List export errors request next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_id: "ExportID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_export_errors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         error_date_time: "ISO8601DatetimeString",
    #         error_data: {
    #           raw_error: "LargeBoundedString"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListExportErrorsOutput]
    def list_export_errors(params = {}, options = {})
      request = build_request(:list_export_errors, params)
      request.send_request(options)
    end

    # <p>List exports.</p>
    # @param [Hash, Types::ListExportsInput] params
    # @option params [Types::ListExportsRequestFilters] :filters
    #   <p>List exports request filters.</p>
    # @option params [Integer] :max_results
    #   <p>List export request max results.</p>
    # @option params [String] :next_token
    #   <p>List export request next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       export_i_ds: ["ExportID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         export_id: "ExportID",
    #         s3_bucket: "S3BucketName",
    #         s3_key: "S3Key",
    #         s3_bucket_owner: "AccountID",
    #         creation_date_time: "ISO8601DatetimeString",
    #         end_date_time: "ISO8601DatetimeString",
    #         status: "ExportStatus",
    #         progress_percentage: 1.0,
    #         summary: {
    #           servers_count: 1,
    #           applications_count: 1,
    #           waves_count: 1
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListExportsOutput]
    def list_exports(params = {}, options = {})
      request = build_request(:list_exports, params)
      request.send_request(options)
    end

    # <p>List import errors.</p>
    # @param [Hash, Types::ListImportErrorsInput] params
    # @option params [String] :import_id
    #   <p>List import errors request import id.</p>
    # @option params [Integer] :max_results
    #   <p>List import errors request max results.</p>
    # @option params [String] :next_token
    #   <p>List import errors request next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_id: "ImportID", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_import_errors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         error_date_time: "ISO8601DatetimeString",
    #         error_type: "ImportErrorType",
    #         error_data: {
    #           source_server_id: "SourceServerID",
    #           application_id: "ApplicationID",
    #           wave_id: "WaveID",
    #           ec2_launch_template_id: "BoundedString",
    #           row_number: 1,
    #           raw_error: "LargeBoundedString",
    #           account_id: "AccountID"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImportErrorsOutput]
    def list_import_errors(params = {}, options = {})
      request = build_request(:list_import_errors, params)
      request.send_request(options)
    end

    # <p>List imports.</p>
    # @param [Hash, Types::ListImportsInput] params
    # @option params [Types::ListImportsRequestFilters] :filters
    #   <p>List imports request filters.</p>
    # @option params [Integer] :max_results
    #   <p>List imports request max results.</p>
    # @option params [String] :next_token
    #   <p>List imports request next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       import_i_ds: ["ImportID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_imports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         import_id: "ImportID",
    #         s3_bucket_source: {
    #           s3_bucket: "S3BucketName", # required
    #           s3_key: "S3Key", # required
    #           s3_bucket_owner: "AccountID"
    #         },
    #         creation_date_time: "ISO8601DatetimeString",
    #         end_date_time: "ISO8601DatetimeString",
    #         status: "ImportStatus",
    #         progress_percentage: 1.0,
    #         summary: {
    #           waves: {
    #             created_count: 1,
    #             modified_count: 1
    #           },
    #           applications: {
    #             created_count: 1,
    #             modified_count: 1
    #           },
    #           servers: {
    #             created_count: 1,
    #             modified_count: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListImportsOutput]
    def list_imports(params = {}, options = {})
      request = build_request(:list_imports, params)
      request.send_request(options)
    end

    # <p>List Managed Accounts.</p>
    # @param [Hash, Types::ListManagedAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p>List managed accounts request max results.</p>
    # @option params [String] :next_token
    #   <p>List managed accounts request next token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_managed_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         account_id: "AccountID"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListManagedAccountsResponse]
    def list_managed_accounts(params = {}, options = {})
      request = build_request(:list_managed_accounts, params)
      request.send_request(options)
    end

    # <p>List source server post migration custom actions.</p>
    # @param [Hash, Types::ListSourceServerActionsInput] params
    # @option params [String] :source_server_id
    #   <p>Source server ID.</p>
    # @option params [Types::SourceServerActionsRequestFilters] :filters
    #   <p>Filters to apply when listing source server post migration custom actions.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum amount of items to return when listing source server post migration custom actions.</p>
    # @option params [String] :next_token
    #   <p>Next token to use when listing source server post migration custom actions.</p>
    # @option params [String] :account_id
    #   <p>Account ID to return when listing source server post migration custom actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     filters: {
    #       action_i_ds: ["ActionID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.list_source_server_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         action_id: "ActionID",
    #         action_name: "ActionName",
    #         document_identifier: "BoundedString",
    #         order: 1,
    #         document_version: "DocumentVersion",
    #         active: false,
    #         timeout_seconds: 1,
    #         must_succeed_for_cutover: false,
    #         parameters: {
    #           "SsmDocumentParameterName" => [
    #             {
    #               parameter_type: "SsmParameterStoreParameterType", # required
    #               parameter_name: "SsmParameterStoreParameterName", # required
    #             }
    #           ]
    #         },
    #         external_parameters: {
    #           "SsmDocumentParameterName" => {
    #             # One of:
    #             dynamic_path: "JmesPathString"
    #           }
    #         },
    #         description: "ActionDescription",
    #         category: "ActionCategory"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSourceServerActionsOutput]
    def list_source_server_actions(params = {}, options = {})
      request = build_request(:list_source_server_actions, params)
      request.send_request(options)
    end

    # <p>List all tags for your Application Migration Service resources.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>List tags for resource request by ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
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

    # <p>List template post migration custom actions.</p>
    # @param [Hash, Types::ListTemplateActionsInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>Launch configuration template ID.</p>
    # @option params [Types::TemplateActionsRequestFilters] :filters
    #   <p>Filters to apply when listing template post migration custom actions.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum amount of items to return when listing template post migration custom actions.</p>
    # @option params [String] :next_token
    #   <p>Next token to use when listing template post migration custom actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     filters: {
    #       action_i_ds: ["ActionID"]
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_template_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         action_id: "ActionID",
    #         action_name: "BoundedString",
    #         document_identifier: "BoundedString",
    #         order: 1,
    #         document_version: "DocumentVersion",
    #         active: false,
    #         timeout_seconds: 1,
    #         must_succeed_for_cutover: false,
    #         parameters: {
    #           "SsmDocumentParameterName" => [
    #             {
    #               parameter_type: "SsmParameterStoreParameterType", # required
    #               parameter_name: "SsmParameterStoreParameterName", # required
    #             }
    #           ]
    #         },
    #         operating_system: "OperatingSystemString",
    #         external_parameters: {
    #           "SsmDocumentParameterName" => {
    #             # One of:
    #             dynamic_path: "JmesPathString"
    #           }
    #         },
    #         description: "ActionDescription",
    #         category: "ActionCategory"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTemplateActionsOutput]
    def list_template_actions(params = {}, options = {})
      request = build_request(:list_template_actions, params)
      request.send_request(options)
    end

    # <p>Retrieves all waves or multiple waves by ID.</p>
    # @param [Hash, Types::ListWavesInput] params
    # @option params [Types::ListWavesRequestFilters] :filters
    #   <p>Waves list filters.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum results to return when listing waves.</p>
    # @option params [String] :next_token
    #   <p>Request next token.</p>
    # @option params [String] :account_id
    #   <p>Request account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       wave_i_ds: ["WaveID"],
    #       is_archived: false
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.list_waves(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         wave_id: "WaveID",
    #         arn: "ARN",
    #         name: "WaveName",
    #         description: "WaveDescription",
    #         is_archived: false,
    #         wave_aggregated_status: {
    #           last_update_date_time: "ISO8601DatetimeString",
    #           replication_started_date_time: "ISO8601DatetimeString",
    #           health_status: "WaveHealthStatus",
    #           progress_status: "WaveProgressStatus",
    #           total_applications: 1
    #         },
    #         creation_date_time: "ISO8601DatetimeString",
    #         last_modified_date_time: "ISO8601DatetimeString",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWavesOutput]
    def list_waves(params = {}, options = {})
      request = build_request(:list_waves, params)
      request.send_request(options)
    end

    # <p>Archives specific Source Servers by setting the SourceServer.isArchived property to true for specified SourceServers by ID. This command only works for SourceServers with a lifecycle. state which equals DISCONNECTED or CUTOVER.</p>
    # @param [Hash, Types::MarkAsArchivedInput] params
    # @option params [String] :source_server_id
    #   <p>Mark as archived by Source Server ID.</p>
    # @option params [String] :account_id
    #   <p>Mark as archived by Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.mark_as_archived(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::MarkAsArchivedOutput]
    def mark_as_archived(params = {}, options = {})
      request = build_request(:mark_as_archived, params)
      request.send_request(options)
    end

    # <p>Pause Replication.</p>
    # @param [Hash, Types::PauseReplicationRequest] params
    # @option params [String] :source_server_id
    #   <p>Pause Replication Request source server ID.</p>
    # @option params [String] :account_id
    #   <p>Pause Replication Request account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.pause_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::PauseReplicationOutput]
    def pause_replication(params = {}, options = {})
      request = build_request(:pause_replication, params)
      request.send_request(options)
    end

    # <p>Put source server post migration custom action.</p>
    # @param [Hash, Types::PutSourceServerActionInput] params
    # @option params [String] :source_server_id
    #   <p>Source server ID.</p>
    # @option params [String] :action_name
    #   <p>Source server post migration custom action name.</p>
    # @option params [String] :document_identifier
    #   <p>Source server post migration custom action document identifier.</p>
    # @option params [Integer] :order
    #   <p>Source server post migration custom action order.</p>
    # @option params [String] :action_id
    #   <p>Source server post migration custom action ID.</p>
    # @option params [String] :document_version
    #   <p>Source server post migration custom action document version.</p>
    # @option params [Boolean] :active
    #   <p>Source server post migration custom action active status.</p>
    # @option params [Integer] :timeout_seconds
    #   <p>Source server post migration custom action timeout in seconds.</p>
    # @option params [Boolean] :must_succeed_for_cutover
    #   <p>Source server post migration custom action must succeed for cutover.</p>
    # @option params [Hash<String, Array<Types::SsmParameterStoreParameter>>] :parameters
    #   <p>Source server post migration custom action parameters.</p>
    # @option params [Hash<String, Types::SsmExternalParameter>] :external_parameters
    #   <p>Source server post migration custom action external parameters.</p>
    # @option params [String] :description
    #   <p>Source server post migration custom action description.</p>
    # @option params [String] :category
    #   <p>Source server post migration custom action category.</p>
    # @option params [String] :account_id
    #   <p>Source server post migration custom account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     action_name: "ActionName", # required
    #     document_identifier: "BoundedString", # required
    #     order: 1, # required
    #     action_id: "ActionID", # required
    #     document_version: "DocumentVersion",
    #     active: false,
    #     timeout_seconds: 1,
    #     must_succeed_for_cutover: false,
    #     parameters: {
    #       "SsmDocumentParameterName" => [
    #         {
    #           parameter_type: "SsmParameterStoreParameterType", # required
    #           parameter_name: "SsmParameterStoreParameterName", # required
    #         }
    #       ]
    #     },
    #     external_parameters: {
    #       "SsmDocumentParameterName" => {
    #         # One of:
    #         dynamic_path: "JmesPathString"
    #       }
    #     },
    #     description: "ActionDescription",
    #     category: "ActionCategory",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.put_source_server_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_id: "ActionID",
    #     action_name: "ActionName",
    #     document_identifier: "BoundedString",
    #     order: 1,
    #     document_version: "DocumentVersion",
    #     active: false,
    #     timeout_seconds: 1,
    #     must_succeed_for_cutover: false,
    #     parameters: {
    #       "SsmDocumentParameterName" => [
    #         {
    #           parameter_type: "SsmParameterStoreParameterType", # required
    #           parameter_name: "SsmParameterStoreParameterName", # required
    #         }
    #       ]
    #     },
    #     external_parameters: {
    #       "SsmDocumentParameterName" => {
    #         # One of:
    #         dynamic_path: "JmesPathString"
    #       }
    #     },
    #     description: "ActionDescription",
    #     category: "ActionCategory"
    #   }
    # @return [Types::PutSourceServerActionOutput]
    def put_source_server_action(params = {}, options = {})
      request = build_request(:put_source_server_action, params)
      request.send_request(options)
    end

    # <p>Put template post migration custom action.</p>
    # @param [Hash, Types::PutTemplateActionInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>Launch configuration template ID.</p>
    # @option params [String] :action_name
    #   <p>Template post migration custom action name.</p>
    # @option params [String] :document_identifier
    #   <p>Template post migration custom action document identifier.</p>
    # @option params [Integer] :order
    #   <p>Template post migration custom action order.</p>
    # @option params [String] :action_id
    #   <p>Template post migration custom action ID.</p>
    # @option params [String] :document_version
    #   <p>Template post migration custom action document version.</p>
    # @option params [Boolean] :active
    #   <p>Template post migration custom action active status.</p>
    # @option params [Integer] :timeout_seconds
    #   <p>Template post migration custom action timeout in seconds.</p>
    # @option params [Boolean] :must_succeed_for_cutover
    #   <p>Template post migration custom action must succeed for cutover.</p>
    # @option params [Hash<String, Array<Types::SsmParameterStoreParameter>>] :parameters
    #   <p>Template post migration custom action parameters.</p>
    # @option params [String] :operating_system
    #   <p>Operating system eligible for this template post migration custom action.</p>
    # @option params [Hash<String, Types::SsmExternalParameter>] :external_parameters
    #   <p>Template post migration custom action external parameters.</p>
    # @option params [String] :description
    #   <p>Template post migration custom action description.</p>
    # @option params [String] :category
    #   <p>Template post migration custom action category.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     action_name: "BoundedString", # required
    #     document_identifier: "BoundedString", # required
    #     order: 1, # required
    #     action_id: "ActionID", # required
    #     document_version: "DocumentVersion",
    #     active: false,
    #     timeout_seconds: 1,
    #     must_succeed_for_cutover: false,
    #     parameters: {
    #       "SsmDocumentParameterName" => [
    #         {
    #           parameter_type: "SsmParameterStoreParameterType", # required
    #           parameter_name: "SsmParameterStoreParameterName", # required
    #         }
    #       ]
    #     },
    #     operating_system: "OperatingSystemString",
    #     external_parameters: {
    #       "SsmDocumentParameterName" => {
    #         # One of:
    #         dynamic_path: "JmesPathString"
    #       }
    #     },
    #     description: "ActionDescription",
    #     category: "ActionCategory"
    #   }
    #   options = {}
    #   response = client.put_template_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_id: "ActionID",
    #     action_name: "BoundedString",
    #     document_identifier: "BoundedString",
    #     order: 1,
    #     document_version: "DocumentVersion",
    #     active: false,
    #     timeout_seconds: 1,
    #     must_succeed_for_cutover: false,
    #     parameters: {
    #       "SsmDocumentParameterName" => [
    #         {
    #           parameter_type: "SsmParameterStoreParameterType", # required
    #           parameter_name: "SsmParameterStoreParameterName", # required
    #         }
    #       ]
    #     },
    #     operating_system: "OperatingSystemString",
    #     external_parameters: {
    #       "SsmDocumentParameterName" => {
    #         # One of:
    #         dynamic_path: "JmesPathString"
    #       }
    #     },
    #     description: "ActionDescription",
    #     category: "ActionCategory"
    #   }
    # @return [Types::PutTemplateActionOutput]
    def put_template_action(params = {}, options = {})
      request = build_request(:put_template_action, params)
      request.send_request(options)
    end

    # <p>Remove source server post migration custom action.</p>
    # @param [Hash, Types::RemoveSourceServerActionInput] params
    # @option params [String] :source_server_id
    #   <p>Source server ID of the post migration custom action to remove.</p>
    # @option params [String] :action_id
    #   <p>Source server post migration custom action ID to remove.</p>
    # @option params [String] :account_id
    #   <p>Source server post migration account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     action_id: "ActionID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.remove_source_server_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveSourceServerActionOutput]
    def remove_source_server_action(params = {}, options = {})
      request = build_request(:remove_source_server_action, params)
      request.send_request(options)
    end

    # <p>Remove template post migration custom action.</p>
    # @param [Hash, Types::RemoveTemplateActionInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>Launch configuration template ID of the post migration custom action to remove.</p>
    # @option params [String] :action_id
    #   <p>Template post migration custom action ID to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     action_id: "ActionID", # required
    #   }
    #   options = {}
    #   response = client.remove_template_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTemplateActionOutput]
    def remove_template_action(params = {}, options = {})
      request = build_request(:remove_template_action, params)
      request.send_request(options)
    end

    # <p>Resume Replication.</p>
    # @param [Hash, Types::ResumeReplicationRequest] params
    # @option params [String] :source_server_id
    #   <p>Resume Replication Request source server ID.</p>
    # @option params [String] :account_id
    #   <p>Resume Replication Request account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.resume_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::ResumeReplicationOutput]
    def resume_replication(params = {}, options = {})
      request = build_request(:resume_replication, params)
      request.send_request(options)
    end

    # <p>Causes the data replication initiation sequence to begin immediately upon next Handshake for specified SourceServer IDs, regardless of when the previous initiation started. This command will not work if the SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.</p>
    # @param [Hash, Types::RetryDataReplicationInput] params
    # @option params [String] :source_server_id
    #   <p>Retry data replication for Source Server ID.</p>
    # @option params [String] :account_id
    #   <p>Retry data replication for Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.retry_data_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::RetryDataReplicationOutput]
    def retry_data_replication(params = {}, options = {})
      request = build_request(:retry_data_replication, params)
      request.send_request(options)
    end

    # <p>Launches a Cutover Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartCutover and changes the SourceServer.lifeCycle.state property to CUTTING_OVER.</p>
    # @param [Hash, Types::StartCutoverInput] params
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Start Cutover by Source Server IDs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Start Cutover by Tags.</p>
    # @option params [String] :account_id
    #   <p>Start Cutover by Account IDs</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_i_ds: ["SourceServerID"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.start_cutover(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID", # required
    #           launch_status: "LaunchStatus",
    #           launched_ec2_instance_id: "EC2InstanceID",
    #           post_launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             post_launch_actions_launch_status_list: [
    #               {
    #                 ssm_document: {
    #                   action_name: "BoundedString", # required
    #                   ssm_document_name: "SsmDocumentName", # required
    #                   timeout_seconds: 1,
    #                   must_succeed_for_cutover: false,
    #                   parameters: {
    #                     "SsmDocumentParameterName" => [
    #                       {
    #                         parameter_type: "SsmParameterStoreParameterType", # required
    #                         parameter_name: "SsmParameterStoreParameterName", # required
    #                       }
    #                     ]
    #                   },
    #                   external_parameters: {
    #                     "SsmDocumentParameterName" => {
    #                       # One of:
    #                       dynamic_path: "JmesPathString"
    #                     }
    #                   }
    #                 },
    #                 ssm_document_type: "SsmDocumentType",
    #                 execution_id: "BoundedString",
    #                 execution_status: "PostLaunchActionExecutionStatus",
    #                 failure_reason: "BoundedString"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::StartCutoverOutput]
    def start_cutover(params = {}, options = {})
      request = build_request(:start_cutover, params)
      request.send_request(options)
    end

    # <p>Start export.</p>
    # @param [Hash, Types::StartExportInput] params
    # @option params [String] :s3_bucket
    #   <p>Start export request s3 bucket.</p>
    # @option params [String] :s3_key
    #   <p>Start export request s3key.</p>
    # @option params [String] :s3_bucket_owner
    #   <p>Start export request s3 bucket owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_bucket: "S3BucketName", # required
    #     s3_key: "S3Key", # required
    #     s3_bucket_owner: "AccountID"
    #   }
    #   options = {}
    #   response = client.start_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_task: {
    #       export_id: "ExportID",
    #       s3_bucket: "S3BucketName",
    #       s3_key: "S3Key",
    #       s3_bucket_owner: "AccountID",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "ExportStatus",
    #       progress_percentage: 1.0,
    #       summary: {
    #         servers_count: 1,
    #         applications_count: 1,
    #         waves_count: 1
    #       }
    #     }
    #   }
    # @return [Types::StartExportOutput]
    def start_export(params = {}, options = {})
      request = build_request(:start_export, params)
      request.send_request(options)
    end

    # <p>Start import.</p>
    # @param [Hash, Types::StartImportInput] params
    # @option params [String] :client_token
    #   <p>Start import request client token.</p>
    # @option params [Types::S3BucketSource] :s3_bucket_source
    #   <p>Start import request s3 bucket source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientIdempotencyToken",
    #     s3_bucket_source: { # required
    #       s3_bucket: "S3BucketName", # required
    #       s3_key: "S3Key", # required
    #       s3_bucket_owner: "AccountID"
    #     }
    #   }
    #   options = {}
    #   response = client.start_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_task: {
    #       import_id: "ImportID",
    #       s3_bucket_source: {
    #         s3_bucket: "S3BucketName", # required
    #         s3_key: "S3Key", # required
    #         s3_bucket_owner: "AccountID"
    #       },
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "ImportStatus",
    #       progress_percentage: 1.0,
    #       summary: {
    #         waves: {
    #           created_count: 1,
    #           modified_count: 1
    #         },
    #         applications: {
    #           created_count: 1,
    #           modified_count: 1
    #         },
    #         servers: {
    #           created_count: 1,
    #           modified_count: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StartImportOutput]
    def start_import(params = {}, options = {})
      request = build_request(:start_import, params)
      request.send_request(options)
    end

    # <p>Starts replication for SNAPSHOT_SHIPPING agents.</p>
    # @param [Hash, Types::StartReplicationInput] params
    # @option params [String] :source_server_id
    #   <p>ID of source server on which to start replication.</p>
    # @option params [String] :account_id
    #   <p>Account ID on which to start replication.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.start_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::StartReplicationOutput]
    def start_replication(params = {}, options = {})
      request = build_request(:start_replication, params)
      request.send_request(options)
    end

    # <p>Launches a Test Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartTest and changes the SourceServer.lifeCycle.state property to TESTING.</p>
    # @param [Hash, Types::StartTestInput] params
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Start Test for Source Server IDs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Start Test by Tags.</p>
    # @option params [String] :account_id
    #   <p>Start Test for Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_i_ds: ["SourceServerID"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.start_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID", # required
    #           launch_status: "LaunchStatus",
    #           launched_ec2_instance_id: "EC2InstanceID",
    #           post_launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             post_launch_actions_launch_status_list: [
    #               {
    #                 ssm_document: {
    #                   action_name: "BoundedString", # required
    #                   ssm_document_name: "SsmDocumentName", # required
    #                   timeout_seconds: 1,
    #                   must_succeed_for_cutover: false,
    #                   parameters: {
    #                     "SsmDocumentParameterName" => [
    #                       {
    #                         parameter_type: "SsmParameterStoreParameterType", # required
    #                         parameter_name: "SsmParameterStoreParameterName", # required
    #                       }
    #                     ]
    #                   },
    #                   external_parameters: {
    #                     "SsmDocumentParameterName" => {
    #                       # One of:
    #                       dynamic_path: "JmesPathString"
    #                     }
    #                   }
    #                 },
    #                 ssm_document_type: "SsmDocumentType",
    #                 execution_id: "BoundedString",
    #                 execution_status: "PostLaunchActionExecutionStatus",
    #                 failure_reason: "BoundedString"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::StartTestOutput]
    def start_test(params = {}, options = {})
      request = build_request(:start_test, params)
      request.send_request(options)
    end

    # <p>Stop Replication.</p>
    # @param [Hash, Types::StopReplicationRequest] params
    # @option params [String] :source_server_id
    #   <p>Stop Replication Request source server ID.</p>
    # @option params [String] :account_id
    #   <p>Stop Replication Request account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.stop_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::StopReplicationOutput]
    def stop_replication(params = {}, options = {})
      request = build_request(:stop_replication, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites only the specified tags for the specified Application Migration Service resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Tag resource by ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tag resource by Tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Starts a job that terminates specific launched EC2 Test and Cutover instances. This command will not work for any Source Server with a lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.</p>
    # @param [Hash, Types::TerminateTargetInstancesInput] params
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Terminate Target instance by Source Server IDs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Terminate Target instance by Tags.</p>
    # @option params [String] :account_id
    #   <p>Terminate Target instance by Account ID</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_i_ds: ["SourceServerID"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.terminate_target_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobID", # required
    #       arn: "ARN",
    #       type: "JobType",
    #       initiated_by: "InitiatedBy",
    #       creation_date_time: "ISO8601DatetimeString",
    #       end_date_time: "ISO8601DatetimeString",
    #       status: "JobStatus",
    #       participating_servers: [
    #         {
    #           source_server_id: "SourceServerID", # required
    #           launch_status: "LaunchStatus",
    #           launched_ec2_instance_id: "EC2InstanceID",
    #           post_launch_actions_status: {
    #             ssm_agent_discovery_datetime: "ISO8601DatetimeString",
    #             post_launch_actions_launch_status_list: [
    #               {
    #                 ssm_document: {
    #                   action_name: "BoundedString", # required
    #                   ssm_document_name: "SsmDocumentName", # required
    #                   timeout_seconds: 1,
    #                   must_succeed_for_cutover: false,
    #                   parameters: {
    #                     "SsmDocumentParameterName" => [
    #                       {
    #                         parameter_type: "SsmParameterStoreParameterType", # required
    #                         parameter_name: "SsmParameterStoreParameterName", # required
    #                       }
    #                     ]
    #                   },
    #                   external_parameters: {
    #                     "SsmDocumentParameterName" => {
    #                       # One of:
    #                       dynamic_path: "JmesPathString"
    #                     }
    #                   }
    #                 },
    #                 ssm_document_type: "SsmDocumentType",
    #                 execution_id: "BoundedString",
    #                 execution_status: "PostLaunchActionExecutionStatus",
    #                 failure_reason: "BoundedString"
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::TerminateTargetInstancesOutput]
    def terminate_target_instances(params = {}, options = {})
      request = build_request(:terminate_target_instances, params)
      request.send_request(options)
    end

    # <p>Unarchive application.</p>
    # @param [Hash, Types::UnarchiveApplicationInput] params
    # @option params [String] :application_id
    #   <p>Application ID.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.unarchive_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationID",
    #     arn: "ARN",
    #     name: "ApplicationName",
    #     description: "ApplicationDescription",
    #     is_archived: false,
    #     application_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       health_status: "ApplicationHealthStatus",
    #       progress_status: "ApplicationProgressStatus",
    #       total_source_servers: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     wave_id: "WaveID"
    #   }
    # @return [Types::UnarchiveApplicationOutput]
    def unarchive_application(params = {}, options = {})
      request = build_request(:unarchive_application, params)
      request.send_request(options)
    end

    # <p>Unarchive wave.</p>
    # @param [Hash, Types::UnarchiveWaveInput] params
    # @option params [String] :wave_id
    #   <p>Wave ID.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wave_id: "WaveID", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.unarchive_wave(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wave_id: "WaveID",
    #     arn: "ARN",
    #     name: "WaveName",
    #     description: "WaveDescription",
    #     is_archived: false,
    #     wave_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       replication_started_date_time: "ISO8601DatetimeString",
    #       health_status: "WaveHealthStatus",
    #       progress_status: "WaveProgressStatus",
    #       total_applications: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UnarchiveWaveOutput]
    def unarchive_wave(params = {}, options = {})
      request = build_request(:unarchive_wave, params)
      request.send_request(options)
    end

    # <p>Deletes the specified set of tags from the specified set of Application Migration Service resources.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Untag resource by ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Untag resource by Keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update application.</p>
    # @param [Hash, Types::UpdateApplicationInput] params
    # @option params [String] :application_id
    #   <p>Application ID.</p>
    # @option params [String] :name
    #   <p>Application name.</p>
    # @option params [String] :description
    #   <p>Application description.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationID", # required
    #     name: "ApplicationName",
    #     description: "ApplicationDescription",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "ApplicationID",
    #     arn: "ARN",
    #     name: "ApplicationName",
    #     description: "ApplicationDescription",
    #     is_archived: false,
    #     application_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       health_status: "ApplicationHealthStatus",
    #       progress_status: "ApplicationProgressStatus",
    #       total_source_servers: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     wave_id: "WaveID"
    #   }
    # @return [Types::UpdateApplicationOutput]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Update Connector.</p>
    # @param [Hash, Types::UpdateConnectorRequest] params
    # @option params [String] :connector_id
    #   <p>Update Connector request connector ID.</p>
    # @option params [String] :name
    #   <p>Update Connector request name.</p>
    # @option params [Types::ConnectorSsmCommandConfig] :ssm_command_config
    #   <p>Update Connector request SSM command config.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorID", # required
    #     name: "ConnectorName",
    #     ssm_command_config: {
    #       s3_output_enabled: false, # required
    #       output_s3_bucket_name: "S3BucketName",
    #       cloud_watch_output_enabled: false, # required
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName"
    #     }
    #   }
    #   options = {}
    #   response = client.update_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_id: "ConnectorID",
    #     name: "ConnectorName",
    #     ssm_instance_id: "SsmInstanceID",
    #     arn: "ARN",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     ssm_command_config: {
    #       s3_output_enabled: false, # required
    #       output_s3_bucket_name: "S3BucketName",
    #       cloud_watch_output_enabled: false, # required
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName"
    #     }
    #   }
    # @return [Types::UpdateConnectorOutput]
    def update_connector(params = {}, options = {})
      request = build_request(:update_connector, params)
      request.send_request(options)
    end

    # <p>Updates multiple LaunchConfigurations by Source Server ID.</p>
    #         <note>
    #             <p>bootMode valid values are <code>LEGACY_BIOS | UEFI</code>
    #             </p>
    #          </note>
    # @param [Hash, Types::UpdateLaunchConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>Update Launch configuration by Source Server ID request.</p>
    # @option params [String] :name
    #   <p>Update Launch configuration name request.</p>
    # @option params [String] :launch_disposition
    #   <p>Update Launch configuration launch disposition request.</p>
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Update Launch configuration Target instance right sizing request.</p>
    # @option params [Boolean] :copy_private_ip
    #   <p>Update Launch configuration copy Private IP request.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Update Launch configuration copy Tags request.</p>
    # @option params [Types::Licensing] :licensing
    #   <p>Update Launch configuration licensing request.</p>
    # @option params [String] :boot_mode
    #   <p>Update Launch configuration boot mode request.</p>
    # @option params [Types::PostLaunchActions] :post_launch_actions
    #   <p>Post Launch Actions to executed on the Test or Cutover instance.</p>
    # @option params [Boolean] :enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    # @option params [String] :map_auto_tagging_mpe_id
    #   <p>Launch configuration map auto tagging MPE ID.</p>
    # @option params [String] :account_id
    #   <p>Update Launch configuration Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     name: "SmallBoundedString",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.update_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     ec2_launch_template_id: "BoundedString",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue"
    #   }
    # @return [Types::UpdateLaunchConfigurationOutput]
    def update_launch_configuration(params = {}, options = {})
      request = build_request(:update_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing Launch Configuration Template by ID.</p>
    # @param [Hash, Types::UpdateLaunchConfigurationTemplateInput] params
    # @option params [String] :launch_configuration_template_id
    #   <p>Launch Configuration Template ID.</p>
    # @option params [Types::PostLaunchActions] :post_launch_actions
    #   <p>Post Launch Action to execute on the Test or Cutover instance.</p>
    # @option params [Boolean] :enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    # @option params [String] :map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    # @option params [String] :launch_disposition
    #   <p>Launch disposition.</p>
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    # @option params [Boolean] :copy_private_ip
    #   <p>Copy private Ip.</p>
    # @option params [Boolean] :associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    # @option params [Boolean] :copy_tags
    #   <p>Copy tags.</p>
    # @option params [Types::Licensing] :licensing
    #   <p>Configure Licensing.</p>
    # @option params [String] :boot_mode
    #   <p>Launch configuration template boot mode.</p>
    # @option params [Integer] :small_volume_max_size
    #   <p>Small volume maximum size.</p>
    # @option params [Types::LaunchTemplateDiskConf] :small_volume_conf
    #   <p>Small volume config.</p>
    # @option params [Types::LaunchTemplateDiskConf] :large_volume_conf
    #   <p>Large volume config.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     associate_public_ip_address: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     small_volume_max_size: 1,
    #     small_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     },
    #     large_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_launch_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch_configuration_template_id: "LaunchConfigurationTemplateID", # required
    #     arn: "ARN",
    #     post_launch_actions: {
    #       deployment: "PostLaunchActionsDeploymentType",
    #       s3_log_bucket: "S3LogBucketName",
    #       s3_output_key_prefix: "BoundedString",
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       ssm_documents: [
    #         {
    #           action_name: "BoundedString", # required
    #           ssm_document_name: "SsmDocumentName", # required
    #           timeout_seconds: 1,
    #           must_succeed_for_cutover: false,
    #           parameters: {
    #             "SsmDocumentParameterName" => [
    #               {
    #                 parameter_type: "SsmParameterStoreParameterType", # required
    #                 parameter_name: "SsmParameterStoreParameterName", # required
    #               }
    #             ]
    #           },
    #           external_parameters: {
    #             "SsmDocumentParameterName" => {
    #               # One of:
    #               dynamic_path: "JmesPathString"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     enable_map_auto_tagging: false,
    #     map_auto_tagging_mpe_id: "TagValue",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     ec2_launch_template_id: "EC2LaunchConfigurationTemplateID",
    #     launch_disposition: "LaunchDisposition",
    #     target_instance_type_right_sizing_method: "TargetInstanceTypeRightSizingMethod",
    #     copy_private_ip: false,
    #     associate_public_ip_address: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: "BootMode",
    #     small_volume_max_size: 1,
    #     small_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     },
    #     large_volume_conf: {
    #       volume_type: "VolumeType",
    #       iops: 1,
    #       throughput: 1
    #     }
    #   }
    # @return [Types::UpdateLaunchConfigurationTemplateOutput]
    def update_launch_configuration_template(params = {}, options = {})
      request = build_request(:update_launch_configuration_template, params)
      request.send_request(options)
    end

    # <p>Allows you to update multiple ReplicationConfigurations by Source Server ID.</p>
    # @param [Hash, Types::UpdateReplicationConfigurationInput] params
    # @option params [String] :source_server_id
    #   <p>Update replication configuration Source Server ID request.</p>
    # @option params [String] :name
    #   <p>Update replication configuration name request.</p>
    # @option params [String] :staging_area_subnet_id
    #   <p>Update replication configuration Staging Area subnet request.</p>
    # @option params [Boolean] :associate_default_security_group
    #   <p>Update replication configuration associate default Application Migration Service Security group request.</p>
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>Update replication configuration Replication Server Security Groups IDs request.</p>
    # @option params [String] :replication_server_instance_type
    #   <p>Update replication configuration Replication Server instance type request.</p>
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Update replication configuration use dedicated Replication Server request.</p>
    # @option params [String] :default_large_staging_disk_type
    #   <p>Update replication configuration use default large Staging Disk type request.</p>
    # @option params [Array<Types::ReplicationConfigurationReplicatedDisk>] :replicated_disks
    #   <p>Update replication configuration replicated disks request.</p>
    # @option params [String] :ebs_encryption
    #   <p>Update replication configuration EBS encryption request.</p>
    # @option params [String] :ebs_encryption_key_arn
    #   <p>Update replication configuration EBS encryption key ARN request.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Update replication configuration bandwidth throttling request.</p>
    # @option params [String] :data_plane_routing
    #   <p>Update replication configuration data plane routing request.</p>
    # @option params [Boolean] :create_public_ip
    #   <p>Update replication configuration create Public IP request.</p>
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>Update replication configuration Staging Area Tags request.</p>
    # @option params [Boolean] :use_fips_endpoint
    #   <p>Update replication configuration use Fips Endpoint.</p>
    # @option params [String] :account_id
    #   <p>Update replication configuration Account ID request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     name: "SmallBoundedString",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         is_boot_disk: false,
    #         staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType",
    #         iops: 1,
    #         throughput: 1
    #       }
    #     ],
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false,
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.update_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     name: "SmallBoundedString",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     replicated_disks: [
    #       {
    #         device_name: "BoundedString",
    #         is_boot_disk: false,
    #         staging_disk_type: "ReplicationConfigurationReplicatedDiskStagingDiskType",
    #         iops: 1,
    #         throughput: 1
    #       }
    #     ],
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false
    #   }
    # @return [Types::UpdateReplicationConfigurationOutput]
    def update_replication_configuration(params = {}, options = {})
      request = build_request(:update_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Updates multiple ReplicationConfigurationTemplates by ID.</p>
    # @param [Hash, Types::UpdateReplicationConfigurationTemplateInput] params
    # @option params [String] :replication_configuration_template_id
    #   <p>Update replication configuration template template ID request.</p>
    # @option params [String] :arn
    #   <p>Update replication configuration template ARN request.</p>
    # @option params [String] :staging_area_subnet_id
    #   <p>Update replication configuration template Staging Area subnet ID request.</p>
    # @option params [Boolean] :associate_default_security_group
    #   <p>Update replication configuration template associate default Application Migration Service Security group request.</p>
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>Update replication configuration template Replication Server Security groups IDs request.</p>
    # @option params [String] :replication_server_instance_type
    #   <p>Update replication configuration template Replication Server instance type request.</p>
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Update replication configuration template use dedicated Replication Server request.</p>
    # @option params [String] :default_large_staging_disk_type
    #   <p>Update replication configuration template use default large Staging Disk type request.</p>
    # @option params [String] :ebs_encryption
    #   <p>Update replication configuration template EBS encryption request.</p>
    # @option params [String] :ebs_encryption_key_arn
    #   <p>Update replication configuration template EBS encryption key ARN request.</p>
    # @option params [Integer] :bandwidth_throttling
    #   <p>Update replication configuration template bandwidth throttling request.</p>
    # @option params [String] :data_plane_routing
    #   <p>Update replication configuration template data plane routing request.</p>
    # @option params [Boolean] :create_public_ip
    #   <p>Update replication configuration template create Public IP request.</p>
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>Update replication configuration template Staging Area Tags request.</p>
    # @option params [Boolean] :use_fips_endpoint
    #   <p>Update replication configuration template use Fips Endpoint request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     arn: "ARN",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false
    #   }
    #   options = {}
    #   response = client.update_replication_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_configuration_template_id: "ReplicationConfigurationTemplateID", # required
    #     arn: "ARN",
    #     staging_area_subnet_id: "SubnetID",
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: ["SecurityGroupID"],
    #     replication_server_instance_type: "EC2InstanceType",
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: "ReplicationConfigurationDefaultLargeStagingDiskType",
    #     ebs_encryption: "ReplicationConfigurationEbsEncryption",
    #     ebs_encryption_key_arn: "ARN",
    #     bandwidth_throttling: 1,
    #     data_plane_routing: "ReplicationConfigurationDataPlaneRouting",
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     use_fips_endpoint: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateReplicationConfigurationTemplateOutput]
    def update_replication_configuration_template(params = {}, options = {})
      request = build_request(:update_replication_configuration_template, params)
      request.send_request(options)
    end

    # <p>Update Source Server.</p>
    # @param [Hash, Types::UpdateSourceServerRequest] params
    # @option params [String] :account_id
    #   <p>Update Source Server request account ID.</p>
    # @option params [String] :source_server_id
    #   <p>Update Source Server request source server ID.</p>
    # @option params [Types::SourceServerConnectorAction] :connector_action
    #   <p>Update Source Server request connector action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountID",
    #     source_server_id: "SourceServerID", # required
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_source_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::UpdateSourceServerOutput]
    def update_source_server(params = {}, options = {})
      request = build_request(:update_source_server, params)
      request.send_request(options)
    end

    # <p>Allows you to change between the AGENT_BASED replication type and the SNAPSHOT_SHIPPING replication type.</p>
    # @param [Hash, Types::UpdateSourceServerReplicationTypeInput] params
    # @option params [String] :source_server_id
    #   <p>ID of source server on which to update replication type.</p>
    # @option params [String] :replication_type
    #   <p>Replication type to which to update source server.</p>
    # @option params [String] :account_id
    #   <p>Account ID on which to update replication type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_server_id: "SourceServerID", # required
    #     replication_type: "ReplicationType", # required
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.update_source_server_replication_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_server_id: "SourceServerID",
    #     arn: "ARN",
    #     is_archived: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     launched_instance: {
    #       ec2_instance_id: "EC2InstanceID",
    #       job_id: "JobID",
    #       first_boot: "FirstBoot"
    #     },
    #     data_replication_info: {
    #       lag_duration: "ISO8601DurationString",
    #       eta_date_time: "ISO8601DatetimeString",
    #       replicated_disks: [
    #         {
    #           device_name: "BoundedString",
    #           total_storage_bytes: 1,
    #           replicated_storage_bytes: 1,
    #           rescanned_storage_bytes: 1,
    #           backlogged_storage_bytes: 1
    #         }
    #       ],
    #       data_replication_state: "DataReplicationState",
    #       data_replication_initiation: {
    #         start_date_time: "ISO8601DatetimeString",
    #         next_attempt_date_time: "ISO8601DatetimeString",
    #         steps: [
    #           {
    #             name: "DataReplicationInitiationStepName",
    #             status: "DataReplicationInitiationStepStatus"
    #           }
    #         ]
    #       },
    #       data_replication_error: {
    #         error: "DataReplicationErrorString",
    #         raw_error: "LargeBoundedString"
    #       },
    #       last_snapshot_date_time: "ISO8601DatetimeString"
    #     },
    #     life_cycle: {
    #       added_to_service_date_time: "ISO8601DatetimeString",
    #       first_byte_date_time: "ISO8601DatetimeString",
    #       elapsed_replication_duration: "ISO8601DurationString",
    #       last_seen_by_service_date_time: "ISO8601DatetimeString",
    #       last_test: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       last_cutover: {
    #         initiated: {
    #           api_call_date_time: "ISO8601DatetimeString",
    #           job_id: "JobID"
    #         },
    #         reverted: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         },
    #         finalized: {
    #           api_call_date_time: "ISO8601DatetimeString"
    #         }
    #       },
    #       state: "LifeCycleState"
    #     },
    #     source_properties: {
    #       last_updated_date_time: "ISO8601DatetimeString",
    #       recommended_instance_type: "EC2InstanceType",
    #       identification_hints: {
    #         fqdn: "BoundedString",
    #         hostname: "BoundedString",
    #         vm_ware_uuid: "BoundedString",
    #         aws_instance_id: "EC2InstanceID",
    #         vm_path: "BoundedString"
    #       },
    #       network_interfaces: [
    #         {
    #           mac_address: "BoundedString",
    #           ips: ["BoundedString"],
    #           is_primary: false
    #         }
    #       ],
    #       disks: [
    #         {
    #           device_name: "BoundedString",
    #           bytes: 1
    #         }
    #       ],
    #       cpus: [
    #         {
    #           cores: 1,
    #           model_name: "BoundedString"
    #         }
    #       ],
    #       ram_bytes: 1,
    #       os: {
    #         full_string: "BoundedString"
    #       }
    #     },
    #     replication_type: "ReplicationType",
    #     vcenter_client_id: "VcenterClientID",
    #     application_id: "ApplicationID",
    #     user_provided_id: "BoundedString",
    #     fqdn_for_action_framework: "BoundedString",
    #     connector_action: {
    #       credentials_secret_arn: "SecretArn",
    #       connector_arn: "ConnectorArn"
    #     }
    #   }
    # @return [Types::UpdateSourceServerReplicationTypeOutput]
    def update_source_server_replication_type(params = {}, options = {})
      request = build_request(:update_source_server_replication_type, params)
      request.send_request(options)
    end

    # <p>Update wave.</p>
    # @param [Hash, Types::UpdateWaveInput] params
    # @option params [String] :wave_id
    #   <p>Wave ID.</p>
    # @option params [String] :name
    #   <p>Wave name.</p>
    # @option params [String] :description
    #   <p>Wave description.</p>
    # @option params [String] :account_id
    #   <p>Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     wave_id: "WaveID", # required
    #     name: "WaveName",
    #     description: "WaveDescription",
    #     account_id: "AccountID"
    #   }
    #   options = {}
    #   response = client.update_wave(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     wave_id: "WaveID",
    #     arn: "ARN",
    #     name: "WaveName",
    #     description: "WaveDescription",
    #     is_archived: false,
    #     wave_aggregated_status: {
    #       last_update_date_time: "ISO8601DatetimeString",
    #       replication_started_date_time: "ISO8601DatetimeString",
    #       health_status: "WaveHealthStatus",
    #       progress_status: "WaveProgressStatus",
    #       total_applications: 1
    #     },
    #     creation_date_time: "ISO8601DatetimeString",
    #     last_modified_date_time: "ISO8601DatetimeString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateWaveOutput]
    def update_wave(params = {}, options = {})
      request = build_request(:update_wave, params)
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
      context[:gem_name] = 'aws-sdk-mgn'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end

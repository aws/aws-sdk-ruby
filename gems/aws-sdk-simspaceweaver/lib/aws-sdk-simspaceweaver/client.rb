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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:simspaceweaver)

module Aws::SimSpaceWeaver
  # An API client for Aws::SimSpaceWeaver.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SimSpaceWeaver
    @identifier = :simspaceweaver

    add_plugin(::Aws::SimSpaceWeaver::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SimSpaceWeaver::EndpointProvider)
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

    # <p>Creates a snapshot of the specified simulation. 
    #          A snapshot is a file that contains simulation state data at a specific time.
    #          The state data saved in a snapshot includes entity data from the State Fabric, 
    #          the simulation configuration specified in the schema, and the clock tick number. 
    #          You can use the snapshot to initialize a new simulation. 
    #          For more information about snapshots, see <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html">Snapshots</a>
    #    in the <i>SimSpace Weaver User Guide</i>.
    #          </p>
    #          <p>You specify a <code>Destination</code> when you create a snapshot.
    #          The <code>Destination</code> is the name of an Amazon S3 bucket and an optional
    #          <code>ObjectKeyPrefix</code>. The <code>ObjectKeyPrefix</code> is
    #          usually the name of a folder in the bucket. SimSpace Weaver creates a 
    #          <code>snapshot</code> folder inside the <code>Destination</code> and 
    #          places the snapshot file there.</p>
    #          <p>The snapshot file is an Amazon S3 object. It has an object key with the
    #          form: <code>
    #                <i>object-key-prefix</i>/snapshot/<i>simulation-name</i>-<i>YYMMdd</i>-<i>HHmm</i>-<i>ss</i>.zip</code>, where:
    #       </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>
    #                      <i>YY</i>
    #                   </code> is the 2-digit year</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <i>MM</i>
    #                   </code> is the 2-digit month</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <i>dd</i>
    #                   </code> is the 2-digit day of the month</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <i>HH</i>
    #                   </code> is the 2-digit hour (24-hour clock)</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <i>mm</i>
    #                   </code> is the 2-digit minutes</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>
    #                      <i>ss</i>
    #                   </code> is the 2-digit seconds</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateSnapshotInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation.</p>
    # @option params [Types::S3Destination] :destination
    #   <p>The Amazon S3 bucket and optional folder (object key prefix) where SimSpace Weaver creates the snapshot file.</p>
    #            <p>The Amazon S3 bucket must be in the same Amazon Web Services Region as the simulation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #     destination: { # required
    #       bucket_name: "BucketName", # required
    #       object_key_prefix: "ObjectKeyPrefix"
    #     }
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSnapshotOutput]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes the instance of the given custom app.</p>
    # @param [Hash, Types::DeleteAppOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation of the app.</p>
    # @option params [String] :domain
    #   <p>The name of the domain of the app.</p>
    # @option params [String] :app
    #   <p>The name of the app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     app: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppOperationOutput]
    def delete_app(params = {}, options = {})
      request = build_request(:delete_app, params)
      request.send_request(options)
    end

    # <p>Deletes all SimSpace Weaver resources assigned to the given simulation.</p>
    #          <note>
    #             <p>Your simulation uses resources in other Amazon Web Services. This API operation doesn't delete
    #             resources in other Amazon Web Services.</p>
    #          </note>
    # @param [Hash, Types::DeleteSimulationOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_simulation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSimulationOperationOutput]
    def delete_simulation(params = {}, options = {})
      request = build_request(:delete_simulation, params)
      request.send_request(options)
    end

    # <p>Returns the state of the given custom app.</p>
    # @param [Hash, Types::DescribeAppOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation of the app.</p>
    # @option params [String] :domain
    #   <p>The name of the domain of the app.</p>
    # @option params [String] :app
    #   <p>The name of the app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     app: "SimSpaceWeaverLongResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SimSpaceWeaverLongResourceName",
    #     simulation: "SimSpaceWeaverResourceName",
    #     domain: "SimSpaceWeaverResourceName",
    #     status: "SimulationAppStatus",
    #     target_status: "SimulationAppTargetStatus",
    #     launch_overrides: {
    #       launch_commands: ["NonEmptyString"]
    #     },
    #     description: "Description",
    #     endpoint_info: {
    #       address: "NonEmptyString",
    #       ingress_port_mappings: [
    #         {
    #           declared: 1,
    #           actual: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeAppOperationOutput]
    def describe_app(params = {}, options = {})
      request = build_request(:describe_app, params)
      request.send_request(options)
    end

    # <p>Returns the current state of the given simulation.</p>
    # @param [Hash, Types::DescribeSimulationOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_simulation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SimSpaceWeaverResourceName",
    #     execution_id: "UUID",
    #     arn: "SimSpaceWeaverArn",
    #     description: "Description",
    #     role_arn: "RoleArn",
    #     creation_time: Time.now,
    #     status: "SimulationStatus",
    #     target_status: "SimulationTargetStatus",
    #     schema_s3_location: {
    #       bucket_name: "BucketName", # required
    #       object_key: "ObjectKey", # required
    #     },
    #     schema_error: "OptionalString",
    #     logging_configuration: {
    #       destinations: [
    #         {
    #           cloud_watch_logs_log_group: {
    #             log_group_arn: "LogGroupArn"
    #           }
    #         }
    #       ]
    #     },
    #     live_simulation_state: {
    #       domains: [
    #         {
    #           name: "SimSpaceWeaverResourceName",
    #           lifecycle: "LifecycleManagementStrategy"
    #         }
    #       ],
    #       clocks: [
    #         {
    #           status: "ClockStatus",
    #           target_status: "ClockTargetStatus"
    #         }
    #       ]
    #     },
    #     maximum_duration: "TimeToLiveString",
    #     snapshot_s3_location: {
    #       bucket_name: "BucketName", # required
    #       object_key: "ObjectKey", # required
    #     },
    #     start_error: "OptionalString"
    #   }
    # @return [Types::DescribeSimulationOperationOutput]
    def describe_simulation(params = {}, options = {})
      request = build_request(:describe_simulation, params)
      request.send_request(options)
    end

    # <p>Lists all custom apps or service apps for the given simulation and domain.</p>
    # @param [Hash, Types::ListAppsOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation that you want to list apps for.</p>
    # @option params [String] :domain
    #   <p>The name of the domain that you want to list apps for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of apps to list.</p>
    # @option params [String] :next_token
    #   <p>If SimSpace Weaver returns <code>nextToken</code>, then there are more results available. 
    #      The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, 
    #      call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, 
    #      then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. 
    #      If you provide a token that isn't valid, then you receive an <i>HTTP 400 ValidationException</i> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName",
    #     max_results: 1,
    #     next_token: "OptionalString"
    #   }
    #   options = {}
    #   response = client.list_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps: [
    #       {
    #         name: "SimSpaceWeaverLongResourceName",
    #         simulation: "SimSpaceWeaverResourceName",
    #         domain: "SimSpaceWeaverResourceName",
    #         status: "SimulationAppStatus",
    #         target_status: "SimulationAppTargetStatus"
    #       }
    #     ],
    #     next_token: "OptionalString"
    #   }
    # @return [Types::ListAppsOperationOutput]
    def list_apps(params = {}, options = {})
      request = build_request(:list_apps, params)
      request.send_request(options)
    end

    # <p>Lists the SimSpace Weaver simulations in the Amazon Web Services account used to make the API call.</p>
    # @param [Hash, Types::ListSimulationsOperationInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of simulations to list.</p>
    # @option params [String] :next_token
    #   <p>If SimSpace Weaver returns <code>nextToken</code>, then there are more results available. 
    #      The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page, 
    #      call the operation again using the returned token. Keep all other arguments unchanged. If no results remain, 
    #      then <code>nextToken</code> is set to <code>null</code>. Each pagination token expires after 24 hours. 
    #      If you provide a token that isn't valid, then you receive an <i>HTTP 400 ValidationException</i> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "OptionalString"
    #   }
    #   options = {}
    #   response = client.list_simulations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     simulations: [
    #       {
    #         name: "SimSpaceWeaverResourceName",
    #         arn: "SimSpaceWeaverArn",
    #         creation_time: Time.now,
    #         status: "SimulationStatus",
    #         target_status: "SimulationTargetStatus"
    #       }
    #     ],
    #     next_token: "OptionalString"
    #   }
    # @return [Types::ListSimulationsOperationOutput]
    def list_simulations(params = {}, options = {})
      request = build_request(:list_simulations, params)
      request.send_request(options)
    end

    # <p>Lists all tags on a SimSpace Weaver resource.</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SimSpaceWeaverArn", # required
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
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a custom app with the configuration specified in the simulation schema.</p>
    # @param [Hash, Types::StartAppOperationInput] params
    # @option params [String] :client_token
    #   <p>A value that you provide to ensure that repeated calls to this
    #      API operation using the same parameters complete only once. A <code>ClientToken</code> is also known as an
    #      <i>idempotency token</i>. A <code>ClientToken</code> expires after 24 hours.</p>
    # @option params [String] :simulation
    #   <p>The name of the simulation of the app.</p>
    # @option params [String] :domain
    #   <p>The name of the domain of the app.</p>
    # @option params [String] :name
    #   <p>The name of the app.</p>
    # @option params [String] :description
    #   <p>The description of the app.</p>
    # @option params [Types::LaunchOverrides] :launch_overrides
    #   <p>Options that apply when the app starts. These options override default behavior.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     simulation: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     name: "SimSpaceWeaverResourceName", # required
    #     description: "Description",
    #     launch_overrides: {
    #       launch_commands: ["NonEmptyString"]
    #     }
    #   }
    #   options = {}
    #   response = client.start_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SimSpaceWeaverResourceName",
    #     domain: "SimSpaceWeaverResourceName",
    #     simulation: "SimSpaceWeaverResourceName"
    #   }
    # @return [Types::StartAppOperationOutput]
    def start_app(params = {}, options = {})
      request = build_request(:start_app, params)
      request.send_request(options)
    end

    # <p>Starts the simulation clock.</p>
    # @param [Hash, Types::StartClockOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.start_clock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartClockOperationOutput]
    def start_clock(params = {}, options = {})
      request = build_request(:start_clock, params)
      request.send_request(options)
    end

    # <p>Starts a simulation with the given name. You must choose to start your
    #          simulation from a schema or from a snapshot.
    #          For more information about the schema, see the <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/schema-reference.html">schema reference</a> 
    #    in the <i>SimSpace Weaver User Guide</i>.
    #          For more information about snapshots, see <a href="https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html">Snapshots</a>
    #    in the <i>SimSpace Weaver User Guide</i>.</p>
    # @param [Hash, Types::StartSimulationOperationInput] params
    # @option params [String] :client_token
    #   <p>A value that you provide to ensure that repeated calls to this
    #      API operation using the same parameters complete only once. A <code>ClientToken</code> is also known as an
    #      <i>idempotency token</i>. A <code>ClientToken</code> expires after 24 hours.</p>
    # @option params [String] :name
    #   <p>The name of the simulation.</p>
    # @option params [String] :description
    #   <p>The description of the simulation.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role
    #      that the simulation assumes to perform actions. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>. For more information about IAM roles,
    #      see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the 
    #      <i>Identity and Access Management User Guide</i>.</p>
    # @option params [Types::S3Location] :schema_s3_location
    #   <p>The location of the simulation schema in Amazon Simple Storage Service (Amazon S3).
    #      For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                  <i>Amazon Simple Storage Service User Guide</i>
    #               </a>.</p>
    #            <p>Provide a <code>SchemaS3Location</code> to start your simulation from a schema.</p>
    #            <p>If you provide a <code>SchemaS3Location</code> then you can't provide a <code>SnapshotS3Location</code>.</p>
    # @option params [String] :maximum_duration
    #   <p>The maximum running time of the simulation,
    #      specified as a number of minutes (m or M), hours (h or H), or days (d or D). The simulation 
    #      stops when it reaches this limit. The maximum value is <code>14D</code>, or its equivalent in the 
    #      other units. The default value is <code>14D</code>. A value equivalent to <code>0</code> makes the
    #      simulation immediately transition to <code>Stopping</code> as soon as it reaches <code>Started</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags for the simulation. For more information about tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the
    #      <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Types::S3Location] :snapshot_s3_location
    #   <p>The location of the snapshot .zip file in Amazon Simple Storage Service (Amazon S3).
    #      For more information about Amazon S3, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html">
    #                  <i>Amazon Simple Storage Service User Guide</i>
    #               </a>.</p>
    #            <p>Provide a <code>SnapshotS3Location</code> to start your simulation from a snapshot.</p>
    #            <p>The Amazon S3 bucket must be in the same Amazon Web Services Region as the simulation.</p>
    #            <p>If you provide a <code>SnapshotS3Location</code> then you can't provide a <code>SchemaS3Location</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "SimSpaceWeaverResourceName", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     schema_s3_location: {
    #       bucket_name: "BucketName", # required
    #       object_key: "ObjectKey", # required
    #     },
    #     maximum_duration: "TimeToLiveString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     snapshot_s3_location: {
    #       bucket_name: "BucketName", # required
    #       object_key: "ObjectKey", # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_simulation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SimSpaceWeaverArn",
    #     execution_id: "UUID",
    #     creation_time: Time.now
    #   }
    # @return [Types::StartSimulationOperationOutput]
    def start_simulation(params = {}, options = {})
      request = build_request(:start_simulation, params)
      request.send_request(options)
    end

    # <p>Stops the given custom app and shuts down all of its allocated compute resources.</p>
    # @param [Hash, Types::StopAppOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation of the app.</p>
    # @option params [String] :domain
    #   <p>The name of the domain of the app.</p>
    # @option params [String] :app
    #   <p>The name of the app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     app: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopAppOperationOutput]
    def stop_app(params = {}, options = {})
      request = build_request(:stop_app, params)
      request.send_request(options)
    end

    # <p>Stops the simulation clock.</p>
    # @param [Hash, Types::StopClockOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_clock(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopClockOperationOutput]
    def stop_clock(params = {}, options = {})
      request = build_request(:stop_clock, params)
      request.send_request(options)
    end

    # <p>Stops the given simulation.</p>
    #          <important>
    #             <p>You can't restart a simulation after you stop it. If you want to restart a simulation, then
    #             you must stop it, delete it, and start a new instance of it.</p>
    #          </important>
    # @param [Hash, Types::StopSimulationOperationInput] params
    # @option params [String] :simulation
    #   <p>The name of the simulation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_simulation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopSimulationOperationOutput]
    def stop_simulation(params = {}, options = {})
      request = build_request(:stop_simulation, params)
      request.send_request(options)
    end

    # <p>Adds tags to a SimSpace Weaver resource. For more information about tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the
    #    <i>Amazon Web Services General Reference</i>.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add tags to.
    #            For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SimSpaceWeaverArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a SimSpace Weaver resource. For more information about tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the
    #    <i>Amazon Web Services General Reference</i>.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.
    #            For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #      in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SimSpaceWeaverArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-simspaceweaver'
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

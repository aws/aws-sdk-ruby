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

module Aws::GameLiftStreams
  # An API client for Aws::GameLiftStreams.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GameLiftStreams

    add_plugin(::Aws::GameLiftStreams::Plugins::Endpoint)
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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::GameLiftStreams::EndpointProvider] :endpoint_provider
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p> Add locations that can host stream sessions. You configure locations and their corresponding capacity for each stream group. Creating a stream group in a location that's nearest to your end users can help minimize latency and improve quality. </p> <p> This operation provisions stream capacity at the specified locations. By default, all locations have 1 or 2 capacity, depending on the stream class option: 2 for 'High' and 1 for 'Ultra' and 'Win2022'. This operation also copies the content files of all associated applications to an internal S3 bucket at each location. This allows Amazon GameLift Streams to host performant stream sessions. </p>
    # @param [Hash, Types::AddStreamGroupLocationsInput] params
    # @option params [String] :identifier
    #   <p> A stream group to add the specified locations to. </p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [Array<Types::LocationConfiguration>] :location_configurations
    #   <p> A set of one or more locations and the streaming capacity for each location. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     location_configurations: [ # required
    #       {
    #         location_name: "LocationName", # required
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_stream_group_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "Identifier", # required
    #     locations: [ # required
    #       {
    #         location_name: "LocationName",
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "ERROR", "REMOVING"],
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1,
    #         requested_capacity: 1,
    #         allocated_capacity: 1,
    #         idle_capacity: 1
    #       }
    #     ]
    #   }
    # @return [Types::AddStreamGroupLocationsOutput]
    def add_stream_group_locations(params = {}, options = {})
      request = build_request(:add_stream_group_locations, params)
      request.send_request(options)
    end

    # <p>When you associate, or link, an application with a stream group, then Amazon GameLift Streams can launch the application using the stream group's allocated compute resources. The stream group must be in <code>ACTIVE</code> status. You can reverse this action by using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html">DisassociateApplications</a>.</p>
    # @param [Hash, Types::AssociateApplicationsInput] params
    # @option params [String] :identifier
    #   <p>A stream group to associate to the applications.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [Array<String>] :application_identifiers
    #   <p>A set of applications to associate with the stream group.</p> <p>This value is a set of either <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARN)</a> or IDs that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     application_identifiers: ["Identifier"], # required
    #   }
    #   options = {}
    #   response = client.associate_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     application_arns: ["Arn"]
    #   }
    # @return [Types::AssociateApplicationsOutput]
    def associate_applications(params = {}, options = {})
      request = build_request(:associate_applications, params)
      request.send_request(options)
    end

    # <p>Creates an application resource in Amazon GameLift Streams, which specifies the application content you want to stream, such as a game build or other software, and configures the settings to run it.</p> <p> Before you create an application, upload your application content files to an Amazon Simple Storage Service (Amazon S3) bucket. For more information, see <b>Getting Started</b> in the Amazon GameLift Streams Developer Guide. </p> <important> <p> Make sure that your files in the Amazon S3 bucket are the correct version you want to use. If you change the files at a later time, you will need to create a new Amazon GameLift Streams application. </p> </important> <p> If the request is successful, Amazon GameLift Streams begins to create an application and sets the status to <code>INITIALIZED</code>. When an application reaches <code>READY</code> status, you can use the application to set up stream groups and start streams. To track application status, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetApplication.html">GetApplication</a>. </p>
    # @param [Hash, Types::CreateApplicationInput] params
    # @option params [String] :description
    #   <p>A human-readable label for the application. You can update this value later.</p>
    # @option params [Types::RuntimeEnvironment] :runtime_environment
    #   <p>Configuration settings that identify the operating system for an application resource. This can also include a compatibility layer and other drivers.</p> <p>A runtime environment can be one of the following:</p> <ul> <li> <p> For Linux applications </p> <ul> <li> <p> Ubuntu 22.04 LTS (<code>Type=UBUNTU, Version=22_04_LTS</code>) </p> </li> </ul> </li> <li> <p> For Windows applications </p> <ul> <li> <p>Microsoft Windows Server 2022 Base (<code>Type=WINDOWS, Version=2022</code>)</p> </li> <li> <p>Proton 9.0-2 (<code>Type=PROTON, Version=20250516</code>)</p> </li> <li> <p>Proton 8.0-5 (<code>Type=PROTON, Version=20241007</code>)</p> </li> <li> <p>Proton 8.0-2c (<code>Type=PROTON, Version=20230704</code>)</p> </li> </ul> </li> </ul>
    # @option params [String] :executable_path
    #   <p>The path and file name of the executable file that launches the content for streaming. Enter a path value that is relative to the location set in <code>ApplicationSourceUri</code>.</p>
    # @option params [String] :application_source_uri
    #   <p>The location of the content that you want to stream. Enter an Amazon S3 URI to a bucket that contains your game or other application. The location can have a multi-level prefix structure, but it must include all the files needed to run the content. Amazon GameLift Streams copies everything under the specified location.</p> <p>This value is immutable. To designate a different content location, create a new application.</p> <note> <p>The Amazon S3 bucket and the Amazon GameLift Streams application must be in the same Amazon Web Services Region.</p> </note>
    # @option params [Array<String>] :application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Enter path values that are relative to the <code>ApplicationSourceUri</code> location. You can specify up to 10 log paths. Amazon GameLift Streams uploads designated log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    # @option params [String] :application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p> <note> <p>The log bucket must have permissions that give Amazon GameLift Streams access to write the log files. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/applications.html#application-bucket-permission-template">Application log bucket permission policy</a> in the <i>Amazon GameLift Streams Developer Guide</i>.</p> </note>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of labels to assign to the new application resource. Tags are developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access management and cost allocation. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i>. You can use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html">TagResource</a> to add tags, <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html">UntagResource</a> to remove tags, and <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to view tags on existing resources.</p>
    # @option params [String] :client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description", # required
    #     runtime_environment: { # required
    #       type: "PROTON" # One of: ["PROTON", "WINDOWS", "UBUNTU"], # required
    #       version: "RuntimeEnvironmentVersion", # required
    #     },
    #     executable_path: "ExecutablePath", # required
    #     application_source_uri: "ApplicationSourceUri", # required
    #     application_log_paths: ["FilePath"],
    #     application_log_output_uri: "ApplicationLogOutputUri",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Identifier", # required
    #     description: "Description",
    #     runtime_environment: {
    #       type: "PROTON" # One of: ["PROTON", "WINDOWS", "UBUNTU"], # required
    #       version: "RuntimeEnvironmentVersion", # required
    #     },
    #     executable_path: "ExecutablePath",
    #     application_log_paths: ["FilePath"],
    #     application_log_output_uri: "ApplicationLogOutputUri",
    #     application_source_uri: "ApplicationSourceUri",
    #     id: "Id",
    #     status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"],
    #     status_reason: "internalError" # One of: ["internalError", "accessDenied"],
    #     replication_statuses: [
    #       {
    #         location: "LocationName",
    #         status: "REPLICATING" # One of: ["REPLICATING", "COMPLETED"]
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     associated_stream_groups: ["Arn"]
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p> Manage how Amazon GameLift Streams streams your applications by using a stream group. A stream group is a collection of resources that Amazon GameLift Streams uses to stream your application to end-users. When you create a stream group, you specify an application to stream by default and the type of hardware to use, such as the graphical processing unit (GPU). You can also link additional applications, which allows you to stream those applications using this stream group. Depending on your expected users, you also scale the number of concurrent streams you want to support at one time, and in what locations. </p> <p> Stream capacity represents the number of concurrent streams that can be active at a time. You set stream capacity per location, per stream group. There are two types of capacity, always-on and on-demand: </p> <ul> <li> <p> <b>Always-on</b>: The streaming capacity that is allocated and ready to handle stream requests without delay. You pay for this capacity whether it's in use or not. Best for quickest time from streaming request to streaming session. </p> </li> <li> <p> <b>On-demand</b>: The streaming capacity that Amazon GameLift Streams can allocate in response to stream requests, and then de-allocate when the session has terminated. This offers a cost control measure at the expense of a greater startup time (typically under 5 minutes). </p> </li> </ul> <p> To adjust the capacity of any <code>ACTIVE</code> stream group, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html">UpdateStreamGroup</a>. </p> <p> If the request is successful, Amazon GameLift Streams begins creating the stream group. Amazon GameLift Streams assigns a unique ID to the stream group resource and sets the status to <code>ACTIVATING</code>. When the stream group reaches <code>ACTIVE</code> status, you can start stream sessions by using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html">StartStreamSession</a>. To check the stream group's status, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html">GetStreamGroup</a>. </p>
    # @param [Hash, Types::CreateStreamGroupInput] params
    # @option params [String] :description
    #   <p>A descriptive label for the stream group.</p>
    # @option params [String] :stream_class
    #   <p>The target stream quality for sessions that are hosted in this stream group. Set a stream class that is appropriate to the type of content that you're streaming. Stream class determines the type of computing resources Amazon GameLift Streams uses and impacts the cost of streaming. The following options are available: </p> <p>A stream class can be one of the following:</p> <ul> <li> <p> <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.4, 32 and 64-bit applications, and anti-cheat technology. Uses NVIDIA A10G Tensor GPU.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Uses NVIDIA A10G Tensor GPU.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Uses dedicated NVIDIA A10G Tensor GPU.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports applications with extremely high 3D scene complexity. Runs applications on Microsoft Windows Server 2022 Base and supports DirectX 12. Compatible with Unreal Engine versions up through 5.4, 32 and 64-bit applications, and anti-cheat technology. Uses NVIDIA T4 Tensor GPU.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications with moderate to high 3D scene complexity. Uses NVIDIA T4 Tensor GPU.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM</p> </li> <li> <p>Tenancy: Supports up to 2 concurrent stream sessions</p> </li> </ul> </li> <li> <p> <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports applications with high 3D scene complexity. Uses dedicated NVIDIA T4 Tensor GPU.</p> <ul> <li> <p>Reference resolution: 1080p</p> </li> <li> <p>Reference frame rate: 60 fps</p> </li> <li> <p>Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM</p> </li> <li> <p>Tenancy: Supports 1 concurrent stream session</p> </li> </ul> </li> </ul>
    # @option params [String] :default_application_identifier
    #   <p>The unique identifier of the Amazon GameLift Streams application that you want to associate to a stream group as the default application. The application must be in <code>READY</code> status. By setting the default application identifier, you will optimize startup performance of this application in your stream group. Once set, this application cannot be disassociated from the stream group, unlike applications that are associated using AssociateApplications. If not set when creating a stream group, you will need to call AssociateApplications later, before you can start streaming.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @option params [Array<Types::LocationConfiguration>] :location_configurations
    #   <p> A set of one or more locations and the streaming capacity for each location. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of labels to assign to the new stream group resource. Tags are developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource management, access management and cost allocation. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i>. You can use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html">TagResource</a> to add tags, <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html">UntagResource</a> to remove tags, and <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html">ListTagsForResource</a> to view tags on existing resources.</p>
    # @option params [String] :client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description", # required
    #     stream_class: "gen4n_high" # One of: ["gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"], # required
    #     default_application_identifier: "Identifier",
    #     location_configurations: [
    #       {
    #         location_name: "LocationName", # required
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_stream_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Identifier", # required
    #     description: "Description",
    #     default_application: {
    #       id: "Id",
    #       arn: "Arn"
    #     },
    #     location_states: [
    #       {
    #         location_name: "LocationName",
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "ERROR", "REMOVING"],
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1,
    #         requested_capacity: 1,
    #         allocated_capacity: 1,
    #         idle_capacity: 1
    #       }
    #     ],
    #     stream_class: "gen4n_high" # One of: ["gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"],
    #     id: "Id",
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"],
    #     status_reason: "internalError" # One of: ["internalError", "noAvailableInstances"],
    #     last_updated_at: Time.now,
    #     created_at: Time.now,
    #     associated_applications: ["Arn"]
    #   }
    # @return [Types::CreateStreamGroupOutput]
    def create_stream_group(params = {}, options = {})
      request = build_request(:create_stream_group, params)
      request.send_request(options)
    end

    # <p>Allows clients to reconnect to a recently disconnected stream session without losing any data from the last session.</p> <p>A client can reconnect to a stream session that's in <code>PENDING_CLIENT_RECONNECTION</code> or <code>ACTIVE</code> status. In the stream session life cycle, when the client disconnects from the stream session, the stream session transitions from <code>CONNECTED</code> to <code>PENDING_CLIENT_RECONNECTION</code> status. When a client requests to reconnect by calling <code>CreateStreamSessionConnection</code>, the stream session transitions to <code>RECONNECTING</code> status. When the reconnection is successful, the stream session transitions to <code>ACTIVE</code> status. After a stream session is disconnected for longer than <code>ConnectionTimeoutSeconds</code>, the stream session transitions to the <code>TERMINATED</code> status.</p> <p>To connect to an existing stream session, specify the stream group ID and stream session ID that you want to reconnect to, as well as the signal request settings to use with the stream.</p> <p> <code>ConnectionTimeoutSeconds</code> defines the amount of time after the stream session disconnects that a reconnection is allowed. If a client is disconnected from the stream for longer than <code>ConnectionTimeoutSeconds</code>, the stream session ends.</p>
    # @param [Hash, Types::CreateStreamSessionConnectionInput] params
    # @option params [String] :client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    # @option params [String] :identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p> The stream group that you want to run this stream session with. The stream group must be in <code>ACTIVE</code> status and have idle stream capacity. </p>
    # @option params [String] :stream_session_identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p> <p> The stream session must be in <code>PENDING_CLIENT_RECONNECTION</code> or <code>ACTIVE</code> status. </p>
    # @option params [String] :signal_request
    #   <p>A WebRTC ICE offer string to use when initializing a WebRTC connection. The offer is a very long JSON string. Provide the string as a text value in quotes. The offer must be newly generated, not the same offer provided to <code>StartStreamSession</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     identifier: "Identifier", # required
    #     stream_session_identifier: "Identifier", # required
    #     signal_request: "SignalRequest", # required
    #   }
    #   options = {}
    #   response = client.create_stream_session_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signal_response: "SignalResponse"
    #   }
    # @return [Types::CreateStreamSessionConnectionOutput]
    def create_stream_session_connection(params = {}, options = {})
      request = build_request(:create_stream_session_connection, params)
      request.send_request(options)
    end

    # <p>Permanently deletes an Amazon GameLift Streams application resource. This also deletes the application content files stored with Amazon GameLift Streams. However, this does not delete the original files that you uploaded to your Amazon S3 bucket; you can delete these any time after Amazon GameLift Streams creates an application, which is the only time Amazon GameLift Streams accesses your Amazon S3 bucket.</p> <p> You can only delete an application that meets the following conditions: </p> <ul> <li> <p>The application is in <code>READY</code> or <code>ERROR</code> status. You cannot delete an application that's in <code>PROCESSING</code> or <code>INITIALIZED</code> status.</p> </li> <li> <p>The application is not the default application of any stream groups. You must first delete the stream group by using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DeleteStreamGroup.html">DeleteStreamGroup</a>.</p> </li> <li> <p>The application is not linked to any stream groups. You must first unlink the stream group by using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html">DisassociateApplications</a>.</p> </li> <li> <p> An application is not streaming in any ongoing stream session. You must wait until the client ends the stream session or call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html">TerminateStreamSession</a> to end the stream. </p> </li> </ul> <p>If any active stream groups exist for this application, this request returns a <code>ValidationException</code>. </p>
    # @param [Hash, Types::DeleteApplicationInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Permanently deletes all compute resources and information related to a stream group. To delete a stream group, specify the unique stream group identifier. During the deletion process, the stream group's status is <code>DELETING</code>. This operation stops streams in progress and prevents new streams from starting. As a best practice, before deleting the stream group, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListStreamSessions.html">ListStreamSessions</a> to check for streams in progress and take action to stop them. When you delete a stream group, any application associations referring to that stream group are automatically removed.</p>
    # @param [Hash, Types::DeleteStreamGroupInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_stream_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_stream_group(params = {}, options = {})
      request = build_request(:delete_stream_group, params)
      request.send_request(options)
    end

    # <p> When you disassociate, or unlink, an application from a stream group, you can no longer stream this application by using that stream group's allocated compute resources. Any streams in process will continue until they terminate, which helps avoid interrupting an end-user's stream. Amazon GameLift Streams will not initiate new streams using this stream group. The disassociate action does not affect the stream capacity of a stream group. </p> <p> You can only disassociate an application if it's not a default application of the stream group. Check <code>DefaultApplicationIdentifier</code> by calling <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html">GetStreamGroup</a>. </p>
    # @param [Hash, Types::DisassociateApplicationsInput] params
    # @option params [String] :identifier
    #   <p>A stream group to disassociate these applications from.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [Array<String>] :application_identifiers
    #   <p>A set of applications that you want to disassociate from the stream group.</p> <p>This value is a set of either <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Names (ARN)</a> or IDs that uniquely identify application resources. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     application_identifiers: ["Identifier"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     application_arns: ["Arn"]
    #   }
    # @return [Types::DisassociateApplicationsOutput]
    def disassociate_applications(params = {}, options = {})
      request = build_request(:disassociate_applications, params)
      request.send_request(options)
    end

    # <p> Export the files that your application modifies or generates in a stream session, which can help you debug or verify your application. When your application runs, it generates output files such as logs, diagnostic information, crash dumps, save files, user data, screenshots, and so on. The files can be defined by the engine or frameworks that your application uses, or information that you've programmed your application to output. </p> <p> You can only call this action on a stream session that is in progress, specifically in one of the following statuses <code>ACTIVE</code>, <code>CONNECTED</code>, <code>PENDING_CLIENT_RECONNECTION</code>, and <code>RECONNECTING</code>. You must provide an Amazon Simple Storage Service (Amazon S3) bucket to store the files in. When the session ends, Amazon GameLift Streams produces a compressed folder that contains all of the files and directories that were modified or created by the application during the stream session. AWS uses your security credentials to authenticate and authorize access to your Amazon S3 bucket. </p> <p>Amazon GameLift Streams collects the following generated and modified files. Find them in the corresponding folders in the <code>.zip</code> archive.</p> <ul> <li> <p> <code>application/</code>: The folder where your application or game is stored. </p> </li> </ul> <ul> <li> <p> <code>profile/</code>: The user profile folder.</p> </li> <li> <p> <code>temp/</code>: The system temp folder.</p> </li> </ul> <p/> <p>To verify the status of the exported files, use GetStreamSession. </p> <p>To delete the files, delete the object in the S3 bucket. </p>
    # @param [Hash, Types::ExportStreamSessionFilesInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [String] :stream_session_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    # @option params [String] :output_uri
    #   <p> The S3 bucket URI where Amazon GameLift Streams uploads the set of compressed exported files for this stream session. Amazon GameLift Streams generates a ZIP file name based on the stream session metadata. Alternatively, you can provide a custom file name with a <code>.zip</code> file extension.</p> <p> Example 1: If you provide an S3 URI called <code>s3://amzn-s3-demo-destination-bucket/MyGame_Session1.zip</code>, then Amazon GameLift Streams will save the files at that location. </p> <p> Example 2: If you provide an S3 URI called <code>s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/</code>, then Amazon GameLift Streams will save the files at <code>s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/YYYYMMDD-HHMMSS-appId-sg-Id-sessionId.zip</code> or another similar name. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     stream_session_identifier: "Identifier", # required
    #     output_uri: "OutputUri", # required
    #   }
    #   options = {}
    #   response = client.export_stream_session_files(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ExportStreamSessionFilesOutput]
    def export_stream_session_files(params = {}, options = {})
      request = build_request(:export_stream_session_files, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for an Amazon GameLift Streams application resource. Specify the ID of the application that you want to retrieve. If the operation is successful, it returns properties for the requested application.</p>
    # @param [Hash, Types::GetApplicationInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Identifier", # required
    #     description: "Description",
    #     runtime_environment: {
    #       type: "PROTON" # One of: ["PROTON", "WINDOWS", "UBUNTU"], # required
    #       version: "RuntimeEnvironmentVersion", # required
    #     },
    #     executable_path: "ExecutablePath",
    #     application_log_paths: ["FilePath"],
    #     application_log_output_uri: "ApplicationLogOutputUri",
    #     application_source_uri: "ApplicationSourceUri",
    #     id: "Id",
    #     status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"],
    #     status_reason: "internalError" # One of: ["internalError", "accessDenied"],
    #     replication_statuses: [
    #       {
    #         location: "LocationName",
    #         status: "REPLICATING" # One of: ["REPLICATING", "COMPLETED"]
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     associated_stream_groups: ["Arn"]
    #   }
    # @return [Types::GetApplicationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for a Amazon GameLift Streams stream group resource. Specify the ID of the stream group that you want to retrieve. If the operation is successful, it returns properties for the requested stream group.</p>
    # @param [Hash, Types::GetStreamGroupInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_stream_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Identifier", # required
    #     description: "Description",
    #     default_application: {
    #       id: "Id",
    #       arn: "Arn"
    #     },
    #     location_states: [
    #       {
    #         location_name: "LocationName",
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "ERROR", "REMOVING"],
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1,
    #         requested_capacity: 1,
    #         allocated_capacity: 1,
    #         idle_capacity: 1
    #       }
    #     ],
    #     stream_class: "gen4n_high" # One of: ["gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"],
    #     id: "Id",
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"],
    #     status_reason: "internalError" # One of: ["internalError", "noAvailableInstances"],
    #     last_updated_at: Time.now,
    #     created_at: Time.now,
    #     associated_applications: ["Arn"]
    #   }
    # @return [Types::GetStreamGroupOutput]
    def get_stream_group(params = {}, options = {})
      request = build_request(:get_stream_group, params)
      request.send_request(options)
    end

    # <p>Retrieves properties for a Amazon GameLift Streams stream session resource. Specify the Amazon Resource Name (ARN) of the stream session that you want to retrieve and its stream group ARN. If the operation is successful, it returns properties for the requested resource.</p>
    # @param [Hash, Types::GetStreamSessionInput] params
    # @option params [String] :identifier
    #   <p>The stream group that runs this stream session.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [String] :stream_session_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     stream_session_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_stream_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     description: "Description",
    #     stream_group_id: "Id",
    #     user_id: "UserId",
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"],
    #     status_reason: "internalError" # One of: ["internalError", "invalidSignalRequest", "placementTimeout", "applicationLogS3DestinationError"],
    #     protocol: "WebRTC" # One of: ["WebRTC"],
    #     location: "LocationName",
    #     signal_request: "SignalRequest",
    #     signal_response: "SignalResponse",
    #     connection_timeout_seconds: 1,
    #     session_length_seconds: 1,
    #     additional_launch_args: ["String"],
    #     additional_environment_variables: {
    #       "String" => "String"
    #     },
    #     log_file_location_uri: "FileLocationUri",
    #     web_sdk_protocol_url: "WebSdkProtocolUrl",
    #     last_updated_at: Time.now,
    #     created_at: Time.now,
    #     application_arn: "Arn",
    #     export_files_metadata: {
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "PENDING"],
    #       status_reason: "ExportFilesReason",
    #       output_uri: "OutputUri"
    #     }
    #   }
    # @return [Types::GetStreamSessionOutput]
    def get_stream_session(params = {}, options = {})
      request = build_request(:get_stream_session, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all Amazon GameLift Streams applications that are associated with the Amazon Web Services account in use. This operation returns applications in all statuses, in no particular order. You can paginate the results as needed.</p>
    # @param [Hash, Types::ListApplicationsInput] params
    # @option params [String] :next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    # @option params [Integer] :max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "Identifier", # required
    #         id: "Id",
    #         description: "Description",
    #         status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         runtime_environment: {
    #           type: "PROTON" # One of: ["PROTON", "WINDOWS", "UBUNTU"], # required
    #           version: "RuntimeEnvironmentVersion", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all Amazon GameLift Streams stream groups that are associated with the Amazon Web Services account in use. This operation returns stream groups in all statuses, in no particular order. You can paginate the results as needed.</p>
    # @param [Hash, Types::ListStreamGroupsInput] params
    # @option params [String] :next_token
    #   <p>A token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    # @option params [Integer] :max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stream_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "Identifier", # required
    #         id: "Id",
    #         description: "Description",
    #         default_application: {
    #           id: "Id",
    #           arn: "Arn"
    #         },
    #         stream_class: "gen4n_high" # One of: ["gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"],
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStreamGroupsOutput]
    def list_stream_groups(params = {}, options = {})
      request = build_request(:list_stream_groups, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of Amazon GameLift Streams stream sessions that a stream group is hosting.</p> <p>To retrieve stream sessions, specify the stream group, and optionally filter by stream session status. You can paginate the results as needed.</p> <p>This operation returns the requested stream sessions in no particular order.</p>
    # @param [Hash, Types::ListStreamSessionsInput] params
    # @option params [String] :status
    #   <p>Filter by the stream session status. You can specify one status in each request to retrieve only sessions that are currently in that status.</p>
    # @option params [String] :export_files_status
    #   <p>Filter by the exported files status. You can specify one status in each request to retrieve only sessions that currently have that exported files status.</p> <p> Exported files can be in one of the following states: </p> <ul> <li> <p> <b>SUCCEEDED</b>: The exported files are successfully stored in S3 bucket. </p> </li> <li> <p> <b>FAILED</b>: The session ended but Amazon GameLift Streams couldn't collect and upload the to S3. </p> </li> <li> <p> <b>PENDING</b>: Either the stream session is still in progress, or uploading the exported files to the S3 bucket is in progress. </p> </li> </ul>
    # @option params [String] :next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    # @option params [Integer] :max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>. </p>
    # @option params [String] :identifier
    #   <p>The unique identifier of a Amazon GameLift Streams stream group to retrieve the stream session for. You can use either the stream group ID or the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"],
    #     export_files_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "PENDING"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.list_stream_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "Arn",
    #         user_id: "UserId",
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"],
    #         protocol: "WebRTC" # One of: ["WebRTC"],
    #         last_updated_at: Time.now,
    #         created_at: Time.now,
    #         application_arn: "Arn",
    #         export_files_metadata: {
    #           status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "PENDING"],
    #           status_reason: "ExportFilesReason",
    #           output_uri: "OutputUri"
    #         },
    #         location: "LocationName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStreamSessionsOutput]
    def list_stream_sessions(params = {}, options = {})
      request = build_request(:list_stream_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of Amazon GameLift Streams stream sessions that this user account has access to.</p> <p>In the returned list of stream sessions, the <code>ExportFilesMetadata</code> property only shows the <code>Status</code> value. To get the <code>OutpurUri</code> and <code>StatusReason</code> values, use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a>.</p> <p>We don't recommend using this operation to regularly check stream session statuses because it's costly. Instead, to check status updates for a specific stream session, use <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a>.</p>
    # @param [Hash, Types::ListStreamSessionsByAccountInput] params
    # @option params [String] :status
    #   <p>Filter by the stream session status. You can specify one status in each request to retrieve only sessions that are currently in that status.</p>
    # @option params [String] :export_files_status
    #   <p>Filter by the exported files status. You can specify one status in each request to retrieve only sessions that currently have that exported files status.</p>
    # @option params [String] :next_token
    #   <p>The token that marks the start of the next set of results. Use this token when you retrieve results as sequential pages. To get the first page of results, omit a token value. To get the remaining pages, provide the token returned with the previous result set. </p>
    # @option params [Integer] :max_results
    #   <p>The number of results to return. Use this parameter with <code>NextToken</code> to return results in sequential pages. Default value is <code>25</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"],
    #     export_files_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "PENDING"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stream_sessions_by_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "Arn",
    #         user_id: "UserId",
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"],
    #         protocol: "WebRTC" # One of: ["WebRTC"],
    #         last_updated_at: Time.now,
    #         created_at: Time.now,
    #         application_arn: "Arn",
    #         export_files_metadata: {
    #           status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "PENDING"],
    #           status_reason: "ExportFilesReason",
    #           output_uri: "OutputUri"
    #         },
    #         location: "LocationName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStreamSessionsByAccountOutput]
    def list_stream_sessions_by_account(params = {}, options = {})
      request = build_request(:list_stream_sessions_by_account, params)
      request.send_request(options)
    end

    # <p>Retrieves all tags assigned to a Amazon GameLift Streams resource. To list tags for a resource, specify the ARN value for the resource.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i> </p> <p> <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/"> Amazon Web Services Tagging Strategies</a> </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> that you want to retrieve tags for. To get an Amazon GameLift Streams resource ARN, call a List or Get operation for the resource.</p>
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

    # <p> Removes a set of remote locations from this stream group. Amazon GameLift Streams works to release allocated compute resources in these location. Thus, stream sessions can no longer start from these locations by using this stream group. Amazon GameLift Streams also deletes the content files of all associated applications that were in Amazon GameLift Streams's internal S3 bucket at this location. </p> <p> You cannot remove the region where you initially created this stream group, known as the primary location. However, you can set the stream capacity to zero. </p>
    # @param [Hash, Types::RemoveStreamGroupLocationsInput] params
    # @option params [String] :identifier
    #   <p> A stream group to remove the specified locations from. </p> <p> This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [Array<String>] :locations
    #   <p> A set of locations to remove this stream group. </p> <p> A set of location names. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     locations: ["String"], # required
    #   }
    #   options = {}
    #   response = client.remove_stream_group_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_stream_group_locations(params = {}, options = {})
      request = build_request(:remove_stream_group_locations, params)
      request.send_request(options)
    end

    # <p> This action initiates a new stream session and outputs connection information that clients can use to access the stream. A stream session refers to an instance of a stream that Amazon GameLift Streams transmits from the server to the end-user. A stream session runs on a compute resource that a stream group has allocated. </p> <p>To start a new stream session, specify a stream group and application ID, along with the transport protocol and signal request settings to use with the stream. You must have associated at least one application to the stream group before starting a stream session, either when creating the stream group, or by using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html">AssociateApplications</a>.</p> <p> For stream groups that have multiple locations, provide a set of locations ordered by priority using a <code>Locations</code> parameter. Amazon GameLift Streams will start a single stream session in the next available location. An application must be finished replicating in a remote location before the remote location can host a stream. </p> <p> If the request is successful, Amazon GameLift Streams begins to prepare the stream. Amazon GameLift Streams assigns an Amazon Resource Name (ARN) value to the stream session resource and sets the status to <code>ACTIVATING</code>. During the stream preparation process, Amazon GameLift Streams queues the request and searches for available stream capacity to run the stream. This results in one of the following: </p> <ul> <li> <p> Amazon GameLift Streams identifies an available compute resource to run the application content and start the stream. When the stream is ready, the stream session's status changes to <code>ACTIVE</code> and includes stream connection information. Provide the connection information to the requesting client to join the stream session.</p> </li> <li> <p> Amazon GameLift Streams doesn't identify an available resource within a certain time, set by <code>ClientToken</code>. In this case, Amazon GameLift Streams stops processing the request, and the stream session object status changes to <code>ERROR</code> with status reason <code>placementTimeout</code>.</p> </li> </ul>
    # @param [Hash, Types::StartStreamSessionInput] params
    # @option params [String] :client_token
    #   <p> A unique identifier that represents a client request. The request is idempotent, which ensures that an API request completes only once. When users send a request, Amazon GameLift Streams automatically populates this field. </p>
    # @option params [String] :description
    #   <p>A human-readable label for the stream session. You can update this value later.</p>
    # @option params [String] :identifier
    #   <p>The stream group to run this stream session with.</p> <p>This value is an <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [String] :protocol
    #   <p>The data transport protocol to use for the stream session.</p>
    # @option params [String] :signal_request
    #   <p>A WebRTC ICE offer string to use when initializing a WebRTC connection. Typically, the offer is a very long JSON string. Provide the string as a text value in quotes.</p> <p>Amazon GameLift Streams also supports setting the field to "NO_CLIENT_CONNECTION". This will create a session without needing any browser request or Web SDK integration. The session starts up as usual and waits for a reconnection from a browser, which is accomplished using <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_CreateStreamSessionConnection.html">CreateStreamSessionConnection</a>.</p>
    # @option params [String] :application_identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @option params [String] :user_id
    #   <p> An opaque, unique identifier for an end-user, defined by the developer. </p>
    # @option params [Array<String>] :locations
    #   <p> A list of locations, in order of priority, where you want Amazon GameLift Streams to start a stream from. Amazon GameLift Streams selects the location with the next available capacity to start a single stream session in. If this value is empty, Amazon GameLift Streams attempts to start a stream session in the primary location. </p> <p> This value is A set of location names. For example, <code>us-east-1</code>. For a complete list of locations that Amazon GameLift Streams supports, refer to <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html">Regions, quotas, and limitations</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p>
    # @option params [Integer] :connection_timeout_seconds
    #   <p>Length of time (in seconds) that Amazon GameLift Streams should wait for a client to connect or reconnect to the stream session. This time span starts when the stream session reaches <code>ACTIVE</code> status. If no client connects before the timeout, Amazon GameLift Streams stops the stream session with status of <code>TERMINATED</code>. Default value is 120.</p>
    # @option params [Integer] :session_length_seconds
    #   <p>The maximum length of time (in seconds) that Amazon GameLift Streams keeps the stream session open. At this point, Amazon GameLift Streams ends the stream session regardless of any existing client connections. Default value is 43200.</p>
    # @option params [Array<String>] :additional_launch_args
    #   <p>A list of CLI arguments that are sent to the streaming server when a stream session launches. You can use this to configure the application or stream session details. You can also provide custom arguments that Amazon GameLift Streams passes to your game client.</p> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    # @option params [Hash<String, String>] :additional_environment_variables
    #   <p>A set of options that you can use to control the stream session runtime environment, expressed as a set of key-value pairs. You can use this to configure the application or stream session details. You can also provide custom environment variables that Amazon GameLift Streams passes to your game client.</p> <note> <p>If you want to debug your application with environment variables, we recommend that you do so in a local environment outside of Amazon GameLift Streams. For more information, refer to the Compatibility Guidance in the troubleshooting section of the Developer Guide.</p> </note> <p> <code>AdditionalEnvironmentVariables</code> and <code>AdditionalLaunchArgs</code> have similar purposes. <code>AdditionalEnvironmentVariables</code> passes data using environment variables; while <code>AdditionalLaunchArgs</code> passes data using command-line arguments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     description: "Description",
    #     identifier: "Identifier", # required
    #     protocol: "WebRTC" # One of: ["WebRTC"], # required
    #     signal_request: "SignalRequest", # required
    #     application_identifier: "Identifier", # required
    #     user_id: "UserId",
    #     locations: ["LocationName"],
    #     connection_timeout_seconds: 1,
    #     session_length_seconds: 1,
    #     additional_launch_args: ["String"],
    #     additional_environment_variables: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_stream_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn",
    #     description: "Description",
    #     stream_group_id: "Id",
    #     user_id: "UserId",
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"],
    #     status_reason: "internalError" # One of: ["internalError", "invalidSignalRequest", "placementTimeout", "applicationLogS3DestinationError"],
    #     protocol: "WebRTC" # One of: ["WebRTC"],
    #     location: "LocationName",
    #     signal_request: "SignalRequest",
    #     signal_response: "SignalResponse",
    #     connection_timeout_seconds: 1,
    #     session_length_seconds: 1,
    #     additional_launch_args: ["String"],
    #     additional_environment_variables: {
    #       "String" => "String"
    #     },
    #     log_file_location_uri: "FileLocationUri",
    #     web_sdk_protocol_url: "WebSdkProtocolUrl",
    #     last_updated_at: Time.now,
    #     created_at: Time.now,
    #     application_arn: "Arn",
    #     export_files_metadata: {
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "PENDING"],
    #       status_reason: "ExportFilesReason",
    #       output_uri: "OutputUri"
    #     }
    #   }
    # @return [Types::StartStreamSessionOutput]
    def start_stream_session(params = {}, options = {})
      request = build_request(:start_stream_session, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags to a Amazon GameLift Streams resource. Use tags to organize Amazon Web Services resources for a range of purposes. You can assign tags to the following Amazon GameLift Streams resource types:</p> <ul> <li> <p>Application</p> </li> <li> <p>StreamGroup</p> </li> </ul> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i> </p> <p> <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/"> Amazon Web Services Tagging Strategies</a> </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> of the Amazon GameLift Streams resource that you want to apply tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags, in the form of key-value pairs, to assign to the specified Amazon GameLift Streams resource.</p>
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

    # <p>Permanently terminates an active stream session. When called, the stream session status changes to <code>TERMINATING</code>. You can terminate a stream session in any status except <code>ACTIVATING</code>. If the stream session is in <code>ACTIVATING</code> status, an exception is thrown.</p>
    # @param [Hash, Types::TerminateStreamSessionInput] params
    # @option params [String] :identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p> <p>The stream group that runs this stream session.</p>
    # @option params [String] :stream_session_identifier
    #   <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream session resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567</code>. Example ID: <code>ABC123def4567</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     stream_session_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.terminate_stream_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def terminate_stream_session(params = {}, options = {})
      request = build_request(:terminate_stream_session, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from a Amazon GameLift Streams resource. To remove tags, specify the Amazon GameLift Streams resource and a list of one or more tags to remove.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> of the Amazon GameLift Streams resource that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the specified Amazon GameLift Streams resource.</p>
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

    # <p> Updates the mutable configuration settings for a Amazon GameLift Streams application resource. You can change the <code>Description</code>, <code>ApplicationLogOutputUri</code>, and <code>ApplicationLogPaths</code>. </p> <p>To update application settings, specify the application ID and provide the new values. If the operation is successful, it returns the complete updated set of settings for the application.</p>
    # @param [Hash, Types::UpdateApplicationInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the application resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6</code>. Example ID: <code>a-9ZY8X7Wv6</code>. </p>
    # @option params [String] :description
    #   <p>A human-readable label for the application.</p>
    # @option params [Array<String>] :application_log_paths
    #   <p>Locations of log files that your content generates during a stream session. Enter path values that are relative to the <code>ApplicationSourceUri</code> location. You can specify up to 10 log paths. Amazon GameLift Streams uploads designated log files to the Amazon S3 bucket that you specify in <code>ApplicationLogOutputUri</code> at the end of a stream session. To retrieve stored log files, call <a href="https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html">GetStreamSession</a> and get the <code>LogFileLocationUri</code>.</p>
    # @option params [String] :application_log_output_uri
    #   <p>An Amazon S3 URI to a bucket where you would like Amazon GameLift Streams to save application logs. Required if you specify one or more <code>ApplicationLogPaths</code>.</p> <note> <p>The log bucket must have permissions that give Amazon GameLift Streams access to write the log files. For more information, see <a href="https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/applications.html#application-bucket-permission-template">Application log bucket permission policy</a> in the <i>Amazon GameLift Streams Developer Guide</i>. </p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     description: "Description",
    #     application_log_paths: ["FilePath"],
    #     application_log_output_uri: "ApplicationLogOutputUri"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Identifier", # required
    #     description: "Description",
    #     runtime_environment: {
    #       type: "PROTON" # One of: ["PROTON", "WINDOWS", "UBUNTU"], # required
    #       version: "RuntimeEnvironmentVersion", # required
    #     },
    #     executable_path: "ExecutablePath",
    #     application_log_paths: ["FilePath"],
    #     application_log_output_uri: "ApplicationLogOutputUri",
    #     application_source_uri: "ApplicationSourceUri",
    #     id: "Id",
    #     status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"],
    #     status_reason: "internalError" # One of: ["internalError", "accessDenied"],
    #     replication_statuses: [
    #       {
    #         location: "LocationName",
    #         status: "REPLICATING" # One of: ["REPLICATING", "COMPLETED"]
    #       }
    #     ],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     associated_stream_groups: ["Arn"]
    #   }
    # @return [Types::UpdateApplicationOutput]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p> Updates the configuration settings for an Amazon GameLift Streams stream group resource. You can change the description, the set of locations, and the requested capacity of a stream group per location. If you want to change the stream class, create a new stream group. </p> <p> Stream capacity represents the number of concurrent streams that can be active at a time. You set stream capacity per location, per stream group. There are two types of capacity, always-on and on-demand: </p> <ul> <li> <p> <b>Always-on</b>: The streaming capacity that is allocated and ready to handle stream requests without delay. You pay for this capacity whether it's in use or not. Best for quickest time from streaming request to streaming session. </p> </li> <li> <p> <b>On-demand</b>: The streaming capacity that Amazon GameLift Streams can allocate in response to stream requests, and then de-allocate when the session has terminated. This offers a cost control measure at the expense of a greater startup time (typically under 5 minutes). </p> </li> </ul> <p>To update a stream group, specify the stream group's Amazon Resource Name (ARN) and provide the new values. If the request is successful, Amazon GameLift Streams returns the complete updated metadata for the stream group.</p>
    # @param [Hash, Types::UpdateStreamGroupInput] params
    # @option params [String] :identifier
    #   <p>An <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon Resource Name (ARN)</a> or ID that uniquely identifies the stream group resource. Example ARN: <code>arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4</code>. Example ID: <code>sg-1AB2C3De4</code>. </p>
    # @option params [Array<Types::LocationConfiguration>] :location_configurations
    #   <p> A set of one or more locations and the streaming capacity for each location. </p>
    # @option params [String] :description
    #   <p>A descriptive label for the stream group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Identifier", # required
    #     location_configurations: [
    #       {
    #         location_name: "LocationName", # required
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1
    #       }
    #     ],
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_stream_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Identifier", # required
    #     description: "Description",
    #     default_application: {
    #       id: "Id",
    #       arn: "Arn"
    #     },
    #     location_states: [
    #       {
    #         location_name: "LocationName",
    #         status: "ACTIVATING" # One of: ["ACTIVATING", "ACTIVE", "ERROR", "REMOVING"],
    #         always_on_capacity: 1,
    #         on_demand_capacity: 1,
    #         requested_capacity: 1,
    #         allocated_capacity: 1,
    #         idle_capacity: 1
    #       }
    #     ],
    #     stream_class: "gen4n_high" # One of: ["gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"],
    #     id: "Id",
    #     status: "ACTIVATING" # One of: ["ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"],
    #     status_reason: "internalError" # One of: ["internalError", "noAvailableInstances"],
    #     last_updated_at: Time.now,
    #     created_at: Time.now,
    #     associated_applications: ["Arn"]
    #   }
    # @return [Types::UpdateStreamGroupOutput]
    def update_stream_group(params = {}, options = {})
      request = build_request(:update_stream_group, params)
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
      context[:gem_name] = 'aws-sdk-gameliftstreams'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        application_deleted: Waiters::ApplicationDeleted,
        application_ready: Waiters::ApplicationReady,
        stream_group_active: Waiters::StreamGroupActive,
        stream_group_deleted: Waiters::StreamGroupDeleted,
        stream_session_active: Waiters::StreamSessionActive
      }
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

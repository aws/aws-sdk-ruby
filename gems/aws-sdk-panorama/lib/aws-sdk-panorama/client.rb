# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:panorama)

module Aws::Panorama
  # An API client for Panorama.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Panorama::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :panorama

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Panorama::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::Panorama::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Panorama::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates an application instance and deploys it to a device.
    #
    # @option params [String] :application_instance_id_to_replace
    #   The ID of an application instance to replace with the new instance.
    #
    # @option params [required, String] :default_runtime_context_device
    #   A device's ID.
    #
    # @option params [String] :description
    #   A description for the application instance.
    #
    # @option params [Types::ManifestOverridesPayload] :manifest_overrides_payload
    #   Setting overrides for the application manifest.
    #
    # @option params [required, Types::ManifestPayload] :manifest_payload
    #   The application's manifest document.
    #
    # @option params [String] :name
    #   A name for the application instance.
    #
    # @option params [String] :runtime_role_arn
    #   The ARN of a runtime role for the application instance.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the application instance.
    #
    # @return [Types::CreateApplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationInstanceResponse#application_instance_id #application_instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_instance({
    #     application_instance_id_to_replace: "ApplicationInstanceId",
    #     default_runtime_context_device: "DefaultRuntimeContextDevice", # required
    #     description: "Description",
    #     manifest_overrides_payload: {
    #       payload_data: "ManifestOverridesPayloadData",
    #     },
    #     manifest_payload: { # required
    #       payload_data: "ManifestPayloadData",
    #     },
    #     name: "ApplicationInstanceName",
    #     runtime_role_arn: "RuntimeRoleArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateApplicationInstance AWS API Documentation
    #
    # @overload create_application_instance(params = {})
    # @param [Hash] params ({})
    def create_application_instance(params = {}, options = {})
      req = build_request(:create_application_instance, params)
      req.send_request(options)
    end

    # Creates a job to run on a device. A job can update a device's
    # software or reboot it.
    #
    # @option params [required, Array<String>] :device_ids
    #   ID of target device.
    #
    # @option params [Types::DeviceJobConfig] :device_job_config
    #   Configuration settings for a software update job.
    #
    # @option params [required, String] :job_type
    #   The type of job to run.
    #
    # @return [Types::CreateJobForDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobForDevicesResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_for_devices({
    #     device_ids: ["DeviceId"], # required
    #     device_job_config: {
    #       ota_job_config: {
    #         allow_major_version_update: false,
    #         image_version: "ImageVersion", # required
    #       },
    #     },
    #     job_type: "OTA", # required, accepts OTA, REBOOT
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].device_id #=> String
    #   resp.jobs[0].job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateJobForDevices AWS API Documentation
    #
    # @overload create_job_for_devices(params = {})
    # @param [Hash] params ({})
    def create_job_for_devices(params = {}, options = {})
      req = build_request(:create_job_for_devices, params)
      req.send_request(options)
    end

    # Creates a camera stream node.
    #
    # @option params [Array<Types::JobResourceTags>] :job_tags
    #   Tags for the job.
    #
    # @option params [String] :node_description
    #   A description for the node.
    #
    # @option params [required, String] :node_name
    #   A name for the node.
    #
    # @option params [required, String] :output_package_name
    #   An output package name for the node.
    #
    # @option params [required, String] :output_package_version
    #   An output package version for the node.
    #
    # @option params [required, Hash<String,String>] :template_parameters
    #   Template parameters for the node.
    #
    # @option params [required, String] :template_type
    #   The type of node.
    #
    # @return [Types::CreateNodeFromTemplateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNodeFromTemplateJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_node_from_template_job({
    #     job_tags: [
    #       {
    #         resource_type: "PACKAGE", # required, accepts PACKAGE
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #     node_description: "Description",
    #     node_name: "NodeName", # required
    #     output_package_name: "NodePackageName", # required
    #     output_package_version: "NodePackageVersion", # required
    #     template_parameters: { # required
    #       "TemplateKey" => "TemplateValue",
    #     },
    #     template_type: "RTSP_CAMERA_STREAM", # required, accepts RTSP_CAMERA_STREAM
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateNodeFromTemplateJob AWS API Documentation
    #
    # @overload create_node_from_template_job(params = {})
    # @param [Hash] params ({})
    def create_node_from_template_job(params = {}, options = {})
      req = build_request(:create_node_from_template_job, params)
      req.send_request(options)
    end

    # Creates a package and storage location in an Amazon S3 access point.
    #
    # @option params [required, String] :package_name
    #   A name for the package.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the package.
    #
    # @return [Types::CreatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageResponse#arn #arn} => String
    #   * {Types::CreatePackageResponse#package_id #package_id} => String
    #   * {Types::CreatePackageResponse#storage_location #storage_location} => Types::StorageLocation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package({
    #     package_name: "NodePackageName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.package_id #=> String
    #   resp.storage_location.binary_prefix_location #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.generated_prefix_location #=> String
    #   resp.storage_location.manifest_prefix_location #=> String
    #   resp.storage_location.repo_prefix_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackage AWS API Documentation
    #
    # @overload create_package(params = {})
    # @param [Hash] params ({})
    def create_package(params = {}, options = {})
      req = build_request(:create_package, params)
      req.send_request(options)
    end

    # Imports a node package.
    #
    # @option params [required, String] :client_token
    #   A client token for the package import job.
    #
    # @option params [required, Types::PackageImportJobInputConfig] :input_config
    #   An input config for the package import job.
    #
    # @option params [Array<Types::JobResourceTags>] :job_tags
    #   Tags for the package import job.
    #
    # @option params [required, String] :job_type
    #   A job type for the package import job.
    #
    # @option params [required, Types::PackageImportJobOutputConfig] :output_config
    #   An output config for the package import job.
    #
    # @return [Types::CreatePackageImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageImportJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package_import_job({
    #     client_token: "ClientToken", # required
    #     input_config: { # required
    #       package_version_input_config: {
    #         s3_location: { # required
    #           bucket_name: "BucketName", # required
    #           object_key: "ObjectKey", # required
    #           region: "Region",
    #         },
    #       },
    #     },
    #     job_tags: [
    #       {
    #         resource_type: "PACKAGE", # required, accepts PACKAGE
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #     job_type: "NODE_PACKAGE_VERSION", # required, accepts NODE_PACKAGE_VERSION, MARKETPLACE_NODE_PACKAGE_VERSION
    #     output_config: { # required
    #       package_version_output_config: {
    #         mark_latest: false,
    #         package_name: "NodePackageName", # required
    #         package_version: "NodePackageVersion", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageImportJob AWS API Documentation
    #
    # @overload create_package_import_job(params = {})
    # @param [Hash] params ({})
    def create_package_import_job(params = {}, options = {})
      req = build_request(:create_package_import_job, params)
      req.send_request(options)
    end

    # Deletes a device.
    #
    # @option params [required, String] :device_id
    #   The device's ID.
    #
    # @return [Types::DeleteDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDeviceResponse#device_id #device_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device({
    #     device_id: "DeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeleteDevice AWS API Documentation
    #
    # @overload delete_device(params = {})
    # @param [Hash] params ({})
    def delete_device(params = {}, options = {})
      req = build_request(:delete_device, params)
      req.send_request(options)
    end

    # Deletes a package.
    #
    # <note markdown="1"> To delete a package, you need permission to call `s3:DeleteObject` in
    # addition to permissions for the AWS Panorama API.
    #
    #  </note>
    #
    # @option params [Boolean] :force_delete
    #   Delete the package even if it has artifacts stored in its access
    #   point. Deletes the package's artifacts from Amazon S3.
    #
    # @option params [required, String] :package_id
    #   The package's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package({
    #     force_delete: false,
    #     package_id: "NodePackageId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeletePackage AWS API Documentation
    #
    # @overload delete_package(params = {})
    # @param [Hash] params ({})
    def delete_package(params = {}, options = {})
      req = build_request(:delete_package, params)
      req.send_request(options)
    end

    # Deregisters a package version.
    #
    # @option params [String] :owner_account
    #   An owner account.
    #
    # @option params [required, String] :package_id
    #   A package ID.
    #
    # @option params [required, String] :package_version
    #   A package version.
    #
    # @option params [required, String] :patch_version
    #   A patch version.
    #
    # @option params [String] :updated_latest_patch_version
    #   If the version was marked latest, the new version to maker as latest.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_package_version({
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion", # required
    #     updated_latest_patch_version: "NodePackagePatchVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeregisterPackageVersion AWS API Documentation
    #
    # @overload deregister_package_version(params = {})
    # @param [Hash] params ({})
    def deregister_package_version(params = {}, options = {})
      req = build_request(:deregister_package_version, params)
      req.send_request(options)
    end

    # Returns information about an application instance on a device.
    #
    # @option params [required, String] :application_instance_id
    #   The application instance's ID.
    #
    # @return [Types::DescribeApplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationInstanceResponse#application_instance_id #application_instance_id} => String
    #   * {Types::DescribeApplicationInstanceResponse#application_instance_id_to_replace #application_instance_id_to_replace} => String
    #   * {Types::DescribeApplicationInstanceResponse#arn #arn} => String
    #   * {Types::DescribeApplicationInstanceResponse#created_time #created_time} => Time
    #   * {Types::DescribeApplicationInstanceResponse#default_runtime_context_device #default_runtime_context_device} => String
    #   * {Types::DescribeApplicationInstanceResponse#default_runtime_context_device_name #default_runtime_context_device_name} => String
    #   * {Types::DescribeApplicationInstanceResponse#description #description} => String
    #   * {Types::DescribeApplicationInstanceResponse#health_status #health_status} => String
    #   * {Types::DescribeApplicationInstanceResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeApplicationInstanceResponse#name #name} => String
    #   * {Types::DescribeApplicationInstanceResponse#runtime_context_states #runtime_context_states} => Array&lt;Types::ReportedRuntimeContextState&gt;
    #   * {Types::DescribeApplicationInstanceResponse#runtime_role_arn #runtime_role_arn} => String
    #   * {Types::DescribeApplicationInstanceResponse#status #status} => String
    #   * {Types::DescribeApplicationInstanceResponse#status_description #status_description} => String
    #   * {Types::DescribeApplicationInstanceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_instance({
    #     application_instance_id: "ApplicationInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_instance_id #=> String
    #   resp.application_instance_id_to_replace #=> String
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.default_runtime_context_device #=> String
    #   resp.default_runtime_context_device_name #=> String
    #   resp.description #=> String
    #   resp.health_status #=> String, one of "RUNNING", "ERROR", "NOT_AVAILABLE"
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.runtime_context_states #=> Array
    #   resp.runtime_context_states[0].desired_state #=> String, one of "RUNNING", "STOPPED", "REMOVED"
    #   resp.runtime_context_states[0].device_reported_status #=> String, one of "STOPPING", "STOPPED", "STOP_ERROR", "REMOVAL_FAILED", "REMOVAL_IN_PROGRESS", "STARTING", "RUNNING", "INSTALL_ERROR", "LAUNCHED", "LAUNCH_ERROR", "INSTALL_IN_PROGRESS"
    #   resp.runtime_context_states[0].device_reported_time #=> Time
    #   resp.runtime_context_states[0].runtime_context_name #=> String
    #   resp.runtime_role_arn #=> String
    #   resp.status #=> String, one of "DEPLOYMENT_PENDING", "DEPLOYMENT_REQUESTED", "DEPLOYMENT_IN_PROGRESS", "DEPLOYMENT_ERROR", "DEPLOYMENT_SUCCEEDED", "REMOVAL_PENDING", "REMOVAL_REQUESTED", "REMOVAL_IN_PROGRESS", "REMOVAL_FAILED", "REMOVAL_SUCCEEDED", "DEPLOYMENT_FAILED"
    #   resp.status_description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstance AWS API Documentation
    #
    # @overload describe_application_instance(params = {})
    # @param [Hash] params ({})
    def describe_application_instance(params = {}, options = {})
      req = build_request(:describe_application_instance, params)
      req.send_request(options)
    end

    # Returns information about an application instance's configuration
    # manifest.
    #
    # @option params [required, String] :application_instance_id
    #   The application instance's ID.
    #
    # @return [Types::DescribeApplicationInstanceDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationInstanceDetailsResponse#application_instance_id #application_instance_id} => String
    #   * {Types::DescribeApplicationInstanceDetailsResponse#application_instance_id_to_replace #application_instance_id_to_replace} => String
    #   * {Types::DescribeApplicationInstanceDetailsResponse#created_time #created_time} => Time
    #   * {Types::DescribeApplicationInstanceDetailsResponse#default_runtime_context_device #default_runtime_context_device} => String
    #   * {Types::DescribeApplicationInstanceDetailsResponse#description #description} => String
    #   * {Types::DescribeApplicationInstanceDetailsResponse#manifest_overrides_payload #manifest_overrides_payload} => Types::ManifestOverridesPayload
    #   * {Types::DescribeApplicationInstanceDetailsResponse#manifest_payload #manifest_payload} => Types::ManifestPayload
    #   * {Types::DescribeApplicationInstanceDetailsResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_instance_details({
    #     application_instance_id: "ApplicationInstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_instance_id #=> String
    #   resp.application_instance_id_to_replace #=> String
    #   resp.created_time #=> Time
    #   resp.default_runtime_context_device #=> String
    #   resp.description #=> String
    #   resp.manifest_overrides_payload.payload_data #=> String
    #   resp.manifest_payload.payload_data #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceDetails AWS API Documentation
    #
    # @overload describe_application_instance_details(params = {})
    # @param [Hash] params ({})
    def describe_application_instance_details(params = {}, options = {})
      req = build_request(:describe_application_instance_details, params)
      req.send_request(options)
    end

    # Returns information about a device.
    #
    # @option params [required, String] :device_id
    #   The device's ID.
    #
    # @return [Types::DescribeDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeviceResponse#alternate_softwares #alternate_softwares} => Array&lt;Types::AlternateSoftwareMetadata&gt;
    #   * {Types::DescribeDeviceResponse#arn #arn} => String
    #   * {Types::DescribeDeviceResponse#brand #brand} => String
    #   * {Types::DescribeDeviceResponse#created_time #created_time} => Time
    #   * {Types::DescribeDeviceResponse#current_networking_status #current_networking_status} => Types::NetworkStatus
    #   * {Types::DescribeDeviceResponse#current_software #current_software} => String
    #   * {Types::DescribeDeviceResponse#description #description} => String
    #   * {Types::DescribeDeviceResponse#device_aggregated_status #device_aggregated_status} => String
    #   * {Types::DescribeDeviceResponse#device_connection_status #device_connection_status} => String
    #   * {Types::DescribeDeviceResponse#device_id #device_id} => String
    #   * {Types::DescribeDeviceResponse#latest_alternate_software #latest_alternate_software} => String
    #   * {Types::DescribeDeviceResponse#latest_device_job #latest_device_job} => Types::LatestDeviceJob
    #   * {Types::DescribeDeviceResponse#latest_software #latest_software} => String
    #   * {Types::DescribeDeviceResponse#lease_expiration_time #lease_expiration_time} => Time
    #   * {Types::DescribeDeviceResponse#name #name} => String
    #   * {Types::DescribeDeviceResponse#networking_configuration #networking_configuration} => Types::NetworkPayload
    #   * {Types::DescribeDeviceResponse#provisioning_status #provisioning_status} => String
    #   * {Types::DescribeDeviceResponse#serial_number #serial_number} => String
    #   * {Types::DescribeDeviceResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeDeviceResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device({
    #     device_id: "DeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alternate_softwares #=> Array
    #   resp.alternate_softwares[0].version #=> String
    #   resp.arn #=> String
    #   resp.brand #=> String, one of "AWS_PANORAMA", "LENOVO"
    #   resp.created_time #=> Time
    #   resp.current_networking_status.ethernet_0_status.connection_status #=> String, one of "CONNECTED", "NOT_CONNECTED", "CONNECTING"
    #   resp.current_networking_status.ethernet_0_status.hw_address #=> String
    #   resp.current_networking_status.ethernet_0_status.ip_address #=> String
    #   resp.current_networking_status.ethernet_1_status.connection_status #=> String, one of "CONNECTED", "NOT_CONNECTED", "CONNECTING"
    #   resp.current_networking_status.ethernet_1_status.hw_address #=> String
    #   resp.current_networking_status.ethernet_1_status.ip_address #=> String
    #   resp.current_networking_status.last_updated_time #=> Time
    #   resp.current_networking_status.ntp_status.connection_status #=> String, one of "CONNECTED", "NOT_CONNECTED", "CONNECTING"
    #   resp.current_networking_status.ntp_status.ip_address #=> String
    #   resp.current_networking_status.ntp_status.ntp_server_name #=> String
    #   resp.current_software #=> String
    #   resp.description #=> String
    #   resp.device_aggregated_status #=> String, one of "ERROR", "AWAITING_PROVISIONING", "PENDING", "FAILED", "DELETING", "ONLINE", "OFFLINE", "LEASE_EXPIRED", "UPDATE_NEEDED", "REBOOTING"
    #   resp.device_connection_status #=> String, one of "ONLINE", "OFFLINE", "AWAITING_CREDENTIALS", "NOT_AVAILABLE", "ERROR"
    #   resp.device_id #=> String
    #   resp.latest_alternate_software #=> String
    #   resp.latest_device_job.image_version #=> String
    #   resp.latest_device_job.job_type #=> String, one of "OTA", "REBOOT"
    #   resp.latest_device_job.status #=> String, one of "PENDING", "IN_PROGRESS", "VERIFYING", "REBOOTING", "DOWNLOADING", "COMPLETED", "FAILED"
    #   resp.latest_software #=> String
    #   resp.lease_expiration_time #=> Time
    #   resp.name #=> String
    #   resp.networking_configuration.ethernet_0.connection_type #=> String, one of "STATIC_IP", "DHCP"
    #   resp.networking_configuration.ethernet_0.static_ip_connection_info.default_gateway #=> String
    #   resp.networking_configuration.ethernet_0.static_ip_connection_info.dns #=> Array
    #   resp.networking_configuration.ethernet_0.static_ip_connection_info.dns[0] #=> String
    #   resp.networking_configuration.ethernet_0.static_ip_connection_info.ip_address #=> String
    #   resp.networking_configuration.ethernet_0.static_ip_connection_info.mask #=> String
    #   resp.networking_configuration.ethernet_1.connection_type #=> String, one of "STATIC_IP", "DHCP"
    #   resp.networking_configuration.ethernet_1.static_ip_connection_info.default_gateway #=> String
    #   resp.networking_configuration.ethernet_1.static_ip_connection_info.dns #=> Array
    #   resp.networking_configuration.ethernet_1.static_ip_connection_info.dns[0] #=> String
    #   resp.networking_configuration.ethernet_1.static_ip_connection_info.ip_address #=> String
    #   resp.networking_configuration.ethernet_1.static_ip_connection_info.mask #=> String
    #   resp.networking_configuration.ntp.ntp_servers #=> Array
    #   resp.networking_configuration.ntp.ntp_servers[0] #=> String
    #   resp.provisioning_status #=> String, one of "AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"
    #   resp.serial_number #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.type #=> String, one of "PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDevice AWS API Documentation
    #
    # @overload describe_device(params = {})
    # @param [Hash] params ({})
    def describe_device(params = {}, options = {})
      req = build_request(:describe_device, params)
      req.send_request(options)
    end

    # Returns information about a device job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::DescribeDeviceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeviceJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeDeviceJobResponse#device_arn #device_arn} => String
    #   * {Types::DescribeDeviceJobResponse#device_id #device_id} => String
    #   * {Types::DescribeDeviceJobResponse#device_name #device_name} => String
    #   * {Types::DescribeDeviceJobResponse#device_type #device_type} => String
    #   * {Types::DescribeDeviceJobResponse#image_version #image_version} => String
    #   * {Types::DescribeDeviceJobResponse#job_id #job_id} => String
    #   * {Types::DescribeDeviceJobResponse#job_type #job_type} => String
    #   * {Types::DescribeDeviceJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_time #=> Time
    #   resp.device_arn #=> String
    #   resp.device_id #=> String
    #   resp.device_name #=> String
    #   resp.device_type #=> String, one of "PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"
    #   resp.image_version #=> String
    #   resp.job_id #=> String
    #   resp.job_type #=> String, one of "OTA", "REBOOT"
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "VERIFYING", "REBOOTING", "DOWNLOADING", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceJob AWS API Documentation
    #
    # @overload describe_device_job(params = {})
    # @param [Hash] params ({})
    def describe_device_job(params = {}, options = {})
      req = build_request(:describe_device_job, params)
      req.send_request(options)
    end

    # Returns information about a node.
    #
    # @option params [required, String] :node_id
    #   The node's ID.
    #
    # @option params [String] :owner_account
    #   The account ID of the node's owner.
    #
    # @return [Types::DescribeNodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNodeResponse#asset_name #asset_name} => String
    #   * {Types::DescribeNodeResponse#category #category} => String
    #   * {Types::DescribeNodeResponse#created_time #created_time} => Time
    #   * {Types::DescribeNodeResponse#description #description} => String
    #   * {Types::DescribeNodeResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeNodeResponse#name #name} => String
    #   * {Types::DescribeNodeResponse#node_id #node_id} => String
    #   * {Types::DescribeNodeResponse#node_interface #node_interface} => Types::NodeInterface
    #   * {Types::DescribeNodeResponse#owner_account #owner_account} => String
    #   * {Types::DescribeNodeResponse#package_arn #package_arn} => String
    #   * {Types::DescribeNodeResponse#package_id #package_id} => String
    #   * {Types::DescribeNodeResponse#package_name #package_name} => String
    #   * {Types::DescribeNodeResponse#package_version #package_version} => String
    #   * {Types::DescribeNodeResponse#patch_version #patch_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node({
    #     node_id: "NodeId", # required
    #     owner_account: "PackageOwnerAccount",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_name #=> String
    #   resp.category #=> String, one of "BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"
    #   resp.created_time #=> Time
    #   resp.description #=> String
    #   resp.last_updated_time #=> Time
    #   resp.name #=> String
    #   resp.node_id #=> String
    #   resp.node_interface.inputs #=> Array
    #   resp.node_interface.inputs[0].default_value #=> String
    #   resp.node_interface.inputs[0].description #=> String
    #   resp.node_interface.inputs[0].max_connections #=> Integer
    #   resp.node_interface.inputs[0].name #=> String
    #   resp.node_interface.inputs[0].type #=> String, one of "BOOLEAN", "STRING", "INT32", "FLOAT32", "MEDIA"
    #   resp.node_interface.outputs #=> Array
    #   resp.node_interface.outputs[0].description #=> String
    #   resp.node_interface.outputs[0].name #=> String
    #   resp.node_interface.outputs[0].type #=> String, one of "BOOLEAN", "STRING", "INT32", "FLOAT32", "MEDIA"
    #   resp.owner_account #=> String
    #   resp.package_arn #=> String
    #   resp.package_id #=> String
    #   resp.package_name #=> String
    #   resp.package_version #=> String
    #   resp.patch_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNode AWS API Documentation
    #
    # @overload describe_node(params = {})
    # @param [Hash] params ({})
    def describe_node(params = {}, options = {})
      req = build_request(:describe_node, params)
      req.send_request(options)
    end

    # Returns information about a job to create a camera stream node.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::DescribeNodeFromTemplateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNodeFromTemplateJobResponse#created_time #created_time} => Time
    #   * {Types::DescribeNodeFromTemplateJobResponse#job_id #job_id} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#job_tags #job_tags} => Array&lt;Types::JobResourceTags&gt;
    #   * {Types::DescribeNodeFromTemplateJobResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeNodeFromTemplateJobResponse#node_description #node_description} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#node_name #node_name} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#output_package_name #output_package_name} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#output_package_version #output_package_version} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#status #status} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#status_message #status_message} => String
    #   * {Types::DescribeNodeFromTemplateJobResponse#template_parameters #template_parameters} => Hash&lt;String,String&gt;
    #   * {Types::DescribeNodeFromTemplateJobResponse#template_type #template_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_from_template_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_time #=> Time
    #   resp.job_id #=> String
    #   resp.job_tags #=> Array
    #   resp.job_tags[0].resource_type #=> String, one of "PACKAGE"
    #   resp.job_tags[0].tags #=> Hash
    #   resp.job_tags[0].tags["TagKey"] #=> String
    #   resp.last_updated_time #=> Time
    #   resp.node_description #=> String
    #   resp.node_name #=> String
    #   resp.output_package_name #=> String
    #   resp.output_package_version #=> String
    #   resp.status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #   resp.template_parameters #=> Hash
    #   resp.template_parameters["TemplateKey"] #=> String
    #   resp.template_type #=> String, one of "RTSP_CAMERA_STREAM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeFromTemplateJob AWS API Documentation
    #
    # @overload describe_node_from_template_job(params = {})
    # @param [Hash] params ({})
    def describe_node_from_template_job(params = {}, options = {})
      req = build_request(:describe_node_from_template_job, params)
      req.send_request(options)
    end

    # Returns information about a package.
    #
    # @option params [required, String] :package_id
    #   The package's ID.
    #
    # @return [Types::DescribePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackageResponse#arn #arn} => String
    #   * {Types::DescribePackageResponse#created_time #created_time} => Time
    #   * {Types::DescribePackageResponse#package_id #package_id} => String
    #   * {Types::DescribePackageResponse#package_name #package_name} => String
    #   * {Types::DescribePackageResponse#read_access_principal_arns #read_access_principal_arns} => Array&lt;String&gt;
    #   * {Types::DescribePackageResponse#storage_location #storage_location} => Types::StorageLocation
    #   * {Types::DescribePackageResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribePackageResponse#write_access_principal_arns #write_access_principal_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package({
    #     package_id: "NodePackageId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_time #=> Time
    #   resp.package_id #=> String
    #   resp.package_name #=> String
    #   resp.read_access_principal_arns #=> Array
    #   resp.read_access_principal_arns[0] #=> String
    #   resp.storage_location.binary_prefix_location #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.generated_prefix_location #=> String
    #   resp.storage_location.manifest_prefix_location #=> String
    #   resp.storage_location.repo_prefix_location #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.write_access_principal_arns #=> Array
    #   resp.write_access_principal_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackage AWS API Documentation
    #
    # @overload describe_package(params = {})
    # @param [Hash] params ({})
    def describe_package(params = {}, options = {})
      req = build_request(:describe_package, params)
      req.send_request(options)
    end

    # Returns information about a package import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::DescribePackageImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackageImportJobResponse#client_token #client_token} => String
    #   * {Types::DescribePackageImportJobResponse#created_time #created_time} => Time
    #   * {Types::DescribePackageImportJobResponse#input_config #input_config} => Types::PackageImportJobInputConfig
    #   * {Types::DescribePackageImportJobResponse#job_id #job_id} => String
    #   * {Types::DescribePackageImportJobResponse#job_tags #job_tags} => Array&lt;Types::JobResourceTags&gt;
    #   * {Types::DescribePackageImportJobResponse#job_type #job_type} => String
    #   * {Types::DescribePackageImportJobResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribePackageImportJobResponse#output #output} => Types::PackageImportJobOutput
    #   * {Types::DescribePackageImportJobResponse#output_config #output_config} => Types::PackageImportJobOutputConfig
    #   * {Types::DescribePackageImportJobResponse#status #status} => String
    #   * {Types::DescribePackageImportJobResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_import_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_token #=> String
    #   resp.created_time #=> Time
    #   resp.input_config.package_version_input_config.s3_location.bucket_name #=> String
    #   resp.input_config.package_version_input_config.s3_location.object_key #=> String
    #   resp.input_config.package_version_input_config.s3_location.region #=> String
    #   resp.job_id #=> String
    #   resp.job_tags #=> Array
    #   resp.job_tags[0].resource_type #=> String, one of "PACKAGE"
    #   resp.job_tags[0].tags #=> Hash
    #   resp.job_tags[0].tags["TagKey"] #=> String
    #   resp.job_type #=> String, one of "NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"
    #   resp.last_updated_time #=> Time
    #   resp.output.output_s3_location.bucket_name #=> String
    #   resp.output.output_s3_location.object_key #=> String
    #   resp.output.package_id #=> String
    #   resp.output.package_version #=> String
    #   resp.output.patch_version #=> String
    #   resp.output_config.package_version_output_config.mark_latest #=> Boolean
    #   resp.output_config.package_version_output_config.package_name #=> String
    #   resp.output_config.package_version_output_config.package_version #=> String
    #   resp.status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageImportJob AWS API Documentation
    #
    # @overload describe_package_import_job(params = {})
    # @param [Hash] params ({})
    def describe_package_import_job(params = {}, options = {})
      req = build_request(:describe_package_import_job, params)
      req.send_request(options)
    end

    # Returns information about a package version.
    #
    # @option params [String] :owner_account
    #   The version's owner account.
    #
    # @option params [required, String] :package_id
    #   The version's ID.
    #
    # @option params [required, String] :package_version
    #   The version's version.
    #
    # @option params [String] :patch_version
    #   The version's patch version.
    #
    # @return [Types::DescribePackageVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackageVersionResponse#is_latest_patch #is_latest_patch} => Boolean
    #   * {Types::DescribePackageVersionResponse#owner_account #owner_account} => String
    #   * {Types::DescribePackageVersionResponse#package_arn #package_arn} => String
    #   * {Types::DescribePackageVersionResponse#package_id #package_id} => String
    #   * {Types::DescribePackageVersionResponse#package_name #package_name} => String
    #   * {Types::DescribePackageVersionResponse#package_version #package_version} => String
    #   * {Types::DescribePackageVersionResponse#patch_version #patch_version} => String
    #   * {Types::DescribePackageVersionResponse#registered_time #registered_time} => Time
    #   * {Types::DescribePackageVersionResponse#status #status} => String
    #   * {Types::DescribePackageVersionResponse#status_description #status_description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_version({
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.is_latest_patch #=> Boolean
    #   resp.owner_account #=> String
    #   resp.package_arn #=> String
    #   resp.package_id #=> String
    #   resp.package_name #=> String
    #   resp.package_version #=> String
    #   resp.patch_version #=> String
    #   resp.registered_time #=> Time
    #   resp.status #=> String, one of "REGISTER_PENDING", "REGISTER_COMPLETED", "FAILED", "DELETING"
    #   resp.status_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageVersion AWS API Documentation
    #
    # @overload describe_package_version(params = {})
    # @param [Hash] params ({})
    def describe_package_version(params = {}, options = {})
      req = build_request(:describe_package_version, params)
      req.send_request(options)
    end

    # Returns a list of application instance dependencies.
    #
    # @option params [required, String] :application_instance_id
    #   The application instance's ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of application instance dependencies to return in
    #   one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListApplicationInstanceDependenciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationInstanceDependenciesResponse#next_token #next_token} => String
    #   * {Types::ListApplicationInstanceDependenciesResponse#package_objects #package_objects} => Array&lt;Types::PackageObject&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_instance_dependencies({
    #     application_instance_id: "ApplicationInstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.package_objects #=> Array
    #   resp.package_objects[0].name #=> String
    #   resp.package_objects[0].package_version #=> String
    #   resp.package_objects[0].patch_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceDependencies AWS API Documentation
    #
    # @overload list_application_instance_dependencies(params = {})
    # @param [Hash] params ({})
    def list_application_instance_dependencies(params = {}, options = {})
      req = build_request(:list_application_instance_dependencies, params)
      req.send_request(options)
    end

    # Returns a list of application node instances.
    #
    # @option params [required, String] :application_instance_id
    #   The node instances' application instance ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of node instances to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListApplicationInstanceNodeInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationInstanceNodeInstancesResponse#next_token #next_token} => String
    #   * {Types::ListApplicationInstanceNodeInstancesResponse#node_instances #node_instances} => Array&lt;Types::NodeInstance&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_instance_node_instances({
    #     application_instance_id: "ApplicationInstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.node_instances #=> Array
    #   resp.node_instances[0].current_status #=> String, one of "RUNNING", "ERROR", "NOT_AVAILABLE", "PAUSED"
    #   resp.node_instances[0].node_id #=> String
    #   resp.node_instances[0].node_instance_id #=> String
    #   resp.node_instances[0].node_name #=> String
    #   resp.node_instances[0].package_name #=> String
    #   resp.node_instances[0].package_patch_version #=> String
    #   resp.node_instances[0].package_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceNodeInstances AWS API Documentation
    #
    # @overload list_application_instance_node_instances(params = {})
    # @param [Hash] params ({})
    def list_application_instance_node_instances(params = {}, options = {})
      req = build_request(:list_application_instance_node_instances, params)
      req.send_request(options)
    end

    # Returns a list of application instances.
    #
    # @option params [String] :device_id
    #   The application instances' device ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of application instances to return in one page of
    #   results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [String] :status_filter
    #   Only include instances with a specific status.
    #
    # @return [Types::ListApplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationInstancesResponse#application_instances #application_instances} => Array&lt;Types::ApplicationInstance&gt;
    #   * {Types::ListApplicationInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_instances({
    #     device_id: "DeviceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status_filter: "DEPLOYMENT_SUCCEEDED", # accepts DEPLOYMENT_SUCCEEDED, DEPLOYMENT_ERROR, REMOVAL_SUCCEEDED, REMOVAL_FAILED, PROCESSING_DEPLOYMENT, PROCESSING_REMOVAL, DEPLOYMENT_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.application_instances #=> Array
    #   resp.application_instances[0].application_instance_id #=> String
    #   resp.application_instances[0].arn #=> String
    #   resp.application_instances[0].created_time #=> Time
    #   resp.application_instances[0].default_runtime_context_device #=> String
    #   resp.application_instances[0].default_runtime_context_device_name #=> String
    #   resp.application_instances[0].description #=> String
    #   resp.application_instances[0].health_status #=> String, one of "RUNNING", "ERROR", "NOT_AVAILABLE"
    #   resp.application_instances[0].name #=> String
    #   resp.application_instances[0].runtime_context_states #=> Array
    #   resp.application_instances[0].runtime_context_states[0].desired_state #=> String, one of "RUNNING", "STOPPED", "REMOVED"
    #   resp.application_instances[0].runtime_context_states[0].device_reported_status #=> String, one of "STOPPING", "STOPPED", "STOP_ERROR", "REMOVAL_FAILED", "REMOVAL_IN_PROGRESS", "STARTING", "RUNNING", "INSTALL_ERROR", "LAUNCHED", "LAUNCH_ERROR", "INSTALL_IN_PROGRESS"
    #   resp.application_instances[0].runtime_context_states[0].device_reported_time #=> Time
    #   resp.application_instances[0].runtime_context_states[0].runtime_context_name #=> String
    #   resp.application_instances[0].status #=> String, one of "DEPLOYMENT_PENDING", "DEPLOYMENT_REQUESTED", "DEPLOYMENT_IN_PROGRESS", "DEPLOYMENT_ERROR", "DEPLOYMENT_SUCCEEDED", "REMOVAL_PENDING", "REMOVAL_REQUESTED", "REMOVAL_IN_PROGRESS", "REMOVAL_FAILED", "REMOVAL_SUCCEEDED", "DEPLOYMENT_FAILED"
    #   resp.application_instances[0].status_description #=> String
    #   resp.application_instances[0].tags #=> Hash
    #   resp.application_instances[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstances AWS API Documentation
    #
    # @overload list_application_instances(params = {})
    # @param [Hash] params ({})
    def list_application_instances(params = {}, options = {})
      req = build_request(:list_application_instances, params)
      req.send_request(options)
    end

    # Returns a list of devices.
    #
    # @option params [String] :device_aggregated_status_filter
    #   Filter based on a device's status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of devices to return in one page of results.
    #
    # @option params [String] :name_filter
    #   Filter based on device's name. Prefixes supported.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [String] :sort_by
    #   The target column to be sorted on. Default column sort is
    #   CREATED\_TIME.
    #
    # @option params [String] :sort_order
    #   The sorting order for the returned list. SortOrder is DESCENDING by
    #   default based on CREATED\_TIME. Otherwise, SortOrder is ASCENDING.
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::Device&gt;
    #   * {Types::ListDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     device_aggregated_status_filter: "ERROR", # accepts ERROR, AWAITING_PROVISIONING, PENDING, FAILED, DELETING, ONLINE, OFFLINE, LEASE_EXPIRED, UPDATE_NEEDED, REBOOTING
    #     max_results: 1,
    #     name_filter: "NameFilter",
    #     next_token: "NextToken",
    #     sort_by: "DEVICE_ID", # accepts DEVICE_ID, CREATED_TIME, NAME, DEVICE_AGGREGATED_STATUS
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].brand #=> String, one of "AWS_PANORAMA", "LENOVO"
    #   resp.devices[0].created_time #=> Time
    #   resp.devices[0].current_software #=> String
    #   resp.devices[0].description #=> String
    #   resp.devices[0].device_aggregated_status #=> String, one of "ERROR", "AWAITING_PROVISIONING", "PENDING", "FAILED", "DELETING", "ONLINE", "OFFLINE", "LEASE_EXPIRED", "UPDATE_NEEDED", "REBOOTING"
    #   resp.devices[0].device_id #=> String
    #   resp.devices[0].last_updated_time #=> Time
    #   resp.devices[0].latest_device_job.image_version #=> String
    #   resp.devices[0].latest_device_job.job_type #=> String, one of "OTA", "REBOOT"
    #   resp.devices[0].latest_device_job.status #=> String, one of "PENDING", "IN_PROGRESS", "VERIFYING", "REBOOTING", "DOWNLOADING", "COMPLETED", "FAILED"
    #   resp.devices[0].lease_expiration_time #=> Time
    #   resp.devices[0].name #=> String
    #   resp.devices[0].provisioning_status #=> String, one of "AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"
    #   resp.devices[0].tags #=> Hash
    #   resp.devices[0].tags["TagKey"] #=> String
    #   resp.devices[0].type #=> String, one of "PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Returns a list of jobs.
    #
    # @option params [String] :device_id
    #   Filter results by the job's target device ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of device jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListDevicesJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesJobsResponse#device_jobs #device_jobs} => Array&lt;Types::DeviceJob&gt;
    #   * {Types::ListDevicesJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices_jobs({
    #     device_id: "DeviceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.device_jobs #=> Array
    #   resp.device_jobs[0].created_time #=> Time
    #   resp.device_jobs[0].device_id #=> String
    #   resp.device_jobs[0].device_name #=> String
    #   resp.device_jobs[0].job_id #=> String
    #   resp.device_jobs[0].job_type #=> String, one of "OTA", "REBOOT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesJobs AWS API Documentation
    #
    # @overload list_devices_jobs(params = {})
    # @param [Hash] params ({})
    def list_devices_jobs(params = {}, options = {})
      req = build_request(:list_devices_jobs, params)
      req.send_request(options)
    end

    # Returns a list of camera stream node jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of node from template jobs to return in one page of
    #   results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListNodeFromTemplateJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodeFromTemplateJobsResponse#next_token #next_token} => String
    #   * {Types::ListNodeFromTemplateJobsResponse#node_from_template_jobs #node_from_template_jobs} => Array&lt;Types::NodeFromTemplateJob&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_node_from_template_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.node_from_template_jobs #=> Array
    #   resp.node_from_template_jobs[0].created_time #=> Time
    #   resp.node_from_template_jobs[0].job_id #=> String
    #   resp.node_from_template_jobs[0].node_name #=> String
    #   resp.node_from_template_jobs[0].status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.node_from_template_jobs[0].status_message #=> String
    #   resp.node_from_template_jobs[0].template_type #=> String, one of "RTSP_CAMERA_STREAM"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodeFromTemplateJobs AWS API Documentation
    #
    # @overload list_node_from_template_jobs(params = {})
    # @param [Hash] params ({})
    def list_node_from_template_jobs(params = {}, options = {})
      req = build_request(:list_node_from_template_jobs, params)
      req.send_request(options)
    end

    # Returns a list of nodes.
    #
    # @option params [String] :category
    #   Search for nodes by category.
    #
    # @option params [Integer] :max_results
    #   The maximum number of nodes to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [String] :owner_account
    #   Search for nodes by the account ID of the nodes' owner.
    #
    # @option params [String] :package_name
    #   Search for nodes by name.
    #
    # @option params [String] :package_version
    #   Search for nodes by version.
    #
    # @option params [String] :patch_version
    #   Search for nodes by patch version.
    #
    # @return [Types::ListNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNodesResponse#next_token #next_token} => String
    #   * {Types::ListNodesResponse#nodes #nodes} => Array&lt;Types::Node&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes({
    #     category: "BUSINESS_LOGIC", # accepts BUSINESS_LOGIC, ML_MODEL, MEDIA_SOURCE, MEDIA_SINK
    #     max_results: 1,
    #     next_token: "Token",
    #     owner_account: "PackageOwnerAccount",
    #     package_name: "NodePackageName",
    #     package_version: "NodePackageVersion",
    #     patch_version: "NodePackagePatchVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.nodes #=> Array
    #   resp.nodes[0].category #=> String, one of "BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"
    #   resp.nodes[0].created_time #=> Time
    #   resp.nodes[0].description #=> String
    #   resp.nodes[0].name #=> String
    #   resp.nodes[0].node_id #=> String
    #   resp.nodes[0].owner_account #=> String
    #   resp.nodes[0].package_arn #=> String
    #   resp.nodes[0].package_id #=> String
    #   resp.nodes[0].package_name #=> String
    #   resp.nodes[0].package_version #=> String
    #   resp.nodes[0].patch_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodes AWS API Documentation
    #
    # @overload list_nodes(params = {})
    # @param [Hash] params ({})
    def list_nodes(params = {}, options = {})
      req = build_request(:list_nodes, params)
      req.send_request(options)
    end

    # Returns a list of package import jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of package import jobs to return in one page of
    #   results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListPackageImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackageImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListPackageImportJobsResponse#package_import_jobs #package_import_jobs} => Array&lt;Types::PackageImportJob&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_import_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.package_import_jobs #=> Array
    #   resp.package_import_jobs[0].created_time #=> Time
    #   resp.package_import_jobs[0].job_id #=> String
    #   resp.package_import_jobs[0].job_type #=> String, one of "NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"
    #   resp.package_import_jobs[0].last_updated_time #=> Time
    #   resp.package_import_jobs[0].status #=> String, one of "PENDING", "SUCCEEDED", "FAILED"
    #   resp.package_import_jobs[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackageImportJobs AWS API Documentation
    #
    # @overload list_package_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_package_import_jobs(params = {}, options = {})
      req = build_request(:list_package_import_jobs, params)
      req.send_request(options)
    end

    # Returns a list of packages.
    #
    # @option params [Integer] :max_results
    #   The maximum number of packages to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListPackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagesResponse#next_token #next_token} => String
    #   * {Types::ListPackagesResponse#packages #packages} => Array&lt;Types::PackageListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.packages #=> Array
    #   resp.packages[0].arn #=> String
    #   resp.packages[0].created_time #=> Time
    #   resp.packages[0].package_id #=> String
    #   resp.packages[0].package_name #=> String
    #   resp.packages[0].tags #=> Hash
    #   resp.packages[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackages AWS API Documentation
    #
    # @overload list_packages(params = {})
    # @param [Hash] params ({})
    def list_packages(params = {}, options = {})
      req = build_request(:list_packages, params)
      req.send_request(options)
    end

    # Returns a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a device and returns a configuration archive. The
    # configuration archive is a ZIP file that contains a provisioning
    # certificate that is valid for 5 minutes. Name the configuration
    # archive `certificates-omni_device-name.zip` and transfer it to the
    # device within 5 minutes. Use the included USB storage device and
    # connect it to the USB 3.0 port next to the HDMI output.
    #
    # @option params [String] :description
    #   A description for the device.
    #
    # @option params [required, String] :name
    #   A name for the device.
    #
    # @option params [Types::NetworkPayload] :networking_configuration
    #   A networking configuration for the device.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the device.
    #
    # @return [Types::ProvisionDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionDeviceResponse#arn #arn} => String
    #   * {Types::ProvisionDeviceResponse#certificates #certificates} => String
    #   * {Types::ProvisionDeviceResponse#device_id #device_id} => String
    #   * {Types::ProvisionDeviceResponse#iot_thing_name #iot_thing_name} => String
    #   * {Types::ProvisionDeviceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_device({
    #     description: "Description",
    #     name: "DeviceName", # required
    #     networking_configuration: {
    #       ethernet_0: {
    #         connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #         static_ip_connection_info: {
    #           default_gateway: "DefaultGateway", # required
    #           dns: ["Dns"], # required
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #         },
    #       },
    #       ethernet_1: {
    #         connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #         static_ip_connection_info: {
    #           default_gateway: "DefaultGateway", # required
    #           dns: ["Dns"], # required
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #         },
    #       },
    #       ntp: {
    #         ntp_servers: ["IpAddressOrServerName"], # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.certificates #=> String
    #   resp.device_id #=> String
    #   resp.iot_thing_name #=> String
    #   resp.status #=> String, one of "AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ProvisionDevice AWS API Documentation
    #
    # @overload provision_device(params = {})
    # @param [Hash] params ({})
    def provision_device(params = {}, options = {})
      req = build_request(:provision_device, params)
      req.send_request(options)
    end

    # Registers a package version.
    #
    # @option params [Boolean] :mark_latest
    #   Whether to mark the new version as the latest version.
    #
    # @option params [String] :owner_account
    #   An owner account.
    #
    # @option params [required, String] :package_id
    #   A package ID.
    #
    # @option params [required, String] :package_version
    #   A package version.
    #
    # @option params [required, String] :patch_version
    #   A patch version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_package_version({
    #     mark_latest: false,
    #     owner_account: "PackageOwnerAccount",
    #     package_id: "NodePackageId", # required
    #     package_version: "NodePackageVersion", # required
    #     patch_version: "NodePackagePatchVersion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RegisterPackageVersion AWS API Documentation
    #
    # @overload register_package_version(params = {})
    # @param [Hash] params ({})
    def register_package_version(params = {}, options = {})
      req = build_request(:register_package_version, params)
      req.send_request(options)
    end

    # Removes an application instance.
    #
    # @option params [required, String] :application_instance_id
    #   An application instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_application_instance({
    #     application_instance_id: "ApplicationInstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RemoveApplicationInstance AWS API Documentation
    #
    # @overload remove_application_instance(params = {})
    # @param [Hash] params ({})
    def remove_application_instance(params = {}, options = {})
      req = build_request(:remove_application_instance, params)
      req.send_request(options)
    end

    # Signal camera nodes to stop or resume.
    #
    # @option params [required, String] :application_instance_id
    #   An application instance ID.
    #
    # @option params [required, Array<Types::NodeSignal>] :node_signals
    #   A list of signals.
    #
    # @return [Types::SignalApplicationInstanceNodeInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SignalApplicationInstanceNodeInstancesResponse#application_instance_id #application_instance_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.signal_application_instance_node_instances({
    #     application_instance_id: "ApplicationInstanceId", # required
    #     node_signals: [ # required
    #       {
    #         node_instance_id: "NodeInstanceId", # required
    #         signal: "PAUSE", # required, accepts PAUSE, RESUME
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.application_instance_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/SignalApplicationInstanceNodeInstances AWS API Documentation
    #
    # @overload signal_application_instance_node_instances(params = {})
    # @param [Hash] params ({})
    def signal_application_instance_node_instances(params = {}, options = {})
      req = build_request(:signal_application_instance_node_instances, params)
      req.send_request(options)
    end

    # Tags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a device's metadata.
    #
    # @option params [String] :description
    #   A description for the device.
    #
    # @option params [required, String] :device_id
    #   The device's ID.
    #
    # @return [Types::UpdateDeviceMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeviceMetadataResponse#device_id #device_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_metadata({
    #     description: "Description",
    #     device_id: "DeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UpdateDeviceMetadata AWS API Documentation
    #
    # @overload update_device_metadata(params = {})
    # @param [Hash] params ({})
    def update_device_metadata(params = {}, options = {})
      req = build_request(:update_device_metadata, params)
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
      context[:gem_name] = 'aws-sdk-panorama'
      context[:gem_version] = '1.17.0'
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

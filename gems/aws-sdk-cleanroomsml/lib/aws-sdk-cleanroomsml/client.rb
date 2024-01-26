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

Aws::Plugins::GlobalConfiguration.add_identifier(:cleanroomsml)

module Aws::CleanRoomsML
  # An API client for CleanRoomsML.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CleanRoomsML::Client.new(
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

    @identifier = :cleanroomsml

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
    add_plugin(Aws::CleanRoomsML::Plugins::Endpoints)

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
    #   @option options [Aws::CleanRoomsML::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CleanRoomsML::EndpointParameters`
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

    # Defines the information necessary to create an audience model. An
    # audience model is a machine learning model that Clean Rooms ML trains
    # to measure similarity between users. Clean Rooms ML manages training
    # and storing the audience model. The audience model can be used in
    # multiple calls to the StartAudienceGenerationJob API.
    #
    # @option params [String] :description
    #   The description of the audience model.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key. This key is used to
    #   encrypt and decrypt customer-owned data in the trained ML model and
    #   the associated data.
    #
    # @option params [required, String] :name
    #   The name of the audience model resource.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then
    #     Forecast considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @option params [Time,DateTime,Date,Integer,String] :training_data_end_time
    #   The end date and time of the training window.
    #
    # @option params [Time,DateTime,Date,Integer,String] :training_data_start_time
    #   The start date and time of the training window.
    #
    # @option params [required, String] :training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset for this
    #   audience model.
    #
    # @return [Types::CreateAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAudienceModelResponse#audience_model_arn #audience_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_audience_model({
    #     description: "ResourceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     name: "NameString", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     training_data_end_time: Time.now,
    #     training_data_start_time: Time.now,
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateAudienceModel AWS API Documentation
    #
    # @overload create_audience_model(params = {})
    # @param [Hash] params ({})
    def create_audience_model(params = {}, options = {})
      req = build_request(:create_audience_model, params)
      req.send_request(options)
    end

    # Defines the information necessary to create a configured audience
    # model.
    #
    # @option params [required, String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model to use for the
    #   configured audience model.
    #
    # @option params [Types::AudienceSizeConfig] :audience_size_config
    #   Configure the list of output sizes of audiences that can be created
    #   using this configured audience model. A request to
    #   StartAudienceGenerationJob that uses this configured audience model
    #   must have an `audienceSize` selected from this list. You can use the
    #   `ABSOLUTE` AudienceSize to configure out audience sizes using the
    #   count of identifiers in the output. You can use the `Percentage`
    #   AudienceSize to configure sizes in the range 1-100 percent.
    #
    # @option params [String] :child_resource_tag_on_create_policy
    #   Configure how the service tags audience generation jobs created using
    #   this configured audience model. If you specify `NONE`, the tags from
    #   the StartAudienceGenerationJob request determine the tags of the
    #   audience generation job. If you specify `FROM_PARENT_RESOURCE`, the
    #   audience generation job inherits the tags from the configured audience
    #   model, by default. Tags in the StartAudienceGenerationJob will
    #   override the default.
    #
    #   When the client is in a different account than the configured audience
    #   model, the tags from the client are never applied to a resource in the
    #   caller's account.
    #
    # @option params [String] :description
    #   The description of the configured audience model.
    #
    # @option params [Integer] :min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #
    # @option params [required, String] :name
    #   The name of the configured audience model.
    #
    # @option params [required, Types::ConfiguredAudienceModelOutputConfig] :output_config
    #   Configure the Amazon S3 location and IAM Role for audiences created
    #   using this configured audience model. Each audience will have a unique
    #   location. The IAM Role must have `s3:PutObject` permission on the
    #   destination Amazon S3 location. If the destination is protected with
    #   Amazon S3 KMS-SSE, then the Role must also have the required KMS
    #   permissions.
    #
    # @option params [required, Array<String>] :shared_audience_metrics
    #   Whether audience metrics are shared.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then
    #     Forecast considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::CreateConfiguredAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfiguredAudienceModelResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configured_audience_model({
    #     audience_model_arn: "AudienceModelArn", # required
    #     audience_size_config: {
    #       audience_size_bins: [1], # required
    #       audience_size_type: "ABSOLUTE", # required, accepts ABSOLUTE, PERCENTAGE
    #     },
    #     child_resource_tag_on_create_policy: "FROM_PARENT_RESOURCE", # accepts FROM_PARENT_RESOURCE, NONE
    #     description: "ResourceDescription",
    #     min_matching_seed_size: 1,
    #     name: "NameString", # required
    #     output_config: { # required
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         },
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     shared_audience_metrics: ["ALL"], # required, accepts ALL, NONE
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateConfiguredAudienceModel AWS API Documentation
    #
    # @overload create_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def create_configured_audience_model(params = {}, options = {})
      req = build_request(:create_configured_audience_model, params)
      req.send_request(options)
    end

    # Defines the information necessary to create a training dataset, or
    # seed audience. In Clean Rooms ML, the `TrainingDataset` is metadata
    # that points to a Glue table, which is read only during `AudienceModel`
    # creation.
    #
    # @option params [String] :description
    #   The description of the training dataset.
    #
    # @option params [required, String] :name
    #   The name of the training dataset. This name must be unique in your
    #   account and region.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that Clean Rooms ML can assume to read the
    #   data referred to in the `dataSource` field of each dataset.
    #
    #   Passing a role across AWS accounts is not allowed. If you pass a role
    #   that isn't in your account, you get an `AccessDeniedException` error.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then Clean
    #     Rooms ML considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @option params [required, Array<Types::Dataset>] :training_data
    #   An array of information that lists the Dataset objects, which
    #   specifies the dataset type and details on its location and schema. You
    #   must provide a role that has read access to these tables.
    #
    # @return [Types::CreateTrainingDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrainingDatasetResponse#training_dataset_arn #training_dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_training_dataset({
    #     description: "ResourceDescription",
    #     name: "NameString", # required
    #     role_arn: "IamRoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     training_data: [ # required
    #       {
    #         input_config: { # required
    #           data_source: { # required
    #             glue_data_source: { # required
    #               catalog_id: "AccountId",
    #               database_name: "GlueDatabaseName", # required
    #               table_name: "GlueTableName", # required
    #             },
    #           },
    #           schema: [ # required
    #             {
    #               column_name: "ColumnName", # required
    #               column_types: ["USER_ID"], # required, accepts USER_ID, ITEM_ID, TIMESTAMP, CATEGORICAL_FEATURE, NUMERICAL_FEATURE
    #             },
    #           ],
    #         },
    #         type: "INTERACTIONS", # required, accepts INTERACTIONS
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.training_dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/CreateTrainingDataset AWS API Documentation
    #
    # @overload create_training_dataset(params = {})
    # @param [Hash] params ({})
    def create_training_dataset(params = {}, options = {})
      req = build_request(:create_training_dataset, params)
      req.send_request(options)
    end

    # Deletes the specified audience generation job, and removes all data
    # associated with the job.
    #
    # @option params [required, String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_audience_generation_job({
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteAudienceGenerationJob AWS API Documentation
    #
    # @overload delete_audience_generation_job(params = {})
    # @param [Hash] params ({})
    def delete_audience_generation_job(params = {}, options = {})
      req = build_request(:delete_audience_generation_job, params)
      req.send_request(options)
    end

    # Specifies an audience model that you want to delete. You can't delete
    # an audience model if there are any configured audience models that
    # depend on the audience model.
    #
    # @option params [required, String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_audience_model({
    #     audience_model_arn: "AudienceModelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteAudienceModel AWS API Documentation
    #
    # @overload delete_audience_model(params = {})
    # @param [Hash] params ({})
    def delete_audience_model(params = {}, options = {})
      req = build_request(:delete_audience_model, params)
      req.send_request(options)
    end

    # Deletes the specified configured audience model. You can't delete a
    # configured audience model if there are any lookalike models that use
    # the configured audience model. If you delete a configured audience
    # model, it will be removed from any collaborations that it is
    # associated to.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_audience_model({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredAudienceModel AWS API Documentation
    #
    # @overload delete_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def delete_configured_audience_model(params = {}, options = {})
      req = build_request(:delete_configured_audience_model, params)
      req.send_request(options)
    end

    # Deletes the specified configured audience model policy.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model policy
    #   that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configured_audience_model_policy({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteConfiguredAudienceModelPolicy AWS API Documentation
    #
    # @overload delete_configured_audience_model_policy(params = {})
    # @param [Hash] params ({})
    def delete_configured_audience_model_policy(params = {}, options = {})
      req = build_request(:delete_configured_audience_model_policy, params)
      req.send_request(options)
    end

    # Specifies a training dataset that you want to delete. You can't
    # delete a training dataset if there are any audience models that depend
    # on the training dataset. In Clean Rooms ML, the `TrainingDataset` is
    # metadata that points to a Glue table, which is read only during
    # `AudienceModel` creation. This action deletes the metadata.
    #
    # @option params [required, String] :training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that you want
    #   to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_training_dataset({
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/DeleteTrainingDataset AWS API Documentation
    #
    # @overload delete_training_dataset(params = {})
    # @param [Hash] params ({})
    def delete_training_dataset(params = {}, options = {})
      req = build_request(:delete_training_dataset, params)
      req.send_request(options)
    end

    # Returns information about an audience generation job.
    #
    # @option params [required, String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   are interested in.
    #
    # @return [Types::GetAudienceGenerationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAudienceGenerationJobResponse#audience_generation_job_arn #audience_generation_job_arn} => String
    #   * {Types::GetAudienceGenerationJobResponse#collaboration_id #collaboration_id} => String
    #   * {Types::GetAudienceGenerationJobResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #   * {Types::GetAudienceGenerationJobResponse#create_time #create_time} => Time
    #   * {Types::GetAudienceGenerationJobResponse#description #description} => String
    #   * {Types::GetAudienceGenerationJobResponse#include_seed_in_output #include_seed_in_output} => Boolean
    #   * {Types::GetAudienceGenerationJobResponse#metrics #metrics} => Types::AudienceQualityMetrics
    #   * {Types::GetAudienceGenerationJobResponse#name #name} => String
    #   * {Types::GetAudienceGenerationJobResponse#seed_audience #seed_audience} => Types::AudienceGenerationJobDataSource
    #   * {Types::GetAudienceGenerationJobResponse#started_by #started_by} => String
    #   * {Types::GetAudienceGenerationJobResponse#status #status} => String
    #   * {Types::GetAudienceGenerationJobResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetAudienceGenerationJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAudienceGenerationJobResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_audience_generation_job({
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_generation_job_arn #=> String
    #   resp.collaboration_id #=> String
    #   resp.configured_audience_model_arn #=> String
    #   resp.create_time #=> Time
    #   resp.description #=> String
    #   resp.include_seed_in_output #=> Boolean
    #   resp.metrics.relevance_metrics #=> Array
    #   resp.metrics.relevance_metrics[0].audience_size.type #=> String, one of "ABSOLUTE", "PERCENTAGE"
    #   resp.metrics.relevance_metrics[0].audience_size.value #=> Integer
    #   resp.metrics.relevance_metrics[0].score #=> Float
    #   resp.name #=> String
    #   resp.seed_audience.data_source.s3_uri #=> String
    #   resp.seed_audience.role_arn #=> String
    #   resp.started_by #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.status_details.message #=> String
    #   resp.status_details.status_code #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceGenerationJob AWS API Documentation
    #
    # @overload get_audience_generation_job(params = {})
    # @param [Hash] params ({})
    def get_audience_generation_job(params = {}, options = {})
      req = build_request(:get_audience_generation_job, params)
      req.send_request(options)
    end

    # Returns information about an audience model
    #
    # @option params [required, String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the audience model that you are
    #   interested in.
    #
    # @return [Types::GetAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAudienceModelResponse#audience_model_arn #audience_model_arn} => String
    #   * {Types::GetAudienceModelResponse#create_time #create_time} => Time
    #   * {Types::GetAudienceModelResponse#description #description} => String
    #   * {Types::GetAudienceModelResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetAudienceModelResponse#metrics #metrics} => Array&lt;Types::AudienceModelMetric&gt;
    #   * {Types::GetAudienceModelResponse#name #name} => String
    #   * {Types::GetAudienceModelResponse#status #status} => String
    #   * {Types::GetAudienceModelResponse#status_details #status_details} => Types::StatusDetails
    #   * {Types::GetAudienceModelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAudienceModelResponse#training_data_end_time #training_data_end_time} => Time
    #   * {Types::GetAudienceModelResponse#training_data_start_time #training_data_start_time} => Time
    #   * {Types::GetAudienceModelResponse#training_dataset_arn #training_dataset_arn} => String
    #   * {Types::GetAudienceModelResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_audience_model({
    #     audience_model_arn: "AudienceModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_model_arn #=> String
    #   resp.create_time #=> Time
    #   resp.description #=> String
    #   resp.kms_key_arn #=> String
    #   resp.metrics #=> Array
    #   resp.metrics[0].for_top_k_item_predictions #=> Integer
    #   resp.metrics[0].type #=> String, one of "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN", "MEAN_RECIPROCAL_RANK", "PRECISION", "RECALL"
    #   resp.metrics[0].value #=> Float
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.status_details.message #=> String
    #   resp.status_details.status_code #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.training_data_end_time #=> Time
    #   resp.training_data_start_time #=> Time
    #   resp.training_dataset_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetAudienceModel AWS API Documentation
    #
    # @overload get_audience_model(params = {})
    # @param [Hash] params ({})
    def get_audience_model(params = {}, options = {})
      req = build_request(:get_audience_model, params)
      req.send_request(options)
    end

    # Returns information about a specified configured audience model.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #
    # @return [Types::GetConfiguredAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredAudienceModelResponse#audience_model_arn #audience_model_arn} => String
    #   * {Types::GetConfiguredAudienceModelResponse#audience_size_config #audience_size_config} => Types::AudienceSizeConfig
    #   * {Types::GetConfiguredAudienceModelResponse#child_resource_tag_on_create_policy #child_resource_tag_on_create_policy} => String
    #   * {Types::GetConfiguredAudienceModelResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #   * {Types::GetConfiguredAudienceModelResponse#create_time #create_time} => Time
    #   * {Types::GetConfiguredAudienceModelResponse#description #description} => String
    #   * {Types::GetConfiguredAudienceModelResponse#min_matching_seed_size #min_matching_seed_size} => Integer
    #   * {Types::GetConfiguredAudienceModelResponse#name #name} => String
    #   * {Types::GetConfiguredAudienceModelResponse#output_config #output_config} => Types::ConfiguredAudienceModelOutputConfig
    #   * {Types::GetConfiguredAudienceModelResponse#shared_audience_metrics #shared_audience_metrics} => Array&lt;String&gt;
    #   * {Types::GetConfiguredAudienceModelResponse#status #status} => String
    #   * {Types::GetConfiguredAudienceModelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetConfiguredAudienceModelResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_audience_model({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_model_arn #=> String
    #   resp.audience_size_config.audience_size_bins #=> Array
    #   resp.audience_size_config.audience_size_bins[0] #=> Integer
    #   resp.audience_size_config.audience_size_type #=> String, one of "ABSOLUTE", "PERCENTAGE"
    #   resp.child_resource_tag_on_create_policy #=> String, one of "FROM_PARENT_RESOURCE", "NONE"
    #   resp.configured_audience_model_arn #=> String
    #   resp.create_time #=> Time
    #   resp.description #=> String
    #   resp.min_matching_seed_size #=> Integer
    #   resp.name #=> String
    #   resp.output_config.destination.s3_destination.s3_uri #=> String
    #   resp.output_config.role_arn #=> String
    #   resp.shared_audience_metrics #=> Array
    #   resp.shared_audience_metrics[0] #=> String, one of "ALL", "NONE"
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModel AWS API Documentation
    #
    # @overload get_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def get_configured_audience_model(params = {}, options = {})
      req = build_request(:get_configured_audience_model, params)
      req.send_request(options)
    end

    # Returns information about a configured audience model policy.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you are interested in.
    #
    # @return [Types::GetConfiguredAudienceModelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfiguredAudienceModelPolicyResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #   * {Types::GetConfiguredAudienceModelPolicyResponse#configured_audience_model_policy #configured_audience_model_policy} => String
    #   * {Types::GetConfiguredAudienceModelPolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configured_audience_model_policy({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_arn #=> String
    #   resp.configured_audience_model_policy #=> String
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetConfiguredAudienceModelPolicy AWS API Documentation
    #
    # @overload get_configured_audience_model_policy(params = {})
    # @param [Hash] params ({})
    def get_configured_audience_model_policy(params = {}, options = {})
      req = build_request(:get_configured_audience_model_policy, params)
      req.send_request(options)
    end

    # Returns information about a training dataset.
    #
    # @option params [required, String] :training_dataset_arn
    #   The Amazon Resource Name (ARN) of the training dataset that you are
    #   interested in.
    #
    # @return [Types::GetTrainingDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrainingDatasetResponse#create_time #create_time} => Time
    #   * {Types::GetTrainingDatasetResponse#description #description} => String
    #   * {Types::GetTrainingDatasetResponse#name #name} => String
    #   * {Types::GetTrainingDatasetResponse#role_arn #role_arn} => String
    #   * {Types::GetTrainingDatasetResponse#status #status} => String
    #   * {Types::GetTrainingDatasetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTrainingDatasetResponse#training_data #training_data} => Array&lt;Types::Dataset&gt;
    #   * {Types::GetTrainingDatasetResponse#training_dataset_arn #training_dataset_arn} => String
    #   * {Types::GetTrainingDatasetResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_training_dataset({
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.create_time #=> Time
    #   resp.description #=> String
    #   resp.name #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.training_data #=> Array
    #   resp.training_data[0].input_config.data_source.glue_data_source.catalog_id #=> String
    #   resp.training_data[0].input_config.data_source.glue_data_source.database_name #=> String
    #   resp.training_data[0].input_config.data_source.glue_data_source.table_name #=> String
    #   resp.training_data[0].input_config.schema #=> Array
    #   resp.training_data[0].input_config.schema[0].column_name #=> String
    #   resp.training_data[0].input_config.schema[0].column_types #=> Array
    #   resp.training_data[0].input_config.schema[0].column_types[0] #=> String, one of "USER_ID", "ITEM_ID", "TIMESTAMP", "CATEGORICAL_FEATURE", "NUMERICAL_FEATURE"
    #   resp.training_data[0].type #=> String, one of "INTERACTIONS"
    #   resp.training_dataset_arn #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/GetTrainingDataset AWS API Documentation
    #
    # @overload get_training_dataset(params = {})
    # @param [Hash] params ({})
    def get_training_dataset(params = {}, options = {})
      req = build_request(:get_training_dataset, params)
      req.send_request(options)
    end

    # Returns a list of the audience export jobs.
    #
    # @option params [String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   are interested in.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListAudienceExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAudienceExportJobsResponse#audience_export_jobs #audience_export_jobs} => Array&lt;Types::AudienceExportJobSummary&gt;
    #   * {Types::ListAudienceExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audience_export_jobs({
    #     audience_generation_job_arn: "AudienceGenerationJobArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_export_jobs #=> Array
    #   resp.audience_export_jobs[0].audience_generation_job_arn #=> String
    #   resp.audience_export_jobs[0].audience_size.type #=> String, one of "ABSOLUTE", "PERCENTAGE"
    #   resp.audience_export_jobs[0].audience_size.value #=> Integer
    #   resp.audience_export_jobs[0].create_time #=> Time
    #   resp.audience_export_jobs[0].description #=> String
    #   resp.audience_export_jobs[0].name #=> String
    #   resp.audience_export_jobs[0].output_location #=> String
    #   resp.audience_export_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE"
    #   resp.audience_export_jobs[0].status_details.message #=> String
    #   resp.audience_export_jobs[0].status_details.status_code #=> String
    #   resp.audience_export_jobs[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceExportJobs AWS API Documentation
    #
    # @overload list_audience_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_audience_export_jobs(params = {}, options = {})
      req = build_request(:list_audience_export_jobs, params)
      req.send_request(options)
    end

    # Returns a list of audience generation jobs.
    #
    # @option params [String] :collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation jobs that you are interested in.
    #
    # @option params [String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   was used for the audience generation jobs that you are interested in.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListAudienceGenerationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAudienceGenerationJobsResponse#audience_generation_jobs #audience_generation_jobs} => Array&lt;Types::AudienceGenerationJobSummary&gt;
    #   * {Types::ListAudienceGenerationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audience_generation_jobs({
    #     collaboration_id: "UUID",
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_generation_jobs #=> Array
    #   resp.audience_generation_jobs[0].audience_generation_job_arn #=> String
    #   resp.audience_generation_jobs[0].collaboration_id #=> String
    #   resp.audience_generation_jobs[0].configured_audience_model_arn #=> String
    #   resp.audience_generation_jobs[0].create_time #=> Time
    #   resp.audience_generation_jobs[0].description #=> String
    #   resp.audience_generation_jobs[0].name #=> String
    #   resp.audience_generation_jobs[0].started_by #=> String
    #   resp.audience_generation_jobs[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.audience_generation_jobs[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceGenerationJobs AWS API Documentation
    #
    # @overload list_audience_generation_jobs(params = {})
    # @param [Hash] params ({})
    def list_audience_generation_jobs(params = {}, options = {})
      req = build_request(:list_audience_generation_jobs, params)
      req.send_request(options)
    end

    # Returns a list of audience models.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListAudienceModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAudienceModelsResponse#audience_models #audience_models} => Array&lt;Types::AudienceModelSummary&gt;
    #   * {Types::ListAudienceModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audience_models({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_models #=> Array
    #   resp.audience_models[0].audience_model_arn #=> String
    #   resp.audience_models[0].create_time #=> Time
    #   resp.audience_models[0].description #=> String
    #   resp.audience_models[0].name #=> String
    #   resp.audience_models[0].status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.audience_models[0].training_dataset_arn #=> String
    #   resp.audience_models[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListAudienceModels AWS API Documentation
    #
    # @overload list_audience_models(params = {})
    # @param [Hash] params ({})
    def list_audience_models(params = {}, options = {})
      req = build_request(:list_audience_models, params)
      req.send_request(options)
    end

    # Returns a list of the configured audience models.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListConfiguredAudienceModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfiguredAudienceModelsResponse#configured_audience_models #configured_audience_models} => Array&lt;Types::ConfiguredAudienceModelSummary&gt;
    #   * {Types::ListConfiguredAudienceModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configured_audience_models({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_models #=> Array
    #   resp.configured_audience_models[0].audience_model_arn #=> String
    #   resp.configured_audience_models[0].configured_audience_model_arn #=> String
    #   resp.configured_audience_models[0].create_time #=> Time
    #   resp.configured_audience_models[0].description #=> String
    #   resp.configured_audience_models[0].name #=> String
    #   resp.configured_audience_models[0].output_config.destination.s3_destination.s3_uri #=> String
    #   resp.configured_audience_models[0].output_config.role_arn #=> String
    #   resp.configured_audience_models[0].status #=> String, one of "ACTIVE"
    #   resp.configured_audience_models[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListConfiguredAudienceModels AWS API Documentation
    #
    # @overload list_configured_audience_models(params = {})
    # @param [Hash] params ({})
    def list_configured_audience_models(params = {}, options = {})
      req = build_request(:list_configured_audience_models, params)
      req.send_request(options)
    end

    # Returns a list of tags for a provided resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you are interested
    #   in.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of training datasets.
    #
    # @option params [Integer] :max_results
    #   The maximum size of the results that is returned per call.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListTrainingDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainingDatasetsResponse#next_token #next_token} => String
    #   * {Types::ListTrainingDatasetsResponse#training_datasets #training_datasets} => Array&lt;Types::TrainingDatasetSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_training_datasets({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.training_datasets #=> Array
    #   resp.training_datasets[0].create_time #=> Time
    #   resp.training_datasets[0].description #=> String
    #   resp.training_datasets[0].name #=> String
    #   resp.training_datasets[0].status #=> String, one of "ACTIVE"
    #   resp.training_datasets[0].training_dataset_arn #=> String
    #   resp.training_datasets[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/ListTrainingDatasets AWS API Documentation
    #
    # @overload list_training_datasets(params = {})
    # @param [Hash] params ({})
    def list_training_datasets(params = {}, options = {})
      req = build_request(:list_training_datasets, params)
      req.send_request(options)
    end

    # Create or update the resource policy for a configured audience model.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   the resource policy will govern.
    #
    # @option params [required, String] :configured_audience_model_policy
    #   The IAM resource policy.
    #
    # @option params [String] :policy_existence_condition
    #   Use this to prevent unexpected concurrent modification of the policy.
    #
    # @option params [String] :previous_policy_hash
    #   A cryptographic hash of the contents of the policy used to prevent
    #   unexpected concurrent modification of the policy.
    #
    # @return [Types::PutConfiguredAudienceModelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutConfiguredAudienceModelPolicyResponse#configured_audience_model_policy #configured_audience_model_policy} => String
    #   * {Types::PutConfiguredAudienceModelPolicyResponse#policy_hash #policy_hash} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configured_audience_model_policy({
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     configured_audience_model_policy: "ResourcePolicy", # required
    #     policy_existence_condition: "POLICY_MUST_EXIST", # accepts POLICY_MUST_EXIST, POLICY_MUST_NOT_EXIST
    #     previous_policy_hash: "Hash",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_policy #=> String
    #   resp.policy_hash #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/PutConfiguredAudienceModelPolicy AWS API Documentation
    #
    # @overload put_configured_audience_model_policy(params = {})
    # @param [Hash] params ({})
    def put_configured_audience_model_policy(params = {}, options = {})
      req = build_request(:put_configured_audience_model_policy, params)
      req.send_request(options)
    end

    # Export an audience of a specified size after you have generated an
    # audience.
    #
    # @option params [required, String] :audience_generation_job_arn
    #   The Amazon Resource Name (ARN) of the audience generation job that you
    #   want to export.
    #
    # @option params [required, Types::AudienceSize] :audience_size
    #   The size of the generated audience. Must match one of the sizes in the
    #   configured audience model.
    #
    # @option params [String] :description
    #   The description of the audience export job.
    #
    # @option params [required, String] :name
    #   The name of the audience export job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_audience_export_job({
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #     audience_size: { # required
    #       type: "ABSOLUTE", # required, accepts ABSOLUTE, PERCENTAGE
    #       value: 1, # required
    #     },
    #     description: "ResourceDescription",
    #     name: "NameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceExportJob AWS API Documentation
    #
    # @overload start_audience_export_job(params = {})
    # @param [Hash] params ({})
    def start_audience_export_job(params = {}, options = {})
      req = build_request(:start_audience_export_job, params)
      req.send_request(options)
    end

    # Information necessary to start the audience generation job.
    #
    # @option params [String] :collaboration_id
    #   The identifier of the collaboration that contains the audience
    #   generation job.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   is used for this audience generation job.
    #
    # @option params [String] :description
    #   The description of the audience generation job.
    #
    # @option params [Boolean] :include_seed_in_output
    #   Whether the seed audience is included in the audience generation
    #   output.
    #
    # @option params [required, String] :name
    #   The name of the audience generation job.
    #
    # @option params [required, Types::AudienceGenerationJobDataSource] :seed_audience
    #   The seed audience that is used to generate the audience.
    #
    # @option params [Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then
    #     Forecast considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Types::StartAudienceGenerationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAudienceGenerationJobResponse#audience_generation_job_arn #audience_generation_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_audience_generation_job({
    #     collaboration_id: "UUID",
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     description: "ResourceDescription",
    #     include_seed_in_output: false,
    #     name: "NameString", # required
    #     seed_audience: { # required
    #       data_source: { # required
    #         s3_uri: "S3Path", # required
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.audience_generation_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/StartAudienceGenerationJob AWS API Documentation
    #
    # @overload start_audience_generation_job(params = {})
    # @param [Hash] params ({})
    def start_audience_generation_job(params = {}, options = {})
      req = build_request(:start_audience_generation_job, params)
      req.send_request(options)
    end

    # Adds metadata tags to a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to assign
    #   tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The optional metadata that you apply to the resource to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value, both of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50.
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8.
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use aws:, AWS:, or any upper or lowercase combination of such
    #     as a prefix for keys as it is reserved for AWS use. You cannot edit
    #     or delete tag keys with this prefix. Values can have this prefix. If
    #     a tag value has aws as its prefix but the key does not, then
    #     Forecast considers it to be a user tag and will count against the
    #     limit of 50 tags. Tags with only the key prefix of aws do not count
    #     against your tags per resource limit.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key values of tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Provides the information necessary to update a configured audience
    # model. Updates that impact audience generation jobs take effect when a
    # new job starts, but do not impact currently running jobs.
    #
    # @option params [String] :audience_model_arn
    #   The Amazon Resource Name (ARN) of the new audience model that you want
    #   to use.
    #
    # @option params [Types::AudienceSizeConfig] :audience_size_config
    #   The new audience size configuration.
    #
    # @option params [required, String] :configured_audience_model_arn
    #   The Amazon Resource Name (ARN) of the configured audience model that
    #   you want to update.
    #
    # @option params [String] :description
    #   The new description of the configured audience model.
    #
    # @option params [Integer] :min_matching_seed_size
    #   The minimum number of users from the seed audience that must match
    #   with users in the training data of the audience model.
    #
    # @option params [Types::ConfiguredAudienceModelOutputConfig] :output_config
    #   The new output configuration.
    #
    # @option params [Array<String>] :shared_audience_metrics
    #   The new value for whether to share audience metrics.
    #
    # @return [Types::UpdateConfiguredAudienceModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfiguredAudienceModelResponse#configured_audience_model_arn #configured_audience_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configured_audience_model({
    #     audience_model_arn: "AudienceModelArn",
    #     audience_size_config: {
    #       audience_size_bins: [1], # required
    #       audience_size_type: "ABSOLUTE", # required, accepts ABSOLUTE, PERCENTAGE
    #     },
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     description: "ResourceDescription",
    #     min_matching_seed_size: 1,
    #     output_config: {
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         },
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     shared_audience_metrics: ["ALL"], # accepts ALL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_audience_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cleanroomsml-2023-09-06/UpdateConfiguredAudienceModel AWS API Documentation
    #
    # @overload update_configured_audience_model(params = {})
    # @param [Hash] params ({})
    def update_configured_audience_model(params = {}, options = {})
      req = build_request(:update_configured_audience_model, params)
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
      context[:gem_name] = 'aws-sdk-cleanroomsml'
      context[:gem_version] = '1.2.0'
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

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
require 'aws-sdk-finspace/plugins/content_type.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:finspace)

module Aws::Finspace
  # An API client for Finspace.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Finspace::Client.new(
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

    @identifier = :finspace

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
    add_plugin(Aws::Finspace::Plugins::ContentType)
    add_plugin(Aws::Finspace::Plugins::Endpoints)

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
    #   @option options [Aws::Finspace::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Finspace::EndpointParameters`
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

    # Create a new FinSpace environment.
    #
    # @option params [required, String] :name
    #   The name of the FinSpace environment to be created.
    #
    # @option params [String] :description
    #   The description of the FinSpace environment to be created.
    #
    # @option params [String] :kms_key_id
    #   The KMS key id to encrypt your data in the FinSpace environment.
    #
    # @option params [Hash<String,String>] :tags
    #   Add tags to your FinSpace environment.
    #
    # @option params [String] :federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO) via
    #     your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #
    # @option params [Types::FederationParameters] :federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #
    # @option params [Types::SuperuserParameters] :superuser_parameters
    #   Configuration information for the superuser.
    #
    # @option params [Array<String>] :data_bundles
    #   The list of Amazon Resource Names (ARN) of the data bundles to
    #   install. Currently supported data bundle ARNs:
    #
    #   * `arn:aws:finspace:$\{Region\}::data-bundle/capital-markets-sample` -
    #     Contains sample Capital Markets datasets, categories and controlled
    #     vocabularies.
    #
    #   * `arn:aws:finspace:$\{Region\}::data-bundle/taq` (default) - Contains
    #     trades and quotes data in addition to sample Capital Markets data.
    #
    # @return [Types::CreateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::CreateEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::CreateEnvironmentResponse#environment_url #environment_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "FederationAttributeValue",
    #       },
    #     },
    #     superuser_parameters: {
    #       email_address: "EmailId", # required
    #       first_name: "NameString", # required
    #       last_name: "NameString", # required
    #     },
    #     data_bundles: ["DataBundleArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.environment_arn #=> String
    #   resp.environment_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates a changeset for a kdb database. A changeset allows you to add
    # and delete existing files by using an ordered list of change requests.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier of the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [required, Array<Types::ChangeRequest>] :change_requests
    #   A list of change request objects that are run in order. A change
    #   request object consists of changeType , s3Path, and a dbPath. A
    #   changeType can has the following values:
    #
    #   * PUT – Adds or updates files in a database.
    #
    #   * DELETE – Deletes files in a database.
    #
    #   All the change requests require a mandatory *dbPath* attribute that
    #   defines the path within the database directory. The *s3Path* attribute
    #   defines the s3 source file path and is required for a PUT change type.
    #
    #   Here is an example of how you can use the change request object:
    #
    #   `[ \{ "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/",
    #   "dbPath":"/2020.01.02/"\}, \{ "changeType": "PUT",
    #   "s3Path":"s3://bucket/db/sym", "dbPath":"/"\}, \{ "changeType":
    #   "DELETE", "dbPath": "/2020.01.01/"\} ]`
    #
    #   In this example, the first request with *PUT* change type allows you
    #   to add files in the given s3Path under the *2020.01.02* partition of
    #   the database. The second request with *PUT* change type allows you to
    #   add a single sym file at database root location. The last request with
    #   *DELETE* change type allows you to delete the files under the
    #   *2020.01.01* partition of the database.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxChangesetResponse#changeset_id #changeset_id} => String
    #   * {Types::CreateKxChangesetResponse#database_name #database_name} => String
    #   * {Types::CreateKxChangesetResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxChangesetResponse#change_requests #change_requests} => Array&lt;Types::ChangeRequest&gt;
    #   * {Types::CreateKxChangesetResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateKxChangesetResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::CreateKxChangesetResponse#status #status} => String
    #   * {Types::CreateKxChangesetResponse#error_info #error_info} => Types::ErrorInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_changeset({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     change_requests: [ # required
    #       {
    #         change_type: "PUT", # required, accepts PUT, DELETE
    #         s3_path: "S3Path",
    #         db_path: "DbPath", # required
    #       },
    #     ],
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.changeset_id #=> String
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.change_requests #=> Array
    #   resp.change_requests[0].change_type #=> String, one of "PUT", "DELETE"
    #   resp.change_requests[0].s3_path #=> String
    #   resp.change_requests[0].db_path #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "PENDING", "PROCESSING", "FAILED", "COMPLETED"
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_type #=> String, one of "The inputs to this request are invalid.", "Service limits have been exceeded.", "Missing required permission to perform this request.", "One or more inputs to this request were not found.", "The system temporarily lacks sufficient resources to process the request.", "An internal error has occurred.", "Cancelled", "A user recoverable error has occurred"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxChangeset AWS API Documentation
    #
    # @overload create_kx_changeset(params = {})
    # @param [Hash] params ({})
    def create_kx_changeset(params = {}, options = {})
      req = build_request(:create_kx_changeset, params)
      req.send_request(options)
    end

    # Creates a new kdb cluster.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A unique name for the cluster that you want to create.
    #
    # @option params [required, String] :cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb databases
    #     mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads the
    #     HDB. This cluster type requires local storage for temporary storage
    #     of data during the savedown process. If you specify this field in
    #     your request, you must provide the `savedownStorageConfiguration`
    #     parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type of
    #     cluster does not require a writable local storage.
    #
    # @option params [Array<Types::KxDatabaseConfiguration>] :databases
    #   A list of databases that will be available for querying.
    #
    # @option params [Array<Types::KxCacheStorageConfiguration>] :cache_storage_configurations
    #   The configurations for a read only cache storage associated with a
    #   cluster. This cache will be stored as an FSx Lustre that reads from
    #   the S3 store.
    #
    # @option params [Types::AutoScalingConfiguration] :auto_scaling_configuration
    #   The configuration based on which FinSpace will scale in or scale out
    #   nodes in your cluster.
    #
    # @option params [String] :cluster_description
    #   A description of the cluster.
    #
    # @option params [required, Types::CapacityConfiguration] :capacity_configuration
    #   A structure for the metadata of a cluster. It includes information
    #   about like the CPUs needed, memory of instances, number of instances,
    #   and the port used while establishing a connection.
    #
    # @option params [required, String] :release_label
    #   The version of FinSpace managed kdb to run.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   Configuration details about the network where the Privatelink endpoint
    #   of the cluster resides.
    #
    # @option params [String] :initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is a
    #   relative path within *.zip* file that contains the custom code, which
    #   will be loaded on the cluster. It must include the file name itself.
    #   For example, `somedir/init.q`.
    #
    # @option params [Array<Types::KxCommandLineArgument>] :command_line_arguments
    #   Defines the key-value pairs to make them available inside the cluster.
    #
    # @option params [Types::CodeConfiguration] :code
    #   The details of the custom code that you want to use inside a cluster
    #   when analyzing a data. It consists of the S3 source bucket, location,
    #   S3 object version, and the relative path from where the custom code is
    #   loaded into the cluster.
    #
    # @option params [String] :execution_role
    #   An IAM role that defines a set of permissions associated with a
    #   cluster. These permissions are assumed when a cluster attempts to
    #   access another cluster.
    #
    # @option params [Types::KxSavedownStorageConfiguration] :savedown_storage_configuration
    #   The size and type of the temporary storage that is used to hold data
    #   during the savedown process. This parameter is required when you
    #   choose `clusterType` as RDB. All the data written to this storage
    #   space is lost when the cluster node is restarted.
    #
    # @option params [required, String] :az_mode
    #   The number of availability zones you want to assign per cluster. This
    #   can be one of the following
    #
    #   * `SINGLE` – Assigns one availability zone per cluster.
    #
    #   * `MULTI` – Assigns all the availability zones per cluster.
    #
    # @option params [String] :availability_zone_id
    #   The availability zone identifiers for the requested regions.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the cluster. You can add up to 50
    #   tags to a cluster.
    #
    # @return [Types::CreateKxClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxClusterResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxClusterResponse#status #status} => String
    #   * {Types::CreateKxClusterResponse#status_reason #status_reason} => String
    #   * {Types::CreateKxClusterResponse#cluster_name #cluster_name} => String
    #   * {Types::CreateKxClusterResponse#cluster_type #cluster_type} => String
    #   * {Types::CreateKxClusterResponse#databases #databases} => Array&lt;Types::KxDatabaseConfiguration&gt;
    #   * {Types::CreateKxClusterResponse#cache_storage_configurations #cache_storage_configurations} => Array&lt;Types::KxCacheStorageConfiguration&gt;
    #   * {Types::CreateKxClusterResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #   * {Types::CreateKxClusterResponse#cluster_description #cluster_description} => String
    #   * {Types::CreateKxClusterResponse#capacity_configuration #capacity_configuration} => Types::CapacityConfiguration
    #   * {Types::CreateKxClusterResponse#release_label #release_label} => String
    #   * {Types::CreateKxClusterResponse#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #   * {Types::CreateKxClusterResponse#initialization_script #initialization_script} => String
    #   * {Types::CreateKxClusterResponse#command_line_arguments #command_line_arguments} => Array&lt;Types::KxCommandLineArgument&gt;
    #   * {Types::CreateKxClusterResponse#code #code} => Types::CodeConfiguration
    #   * {Types::CreateKxClusterResponse#execution_role #execution_role} => String
    #   * {Types::CreateKxClusterResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::CreateKxClusterResponse#savedown_storage_configuration #savedown_storage_configuration} => Types::KxSavedownStorageConfiguration
    #   * {Types::CreateKxClusterResponse#az_mode #az_mode} => String
    #   * {Types::CreateKxClusterResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::CreateKxClusterResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_cluster({
    #     client_token: "ClientToken",
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     cluster_type: "HDB", # required, accepts HDB, RDB, GATEWAY
    #     databases: [
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #           },
    #         ],
    #         changeset_id: "ChangesetId",
    #       },
    #     ],
    #     cache_storage_configurations: [
    #       {
    #         type: "KxCacheStorageType", # required
    #         size: 1, # required
    #       },
    #     ],
    #     auto_scaling_configuration: {
    #       min_node_count: 1,
    #       max_node_count: 1,
    #       auto_scaling_metric: "CPU_UTILIZATION_PERCENTAGE", # accepts CPU_UTILIZATION_PERCENTAGE
    #       metric_target: 1.0,
    #       scale_in_cooldown_seconds: 1.0,
    #       scale_out_cooldown_seconds: 1.0,
    #     },
    #     cluster_description: "KxClusterDescription",
    #     capacity_configuration: { # required
    #       node_type: "NodeType",
    #       node_count: 1,
    #     },
    #     release_label: "ReleaseLabel", # required
    #     vpc_configuration: {
    #       vpc_id: "VpcIdString",
    #       security_group_ids: ["SecurityGroupIdString"],
    #       subnet_ids: ["SubnetIdString"],
    #       ip_address_type: "IP_V4", # accepts IP_V4
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue",
    #       },
    #     ],
    #     code: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #     },
    #     execution_role: "ExecutionRoleArn",
    #     savedown_storage_configuration: {
    #       type: "SDS01", # required, accepts SDS01
    #       size: 1, # required
    #     },
    #     az_mode: "SINGLE", # required, accepts SINGLE, MULTI
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #   resp.status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.cluster_name #=> String
    #   resp.cluster_type #=> String, one of "HDB", "RDB", "GATEWAY"
    #   resp.databases #=> Array
    #   resp.databases[0].database_name #=> String
    #   resp.databases[0].cache_configurations #=> Array
    #   resp.databases[0].cache_configurations[0].cache_type #=> String
    #   resp.databases[0].cache_configurations[0].db_paths #=> Array
    #   resp.databases[0].cache_configurations[0].db_paths[0] #=> String
    #   resp.databases[0].changeset_id #=> String
    #   resp.cache_storage_configurations #=> Array
    #   resp.cache_storage_configurations[0].type #=> String
    #   resp.cache_storage_configurations[0].size #=> Integer
    #   resp.auto_scaling_configuration.min_node_count #=> Integer
    #   resp.auto_scaling_configuration.max_node_count #=> Integer
    #   resp.auto_scaling_configuration.auto_scaling_metric #=> String, one of "CPU_UTILIZATION_PERCENTAGE"
    #   resp.auto_scaling_configuration.metric_target #=> Float
    #   resp.auto_scaling_configuration.scale_in_cooldown_seconds #=> Float
    #   resp.auto_scaling_configuration.scale_out_cooldown_seconds #=> Float
    #   resp.cluster_description #=> String
    #   resp.capacity_configuration.node_type #=> String
    #   resp.capacity_configuration.node_count #=> Integer
    #   resp.release_label #=> String
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.ip_address_type #=> String, one of "IP_V4"
    #   resp.initialization_script #=> String
    #   resp.command_line_arguments #=> Array
    #   resp.command_line_arguments[0].key #=> String
    #   resp.command_line_arguments[0].value #=> String
    #   resp.code.s3_bucket #=> String
    #   resp.code.s3_key #=> String
    #   resp.code.s3_object_version #=> String
    #   resp.execution_role #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.savedown_storage_configuration.type #=> String, one of "SDS01"
    #   resp.savedown_storage_configuration.size #=> Integer
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxCluster AWS API Documentation
    #
    # @overload create_kx_cluster(params = {})
    # @param [Hash] params ({})
    def create_kx_cluster(params = {}, options = {})
      req = build_request(:create_kx_cluster, params)
      req.send_request(options)
    end

    # Creates a new kdb database in the environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [String] :description
    #   A description of the database.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the kdb database. You can add up to
    #   50 tags to your kdb database
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateKxDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxDatabaseResponse#database_name #database_name} => String
    #   * {Types::CreateKxDatabaseResponse#database_arn #database_arn} => String
    #   * {Types::CreateKxDatabaseResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxDatabaseResponse#description #description} => String
    #   * {Types::CreateKxDatabaseResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateKxDatabaseResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.database_arn #=> String
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDatabase AWS API Documentation
    #
    # @overload create_kx_database(params = {})
    # @param [Hash] params ({})
    def create_kx_database(params = {}, options = {})
      req = build_request(:create_kx_database, params)
      req.send_request(options)
    end

    # Creates a managed kdb environment for the account.
    #
    # @option params [required, String] :name
    #   The name of the kdb environment that you want to create.
    #
    # @option params [String] :description
    #   A description for the kdb environment.
    #
    # @option params [required, String] :kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the kdb environment. You can add up
    #   to 50 tags to your kdb environment.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    # @return [Types::CreateKxEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxEnvironmentResponse#name #name} => String
    #   * {Types::CreateKxEnvironmentResponse#status #status} => String
    #   * {Types::CreateKxEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxEnvironmentResponse#description #description} => String
    #   * {Types::CreateKxEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::CreateKxEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::CreateKxEnvironmentResponse#creation_timestamp #creation_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_environment({
    #     name: "KxEnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyARN", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.creation_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxEnvironment AWS API Documentation
    #
    # @overload create_kx_environment(params = {})
    # @param [Hash] params ({})
    def create_kx_environment(params = {}, options = {})
      req = build_request(:create_kx_environment, params)
      req.send_request(options)
    end

    # Creates a user in FinSpace kdb environment with an associated IAM
    # role.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment where you want to create a
    #   user.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user.
    #
    # @option params [required, String] :iam_role
    #   The IAM role ARN that will be associated with the user.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to label the user. You can add up to 50 tags
    #   to a user.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    # @return [Types::CreateKxUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKxUserResponse#user_name #user_name} => String
    #   * {Types::CreateKxUserResponse#user_arn #user_arn} => String
    #   * {Types::CreateKxUserResponse#environment_id #environment_id} => String
    #   * {Types::CreateKxUserResponse#iam_role #iam_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_kx_user({
    #     environment_id: "IdType", # required
    #     user_name: "KxUserNameString", # required
    #     iam_role: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_arn #=> String
    #   resp.environment_id #=> String
    #   resp.iam_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxUser AWS API Documentation
    #
    # @overload create_kx_user(params = {})
    # @param [Hash] params ({})
    def create_kx_user(params = {}, options = {})
      req = build_request(:create_kx_user, params)
      req.send_request(options)
    end

    # Delete an FinSpace environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier for the FinSpace environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes a kdb cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that you want to delete.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_cluster({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxCluster AWS API Documentation
    #
    # @overload delete_kx_cluster(params = {})
    # @param [Hash] params ({})
    def delete_kx_cluster(params = {}, options = {})
      req = build_request(:delete_kx_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified database and all of its associated data. This
    # action is irreversible. You must copy any data out of the database
    # before deleting it if the data is to be retained.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database that you want to delete.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDatabase AWS API Documentation
    #
    # @overload delete_kx_database(params = {})
    # @param [Hash] params ({})
    def delete_kx_database(params = {}, options = {})
      req = build_request(:delete_kx_database, params)
      req.send_request(options)
    end

    # Deletes the kdb environment. This action is irreversible. Deleting a
    # kdb environment will remove all the associated data and any services
    # running in it.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxEnvironment AWS API Documentation
    #
    # @overload delete_kx_environment(params = {})
    # @param [Hash] params ({})
    def delete_kx_environment(params = {}, options = {})
      req = build_request(:delete_kx_environment, params)
      req.send_request(options)
    end

    # Deletes a user in the specified kdb environment.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user that you want to delete.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_kx_user({
    #     user_name: "KxUserNameString", # required
    #     environment_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxUser AWS API Documentation
    #
    # @overload delete_kx_user(params = {})
    # @param [Hash] params ({})
    def delete_kx_user(params = {}, options = {})
      req = build_request(:delete_kx_user, params)
      req.send_request(options)
    end

    # Returns the FinSpace environment object.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the FinSpace environment.
    #
    # @return [Types::GetEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.aws_account_id #=> String
    #   resp.environment.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environment.environment_url #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_arn #=> String
    #   resp.environment.sage_maker_studio_domain_url #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.dedicated_service_account_id #=> String
    #   resp.environment.federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environment.federation_parameters.saml_metadata_document #=> String
    #   resp.environment.federation_parameters.saml_metadata_url #=> String
    #   resp.environment.federation_parameters.application_call_back_url #=> String
    #   resp.environment.federation_parameters.federation_urn #=> String
    #   resp.environment.federation_parameters.federation_provider_name #=> String
    #   resp.environment.federation_parameters.attribute_map #=> Hash
    #   resp.environment.federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Returns information about a kdb changeset.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [required, String] :changeset_id
    #   A unique identifier of the changeset for which you want to retrieve
    #   data.
    #
    # @return [Types::GetKxChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxChangesetResponse#changeset_id #changeset_id} => String
    #   * {Types::GetKxChangesetResponse#database_name #database_name} => String
    #   * {Types::GetKxChangesetResponse#environment_id #environment_id} => String
    #   * {Types::GetKxChangesetResponse#change_requests #change_requests} => Array&lt;Types::ChangeRequest&gt;
    #   * {Types::GetKxChangesetResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxChangesetResponse#active_from_timestamp #active_from_timestamp} => Time
    #   * {Types::GetKxChangesetResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxChangesetResponse#status #status} => String
    #   * {Types::GetKxChangesetResponse#error_info #error_info} => Types::ErrorInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_changeset({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     changeset_id: "ChangesetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.changeset_id #=> String
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.change_requests #=> Array
    #   resp.change_requests[0].change_type #=> String, one of "PUT", "DELETE"
    #   resp.change_requests[0].s3_path #=> String
    #   resp.change_requests[0].db_path #=> String
    #   resp.created_timestamp #=> Time
    #   resp.active_from_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.status #=> String, one of "PENDING", "PROCESSING", "FAILED", "COMPLETED"
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_type #=> String, one of "The inputs to this request are invalid.", "Service limits have been exceeded.", "Missing required permission to perform this request.", "One or more inputs to this request were not found.", "The system temporarily lacks sufficient resources to process the request.", "An internal error has occurred.", "Cancelled", "A user recoverable error has occurred"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxChangeset AWS API Documentation
    #
    # @overload get_kx_changeset(params = {})
    # @param [Hash] params ({})
    def get_kx_changeset(params = {}, options = {})
      req = build_request(:get_kx_changeset, params)
      req.send_request(options)
    end

    # Retrieves information about a kdb cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster that you want to retrieve.
    #
    # @return [Types::GetKxClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxClusterResponse#status #status} => String
    #   * {Types::GetKxClusterResponse#status_reason #status_reason} => String
    #   * {Types::GetKxClusterResponse#cluster_name #cluster_name} => String
    #   * {Types::GetKxClusterResponse#cluster_type #cluster_type} => String
    #   * {Types::GetKxClusterResponse#databases #databases} => Array&lt;Types::KxDatabaseConfiguration&gt;
    #   * {Types::GetKxClusterResponse#cache_storage_configurations #cache_storage_configurations} => Array&lt;Types::KxCacheStorageConfiguration&gt;
    #   * {Types::GetKxClusterResponse#auto_scaling_configuration #auto_scaling_configuration} => Types::AutoScalingConfiguration
    #   * {Types::GetKxClusterResponse#cluster_description #cluster_description} => String
    #   * {Types::GetKxClusterResponse#capacity_configuration #capacity_configuration} => Types::CapacityConfiguration
    #   * {Types::GetKxClusterResponse#release_label #release_label} => String
    #   * {Types::GetKxClusterResponse#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #   * {Types::GetKxClusterResponse#initialization_script #initialization_script} => String
    #   * {Types::GetKxClusterResponse#command_line_arguments #command_line_arguments} => Array&lt;Types::KxCommandLineArgument&gt;
    #   * {Types::GetKxClusterResponse#code #code} => Types::CodeConfiguration
    #   * {Types::GetKxClusterResponse#execution_role #execution_role} => String
    #   * {Types::GetKxClusterResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxClusterResponse#savedown_storage_configuration #savedown_storage_configuration} => Types::KxSavedownStorageConfiguration
    #   * {Types::GetKxClusterResponse#az_mode #az_mode} => String
    #   * {Types::GetKxClusterResponse#availability_zone_id #availability_zone_id} => String
    #   * {Types::GetKxClusterResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_cluster({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.status_reason #=> String
    #   resp.cluster_name #=> String
    #   resp.cluster_type #=> String, one of "HDB", "RDB", "GATEWAY"
    #   resp.databases #=> Array
    #   resp.databases[0].database_name #=> String
    #   resp.databases[0].cache_configurations #=> Array
    #   resp.databases[0].cache_configurations[0].cache_type #=> String
    #   resp.databases[0].cache_configurations[0].db_paths #=> Array
    #   resp.databases[0].cache_configurations[0].db_paths[0] #=> String
    #   resp.databases[0].changeset_id #=> String
    #   resp.cache_storage_configurations #=> Array
    #   resp.cache_storage_configurations[0].type #=> String
    #   resp.cache_storage_configurations[0].size #=> Integer
    #   resp.auto_scaling_configuration.min_node_count #=> Integer
    #   resp.auto_scaling_configuration.max_node_count #=> Integer
    #   resp.auto_scaling_configuration.auto_scaling_metric #=> String, one of "CPU_UTILIZATION_PERCENTAGE"
    #   resp.auto_scaling_configuration.metric_target #=> Float
    #   resp.auto_scaling_configuration.scale_in_cooldown_seconds #=> Float
    #   resp.auto_scaling_configuration.scale_out_cooldown_seconds #=> Float
    #   resp.cluster_description #=> String
    #   resp.capacity_configuration.node_type #=> String
    #   resp.capacity_configuration.node_count #=> Integer
    #   resp.release_label #=> String
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.ip_address_type #=> String, one of "IP_V4"
    #   resp.initialization_script #=> String
    #   resp.command_line_arguments #=> Array
    #   resp.command_line_arguments[0].key #=> String
    #   resp.command_line_arguments[0].value #=> String
    #   resp.code.s3_bucket #=> String
    #   resp.code.s3_key #=> String
    #   resp.code.s3_object_version #=> String
    #   resp.execution_role #=> String
    #   resp.last_modified_timestamp #=> Time
    #   resp.savedown_storage_configuration.type #=> String, one of "SDS01"
    #   resp.savedown_storage_configuration.size #=> Integer
    #   resp.az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.availability_zone_id #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxCluster AWS API Documentation
    #
    # @overload get_kx_cluster(params = {})
    # @param [Hash] params ({})
    def get_kx_cluster(params = {}, options = {})
      req = build_request(:get_kx_cluster, params)
      req.send_request(options)
    end

    # Retrieves a connection string for a user to connect to a kdb cluster.
    # You must call this API using the same role that you have defined while
    # creating a user.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers](IAM/latest/UserGuide/reference_identifiers.html) in the
    #   *IAM User Guide*.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A name of the kdb cluster.
    #
    # @return [Types::GetKxConnectionStringResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxConnectionStringResponse#signed_connection_string #signed_connection_string} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_connection_string({
    #     user_arn: "KxUserArn", # required
    #     environment_id: "IdType", # required
    #     cluster_name: "KxClusterName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.signed_connection_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxConnectionString AWS API Documentation
    #
    # @overload get_kx_connection_string(params = {})
    # @param [Hash] params ({})
    def get_kx_connection_string(params = {}, options = {})
      req = build_request(:get_kx_connection_string, params)
      req.send_request(options)
    end

    # Returns database information for the specified environment ID.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @return [Types::GetKxDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxDatabaseResponse#database_name #database_name} => String
    #   * {Types::GetKxDatabaseResponse#database_arn #database_arn} => String
    #   * {Types::GetKxDatabaseResponse#environment_id #environment_id} => String
    #   * {Types::GetKxDatabaseResponse#description #description} => String
    #   * {Types::GetKxDatabaseResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetKxDatabaseResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::GetKxDatabaseResponse#last_completed_changeset_id #last_completed_changeset_id} => String
    #   * {Types::GetKxDatabaseResponse#num_bytes #num_bytes} => Integer
    #   * {Types::GetKxDatabaseResponse#num_changesets #num_changesets} => Integer
    #   * {Types::GetKxDatabaseResponse#num_files #num_files} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.database_arn #=> String
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.last_completed_changeset_id #=> String
    #   resp.num_bytes #=> Integer
    #   resp.num_changesets #=> Integer
    #   resp.num_files #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDatabase AWS API Documentation
    #
    # @overload get_kx_database(params = {})
    # @param [Hash] params ({})
    def get_kx_database(params = {}, options = {})
      req = build_request(:get_kx_database, params)
      req.send_request(options)
    end

    # Retrieves all the information for the specified kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @return [Types::GetKxEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxEnvironmentResponse#name #name} => String
    #   * {Types::GetKxEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::GetKxEnvironmentResponse#aws_account_id #aws_account_id} => String
    #   * {Types::GetKxEnvironmentResponse#status #status} => String
    #   * {Types::GetKxEnvironmentResponse#tgw_status #tgw_status} => String
    #   * {Types::GetKxEnvironmentResponse#dns_status #dns_status} => String
    #   * {Types::GetKxEnvironmentResponse#error_message #error_message} => String
    #   * {Types::GetKxEnvironmentResponse#description #description} => String
    #   * {Types::GetKxEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::GetKxEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetKxEnvironmentResponse#dedicated_service_account_id #dedicated_service_account_id} => String
    #   * {Types::GetKxEnvironmentResponse#transit_gateway_configuration #transit_gateway_configuration} => Types::TransitGatewayConfiguration
    #   * {Types::GetKxEnvironmentResponse#custom_dns_configuration #custom_dns_configuration} => Array&lt;Types::CustomDNSServer&gt;
    #   * {Types::GetKxEnvironmentResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::GetKxEnvironmentResponse#update_timestamp #update_timestamp} => Time
    #   * {Types::GetKxEnvironmentResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #   * {Types::GetKxEnvironmentResponse#certificate_authority_arn #certificate_authority_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_environment({
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.environment_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.error_message #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.dedicated_service_account_id #=> String
    #   resp.transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.custom_dns_configuration #=> Array
    #   resp.custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.update_timestamp #=> Time
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #   resp.certificate_authority_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxEnvironment AWS API Documentation
    #
    # @overload get_kx_environment(params = {})
    # @param [Hash] params ({})
    def get_kx_environment(params = {}, options = {})
      req = build_request(:get_kx_environment, params)
      req.send_request(options)
    end

    # Retrieves information about the specified kdb user.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @return [Types::GetKxUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKxUserResponse#user_name #user_name} => String
    #   * {Types::GetKxUserResponse#user_arn #user_arn} => String
    #   * {Types::GetKxUserResponse#environment_id #environment_id} => String
    #   * {Types::GetKxUserResponse#iam_role #iam_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kx_user({
    #     user_name: "KxUserNameString", # required
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_arn #=> String
    #   resp.environment_id #=> String
    #   resp.iam_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxUser AWS API Documentation
    #
    # @overload get_kx_user(params = {})
    # @param [Hash] params ({})
    def get_kx_user(params = {}, options = {})
      req = build_request(:get_kx_user, params)
      req.send_request(options)
    end

    # A list of all of your FinSpace environments.
    #
    # @option params [String] :next_token
    #   A token generated by FinSpace that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set of
    #   pages, pass in the `nextToken`nextToken value from the response object
    #   of the previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResponse#environments #environments} => Array&lt;Types::Environment&gt;
    #   * {Types::ListEnvironmentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].aws_account_id #=> String
    #   resp.environments[0].status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environments[0].environment_url #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.environments[0].sage_maker_studio_domain_url #=> String
    #   resp.environments[0].kms_key_id #=> String
    #   resp.environments[0].dedicated_service_account_id #=> String
    #   resp.environments[0].federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environments[0].federation_parameters.saml_metadata_document #=> String
    #   resp.environments[0].federation_parameters.saml_metadata_url #=> String
    #   resp.environments[0].federation_parameters.application_call_back_url #=> String
    #   resp.environments[0].federation_parameters.federation_urn #=> String
    #   resp.environments[0].federation_parameters.federation_provider_name #=> String
    #   resp.environments[0].federation_parameters.attribute_map #=> Hash
    #   resp.environments[0].federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Returns a list of all the changesets for a database.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxChangesetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxChangesetsResponse#kx_changesets #kx_changesets} => Array&lt;Types::KxChangesetListEntry&gt;
    #   * {Types::ListKxChangesetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_changesets({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_changesets #=> Array
    #   resp.kx_changesets[0].changeset_id #=> String
    #   resp.kx_changesets[0].created_timestamp #=> Time
    #   resp.kx_changesets[0].active_from_timestamp #=> Time
    #   resp.kx_changesets[0].last_modified_timestamp #=> Time
    #   resp.kx_changesets[0].status #=> String, one of "PENDING", "PROCESSING", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxChangesets AWS API Documentation
    #
    # @overload list_kx_changesets(params = {})
    # @param [Hash] params ({})
    def list_kx_changesets(params = {}, options = {})
      req = build_request(:list_kx_changesets, params)
      req.send_request(options)
    end

    # Lists all the nodes in a kdb cluster.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A unique name for the cluster.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxClusterNodesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxClusterNodesResponse#nodes #nodes} => Array&lt;Types::KxNode&gt;
    #   * {Types::ListKxClusterNodesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_cluster_nodes({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].node_id #=> String
    #   resp.nodes[0].availability_zone_id #=> String
    #   resp.nodes[0].launch_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClusterNodes AWS API Documentation
    #
    # @overload list_kx_cluster_nodes(params = {})
    # @param [Hash] params ({})
    def list_kx_cluster_nodes(params = {}, options = {})
      req = build_request(:list_kx_cluster_nodes, params)
      req.send_request(options)
    end

    # Returns a list of clusters.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb databases
    #     mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads the
    #     HDB. This cluster type requires local storage for temporary storage
    #     of data during the savedown process. If you specify this field in
    #     your request, you must provide the `savedownStorageConfiguration`
    #     parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type of
    #     cluster does not require a writable local storage.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @return [Types::ListKxClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxClustersResponse#kx_cluster_summaries #kx_cluster_summaries} => Array&lt;Types::KxCluster&gt;
    #   * {Types::ListKxClustersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_clusters({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_type: "HDB", # accepts HDB, RDB, GATEWAY
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_cluster_summaries #=> Array
    #   resp.kx_cluster_summaries[0].status #=> String, one of "PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"
    #   resp.kx_cluster_summaries[0].status_reason #=> String
    #   resp.kx_cluster_summaries[0].cluster_name #=> String
    #   resp.kx_cluster_summaries[0].cluster_type #=> String, one of "HDB", "RDB", "GATEWAY"
    #   resp.kx_cluster_summaries[0].cluster_description #=> String
    #   resp.kx_cluster_summaries[0].release_label #=> String
    #   resp.kx_cluster_summaries[0].initialization_script #=> String
    #   resp.kx_cluster_summaries[0].execution_role #=> String
    #   resp.kx_cluster_summaries[0].az_mode #=> String, one of "SINGLE", "MULTI"
    #   resp.kx_cluster_summaries[0].availability_zone_id #=> String
    #   resp.kx_cluster_summaries[0].last_modified_timestamp #=> Time
    #   resp.kx_cluster_summaries[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClusters AWS API Documentation
    #
    # @overload list_kx_clusters(params = {})
    # @param [Hash] params ({})
    def list_kx_clusters(params = {}, options = {})
      req = build_request(:list_kx_clusters, params)
      req.send_request(options)
    end

    # Returns a list of all the databases in the kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxDatabasesResponse#kx_databases #kx_databases} => Array&lt;Types::KxDatabaseListEntry&gt;
    #   * {Types::ListKxDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_databases({
    #     environment_id: "EnvironmentId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.kx_databases #=> Array
    #   resp.kx_databases[0].database_name #=> String
    #   resp.kx_databases[0].created_timestamp #=> Time
    #   resp.kx_databases[0].last_modified_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDatabases AWS API Documentation
    #
    # @overload list_kx_databases(params = {})
    # @param [Hash] params ({})
    def list_kx_databases(params = {}, options = {})
      req = build_request(:list_kx_databases, params)
      req.send_request(options)
    end

    # Returns a list of kdb environments created in an account.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxEnvironmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxEnvironmentsResponse#environments #environments} => Array&lt;Types::KxEnvironment&gt;
    #   * {Types::ListKxEnvironmentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_environments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].name #=> String
    #   resp.environments[0].environment_id #=> String
    #   resp.environments[0].aws_account_id #=> String
    #   resp.environments[0].status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environments[0].tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.environments[0].dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.environments[0].error_message #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].environment_arn #=> String
    #   resp.environments[0].kms_key_id #=> String
    #   resp.environments[0].dedicated_service_account_id #=> String
    #   resp.environments[0].transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.environments[0].transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.environments[0].custom_dns_configuration #=> Array
    #   resp.environments[0].custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.environments[0].custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.environments[0].creation_timestamp #=> Time
    #   resp.environments[0].update_timestamp #=> Time
    #   resp.environments[0].availability_zone_ids #=> Array
    #   resp.environments[0].availability_zone_ids[0] #=> String
    #   resp.environments[0].certificate_authority_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxEnvironments AWS API Documentation
    #
    # @overload list_kx_environments(params = {})
    # @param [Hash] params ({})
    def list_kx_environments(params = {}, options = {})
      req = build_request(:list_kx_environments, params)
      req.send_request(options)
    end

    # Lists all the users in a kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this request.
    #
    # @return [Types::ListKxUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKxUsersResponse#users #users} => Array&lt;Types::KxUser&gt;
    #   * {Types::ListKxUsersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kx_users({
    #     environment_id: "IdType", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_arn #=> String
    #   resp.users[0].user_name #=> String
    #   resp.users[0].iam_role #=> String
    #   resp.users[0].create_timestamp #=> Time
    #   resp.users[0].update_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxUsers AWS API Documentation
    #
    # @overload list_kx_users(params = {})
    # @param [Hash] params ({})
    def list_kx_users(params = {}, options = {})
      req = build_request(:list_kx_users, params)
      req.send_request(options)
    end

    # A list of all tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "FinSpaceTaggableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds metadata tags to a FinSpace resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags to be assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "FinSpaceTaggableArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a FinSpace resource.
    #
    # @option params [required, String] :resource_arn
    #   A FinSpace resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys (names) of one or more tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "FinSpaceTaggableArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update your FinSpace environment.
    #
    # @option params [required, String] :environment_id
    #   The identifier of the FinSpace environment.
    #
    # @option params [String] :name
    #   The name of the environment.
    #
    # @option params [String] :description
    #   The description of the environment.
    #
    # @option params [String] :federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO) via
    #     your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #
    # @option params [Types::FederationParameters] :federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #
    # @return [Types::UpdateEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentResponse#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     environment_id: "IdType", # required
    #     name: "EnvironmentName",
    #     description: "Description",
    #     federation_mode: "FEDERATED", # accepts FEDERATED, LOCAL
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "FederationAttributeValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.environment_id #=> String
    #   resp.environment.aws_account_id #=> String
    #   resp.environment.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.environment.environment_url #=> String
    #   resp.environment.description #=> String
    #   resp.environment.environment_arn #=> String
    #   resp.environment.sage_maker_studio_domain_url #=> String
    #   resp.environment.kms_key_id #=> String
    #   resp.environment.dedicated_service_account_id #=> String
    #   resp.environment.federation_mode #=> String, one of "FEDERATED", "LOCAL"
    #   resp.environment.federation_parameters.saml_metadata_document #=> String
    #   resp.environment.federation_parameters.saml_metadata_url #=> String
    #   resp.environment.federation_parameters.application_call_back_url #=> String
    #   resp.environment.federation_parameters.federation_urn #=> String
    #   resp.environment.federation_parameters.federation_provider_name #=> String
    #   resp.environment.federation_parameters.attribute_map #=> Hash
    #   resp.environment.federation_parameters.attribute_map["FederationAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Updates the databases mounted on a kdb cluster, which includes the
    # `changesetId` and all the dbPaths to be cached. This API does not
    # allow you to change a database name or add a database if you created a
    # cluster without one.
    #
    # Using this API you can point a cluster to a different changeset and
    # modify a list of partitions being cached.
    #
    # @option params [required, String] :environment_id
    #   The unique identifier of a kdb environment.
    #
    # @option params [required, String] :cluster_name
    #   A unique name for the cluster that you want to modify.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    # @option params [required, Array<Types::KxDatabaseConfiguration>] :databases
    #   The structure of databases mounted on the cluster.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_cluster_databases({
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #     databases: [ # required
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #           },
    #         ],
    #         changeset_id: "ChangesetId",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterDatabases AWS API Documentation
    #
    # @overload update_kx_cluster_databases(params = {})
    # @param [Hash] params ({})
    def update_kx_cluster_databases(params = {}, options = {})
      req = build_request(:update_kx_cluster_databases, params)
      req.send_request(options)
    end

    # Updates information for the given kdb database.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :database_name
    #   The name of the kdb database.
    #
    # @option params [String] :description
    #   A description of the database.
    #
    # @option params [required, String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateKxDatabaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxDatabaseResponse#database_name #database_name} => String
    #   * {Types::UpdateKxDatabaseResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxDatabaseResponse#description #description} => String
    #   * {Types::UpdateKxDatabaseResponse#last_modified_timestamp #last_modified_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_database({
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     description: "Description",
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database_name #=> String
    #   resp.environment_id #=> String
    #   resp.description #=> String
    #   resp.last_modified_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDatabase AWS API Documentation
    #
    # @overload update_kx_database(params = {})
    # @param [Hash] params ({})
    def update_kx_database(params = {}, options = {})
      req = build_request(:update_kx_database, params)
      req.send_request(options)
    end

    # Updates information for the given kdb environment.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [String] :name
    #   The name of the kdb environment.
    #
    # @option params [String] :description
    #   A description of the kdb environment.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    # @return [Types::UpdateKxEnvironmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxEnvironmentResponse#name #name} => String
    #   * {Types::UpdateKxEnvironmentResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#status #status} => String
    #   * {Types::UpdateKxEnvironmentResponse#tgw_status #tgw_status} => String
    #   * {Types::UpdateKxEnvironmentResponse#dns_status #dns_status} => String
    #   * {Types::UpdateKxEnvironmentResponse#error_message #error_message} => String
    #   * {Types::UpdateKxEnvironmentResponse#description #description} => String
    #   * {Types::UpdateKxEnvironmentResponse#environment_arn #environment_arn} => String
    #   * {Types::UpdateKxEnvironmentResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#dedicated_service_account_id #dedicated_service_account_id} => String
    #   * {Types::UpdateKxEnvironmentResponse#transit_gateway_configuration #transit_gateway_configuration} => Types::TransitGatewayConfiguration
    #   * {Types::UpdateKxEnvironmentResponse#custom_dns_configuration #custom_dns_configuration} => Array&lt;Types::CustomDNSServer&gt;
    #   * {Types::UpdateKxEnvironmentResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentResponse#update_timestamp #update_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_environment({
    #     environment_id: "IdType", # required
    #     name: "KxEnvironmentName",
    #     description: "Description",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.environment_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.error_message #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.dedicated_service_account_id #=> String
    #   resp.transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.custom_dns_configuration #=> Array
    #   resp.custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.update_timestamp #=> Time
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironment AWS API Documentation
    #
    # @overload update_kx_environment(params = {})
    # @param [Hash] params ({})
    def update_kx_environment(params = {}, options = {})
      req = build_request(:update_kx_environment, params)
      req.send_request(options)
    end

    # Updates environment network to connect to your internal network by
    # using a transit gateway. This API supports request to create a transit
    # gateway attachment from FinSpace VPC to your transit gateway ID and
    # create a custom Route-53 outbound resolvers.
    #
    # Once you send a request to update a network, you cannot change it
    # again. Network update might require termination of any clusters that
    # are running in the existing network.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [Types::TransitGatewayConfiguration] :transit_gateway_configuration
    #   Specifies the transit gateway and network configuration to connect the
    #   kdb environment to an internal network.
    #
    # @option params [Array<Types::CustomDNSServer>] :custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    # @return [Types::UpdateKxEnvironmentNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxEnvironmentNetworkResponse#name #name} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#status #status} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#tgw_status #tgw_status} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#dns_status #dns_status} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#error_message #error_message} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#description #description} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#environment_arn #environment_arn} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#kms_key_id #kms_key_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#dedicated_service_account_id #dedicated_service_account_id} => String
    #   * {Types::UpdateKxEnvironmentNetworkResponse#transit_gateway_configuration #transit_gateway_configuration} => Types::TransitGatewayConfiguration
    #   * {Types::UpdateKxEnvironmentNetworkResponse#custom_dns_configuration #custom_dns_configuration} => Array&lt;Types::CustomDNSServer&gt;
    #   * {Types::UpdateKxEnvironmentNetworkResponse#creation_timestamp #creation_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentNetworkResponse#update_timestamp #update_timestamp} => Time
    #   * {Types::UpdateKxEnvironmentNetworkResponse#availability_zone_ids #availability_zone_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_environment_network({
    #     environment_id: "IdType", # required
    #     transit_gateway_configuration: {
    #       transit_gateway_id: "TransitGatewayID", # required
    #       routable_cidr_space: "ValidCIDRSpace", # required
    #     },
    #     custom_dns_configuration: [
    #       {
    #         custom_dns_server_name: "ValidHostname", # required
    #         custom_dns_server_ip: "ValidIPAddress", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.environment_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.status #=> String, one of "CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"
    #   resp.tgw_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.dns_status #=> String, one of "NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"
    #   resp.error_message #=> String
    #   resp.description #=> String
    #   resp.environment_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.dedicated_service_account_id #=> String
    #   resp.transit_gateway_configuration.transit_gateway_id #=> String
    #   resp.transit_gateway_configuration.routable_cidr_space #=> String
    #   resp.custom_dns_configuration #=> Array
    #   resp.custom_dns_configuration[0].custom_dns_server_name #=> String
    #   resp.custom_dns_configuration[0].custom_dns_server_ip #=> String
    #   resp.creation_timestamp #=> Time
    #   resp.update_timestamp #=> Time
    #   resp.availability_zone_ids #=> Array
    #   resp.availability_zone_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironmentNetwork AWS API Documentation
    #
    # @overload update_kx_environment_network(params = {})
    # @param [Hash] params ({})
    def update_kx_environment_network(params = {}, options = {})
      req = build_request(:update_kx_environment_network, params)
      req.send_request(options)
    end

    # Updates the user details. You can only update the IAM role associated
    # with a user.
    #
    # @option params [required, String] :environment_id
    #   A unique identifier for the kdb environment.
    #
    # @option params [required, String] :user_name
    #   A unique identifier for the user.
    #
    # @option params [required, String] :iam_role
    #   The IAM role ARN that is associated with the user.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    # @return [Types::UpdateKxUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKxUserResponse#user_name #user_name} => String
    #   * {Types::UpdateKxUserResponse#user_arn #user_arn} => String
    #   * {Types::UpdateKxUserResponse#environment_id #environment_id} => String
    #   * {Types::UpdateKxUserResponse#iam_role #iam_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kx_user({
    #     environment_id: "IdType", # required
    #     user_name: "KxUserNameString", # required
    #     iam_role: "RoleArn", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_name #=> String
    #   resp.user_arn #=> String
    #   resp.environment_id #=> String
    #   resp.iam_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxUser AWS API Documentation
    #
    # @overload update_kx_user(params = {})
    # @param [Hash] params ({})
    def update_kx_user(params = {}, options = {})
      req = build_request(:update_kx_user, params)
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
      context[:gem_name] = 'aws-sdk-finspace'
      context[:gem_version] = '1.19.0'
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

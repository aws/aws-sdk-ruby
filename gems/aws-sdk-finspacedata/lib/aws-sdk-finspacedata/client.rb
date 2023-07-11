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
require 'aws-sdk-finspacedata/plugins/content_type.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:finspacedata)

module Aws::FinSpaceData
  # An API client for FinSpaceData.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::FinSpaceData::Client.new(
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

    @identifier = :finspacedata

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
    add_plugin(Aws::FinSpaceData::Plugins::ContentType)
    add_plugin(Aws::FinSpaceData::Plugins::Endpoints)

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
    #   @option options [Aws::FinSpaceData::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::FinSpaceData::EndpointParameters`
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

    # Adds a user account to a permission group to grant permissions for
    # actions a user can perform in FinSpace.
    #
    # @option params [required, String] :permission_group_id
    #   The unique identifier for the permission group.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateUserToPermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateUserToPermissionGroupResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_user_to_permission_group({
    #     permission_group_id: "PermissionGroupId", # required
    #     user_id: "UserId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/AssociateUserToPermissionGroup AWS API Documentation
    #
    # @overload associate_user_to_permission_group(params = {})
    # @param [Hash] params ({})
    def associate_user_to_permission_group(params = {}, options = {})
      req = build_request(:associate_user_to_permission_group, params)
      req.send_request(options)
    end

    # Creates a new Changeset in a FinSpace Dataset.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the FinSpace Dataset where the Changeset
    #   will be created.
    #
    # @option params [required, String] :change_type
    #   The option to indicate how a Changeset will be applied to a Dataset.
    #
    #   * `REPLACE` – Changeset will be considered as a replacement to all
    #     prior loaded Changesets.
    #
    #   * `APPEND` – Changeset will be considered as an addition to the end of
    #     all prior loaded Changesets.
    #
    #   * `MODIFY` – Changeset is considered as a replacement to a specific
    #     prior ingested Changeset.
    #
    # @option params [required, Hash<String,String>] :source_params
    #   Options that define the location of the data being ingested
    #   (`s3SourcePath`) and the source of the changeset (`sourceType`).
    #
    #   Both `s3SourcePath` and `sourceType` are required attributes.
    #
    #   Here is an example of how you could specify the `sourceParams`:
    #
    #   ` "sourceParams": \{ "s3SourcePath":
    #   "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #   "sourceType": "S3" \} `
    #
    #   The S3 path that you specify must allow the FinSpace role access. To
    #   do that, you first need to configure the IAM policy on S3 bucket. For
    #   more information, see [Loading data from an Amazon S3 Bucket using the
    #   FinSpace API][1] section.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets
    #
    # @option params [required, Hash<String,String>] :format_params
    #   Options that define the structure of the source file(s) including the
    #   format type (`formatType`), header row (`withHeader`), data separation
    #   character (`separator`) and the type of compression (`compression`).
    #
    #   `formatType` is a required attribute and can have the following
    #   values:
    #
    #   * `PARQUET` – Parquet source file format.
    #
    #   * `CSV` – CSV source file format.
    #
    #   * `JSON` – JSON source file format.
    #
    #   * `XML` – XML source file format.
    #
    #   Here is an example of how you could specify the `formatParams`:
    #
    #   ` "formatParams": \{ "formatType": "CSV", "withHeader": "true",
    #   "separator": ",", "compression":"None" \} `
    #
    #   Note that if you only provide `formatType` as `CSV`, the rest of the
    #   attributes will automatically default to CSV values as following:
    #
    #   ` \{ "withHeader": "true", "separator": "," \} `
    #
    #   For more information about supported file formats, see [Supported Data
    #   Types and File Formats][1] in the FinSpace User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html
    #
    # @return [Types::CreateChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChangesetResponse#dataset_id #dataset_id} => String
    #   * {Types::CreateChangesetResponse#changeset_id #changeset_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_changeset({
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     change_type: "REPLACE", # required, accepts REPLACE, APPEND, MODIFY
    #     source_params: { # required
    #       "StringMapKey" => "StringMapValue",
    #     },
    #     format_params: { # required
    #       "StringMapKey" => "StringMapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #   resp.changeset_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateChangeset AWS API Documentation
    #
    # @overload create_changeset(params = {})
    # @param [Hash] params ({})
    def create_changeset(params = {}, options = {})
      req = build_request(:create_changeset, params)
      req.send_request(options)
    end

    # Creates a Dataview for a Dataset.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dataset_id
    #   The unique Dataset identifier that is used to create a Dataview.
    #
    # @option params [Boolean] :auto_update
    #   Flag to indicate Dataview should be updated automatically.
    #
    # @option params [Array<String>] :sort_columns
    #   Columns to be used for sorting the data.
    #
    # @option params [Array<String>] :partition_columns
    #   Ordered set of column names used to partition data.
    #
    # @option params [Integer] :as_of_timestamp
    #   Beginning time to use for the Dataview. The value is determined as
    #   epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #
    # @option params [required, Types::DataViewDestinationTypeParams] :destination_type_params
    #   Options that define the destination type for the Dataview.
    #
    # @return [Types::CreateDataViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataViewResponse#dataset_id #dataset_id} => String
    #   * {Types::CreateDataViewResponse#data_view_id #data_view_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_view({
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     auto_update: false,
    #     sort_columns: ["StringValueLength1to255"],
    #     partition_columns: ["StringValueLength1to255"],
    #     as_of_timestamp: 1,
    #     destination_type_params: { # required
    #       destination_type: "DataViewDestinationType", # required
    #       s3_destination_export_file_format: "PARQUET", # accepts PARQUET, DELIMITED_TEXT
    #       s3_destination_export_file_format_options: {
    #         "StringMapKey" => "StringMapValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #   resp.data_view_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateDataView AWS API Documentation
    #
    # @overload create_data_view(params = {})
    # @param [Hash] params ({})
    def create_data_view(params = {}, options = {})
      req = build_request(:create_data_view, params)
      req.send_request(options)
    end

    # Creates a new FinSpace Dataset.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dataset_title
    #   Display title for a FinSpace Dataset.
    #
    # @option params [required, String] :kind
    #   The format in which Dataset data is structured.
    #
    #   * `TABULAR` – Data is structured in a tabular format.
    #
    #   * `NON_TABULAR` – Data is structured in a non-tabular format.
    #
    # @option params [String] :dataset_description
    #   Description of a Dataset.
    #
    # @option params [Types::DatasetOwnerInfo] :owner_info
    #   Contact information for a Dataset owner.
    #
    # @option params [required, Types::PermissionGroupParams] :permission_group_params
    #   Permission group parameters for Dataset permissions.
    #
    # @option params [String] :alias
    #   The unique resource identifier for a Dataset.
    #
    # @option params [Types::SchemaUnion] :schema_definition
    #   Definition for a schema on a tabular Dataset.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_id #dataset_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     client_token: "ClientToken",
    #     dataset_title: "DatasetTitle", # required
    #     kind: "TABULAR", # required, accepts TABULAR, NON_TABULAR
    #     dataset_description: "DatasetDescription",
    #     owner_info: {
    #       name: "OwnerName",
    #       phone_number: "PhoneNumber",
    #       email: "Email",
    #     },
    #     permission_group_params: { # required
    #       permission_group_id: "PermissionGroupId",
    #       dataset_permissions: [
    #         {
    #           permission: "StringValueLength1to250",
    #         },
    #       ],
    #     },
    #     alias: "AliasString",
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: "STRING", # accepts STRING, CHAR, INTEGER, TINYINT, SMALLINT, BIGINT, FLOAT, DOUBLE, DATE, DATETIME, BOOLEAN, BINARY
    #             column_name: "ColumnName",
    #             column_description: "ColumnDescription",
    #           },
    #         ],
    #         primary_key_columns: ["ColumnName"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a group of permissions for various actions that a user can
    # perform in FinSpace.
    #
    # @option params [required, String] :name
    #   The name of the permission group.
    #
    # @option params [String] :description
    #   A brief description for the permission group.
    #
    # @option params [required, Array<String>] :application_permissions
    #   The option to indicate FinSpace application permissions that are
    #   granted to a specific group.
    #
    #   When assigning application permissions, be aware that the permission
    #   `ManageUsersAndGroups` allows users to grant themselves or others
    #   access to any functionality in their FinSpace environment's
    #   application. It should only be granted to trusted users.
    #
    #   * `CreateDataset` – Group members can create new datasets.
    #
    #   * `ManageClusters` – Group members can manage Apache Spark clusters
    #     from FinSpace notebooks.
    #
    #   * `ManageUsersAndGroups` – Group members can manage users and
    #     permission groups. This is a privileged permission that allows users
    #     to grant themselves or others access to any functionality in the
    #     application. It should only be granted to trusted users.
    #
    #   * `ManageAttributeSets` – Group members can manage attribute sets.
    #
    #   * `ViewAuditData` – Group members can view audit data.
    #
    #   * `AccessNotebooks` – Group members will have access to FinSpace
    #     notebooks.
    #
    #   * `GetTemporaryCredentials` – Group members can get temporary API
    #     credentials.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePermissionGroupResponse#permission_group_id #permission_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission_group({
    #     name: "PermissionGroupName", # required
    #     description: "PermissionGroupDescription",
    #     application_permissions: ["CreateDataset"], # required, accepts CreateDataset, ManageClusters, ManageUsersAndGroups, ManageAttributeSets, ViewAuditData, AccessNotebooks, GetTemporaryCredentials
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreatePermissionGroup AWS API Documentation
    #
    # @overload create_permission_group(params = {})
    # @param [Hash] params ({})
    def create_permission_group(params = {}, options = {})
      req = build_request(:create_permission_group, params)
      req.send_request(options)
    end

    # Creates a new user in FinSpace.
    #
    # @option params [required, String] :email_address
    #   The email address of the user that you want to register. The email
    #   address serves as a uniquer identifier for each user and cannot be
    #   changed after it's created.
    #
    # @option params [required, String] :type
    #   The option to indicate the type of user. Use one of the following
    #   options to specify this parameter:
    #
    #   * `SUPER_USER` – A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The users
    #     are assigned permissions by adding them to a permission group.
    #
    # @option params [String] :first_name
    #   The first name of the user that you want to register.
    #
    # @option params [String] :last_name
    #   The last name of the user that you want to register.
    #
    # @option params [String] :api_access
    #   The option to indicate whether the user can use the
    #   `GetProgrammaticAccessCredentials` API to obtain credentials that can
    #   then be used to access other FinSpace Data API operations.
    #
    #   * `ENABLED` – The user has permissions to use the APIs.
    #
    #   * `DISABLED` – The user does not have permissions to use any APIs.
    #
    # @option params [String] :api_access_principal_arn
    #   The ARN identifier of an AWS user or role that is allowed to call the
    #   `GetProgrammaticAccessCredentials` API to obtain a credentials token
    #   for a specific FinSpace user. This must be an IAM role within your
    #   FinSpace account.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     email_address: "Email", # required
    #     type: "SUPER_USER", # required, accepts SUPER_USER, APP_USER
    #     first_name: "FirstName",
    #     last_name: "LastName",
    #     api_access: "ENABLED", # accepts ENABLED, DISABLED
    #     api_access_principal_arn: "RoleArn",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes a FinSpace Dataset.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the Dataset to be deleted.
    #
    # @return [Types::DeleteDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatasetResponse#dataset_id #dataset_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DeleteDataset AWS API Documentation
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes a permission group. This action is irreversible.
    #
    # @option params [required, String] :permission_group_id
    #   The unique identifier for the permission group that you want to
    #   delete.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeletePermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePermissionGroupResponse#permission_group_id #permission_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_group({
    #     permission_group_id: "PermissionGroupId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DeletePermissionGroup AWS API Documentation
    #
    # @overload delete_permission_group(params = {})
    # @param [Hash] params ({})
    def delete_permission_group(params = {}, options = {})
      req = build_request(:delete_permission_group, params)
      req.send_request(options)
    end

    # Denies access to the FinSpace web application and API for the
    # specified user.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user account that you want to disable.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DisableUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableUserResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_user({
    #     user_id: "UserId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DisableUser AWS API Documentation
    #
    # @overload disable_user(params = {})
    # @param [Hash] params ({})
    def disable_user(params = {}, options = {})
      req = build_request(:disable_user, params)
      req.send_request(options)
    end

    # Removes a user account from a permission group.
    #
    # @option params [required, String] :permission_group_id
    #   The unique identifier for the permission group.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DisassociateUserFromPermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateUserFromPermissionGroupResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_user_from_permission_group({
    #     permission_group_id: "PermissionGroupId", # required
    #     user_id: "UserId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/DisassociateUserFromPermissionGroup AWS API Documentation
    #
    # @overload disassociate_user_from_permission_group(params = {})
    # @param [Hash] params ({})
    def disassociate_user_from_permission_group(params = {}, options = {})
      req = build_request(:disassociate_user_from_permission_group, params)
      req.send_request(options)
    end

    # Allows the specified user to access the FinSpace web application and
    # API.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user account that you want to enable.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::EnableUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableUserResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_user({
    #     user_id: "UserId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/EnableUser AWS API Documentation
    #
    # @overload enable_user(params = {})
    # @param [Hash] params ({})
    def enable_user(params = {}, options = {})
      req = build_request(:enable_user, params)
      req.send_request(options)
    end

    # Get information about a Changeset.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the FinSpace Dataset where the Changeset is
    #   created.
    #
    # @option params [required, String] :changeset_id
    #   The unique identifier of the Changeset for which to get data.
    #
    # @return [Types::GetChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChangesetResponse#changeset_id #changeset_id} => String
    #   * {Types::GetChangesetResponse#changeset_arn #changeset_arn} => String
    #   * {Types::GetChangesetResponse#dataset_id #dataset_id} => String
    #   * {Types::GetChangesetResponse#change_type #change_type} => String
    #   * {Types::GetChangesetResponse#source_params #source_params} => Hash&lt;String,String&gt;
    #   * {Types::GetChangesetResponse#format_params #format_params} => Hash&lt;String,String&gt;
    #   * {Types::GetChangesetResponse#create_time #create_time} => Integer
    #   * {Types::GetChangesetResponse#status #status} => String
    #   * {Types::GetChangesetResponse#error_info #error_info} => Types::ChangesetErrorInfo
    #   * {Types::GetChangesetResponse#active_until_timestamp #active_until_timestamp} => Integer
    #   * {Types::GetChangesetResponse#active_from_timestamp #active_from_timestamp} => Integer
    #   * {Types::GetChangesetResponse#updates_changeset_id #updates_changeset_id} => String
    #   * {Types::GetChangesetResponse#updated_by_changeset_id #updated_by_changeset_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_changeset({
    #     dataset_id: "DatasetId", # required
    #     changeset_id: "ChangesetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.changeset_id #=> String
    #   resp.changeset_arn #=> String
    #   resp.dataset_id #=> String
    #   resp.change_type #=> String, one of "REPLACE", "APPEND", "MODIFY"
    #   resp.source_params #=> Hash
    #   resp.source_params["StringMapKey"] #=> String
    #   resp.format_params #=> Hash
    #   resp.format_params["StringMapKey"] #=> String
    #   resp.create_time #=> Integer
    #   resp.status #=> String, one of "PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_category #=> String, one of "VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"
    #   resp.active_until_timestamp #=> Integer
    #   resp.active_from_timestamp #=> Integer
    #   resp.updates_changeset_id #=> String
    #   resp.updated_by_changeset_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetChangeset AWS API Documentation
    #
    # @overload get_changeset(params = {})
    # @param [Hash] params ({})
    def get_changeset(params = {}, options = {})
      req = build_request(:get_changeset, params)
      req.send_request(options)
    end

    # Gets information about a Dataview.
    #
    # @option params [required, String] :data_view_id
    #   The unique identifier for the Dataview.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the Dataset used in the Dataview.
    #
    # @return [Types::GetDataViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataViewResponse#auto_update #auto_update} => Boolean
    #   * {Types::GetDataViewResponse#partition_columns #partition_columns} => Array&lt;String&gt;
    #   * {Types::GetDataViewResponse#dataset_id #dataset_id} => String
    #   * {Types::GetDataViewResponse#as_of_timestamp #as_of_timestamp} => Integer
    #   * {Types::GetDataViewResponse#error_info #error_info} => Types::DataViewErrorInfo
    #   * {Types::GetDataViewResponse#last_modified_time #last_modified_time} => Integer
    #   * {Types::GetDataViewResponse#create_time #create_time} => Integer
    #   * {Types::GetDataViewResponse#sort_columns #sort_columns} => Array&lt;String&gt;
    #   * {Types::GetDataViewResponse#data_view_id #data_view_id} => String
    #   * {Types::GetDataViewResponse#data_view_arn #data_view_arn} => String
    #   * {Types::GetDataViewResponse#destination_type_params #destination_type_params} => Types::DataViewDestinationTypeParams
    #   * {Types::GetDataViewResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_view({
    #     data_view_id: "DataViewId", # required
    #     dataset_id: "DatasetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_update #=> Boolean
    #   resp.partition_columns #=> Array
    #   resp.partition_columns[0] #=> String
    #   resp.dataset_id #=> String
    #   resp.as_of_timestamp #=> Integer
    #   resp.error_info.error_message #=> String
    #   resp.error_info.error_category #=> String, one of "VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"
    #   resp.last_modified_time #=> Integer
    #   resp.create_time #=> Integer
    #   resp.sort_columns #=> Array
    #   resp.sort_columns[0] #=> String
    #   resp.data_view_id #=> String
    #   resp.data_view_arn #=> String
    #   resp.destination_type_params.destination_type #=> String
    #   resp.destination_type_params.s3_destination_export_file_format #=> String, one of "PARQUET", "DELIMITED_TEXT"
    #   resp.destination_type_params.s3_destination_export_file_format_options #=> Hash
    #   resp.destination_type_params.s3_destination_export_file_format_options["StringMapKey"] #=> String
    #   resp.status #=> String, one of "RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetDataView AWS API Documentation
    #
    # @overload get_data_view(params = {})
    # @param [Hash] params ({})
    def get_data_view(params = {}, options = {})
      req = build_request(:get_data_view, params)
      req.send_request(options)
    end

    # Returns information about a Dataset.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for a Dataset.
    #
    # @return [Types::GetDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::GetDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::GetDatasetResponse#dataset_title #dataset_title} => String
    #   * {Types::GetDatasetResponse#kind #kind} => String
    #   * {Types::GetDatasetResponse#dataset_description #dataset_description} => String
    #   * {Types::GetDatasetResponse#create_time #create_time} => Integer
    #   * {Types::GetDatasetResponse#last_modified_time #last_modified_time} => Integer
    #   * {Types::GetDatasetResponse#schema_definition #schema_definition} => Types::SchemaUnion
    #   * {Types::GetDatasetResponse#alias #alias} => String
    #   * {Types::GetDatasetResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataset({
    #     dataset_id: "StringValueLength1to255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #   resp.dataset_arn #=> String
    #   resp.dataset_title #=> String
    #   resp.kind #=> String, one of "TABULAR", "NON_TABULAR"
    #   resp.dataset_description #=> String
    #   resp.create_time #=> Integer
    #   resp.last_modified_time #=> Integer
    #   resp.schema_definition.tabular_schema_config.columns #=> Array
    #   resp.schema_definition.tabular_schema_config.columns[0].data_type #=> String, one of "STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"
    #   resp.schema_definition.tabular_schema_config.columns[0].column_name #=> String
    #   resp.schema_definition.tabular_schema_config.columns[0].column_description #=> String
    #   resp.schema_definition.tabular_schema_config.primary_key_columns #=> Array
    #   resp.schema_definition.tabular_schema_config.primary_key_columns[0] #=> String
    #   resp.alias #=> String
    #   resp.status #=> String, one of "PENDING", "FAILED", "SUCCESS", "RUNNING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetDataset AWS API Documentation
    #
    # @overload get_dataset(params = {})
    # @param [Hash] params ({})
    def get_dataset(params = {}, options = {})
      req = build_request(:get_dataset, params)
      req.send_request(options)
    end

    # Returns the credentials to access the external Dataview from an S3
    # location. To call this API:
    #
    # * You must retrieve the programmatic credentials.
    #
    # * You must be a member of a FinSpace user group, where the dataset
    #   that you want to access has `Read Dataset Data` permissions.
    #
    # @option params [required, String] :data_view_id
    #   The unique identifier for the Dataview that you want to access.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the Dataset.
    #
    # @return [Types::GetExternalDataViewAccessDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExternalDataViewAccessDetailsResponse#credentials #credentials} => Types::AwsCredentials
    #   * {Types::GetExternalDataViewAccessDetailsResponse#s3_location #s3_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_external_data_view_access_details({
    #     data_view_id: "DataViewId", # required
    #     dataset_id: "DatasetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Integer
    #   resp.s3_location.bucket #=> String
    #   resp.s3_location.key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetExternalDataViewAccessDetails AWS API Documentation
    #
    # @overload get_external_data_view_access_details(params = {})
    # @param [Hash] params ({})
    def get_external_data_view_access_details(params = {}, options = {})
      req = build_request(:get_external_data_view_access_details, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific permission group.
    #
    # @option params [required, String] :permission_group_id
    #   The unique identifier for the permission group.
    #
    # @return [Types::GetPermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPermissionGroupResponse#permission_group #permission_group} => Types::PermissionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permission_group({
    #     permission_group_id: "PermissionGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_group.permission_group_id #=> String
    #   resp.permission_group.name #=> String
    #   resp.permission_group.description #=> String
    #   resp.permission_group.application_permissions #=> Array
    #   resp.permission_group.application_permissions[0] #=> String, one of "CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"
    #   resp.permission_group.create_time #=> Integer
    #   resp.permission_group.last_modified_time #=> Integer
    #   resp.permission_group.membership_status #=> String, one of "ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetPermissionGroup AWS API Documentation
    #
    # @overload get_permission_group(params = {})
    # @param [Hash] params ({})
    def get_permission_group(params = {}, options = {})
      req = build_request(:get_permission_group, params)
      req.send_request(options)
    end

    # Request programmatic credentials to use with FinSpace SDK.
    #
    # @option params [Integer] :duration_in_minutes
    #   The time duration in which the credentials remain valid.
    #
    # @option params [required, String] :environment_id
    #   The FinSpace environment identifier.
    #
    # @return [Types::GetProgrammaticAccessCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProgrammaticAccessCredentialsResponse#credentials #credentials} => Types::Credentials
    #   * {Types::GetProgrammaticAccessCredentialsResponse#duration_in_minutes #duration_in_minutes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_programmatic_access_credentials({
    #     duration_in_minutes: 1,
    #     environment_id: "IdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.duration_in_minutes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetProgrammaticAccessCredentials AWS API Documentation
    #
    # @overload get_programmatic_access_credentials(params = {})
    # @param [Hash] params ({})
    def get_programmatic_access_credentials(params = {}, options = {})
      req = build_request(:get_programmatic_access_credentials, params)
      req.send_request(options)
    end

    # Retrieves details for a specific user.
    #
    # @option params [required, String] :user_id
    #   The unique identifier of the user to get data for.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user_id #user_id} => String
    #   * {Types::GetUserResponse#status #status} => String
    #   * {Types::GetUserResponse#first_name #first_name} => String
    #   * {Types::GetUserResponse#last_name #last_name} => String
    #   * {Types::GetUserResponse#email_address #email_address} => String
    #   * {Types::GetUserResponse#type #type} => String
    #   * {Types::GetUserResponse#api_access #api_access} => String
    #   * {Types::GetUserResponse#api_access_principal_arn #api_access_principal_arn} => String
    #   * {Types::GetUserResponse#create_time #create_time} => Integer
    #   * {Types::GetUserResponse#last_enabled_time #last_enabled_time} => Integer
    #   * {Types::GetUserResponse#last_disabled_time #last_disabled_time} => Integer
    #   * {Types::GetUserResponse#last_modified_time #last_modified_time} => Integer
    #   * {Types::GetUserResponse#last_login_time #last_login_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     user_id: "UserId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.status #=> String, one of "CREATING", "ENABLED", "DISABLED"
    #   resp.first_name #=> String
    #   resp.last_name #=> String
    #   resp.email_address #=> String
    #   resp.type #=> String, one of "SUPER_USER", "APP_USER"
    #   resp.api_access #=> String, one of "ENABLED", "DISABLED"
    #   resp.api_access_principal_arn #=> String
    #   resp.create_time #=> Integer
    #   resp.last_enabled_time #=> Integer
    #   resp.last_disabled_time #=> Integer
    #   resp.last_modified_time #=> Integer
    #   resp.last_login_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # A temporary Amazon S3 location, where you can copy your files from a
    # source location to stage or use as a scratch space in FinSpace
    # notebook.
    #
    # @option params [String] :location_type
    #   Specify the type of the working location.
    #
    #   * `SAGEMAKER` – Use the Amazon S3 location as a temporary location to
    #     store data content when working with FinSpace Notebooks that run on
    #     SageMaker studio.
    #
    #   * `INGESTION` – Use the Amazon S3 location as a staging location to
    #     copy your data content and then use the location with the Changeset
    #     creation operation.
    #
    # @return [Types::GetWorkingLocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkingLocationResponse#s3_uri #s3_uri} => String
    #   * {Types::GetWorkingLocationResponse#s3_path #s3_path} => String
    #   * {Types::GetWorkingLocationResponse#s3_bucket #s3_bucket} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_working_location({
    #     location_type: "INGESTION", # accepts INGESTION, SAGEMAKER
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_uri #=> String
    #   resp.s3_path #=> String
    #   resp.s3_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetWorkingLocation AWS API Documentation
    #
    # @overload get_working_location(params = {})
    # @param [Hash] params ({})
    def get_working_location(params = {}, options = {})
      req = build_request(:get_working_location, params)
      req.send_request(options)
    end

    # Lists the FinSpace Changesets for a Dataset.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the FinSpace Dataset to which the Changeset
    #   belongs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results per page.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @return [Types::ListChangesetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangesetsResponse#changesets #changesets} => Array&lt;Types::ChangesetSummary&gt;
    #   * {Types::ListChangesetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_changesets({
    #     dataset_id: "DatasetId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.changesets #=> Array
    #   resp.changesets[0].changeset_id #=> String
    #   resp.changesets[0].changeset_arn #=> String
    #   resp.changesets[0].dataset_id #=> String
    #   resp.changesets[0].change_type #=> String, one of "REPLACE", "APPEND", "MODIFY"
    #   resp.changesets[0].source_params #=> Hash
    #   resp.changesets[0].source_params["StringMapKey"] #=> String
    #   resp.changesets[0].format_params #=> Hash
    #   resp.changesets[0].format_params["StringMapKey"] #=> String
    #   resp.changesets[0].create_time #=> Integer
    #   resp.changesets[0].status #=> String, one of "PENDING", "FAILED", "SUCCESS", "RUNNING", "STOP_REQUESTED"
    #   resp.changesets[0].error_info.error_message #=> String
    #   resp.changesets[0].error_info.error_category #=> String, one of "VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"
    #   resp.changesets[0].active_until_timestamp #=> Integer
    #   resp.changesets[0].active_from_timestamp #=> Integer
    #   resp.changesets[0].updates_changeset_id #=> String
    #   resp.changesets[0].updated_by_changeset_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListChangesets AWS API Documentation
    #
    # @overload list_changesets(params = {})
    # @param [Hash] params ({})
    def list_changesets(params = {}, options = {})
      req = build_request(:list_changesets, params)
      req.send_request(options)
    end

    # Lists all available Dataviews for a Dataset.
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier of the Dataset for which to retrieve Dataviews.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results per page.
    #
    # @return [Types::ListDataViewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataViewsResponse#next_token #next_token} => String
    #   * {Types::ListDataViewsResponse#data_views #data_views} => Array&lt;Types::DataViewSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_views({
    #     dataset_id: "DatasetId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.data_views #=> Array
    #   resp.data_views[0].data_view_id #=> String
    #   resp.data_views[0].data_view_arn #=> String
    #   resp.data_views[0].dataset_id #=> String
    #   resp.data_views[0].as_of_timestamp #=> Integer
    #   resp.data_views[0].partition_columns #=> Array
    #   resp.data_views[0].partition_columns[0] #=> String
    #   resp.data_views[0].sort_columns #=> Array
    #   resp.data_views[0].sort_columns[0] #=> String
    #   resp.data_views[0].status #=> String, one of "RUNNING", "STARTING", "FAILED", "CANCELLED", "TIMEOUT", "SUCCESS", "PENDING", "FAILED_CLEANUP_FAILED"
    #   resp.data_views[0].error_info.error_message #=> String
    #   resp.data_views[0].error_info.error_category #=> String, one of "VALIDATION", "SERVICE_QUOTA_EXCEEDED", "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "THROTTLING", "INTERNAL_SERVICE_EXCEPTION", "CANCELLED", "USER_RECOVERABLE"
    #   resp.data_views[0].destination_type_properties.destination_type #=> String
    #   resp.data_views[0].destination_type_properties.s3_destination_export_file_format #=> String, one of "PARQUET", "DELIMITED_TEXT"
    #   resp.data_views[0].destination_type_properties.s3_destination_export_file_format_options #=> Hash
    #   resp.data_views[0].destination_type_properties.s3_destination_export_file_format_options["StringMapKey"] #=> String
    #   resp.data_views[0].auto_update #=> Boolean
    #   resp.data_views[0].create_time #=> Integer
    #   resp.data_views[0].last_modified_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListDataViews AWS API Documentation
    #
    # @overload list_data_views(params = {})
    # @param [Hash] params ({})
    def list_data_views(params = {}, options = {})
      req = build_request(:list_data_views, params)
      req.send_request(options)
    end

    # Lists all of the active Datasets that a user has access to.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results per page.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#datasets #datasets} => Array&lt;Types::Dataset&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datasets #=> Array
    #   resp.datasets[0].dataset_id #=> String
    #   resp.datasets[0].dataset_arn #=> String
    #   resp.datasets[0].dataset_title #=> String
    #   resp.datasets[0].kind #=> String, one of "TABULAR", "NON_TABULAR"
    #   resp.datasets[0].dataset_description #=> String
    #   resp.datasets[0].owner_info.name #=> String
    #   resp.datasets[0].owner_info.phone_number #=> String
    #   resp.datasets[0].owner_info.email #=> String
    #   resp.datasets[0].create_time #=> Integer
    #   resp.datasets[0].last_modified_time #=> Integer
    #   resp.datasets[0].schema_definition.tabular_schema_config.columns #=> Array
    #   resp.datasets[0].schema_definition.tabular_schema_config.columns[0].data_type #=> String, one of "STRING", "CHAR", "INTEGER", "TINYINT", "SMALLINT", "BIGINT", "FLOAT", "DOUBLE", "DATE", "DATETIME", "BOOLEAN", "BINARY"
    #   resp.datasets[0].schema_definition.tabular_schema_config.columns[0].column_name #=> String
    #   resp.datasets[0].schema_definition.tabular_schema_config.columns[0].column_description #=> String
    #   resp.datasets[0].schema_definition.tabular_schema_config.primary_key_columns #=> Array
    #   resp.datasets[0].schema_definition.tabular_schema_config.primary_key_columns[0] #=> String
    #   resp.datasets[0].alias #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Lists all available permission groups in FinSpace.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of results per page.
    #
    # @return [Types::ListPermissionGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionGroupsResponse#permission_groups #permission_groups} => Array&lt;Types::PermissionGroup&gt;
    #   * {Types::ListPermissionGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_groups({
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_groups #=> Array
    #   resp.permission_groups[0].permission_group_id #=> String
    #   resp.permission_groups[0].name #=> String
    #   resp.permission_groups[0].description #=> String
    #   resp.permission_groups[0].application_permissions #=> Array
    #   resp.permission_groups[0].application_permissions[0] #=> String, one of "CreateDataset", "ManageClusters", "ManageUsersAndGroups", "ManageAttributeSets", "ViewAuditData", "AccessNotebooks", "GetTemporaryCredentials"
    #   resp.permission_groups[0].create_time #=> Integer
    #   resp.permission_groups[0].last_modified_time #=> Integer
    #   resp.permission_groups[0].membership_status #=> String, one of "ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListPermissionGroups AWS API Documentation
    #
    # @overload list_permission_groups(params = {})
    # @param [Hash] params ({})
    def list_permission_groups(params = {}, options = {})
      req = build_request(:list_permission_groups, params)
      req.send_request(options)
    end

    # Lists all the permission groups that are associated with a specific
    # user account.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of results per page.
    #
    # @return [Types::ListPermissionGroupsByUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPermissionGroupsByUserResponse#permission_groups #permission_groups} => Array&lt;Types::PermissionGroupByUser&gt;
    #   * {Types::ListPermissionGroupsByUserResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_groups_by_user({
    #     user_id: "UserId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_groups #=> Array
    #   resp.permission_groups[0].permission_group_id #=> String
    #   resp.permission_groups[0].name #=> String
    #   resp.permission_groups[0].membership_status #=> String, one of "ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListPermissionGroupsByUser AWS API Documentation
    #
    # @overload list_permission_groups_by_user(params = {})
    # @param [Hash] params ({})
    def list_permission_groups_by_user(params = {}, options = {})
      req = build_request(:list_permission_groups_by_user, params)
      req.send_request(options)
    end

    # Lists all available user accounts in FinSpace.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of results per page.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].status #=> String, one of "CREATING", "ENABLED", "DISABLED"
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].email_address #=> String
    #   resp.users[0].type #=> String, one of "SUPER_USER", "APP_USER"
    #   resp.users[0].api_access #=> String, one of "ENABLED", "DISABLED"
    #   resp.users[0].api_access_principal_arn #=> String
    #   resp.users[0].create_time #=> Integer
    #   resp.users[0].last_enabled_time #=> Integer
    #   resp.users[0].last_disabled_time #=> Integer
    #   resp.users[0].last_modified_time #=> Integer
    #   resp.users[0].last_login_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists details of all the users in a specific permission group.
    #
    # @option params [required, String] :permission_group_id
    #   The unique identifier for the permission group.
    #
    # @option params [String] :next_token
    #   A token that indicates where a results page should begin.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of results per page.
    #
    # @return [Types::ListUsersByPermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersByPermissionGroupResponse#users #users} => Array&lt;Types::UserByPermissionGroup&gt;
    #   * {Types::ListUsersByPermissionGroupResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users_by_permission_group({
    #     permission_group_id: "PermissionGroupId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].status #=> String, one of "CREATING", "ENABLED", "DISABLED"
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].email_address #=> String
    #   resp.users[0].type #=> String, one of "SUPER_USER", "APP_USER"
    #   resp.users[0].api_access #=> String, one of "ENABLED", "DISABLED"
    #   resp.users[0].api_access_principal_arn #=> String
    #   resp.users[0].membership_status #=> String, one of "ADDITION_IN_PROGRESS", "ADDITION_SUCCESS", "REMOVAL_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ListUsersByPermissionGroup AWS API Documentation
    #
    # @overload list_users_by_permission_group(params = {})
    # @param [Hash] params ({})
    def list_users_by_permission_group(params = {}, options = {})
      req = build_request(:list_users_by_permission_group, params)
      req.send_request(options)
    end

    # Resets the password for a specified user ID and generates a temporary
    # one. Only a superuser can reset password for other users. Resetting
    # the password immediately invalidates the previous password associated
    # with the user.
    #
    # @option params [required, String] :user_id
    #   The unique identifier of the user that a temporary password is
    #   requested for.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ResetUserPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetUserPasswordResponse#user_id #user_id} => String
    #   * {Types::ResetUserPasswordResponse#temporary_password #temporary_password} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_user_password({
    #     user_id: "UserId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.temporary_password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ResetUserPassword AWS API Documentation
    #
    # @overload reset_user_password(params = {})
    # @param [Hash] params ({})
    def reset_user_password(params = {}, options = {})
      req = build_request(:reset_user_password, params)
      req.send_request(options)
    end

    # Updates a FinSpace Changeset.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the FinSpace Dataset in which the Changeset
    #   is created.
    #
    # @option params [required, String] :changeset_id
    #   The unique identifier for the Changeset to update.
    #
    # @option params [required, Hash<String,String>] :source_params
    #   Options that define the location of the data being ingested
    #   (`s3SourcePath`) and the source of the changeset (`sourceType`).
    #
    #   Both `s3SourcePath` and `sourceType` are required attributes.
    #
    #   Here is an example of how you could specify the `sourceParams`:
    #
    #   ` "sourceParams": \{ "s3SourcePath":
    #   "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
    #   "sourceType": "S3" \} `
    #
    #   The S3 path that you specify must allow the FinSpace role access. To
    #   do that, you first need to configure the IAM policy on S3 bucket. For
    #   more information, see [Loading data from an Amazon S3 Bucket using the
    #   FinSpace API][1]section.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets
    #
    # @option params [required, Hash<String,String>] :format_params
    #   Options that define the structure of the source file(s) including the
    #   format type (`formatType`), header row (`withHeader`), data separation
    #   character (`separator`) and the type of compression (`compression`).
    #
    #   `formatType` is a required attribute and can have the following
    #   values:
    #
    #   * `PARQUET` – Parquet source file format.
    #
    #   * `CSV` – CSV source file format.
    #
    #   * `JSON` – JSON source file format.
    #
    #   * `XML` – XML source file format.
    #
    #   Here is an example of how you could specify the `formatParams`:
    #
    #   ` "formatParams": \{ "formatType": "CSV", "withHeader": "true",
    #   "separator": ",", "compression":"None" \} `
    #
    #   Note that if you only provide `formatType` as `CSV`, the rest of the
    #   attributes will automatically default to CSV values as following:
    #
    #   ` \{ "withHeader": "true", "separator": "," \} `
    #
    #   For more information about supported file formats, see [Supported Data
    #   Types and File Formats][1] in the FinSpace User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html
    #
    # @return [Types::UpdateChangesetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChangesetResponse#changeset_id #changeset_id} => String
    #   * {Types::UpdateChangesetResponse#dataset_id #dataset_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_changeset({
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     changeset_id: "ChangesetId", # required
    #     source_params: { # required
    #       "StringMapKey" => "StringMapValue",
    #     },
    #     format_params: { # required
    #       "StringMapKey" => "StringMapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.changeset_id #=> String
    #   resp.dataset_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateChangeset AWS API Documentation
    #
    # @overload update_changeset(params = {})
    # @param [Hash] params ({})
    def update_changeset(params = {}, options = {})
      req = build_request(:update_changeset, params)
      req.send_request(options)
    end

    # Updates a FinSpace Dataset.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :dataset_id
    #   The unique identifier for the Dataset to update.
    #
    # @option params [required, String] :dataset_title
    #   A display title for the Dataset.
    #
    # @option params [required, String] :kind
    #   The format in which the Dataset data is structured.
    #
    #   * `TABULAR` – Data is structured in a tabular format.
    #
    #   * `NON_TABULAR` – Data is structured in a non-tabular format.
    #
    # @option params [String] :dataset_description
    #   A description for the Dataset.
    #
    # @option params [String] :alias
    #   The unique resource identifier for a Dataset.
    #
    # @option params [Types::SchemaUnion] :schema_definition
    #   Definition for a schema on a tabular Dataset.
    #
    # @return [Types::UpdateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetResponse#dataset_id #dataset_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     client_token: "ClientToken",
    #     dataset_id: "DatasetId", # required
    #     dataset_title: "DatasetTitle", # required
    #     kind: "TABULAR", # required, accepts TABULAR, NON_TABULAR
    #     dataset_description: "DatasetDescription",
    #     alias: "AliasString",
    #     schema_definition: {
    #       tabular_schema_config: {
    #         columns: [
    #           {
    #             data_type: "STRING", # accepts STRING, CHAR, INTEGER, TINYINT, SMALLINT, BIGINT, FLOAT, DOUBLE, DATE, DATETIME, BOOLEAN, BINARY
    #             column_name: "ColumnName",
    #             column_description: "ColumnDescription",
    #           },
    #         ],
    #         primary_key_columns: ["ColumnName"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateDataset AWS API Documentation
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # Modifies the details of a permission group. You cannot modify a
    # `permissionGroupID`.
    #
    # @option params [required, String] :permission_group_id
    #   The unique identifier for the permission group to update.
    #
    # @option params [String] :name
    #   The name of the permission group.
    #
    # @option params [String] :description
    #   A brief description for the permission group.
    #
    # @option params [Array<String>] :application_permissions
    #   The permissions that are granted to a specific group for accessing the
    #   FinSpace application.
    #
    #   When assigning application permissions, be aware that the permission
    #   `ManageUsersAndGroups` allows users to grant themselves or others
    #   access to any functionality in their FinSpace environment's
    #   application. It should only be granted to trusted users.
    #
    #   * `CreateDataset` – Group members can create new datasets.
    #
    #   * `ManageClusters` – Group members can manage Apache Spark clusters
    #     from FinSpace notebooks.
    #
    #   * `ManageUsersAndGroups` – Group members can manage users and
    #     permission groups. This is a privileged permission that allows users
    #     to grant themselves or others access to any functionality in the
    #     application. It should only be granted to trusted users.
    #
    #   * `ManageAttributeSets` – Group members can manage attribute sets.
    #
    #   * `ViewAuditData` – Group members can view audit data.
    #
    #   * `AccessNotebooks` – Group members will have access to FinSpace
    #     notebooks.
    #
    #   * `GetTemporaryCredentials` – Group members can get temporary API
    #     credentials.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdatePermissionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePermissionGroupResponse#permission_group_id #permission_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permission_group({
    #     permission_group_id: "PermissionGroupId", # required
    #     name: "PermissionGroupName",
    #     description: "PermissionGroupDescription",
    #     application_permissions: ["CreateDataset"], # accepts CreateDataset, ManageClusters, ManageUsersAndGroups, ManageAttributeSets, ViewAuditData, AccessNotebooks, GetTemporaryCredentials
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.permission_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdatePermissionGroup AWS API Documentation
    #
    # @overload update_permission_group(params = {})
    # @param [Hash] params ({})
    def update_permission_group(params = {}, options = {})
      req = build_request(:update_permission_group, params)
      req.send_request(options)
    end

    # Modifies the details of the specified user account. You cannot update
    # the `userId` for a user.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user account to update.
    #
    # @option params [String] :type
    #   The option to indicate the type of user.
    #
    #   * `SUPER_USER`– A user with permission to all the functionality and
    #     data in FinSpace.
    #
    #   * `APP_USER` – A user with specific permissions in FinSpace. The users
    #     are assigned permissions by adding them to a permission group.
    #
    # @option params [String] :first_name
    #   The first name of the user.
    #
    # @option params [String] :last_name
    #   The last name of the user.
    #
    # @option params [String] :api_access
    #   The option to indicate whether the user can use the
    #   `GetProgrammaticAccessCredentials` API to obtain credentials that can
    #   then be used to access other FinSpace Data API operations.
    #
    #   * `ENABLED` – The user has permissions to use the APIs.
    #
    #   * `DISABLED` – The user does not have permissions to use any APIs.
    #
    # @option params [String] :api_access_principal_arn
    #   The ARN identifier of an AWS user or role that is allowed to call the
    #   `GetProgrammaticAccessCredentials` API to obtain a credentials token
    #   for a specific FinSpace user. This must be an IAM role within your
    #   FinSpace account.
    #
    # @option params [String] :client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     user_id: "UserId", # required
    #     type: "SUPER_USER", # accepts SUPER_USER, APP_USER
    #     first_name: "FirstName",
    #     last_name: "LastName",
    #     api_access: "ENABLED", # accepts ENABLED, DISABLED
    #     api_access_principal_arn: "RoleArn",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-finspacedata'
      context[:gem_version] = '1.24.0'
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

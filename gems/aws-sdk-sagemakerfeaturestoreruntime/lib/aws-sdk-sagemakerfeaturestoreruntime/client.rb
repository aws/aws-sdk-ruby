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

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakerfeaturestoreruntime)

module Aws::SageMakerFeatureStoreRuntime
  # An API client for SageMakerFeatureStoreRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SageMakerFeatureStoreRuntime::Client.new(
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

    @identifier = :sagemakerfeaturestoreruntime

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
    add_plugin(Aws::SageMakerFeatureStoreRuntime::Plugins::Endpoints)

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
    #   @option options [Aws::SageMakerFeatureStoreRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SageMakerFeatureStoreRuntime::EndpointParameters`
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

    # Retrieves a batch of `Records` from a `FeatureGroup`.
    #
    # @option params [required, Array<Types::BatchGetRecordIdentifier>] :identifiers
    #   A list of `FeatureGroup` names, with their corresponding
    #   `RecordIdentifier` value, and Feature name that have been requested to
    #   be retrieved in batch.
    #
    # @option params [String] :expiration_time_response
    #   Parameter to request `ExpiresAt` in response. If `Enabled`,
    #   `BatchGetRecord` will return the value of `ExpiresAt`, if it is not
    #   null. If `Disabled` and null, `BatchGetRecord` will return null.
    #
    # @return [Types::BatchGetRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetRecordResponse#records #records} => Array&lt;Types::BatchGetRecordResultDetail&gt;
    #   * {Types::BatchGetRecordResponse#errors #errors} => Array&lt;Types::BatchGetRecordError&gt;
    #   * {Types::BatchGetRecordResponse#unprocessed_identifiers #unprocessed_identifiers} => Array&lt;Types::BatchGetRecordIdentifier&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_record({
    #     identifiers: [ # required
    #       {
    #         feature_group_name: "FeatureGroupName", # required
    #         record_identifiers_value_as_string: ["ValueAsString"], # required
    #         feature_names: ["FeatureName"],
    #       },
    #     ],
    #     expiration_time_response: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @example Response structure
    #
    #   resp.records #=> Array
    #   resp.records[0].feature_group_name #=> String
    #   resp.records[0].record_identifier_value_as_string #=> String
    #   resp.records[0].record #=> Array
    #   resp.records[0].record[0].feature_name #=> String
    #   resp.records[0].record[0].value_as_string #=> String
    #   resp.records[0].expires_at #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].feature_group_name #=> String
    #   resp.errors[0].record_identifier_value_as_string #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #   resp.unprocessed_identifiers #=> Array
    #   resp.unprocessed_identifiers[0].feature_group_name #=> String
    #   resp.unprocessed_identifiers[0].record_identifiers_value_as_string #=> Array
    #   resp.unprocessed_identifiers[0].record_identifiers_value_as_string[0] #=> String
    #   resp.unprocessed_identifiers[0].feature_names #=> Array
    #   resp.unprocessed_identifiers[0].feature_names[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/BatchGetRecord AWS API Documentation
    #
    # @overload batch_get_record(params = {})
    # @param [Hash] params ({})
    def batch_get_record(params = {}, options = {})
      req = build_request(:batch_get_record, params)
      req.send_request(options)
    end

    # Deletes a `Record` from a `FeatureGroup` in the `OnlineStore`. Feature
    # Store supports both `SoftDelete` and `HardDelete`. For `SoftDelete`
    # (default), feature columns are set to `null` and the record is no
    # longer retrievable by `GetRecord` or `BatchGetRecord`. For
    # `HardDelete`, the complete `Record` is removed from the `OnlineStore`.
    # In both cases, Feature Store appends the deleted record marker to the
    # `OfflineStore` with feature values set to `null`, `is_deleted` value
    # set to `True`, and `EventTime` set to the delete input `EventTime`.
    #
    # Note that the `EventTime` specified in `DeleteRecord` should be set
    # later than the `EventTime` of the existing record in the `OnlineStore`
    # for that `RecordIdentifer`. If it is not, the deletion does not occur:
    #
    # * For `SoftDelete`, the existing (undeleted) record remains in the
    #   `OnlineStore`, though the delete record marker is still written to
    #   the `OfflineStore`.
    #
    # * `HardDelete` returns `EventTime`: `400 ValidationException` to
    #   indicate that the delete operation failed. No delete record marker
    #   is written to the `OfflineStore`.
    #
    # @option params [required, String] :feature_group_name
    #   The name of the feature group to delete the record from.
    #
    # @option params [required, String] :record_identifier_value_as_string
    #   The value for the `RecordIdentifier` that uniquely identifies the
    #   record, in string format.
    #
    # @option params [required, String] :event_time
    #   Timestamp indicating when the deletion event occurred. `EventTime` can
    #   be used to query data at a certain point in time.
    #
    # @option params [Array<String>] :target_stores
    #   A list of stores from which you're deleting the record. By default,
    #   Feature Store deletes the record from all of the stores that you're
    #   using for the `FeatureGroup`.
    #
    # @option params [String] :deletion_mode
    #   The name of the deletion mode for deleting the record. By default, the
    #   deletion mode is set to `SoftDelete`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_record({
    #     feature_group_name: "FeatureGroupName", # required
    #     record_identifier_value_as_string: "ValueAsString", # required
    #     event_time: "ValueAsString", # required
    #     target_stores: ["OnlineStore"], # accepts OnlineStore, OfflineStore
    #     deletion_mode: "SoftDelete", # accepts SoftDelete, HardDelete
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/DeleteRecord AWS API Documentation
    #
    # @overload delete_record(params = {})
    # @param [Hash] params ({})
    def delete_record(params = {}, options = {})
      req = build_request(:delete_record, params)
      req.send_request(options)
    end

    # Use for `OnlineStore` serving from a `FeatureStore`. Only the latest
    # records stored in the `OnlineStore` can be retrieved. If no Record
    # with `RecordIdentifierValue` is found, then an empty result is
    # returned.
    #
    # @option params [required, String] :feature_group_name
    #   The name of the feature group from which you want to retrieve a
    #   record.
    #
    # @option params [required, String] :record_identifier_value_as_string
    #   The value that corresponds to `RecordIdentifier` type and uniquely
    #   identifies the record in the `FeatureGroup`.
    #
    # @option params [Array<String>] :feature_names
    #   List of names of Features to be retrieved. If not specified, the
    #   latest value for all the Features are returned.
    #
    # @option params [String] :expiration_time_response
    #   Parameter to request `ExpiresAt` in response. If `Enabled`,
    #   `BatchGetRecord` will return the value of `ExpiresAt`, if it is not
    #   null. If `Disabled` and null, `BatchGetRecord` will return null.
    #
    # @return [Types::GetRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecordResponse#record #record} => Array&lt;Types::FeatureValue&gt;
    #   * {Types::GetRecordResponse#expires_at #expires_at} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_record({
    #     feature_group_name: "FeatureGroupName", # required
    #     record_identifier_value_as_string: "ValueAsString", # required
    #     feature_names: ["FeatureName"],
    #     expiration_time_response: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @example Response structure
    #
    #   resp.record #=> Array
    #   resp.record[0].feature_name #=> String
    #   resp.record[0].value_as_string #=> String
    #   resp.expires_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/GetRecord AWS API Documentation
    #
    # @overload get_record(params = {})
    # @param [Hash] params ({})
    def get_record(params = {}, options = {})
      req = build_request(:get_record, params)
      req.send_request(options)
    end

    # Used for data ingestion into the `FeatureStore`. The `PutRecord` API
    # writes to both the `OnlineStore` and `OfflineStore`. If the record is
    # the latest record for the `recordIdentifier`, the record is written to
    # both the `OnlineStore` and `OfflineStore`. If the record is a historic
    # record, it is written only to the `OfflineStore`.
    #
    # @option params [required, String] :feature_group_name
    #   The name of the feature group that you want to insert the record into.
    #
    # @option params [required, Array<Types::FeatureValue>] :record
    #   List of FeatureValues to be inserted. This will be a full over-write.
    #   If you only want to update few of the feature values, do the
    #   following:
    #
    #   * Use `GetRecord` to retrieve the latest record.
    #
    #   * Update the record returned from `GetRecord`.
    #
    #   * Use `PutRecord` to update feature values.
    #
    # @option params [Array<String>] :target_stores
    #   A list of stores to which you're adding the record. By default,
    #   Feature Store adds the record to all of the stores that you're using
    #   for the `FeatureGroup`.
    #
    # @option params [Types::TtlDuration] :ttl_duration
    #   Time to live duration, where the record is hard deleted after the
    #   expiration time is reached; `ExpiresAt` = `EventTime` + `TtlDuration`.
    #   For information on HardDelete, see the [DeleteRecord][1] API in the
    #   Amazon SageMaker API Reference guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record({
    #     feature_group_name: "FeatureGroupName", # required
    #     record: [ # required
    #       {
    #         feature_name: "FeatureName", # required
    #         value_as_string: "ValueAsString", # required
    #       },
    #     ],
    #     target_stores: ["OnlineStore"], # accepts OnlineStore, OfflineStore
    #     ttl_duration: {
    #       unit: "Seconds", # required, accepts Seconds, Minutes, Hours, Days, Weeks
    #       value: 1, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/PutRecord AWS API Documentation
    #
    # @overload put_record(params = {})
    # @param [Hash] params ({})
    def put_record(params = {}, options = {})
      req = build_request(:put_record, params)
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
      context[:gem_name] = 'aws-sdk-sagemakerfeaturestoreruntime'
      context[:gem_version] = '1.22.0'
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

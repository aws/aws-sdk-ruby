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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudfrontkeyvaluestore)

module Aws::CloudFrontKeyValueStore
  # An API client for CloudFrontKeyValueStore.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudFrontKeyValueStore::Client.new(
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

    @identifier = :cloudfrontkeyvaluestore

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
    add_plugin(Aws::CloudFrontKeyValueStore::Plugins::Endpoints)

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
    #   @option options [Aws::CloudFrontKeyValueStore::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CloudFrontKeyValueStore::EndpointParameters`
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

    # Deletes the key value pair specified by the key.
    #
    # @option params [required, String] :kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #
    # @option params [required, String] :key
    #   The key to delete.
    #
    # @option params [required, String] :if_match
    #   The current version (ETag) of the Key Value Store that you are
    #   deleting keys from, which you can get using DescribeKeyValueStore.
    #
    # @return [Types::DeleteKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKeyResponse#item_count #item_count} => Integer
    #   * {Types::DeleteKeyResponse#total_size_in_bytes #total_size_in_bytes} => Integer
    #   * {Types::DeleteKeyResponse#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key({
    #     kvs_arn: "KvsARN", # required
    #     key: "Key", # required
    #     if_match: "Etag", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.item_count #=> Integer
    #   resp.total_size_in_bytes #=> Integer
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DeleteKey AWS API Documentation
    #
    # @overload delete_key(params = {})
    # @param [Hash] params ({})
    def delete_key(params = {}, options = {})
      req = build_request(:delete_key, params)
      req.send_request(options)
    end

    # Returns metadata information about Key Value Store.
    #
    # @option params [required, String] :kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #
    # @return [Types::DescribeKeyValueStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyValueStoreResponse#item_count #item_count} => Integer
    #   * {Types::DescribeKeyValueStoreResponse#total_size_in_bytes #total_size_in_bytes} => Integer
    #   * {Types::DescribeKeyValueStoreResponse#kvs_arn #kvs_arn} => String
    #   * {Types::DescribeKeyValueStoreResponse#created #created} => Time
    #   * {Types::DescribeKeyValueStoreResponse#etag #etag} => String
    #   * {Types::DescribeKeyValueStoreResponse#last_modified #last_modified} => Time
    #   * {Types::DescribeKeyValueStoreResponse#status #status} => String
    #   * {Types::DescribeKeyValueStoreResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_value_store({
    #     kvs_arn: "KvsARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.item_count #=> Integer
    #   resp.total_size_in_bytes #=> Integer
    #   resp.kvs_arn #=> String
    #   resp.created #=> Time
    #   resp.etag #=> String
    #   resp.last_modified #=> Time
    #   resp.status #=> String
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/DescribeKeyValueStore AWS API Documentation
    #
    # @overload describe_key_value_store(params = {})
    # @param [Hash] params ({})
    def describe_key_value_store(params = {}, options = {})
      req = build_request(:describe_key_value_store, params)
      req.send_request(options)
    end

    # Returns a key value pair.
    #
    # @option params [required, String] :kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #
    # @option params [required, String] :key
    #   The key to get.
    #
    # @return [Types::GetKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyResponse#key #key} => String
    #   * {Types::GetKeyResponse#value #value} => String
    #   * {Types::GetKeyResponse#item_count #item_count} => Integer
    #   * {Types::GetKeyResponse#total_size_in_bytes #total_size_in_bytes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key({
    #     kvs_arn: "KvsARN", # required
    #     key: "Key", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key #=> String
    #   resp.value #=> String
    #   resp.item_count #=> Integer
    #   resp.total_size_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/GetKey AWS API Documentation
    #
    # @overload get_key(params = {})
    # @param [Hash] params ({})
    def get_key(params = {}, options = {})
      req = build_request(:get_key, params)
      req.send_request(options)
    end

    # Returns a list of key value pairs.
    #
    # @option params [required, String] :kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #
    # @option params [String] :next_token
    #   If nextToken is returned in the response, there are more results
    #   available. Make the next call using the returned token to retrieve the
    #   next page.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results that are returned per call. The default is
    #   10 and maximum allowed page is 50.
    #
    # @return [Types::ListKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeysResponse#next_token #next_token} => String
    #   * {Types::ListKeysResponse#items #items} => Array&lt;Types::ListKeysResponseListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keys({
    #     kvs_arn: "KvsARN", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].key #=> String
    #   resp.items[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/ListKeys AWS API Documentation
    #
    # @overload list_keys(params = {})
    # @param [Hash] params ({})
    def list_keys(params = {}, options = {})
      req = build_request(:list_keys, params)
      req.send_request(options)
    end

    # Creates a new key value pair or replaces the value of an existing key.
    #
    # @option params [required, String] :key
    #   The key to put.
    #
    # @option params [required, String] :value
    #   The value to put.
    #
    # @option params [required, String] :kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #
    # @option params [required, String] :if_match
    #   The current version (ETag) of the Key Value Store that you are putting
    #   keys into, which you can get using DescribeKeyValueStore.
    #
    # @return [Types::PutKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutKeyResponse#item_count #item_count} => Integer
    #   * {Types::PutKeyResponse#total_size_in_bytes #total_size_in_bytes} => Integer
    #   * {Types::PutKeyResponse#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_key({
    #     key: "Key", # required
    #     value: "Value", # required
    #     kvs_arn: "KvsARN", # required
    #     if_match: "Etag", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.item_count #=> Integer
    #   resp.total_size_in_bytes #=> Integer
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/PutKey AWS API Documentation
    #
    # @overload put_key(params = {})
    # @param [Hash] params ({})
    def put_key(params = {}, options = {})
      req = build_request(:put_key, params)
      req.send_request(options)
    end

    # Puts or Deletes multiple key value pairs in a single, all-or-nothing
    # operation.
    #
    # @option params [required, String] :kvs_arn
    #   The Amazon Resource Name (ARN) of the Key Value Store.
    #
    # @option params [required, String] :if_match
    #   The current version (ETag) of the Key Value Store that you are
    #   updating keys of, which you can get using DescribeKeyValueStore.
    #
    # @option params [Array<Types::PutKeyRequestListItem>] :puts
    #   List of key value pairs to put.
    #
    # @option params [Array<Types::DeleteKeyRequestListItem>] :deletes
    #   List of keys to delete.
    #
    # @return [Types::UpdateKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKeysResponse#item_count #item_count} => Integer
    #   * {Types::UpdateKeysResponse#total_size_in_bytes #total_size_in_bytes} => Integer
    #   * {Types::UpdateKeysResponse#etag #etag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_keys({
    #     kvs_arn: "KvsARN", # required
    #     if_match: "Etag", # required
    #     puts: [
    #       {
    #         key: "Key", # required
    #         value: "Value", # required
    #       },
    #     ],
    #     deletes: [
    #       {
    #         key: "Key", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.item_count #=> Integer
    #   resp.total_size_in_bytes #=> Integer
    #   resp.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-keyvaluestore-2022-07-26/UpdateKeys AWS API Documentation
    #
    # @overload update_keys(params = {})
    # @param [Hash] params ({})
    def update_keys(params = {}, options = {})
      req = build_request(:update_keys, params)
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
      context[:gem_name] = 'aws-sdk-cloudfrontkeyvaluestore'
      context[:gem_version] = '1.4.0'
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

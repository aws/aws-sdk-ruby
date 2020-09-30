# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediastoredata)

module Aws::MediaStoreData
  # An API client for MediaStoreData.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaStoreData::Client.new(
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

    @identifier = :mediastoredata

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Deletes an object at the specified path.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object({
    #     path: "PathNaming", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DeleteObject AWS API Documentation
    #
    # @overload delete_object(params = {})
    # @param [Hash] params ({})
    def delete_object(params = {}, options = {})
      req = build_request(:delete_object, params)
      req.send_request(options)
    end

    # Gets the headers for an object at the specified path.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    # @return [Types::DescribeObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeObjectResponse#etag #etag} => String
    #   * {Types::DescribeObjectResponse#content_type #content_type} => String
    #   * {Types::DescribeObjectResponse#content_length #content_length} => Integer
    #   * {Types::DescribeObjectResponse#cache_control #cache_control} => String
    #   * {Types::DescribeObjectResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_object({
    #     path: "PathNaming", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.etag #=> String
    #   resp.content_type #=> String
    #   resp.content_length #=> Integer
    #   resp.cache_control #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DescribeObject AWS API Documentation
    #
    # @overload describe_object(params = {})
    # @param [Hash] params ({})
    def describe_object(params = {}, options = {})
      req = build_request(:describe_object, params)
      req.send_request(options)
    end

    # Downloads the object at the specified path. If the object’s upload
    # availability is set to `streaming`, AWS Elemental MediaStore downloads
    # the object even if it’s still uploading the object.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    #   For example, to upload the file `mlaw.avi` to the folder path
    #   `premium\canada` in the container `movies`, enter the path
    #   `premium/canada/mlaw.avi`.
    #
    #   Do not include the container name in this path.
    #
    #   If the path includes any folders that don't exist yet, the service
    #   creates them. For example, suppose you have an existing `premium/usa`
    #   subfolder. If you specify `premium/canada`, the service creates a
    #   `canada` subfolder in the `premium` folder. You then have two
    #   subfolders, `usa` and `canada`, in the `premium` folder.
    #
    #   There is no correlation between the path to the source and the path
    #   (folders) in the container in AWS Elemental MediaStore.
    #
    #   For more information about folders and how they exist in a container,
    #   see the [AWS Elemental MediaStore User Guide][1].
    #
    #   The file name is the name that is assigned to the file that you
    #   upload. The file can have the same name inside and outside of AWS
    #   Elemental MediaStore, or it can have the same name. The file name can
    #   include or omit an extension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediastore/latest/ug/
    #
    # @option params [String] :range
    #   The range bytes of an object to retrieve. For more information about
    #   the `Range` header, see
    #   [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35][1].
    #   AWS Elemental MediaStore ignores this header for partially uploaded
    #   objects that have streaming upload availability.
    #
    #
    #
    #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35
    #
    # @return [Types::GetObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetObjectResponse#body #body} => IO
    #   * {Types::GetObjectResponse#cache_control #cache_control} => String
    #   * {Types::GetObjectResponse#content_range #content_range} => String
    #   * {Types::GetObjectResponse#content_length #content_length} => Integer
    #   * {Types::GetObjectResponse#content_type #content_type} => String
    #   * {Types::GetObjectResponse#etag #etag} => String
    #   * {Types::GetObjectResponse#last_modified #last_modified} => Time
    #   * {Types::GetObjectResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object({
    #     path: "PathNaming", # required
    #     range: "RangePattern",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> IO
    #   resp.cache_control #=> String
    #   resp.content_range #=> String
    #   resp.content_length #=> Integer
    #   resp.content_type #=> String
    #   resp.etag #=> String
    #   resp.last_modified #=> Time
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/GetObject AWS API Documentation
    #
    # @overload get_object(params = {})
    # @param [Hash] params ({})
    def get_object(params = {}, options = {}, &block)
      req = build_request(:get_object, params)
      req.send_request(options, &block)
    end

    # Provides a list of metadata entries about folders and objects in the
    # specified folder.
    #
    # @option params [String] :path
    #   The path in the container from which to retrieve items. Format:
    #   &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request. For example,
    #   you submit a `ListItems` request with `MaxResults` set at 500.
    #   Although 2,000 items match your request, the service returns no more
    #   than the first 500 items. (The service also returns a `NextToken`
    #   value that you can use to fetch the next batch of results.) The
    #   service might return fewer results than the `MaxResults` value.
    #
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 1,000 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies which batch of results that you want to see.
    #   For example, you submit a `ListItems` request with `MaxResults` set at
    #   500. The service returns the first batch of results (up to 500) and a
    #   `NextToken` value. To see the next batch of results, you can submit
    #   the `ListItems` request a second time and specify the `NextToken`
    #   value.
    #
    #   Tokens expire after 15 minutes.
    #
    # @return [Types::ListItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListItemsResponse#items #items} => Array&lt;Types::Item&gt;
    #   * {Types::ListItemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_items({
    #     path: "ListPathNaming",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String, one of "OBJECT", "FOLDER"
    #   resp.items[0].etag #=> String
    #   resp.items[0].last_modified #=> Time
    #   resp.items[0].content_type #=> String
    #   resp.items[0].content_length #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ListItems AWS API Documentation
    #
    # @overload list_items(params = {})
    # @param [Hash] params ({})
    def list_items(params = {}, options = {})
      req = build_request(:list_items, params)
      req.send_request(options)
    end

    # Uploads an object to the specified path. Object sizes are limited to
    # 25 MB for standard upload availability and 10 MB for streaming upload
    # availability.
    #
    # @option params [required, String, IO] :body
    #   The bytes to be stored.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    #   For example, to upload the file `mlaw.avi` to the folder path
    #   `premium\canada` in the container `movies`, enter the path
    #   `premium/canada/mlaw.avi`.
    #
    #   Do not include the container name in this path.
    #
    #   If the path includes any folders that don't exist yet, the service
    #   creates them. For example, suppose you have an existing `premium/usa`
    #   subfolder. If you specify `premium/canada`, the service creates a
    #   `canada` subfolder in the `premium` folder. You then have two
    #   subfolders, `usa` and `canada`, in the `premium` folder.
    #
    #   There is no correlation between the path to the source and the path
    #   (folders) in the container in AWS Elemental MediaStore.
    #
    #   For more information about folders and how they exist in a container,
    #   see the [AWS Elemental MediaStore User Guide][1].
    #
    #   The file name is the name that is assigned to the file that you
    #   upload. The file can have the same name inside and outside of AWS
    #   Elemental MediaStore, or it can have the same name. The file name can
    #   include or omit an extension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediastore/latest/ug/
    #
    # @option params [String] :content_type
    #   The content type of the object.
    #
    # @option params [String] :cache_control
    #   An optional `CacheControl` header that allows the caller to control
    #   the object's cache behavior. Headers can be passed in as specified in
    #   the HTTP at
    #   [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9][1].
    #
    #   Headers with a custom user-defined value are also accepted.
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
    #
    # @option params [String] :storage_class
    #   Indicates the storage class of a `Put` request. Defaults to
    #   high-performance temporal storage class, and objects are persisted
    #   into durable storage shortly after being received.
    #
    # @option params [String] :upload_availability
    #   Indicates the availability of an object while it is still uploading.
    #   If the value is set to `streaming`, the object is available for
    #   downloading after some initial buffering but before the object is
    #   uploaded completely. If the value is set to `standard`, the object is
    #   available for downloading only when it is uploaded completely. The
    #   default value for this header is `standard`.
    #
    #   To use this header, you must also set the HTTP `Transfer-Encoding`
    #   header to `chunked`.
    #
    # @return [Types::PutObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutObjectResponse#content_sha256 #content_sha256} => String
    #   * {Types::PutObjectResponse#etag #etag} => String
    #   * {Types::PutObjectResponse#storage_class #storage_class} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object({
    #     body: "data", # required
    #     path: "PathNaming", # required
    #     content_type: "ContentType",
    #     cache_control: "StringPrimitive",
    #     storage_class: "TEMPORAL", # accepts TEMPORAL
    #     upload_availability: "STANDARD", # accepts STANDARD, STREAMING
    #   })
    #
    # @example Response structure
    #
    #   resp.content_sha256 #=> String
    #   resp.etag #=> String
    #   resp.storage_class #=> String, one of "TEMPORAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/PutObject AWS API Documentation
    #
    # @overload put_object(params = {})
    # @param [Hash] params ({})
    def put_object(params = {}, options = {})
      req = build_request(:put_object, params)
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
      context[:gem_name] = 'aws-sdk-mediastoredata'
      context[:gem_version] = '1.27.0'
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

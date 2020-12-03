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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:pricing)

module Aws::Pricing
  # An API client for Pricing.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Pricing::Client.new(
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

    @identifier = :pricing

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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

    # Returns the metadata for one service or a list of the metadata for all
    # services. Use this without a service code to get the service codes for
    # all services. Use it with a service code, such as `AmazonEC2`, to get
    # information specific to that service, such as the attribute names
    # available for that service. For example, some of the attribute names
    # available for EC2 are `volumeType`, `maxIopsVolume`, `operation`,
    # `locationType`, and `instanceCapacity10xlarge`.
    #
    # @option params [String] :service_code
    #   The code for the service whose information you want to retrieve, such
    #   as `AmazonEC2`. You can use the `ServiceCode` to filter the results in
    #   a `GetProducts` call. To retrieve a list of all services, leave this
    #   blank.
    #
    # @option params [String] :format_version
    #   The format version that you want the response to be in.
    #
    #   Valid values are: `aws_v1`
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that you want returned in the response.
    #
    # @return [Types::DescribeServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServicesResponse#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::DescribeServicesResponse#format_version #format_version} => String
    #   * {Types::DescribeServicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To retrieve a list of services and service codes
    #
    #   resp = client.describe_services({
    #     format_version: "aws_v1", 
    #     max_results: 1, 
    #     service_code: "AmazonEC2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     format_version: "aws_v1", 
    #     next_token: "abcdefg123", 
    #     services: [
    #       {
    #         attribute_names: [
    #           "volumeType", 
    #           "maxIopsvolume", 
    #           "instanceCapacity10xlarge", 
    #           "locationType", 
    #           "operation", 
    #         ], 
    #         service_code: "AmazonEC2", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services({
    #     service_code: "String",
    #     format_version: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].service_code #=> String
    #   resp.services[0].attribute_names #=> Array
    #   resp.services[0].attribute_names[0] #=> String
    #   resp.format_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/DescribeServices AWS API Documentation
    #
    # @overload describe_services(params = {})
    # @param [Hash] params ({})
    def describe_services(params = {}, options = {})
      req = build_request(:describe_services, params)
      req.send_request(options)
    end

    # Returns a list of attribute values. Attibutes are similar to the
    # details in a Price List API offer file. For a list of available
    # attributes, see [Offer File Definitions][1] in the [AWS Billing and
    # Cost Management User Guide][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs
    # [2]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html
    #
    # @option params [required, String] :service_code
    #   The service code for the service whose attributes you want to
    #   retrieve. For example, if you want the retrieve an EC2 attribute, use
    #   `AmazonEC2`.
    #
    # @option params [required, String] :attribute_name
    #   The name of the attribute that you want to retrieve the values for,
    #   such as `volumeType`.
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in response.
    #
    # @return [Types::GetAttributeValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttributeValuesResponse#attribute_values #attribute_values} => Array&lt;Types::AttributeValue&gt;
    #   * {Types::GetAttributeValuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To retrieve a list of attribute values
    #
    #   # This operation returns a list of values available for the given attribute.
    #
    #   resp = client.get_attribute_values({
    #     attribute_name: "volumeType", 
    #     max_results: 2, 
    #     service_code: "AmazonEC2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attribute_values: [
    #       {
    #         value: "Throughput Optimized HDD", 
    #       }, 
    #       {
    #         value: "Provisioned IOPS", 
    #       }, 
    #     ], 
    #     next_token: "GpgauEXAMPLEezucl5LV0w==:7GzYJ0nw0DBTJ2J66EoTIIynE6O1uXwQtTRqioJzQadBnDVgHPzI1en4BUQnPCLpzeBk9RQQAWaFieA4+DapFAGLgk+Z/9/cTw9GldnPOHN98+FdmJP7wKU3QQpQ8MQr5KOeBkIsAqvAQYdL0DkL7tHwPtE5iCEByAmg9gcC/yBU1vAOsf7R3VaNN4M5jMDv3woSWqASSIlBVB6tgW78YL22KhssoItM/jWW+aP6Jqtq4mldxp/ct6DWAl+xLFwHU/CbketimPPXyqHF3/UXDw==", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attribute_values({
    #     service_code: "String", # required
    #     attribute_name: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute_values #=> Array
    #   resp.attribute_values[0] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetAttributeValues AWS API Documentation
    #
    # @overload get_attribute_values(params = {})
    # @param [Hash] params ({})
    def get_attribute_values(params = {}, options = {})
      req = build_request(:get_attribute_values, params)
      req.send_request(options)
    end

    # Returns a list of all products that match the filter criteria.
    #
    # @option params [String] :service_code
    #   The code for the service whose products you want to retrieve.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The list of filters that limit the returned products. only products
    #   that match all filters are returned.
    #
    # @option params [String] :format_version
    #   The format version that you want the response to be in.
    #
    #   Valid values are: `aws_v1`
    #
    # @option params [String] :next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::GetProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProductsResponse#format_version #format_version} => String
    #   * {Types::GetProductsResponse#price_list #price_list} => Array&lt;String&gt;
    #   * {Types::GetProductsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To retrieve a list of products
    #
    #   # This operation returns a list of products that match the given criteria.
    #
    #   resp = client.get_products({
    #     filters: [
    #       {
    #         field: "ServiceCode", 
    #         type: "TERM_MATCH", 
    #         value: "AmazonEC2", 
    #       }, 
    #       {
    #         field: "volumeType", 
    #         type: "TERM_MATCH", 
    #         value: "Provisioned IOPS", 
    #       }, 
    #     ], 
    #     format_version: "aws_v1", 
    #     max_results: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     format_version: "aws_v1", 
    #     next_token: "57r3EXAMPLEujbzWfHF7Ciw==:ywSmZsD3mtpQmQLQ5XfOsIMkYybSj+vAT+kGmwMFq+K9DGmIoJkz7lunVeamiOPgthdWSO2a7YKojCO+zY4dJmuNl2QvbNhXs+AJ2Ufn7xGmJncNI2TsEuAsVCUfTAvAQNcwwamtk6XuZ4YdNnooV62FjkV3ZAn40d9+wAxV7+FImvhUHi/+f8afgZdGh2zPUlH8jlV9uUtj0oHp8+DhPUuHXh+WBII1E/aoKpPSm3c=", 
    #     price_list: [
    #       "{\"product\":{\"productFamily\":\"Storage\",\"attributes\":{\"storageMedia\":\"SSD-backed\",\"maxThroughputvolume\":\"320 MB/sec\",\"volumeType\":\"Provisioned IOPS\",\"maxIopsvolume\":\"20000\",\"servicecode\":\"AmazonEC2\",\"usagetype\":\"CAN1-EBS:VolumeUsage.piops\",\"locationType\":\"AWS Region\",\"location\":\"Canada (Central)\",\"servicename\":\"Amazon Elastic Compute Cloud\",\"maxVolumeSize\":\"16 TiB\",\"operation\":\"\"},\"sku\":\"WQGC34PB2AWS8R4U\"},\"serviceCode\":\"AmazonEC2\",\"terms\":{\"OnDemand\":{\"WQGC34PB2AWS8R4U.JRTCKXETXF\":{\"priceDimensions\":{\"WQGC34PB2AWS8R4U.JRTCKXETXF.6YS6EN2CT7\":{\"unit\":\"GB-Mo\",\"endRange\":\"Inf\",\"description\":\"$0.138 per GB-month of Provisioned IOPS SSD (io1)  provisioned storage - Canada (Central)\",\"appliesTo\":[],\"rateCode\":\"WQGC34PB2AWS8R4U.JRTCKXETXF.6YS6EN2CT7\",\"beginRange\":\"0\",\"pricePerUnit\":{\"USD\":\"0.1380000000\"}}},\"sku\":\"WQGC34PB2AWS8R4U\",\"effectiveDate\":\"2017-08-01T00:00:00Z\",\"offerTermCode\":\"JRTCKXETXF\",\"termAttributes\":{}}}},\"version\":\"20170901182201\",\"publicationDate\":\"2017-09-01T18:22:01Z\"}", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_products({
    #     service_code: "String",
    #     filters: [
    #       {
    #         type: "TERM_MATCH", # required, accepts TERM_MATCH
    #         field: "String", # required
    #         value: "String", # required
    #       },
    #     ],
    #     format_version: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.format_version #=> String
    #   resp.price_list #=> Array
    #   resp.price_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pricing-2017-10-15/GetProducts AWS API Documentation
    #
    # @overload get_products(params = {})
    # @param [Hash] params ({})
    def get_products(params = {}, options = {})
      req = build_request(:get_products, params)
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
      context[:gem_name] = 'aws-sdk-pricing'
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

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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacemetering)

module Aws::MarketplaceMetering
  # An API client for MarketplaceMetering.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceMetering::Client.new(
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

    @identifier = :marketplacemetering

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
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
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
    #     to test endpoints. This should be a valid HTTP(S) URI.
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

    # BatchMeterUsage is called from a SaaS application listed on the AWS
    # Marketplace to post metering records for a set of customers.
    #
    # For identical requests, the API is idempotent; requests can be retried
    # with the same records or a subset of the input records.
    #
    # Every request to BatchMeterUsage is for one product. If you need to
    # meter usage for multiple products, you must make multiple calls to
    # BatchMeterUsage.
    #
    # BatchMeterUsage can process up to 25 UsageRecords at a time.
    #
    # @option params [required, Array<Types::UsageRecord>] :usage_records
    #   The set of UsageRecords to submit. BatchMeterUsage accepts up to 25
    #   UsageRecords at a time.
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #
    # @return [Types::BatchMeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchMeterUsageResult#results #results} => Array&lt;Types::UsageRecordResult&gt;
    #   * {Types::BatchMeterUsageResult#unprocessed_records #unprocessed_records} => Array&lt;Types::UsageRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_meter_usage({
    #     usage_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: "CustomerIdentifier", # required
    #         dimension: "UsageDimension", # required
    #         quantity: 1,
    #       },
    #     ],
    #     product_code: "ProductCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].usage_record.timestamp #=> Time
    #   resp.results[0].usage_record.customer_identifier #=> String
    #   resp.results[0].usage_record.dimension #=> String
    #   resp.results[0].usage_record.quantity #=> Integer
    #   resp.results[0].metering_record_id #=> String
    #   resp.results[0].status #=> String, one of "Success", "CustomerNotSubscribed", "DuplicateRecord"
    #   resp.unprocessed_records #=> Array
    #   resp.unprocessed_records[0].timestamp #=> Time
    #   resp.unprocessed_records[0].customer_identifier #=> String
    #   resp.unprocessed_records[0].dimension #=> String
    #   resp.unprocessed_records[0].quantity #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsage AWS API Documentation
    #
    # @overload batch_meter_usage(params = {})
    # @param [Hash] params ({})
    def batch_meter_usage(params = {}, options = {})
      req = build_request(:batch_meter_usage, params)
      req.send_request(options)
    end

    # API to emit metering records. For identical requests, the API is
    # idempotent. It simply returns the metering record ID.
    #
    # MeterUsage is authenticated on the buyer's AWS account using
    # credentials from the EC2 instance, ECS task, or EKS pod.
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :timestamp
    #   Timestamp, in UTC, for which the usage is being reported. Your
    #   application can meter usage for up to one hour in the past. Make sure
    #   the timestamp value is not before the start of the software usage.
    #
    # @option params [required, String] :usage_dimension
    #   It will be one of the fcp dimension name provided during the
    #   publishing of the product.
    #
    # @option params [Integer] :usage_quantity
    #   Consumption value for the hour. Defaults to `0` if not specified.
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the permissions required for the action, but
    #   does not make the request. If you have the permissions, the request
    #   returns DryRunOperation; otherwise, it returns UnauthorizedException.
    #   Defaults to `false` if not specified.
    #
    # @return [Types::MeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MeterUsageResult#metering_record_id #metering_record_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.meter_usage({
    #     product_code: "ProductCode", # required
    #     timestamp: Time.now, # required
    #     usage_dimension: "UsageDimension", # required
    #     usage_quantity: 1,
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.metering_record_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsage AWS API Documentation
    #
    # @overload meter_usage(params = {})
    # @param [Hash] params ({})
    def meter_usage(params = {}, options = {})
      req = build_request(:meter_usage, params)
      req.send_request(options)
    end

    # Paid container software products sold through AWS Marketplace must
    # integrate with the AWS Marketplace Metering Service and call the
    # RegisterUsage operation for software entitlement and metering. Free
    # and BYOL products for Amazon ECS or Amazon EKS aren't required to
    # call RegisterUsage, but you may choose to do so if you would like to
    # receive usage data in your seller reports. The sections below explain
    # the behavior of RegisterUsage. RegisterUsage performs two primary
    # functions: metering and entitlement.
    #
    # * *Entitlement*\: RegisterUsage allows you to verify that the customer
    #   running your paid software is subscribed to your product on AWS
    #   Marketplace, enabling you to guard against unauthorized use. Your
    #   container image that integrates with RegisterUsage is only required
    #   to guard against unauthorized use at container startup, as such a
    #   CustomerNotSubscribedException/PlatformNotSupportedException will
    #   only be thrown on the initial call to RegisterUsage. Subsequent
    #   calls from the same Amazon ECS task instance (e.g. task-id) or
    #   Amazon EKS pod will not throw a CustomerNotSubscribedException, even
    #   if the customer unsubscribes while the Amazon ECS task or Amazon EKS
    #   pod is still running.
    #
    # * *Metering*\: RegisterUsage meters software use per ECS task, per
    #   hour, or per pod for Amazon EKS with usage prorated to the second. A
    #   minimum of 1 minute of usage applies to tasks that are short lived.
    #   For example, if a customer has a 10 node Amazon ECS or Amazon EKS
    #   cluster and a service configured as a Daemon Set, then Amazon ECS or
    #   Amazon EKS will launch a task on all 10 cluster nodes and the
    #   customer will be charged: (10 * hourly\_rate). Metering for
    #   software use is automatically handled by the AWS Marketplace
    #   Metering Control Plane -- your software is not required to perform
    #   any metering specific actions, other than call RegisterUsage once
    #   for metering of software use to commence. The AWS Marketplace
    #   Metering Control Plane will also continue to bill customers for
    #   running ECS tasks and Amazon EKS pods, regardless of the customers
    #   subscription state, removing the need for your software to perform
    #   entitlement checks at runtime.
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #
    # @option params [required, Integer] :public_key_version
    #   Public Key Version provided by AWS Marketplace
    #
    # @option params [String] :nonce
    #   (Optional) To scope down the registration to a specific running
    #   software instance and guard against replay attacks.
    #
    # @return [Types::RegisterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterUsageResult#public_key_rotation_timestamp #public_key_rotation_timestamp} => Time
    #   * {Types::RegisterUsageResult#signature #signature} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_usage({
    #     product_code: "ProductCode", # required
    #     public_key_version: 1, # required
    #     nonce: "Nonce",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_rotation_timestamp #=> Time
    #   resp.signature #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/RegisterUsage AWS API Documentation
    #
    # @overload register_usage(params = {})
    # @param [Hash] params ({})
    def register_usage(params = {}, options = {})
      req = build_request(:register_usage, params)
      req.send_request(options)
    end

    # ResolveCustomer is called by a SaaS application during the
    # registration process. When a buyer visits your website during the
    # registration process, the buyer submits a registration token through
    # their browser. The registration token is resolved through this API to
    # obtain a CustomerIdentifier and product code.
    #
    # @option params [required, String] :registration_token
    #   When a buyer visits your website during the registration process, the
    #   buyer submits a registration token through the browser. The
    #   registration token is resolved to obtain a CustomerIdentifier and
    #   product code.
    #
    # @return [Types::ResolveCustomerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveCustomerResult#customer_identifier #customer_identifier} => String
    #   * {Types::ResolveCustomerResult#product_code #product_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_customer({
    #     registration_token: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_identifier #=> String
    #   resp.product_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomer AWS API Documentation
    #
    # @overload resolve_customer(params = {})
    # @param [Hash] params ({})
    def resolve_customer(params = {}, options = {})
      req = build_request(:resolve_customer, params)
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
      context[:gem_name] = 'aws-sdk-marketplacemetering'
      context[:gem_version] = '1.25.0'
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

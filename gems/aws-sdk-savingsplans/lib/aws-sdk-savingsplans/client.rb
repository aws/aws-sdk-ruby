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

Aws::Plugins::GlobalConfiguration.add_identifier(:savingsplans)

module Aws::SavingsPlans
  # An API client for SavingsPlans.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SavingsPlans::Client.new(
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

    @identifier = :savingsplans

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

    # Creates a Savings Plan.
    #
    # @option params [required, String] :savings_plan_offering_id
    #   The ID of the offering.
    #
    # @option params [required, String] :commitment
    #   The hourly commitment, in USD. This is a value between 0.001 and 1
    #   million. You cannot specify more than three digits after the decimal
    #   point.
    #
    # @option params [String] :upfront_payment_amount
    #   The up-front payment amount. This is a whole number between 50 and 99
    #   percent of the total value of the Savings Plan. This parameter is
    #   supported only if the payment option is `Partial Upfront`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :purchase_time
    #   The time at which to purchase the Savings Plan, in UTC format
    #   (YYYY-MM-DDTHH:MM:SSZ).
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   One or more tags.
    #
    # @return [Types::CreateSavingsPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSavingsPlanResponse#savings_plan_id #savings_plan_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_savings_plan({
    #     savings_plan_offering_id: "SavingsPlanOfferingId", # required
    #     commitment: "Amount", # required
    #     upfront_payment_amount: "Amount",
    #     purchase_time: Time.now,
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plan_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/CreateSavingsPlan AWS API Documentation
    #
    # @overload create_savings_plan(params = {})
    # @param [Hash] params ({})
    def create_savings_plan(params = {}, options = {})
      req = build_request(:create_savings_plan, params)
      req.send_request(options)
    end

    # Deletes the queued purchase for the specified Savings Plan.
    #
    # @option params [required, String] :savings_plan_id
    #   The ID of the Savings Plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queued_savings_plan({
    #     savings_plan_id: "SavingsPlanId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DeleteQueuedSavingsPlan AWS API Documentation
    #
    # @overload delete_queued_savings_plan(params = {})
    # @param [Hash] params ({})
    def delete_queued_savings_plan(params = {}, options = {})
      req = build_request(:delete_queued_savings_plan, params)
      req.send_request(options)
    end

    # Describes the specified Savings Plans rates.
    #
    # @option params [required, String] :savings_plan_id
    #   The ID of the Savings Plan.
    #
    # @option params [Array<Types::SavingsPlanRateFilter>] :filters
    #   The filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @return [Types::DescribeSavingsPlanRatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlanRatesResponse#savings_plan_id #savings_plan_id} => String
    #   * {Types::DescribeSavingsPlanRatesResponse#search_results #search_results} => Array&lt;Types::SavingsPlanRate&gt;
    #   * {Types::DescribeSavingsPlanRatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plan_rates({
    #     savings_plan_id: "SavingsPlanId", # required
    #     filters: [
    #       {
    #         name: "region", # accepts region, instanceType, productDescription, tenancy, productType, serviceCode, usageType, operation
    #         values: ["String"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plan_id #=> String
    #   resp.search_results #=> Array
    #   resp.search_results[0].rate #=> String
    #   resp.search_results[0].currency #=> String, one of "CNY", "USD"
    #   resp.search_results[0].unit #=> String, one of "Hrs", "Lambda-GB-Second", "Request"
    #   resp.search_results[0].product_type #=> String, one of "EC2", "Fargate", "Lambda"
    #   resp.search_results[0].service_code #=> String, one of "AmazonEC2", "AmazonECS", "AWSLambda"
    #   resp.search_results[0].usage_type #=> String
    #   resp.search_results[0].operation #=> String
    #   resp.search_results[0].properties #=> Array
    #   resp.search_results[0].properties[0].name #=> String, one of "region", "instanceType", "instanceFamily", "productDescription", "tenancy"
    #   resp.search_results[0].properties[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlanRates AWS API Documentation
    #
    # @overload describe_savings_plan_rates(params = {})
    # @param [Hash] params ({})
    def describe_savings_plan_rates(params = {}, options = {})
      req = build_request(:describe_savings_plan_rates, params)
      req.send_request(options)
    end

    # Describes the specified Savings Plans.
    #
    # @option params [Array<String>] :savings_plan_arns
    #   The Amazon Resource Names (ARN) of the Savings Plans.
    #
    # @option params [Array<String>] :savings_plan_ids
    #   The IDs of the Savings Plans.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @option params [Array<String>] :states
    #   The states.
    #
    # @option params [Array<Types::SavingsPlanFilter>] :filters
    #   The filters.
    #
    # @return [Types::DescribeSavingsPlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlansResponse#savings_plans #savings_plans} => Array&lt;Types::SavingsPlan&gt;
    #   * {Types::DescribeSavingsPlansResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans({
    #     savings_plan_arns: ["SavingsPlanArn"],
    #     savings_plan_ids: ["SavingsPlanId"],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     states: ["payment-pending"], # accepts payment-pending, payment-failed, active, retired, queued, queued-deleted
    #     filters: [
    #       {
    #         name: "region", # accepts region, ec2-instance-family, commitment, upfront, term, savings-plan-type, payment-option, start, end
    #         values: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plans #=> Array
    #   resp.savings_plans[0].offering_id #=> String
    #   resp.savings_plans[0].savings_plan_id #=> String
    #   resp.savings_plans[0].savings_plan_arn #=> String
    #   resp.savings_plans[0].description #=> String
    #   resp.savings_plans[0].start #=> String
    #   resp.savings_plans[0].end #=> String
    #   resp.savings_plans[0].state #=> String, one of "payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted"
    #   resp.savings_plans[0].region #=> String
    #   resp.savings_plans[0].ec2_instance_family #=> String
    #   resp.savings_plans[0].savings_plan_type #=> String, one of "Compute", "EC2Instance"
    #   resp.savings_plans[0].payment_option #=> String, one of "All Upfront", "Partial Upfront", "No Upfront"
    #   resp.savings_plans[0].product_types #=> Array
    #   resp.savings_plans[0].product_types[0] #=> String, one of "EC2", "Fargate", "Lambda"
    #   resp.savings_plans[0].currency #=> String, one of "CNY", "USD"
    #   resp.savings_plans[0].commitment #=> String
    #   resp.savings_plans[0].upfront_payment_amount #=> String
    #   resp.savings_plans[0].recurring_payment_amount #=> String
    #   resp.savings_plans[0].term_duration_in_seconds #=> Integer
    #   resp.savings_plans[0].tags #=> Hash
    #   resp.savings_plans[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlans AWS API Documentation
    #
    # @overload describe_savings_plans(params = {})
    # @param [Hash] params ({})
    def describe_savings_plans(params = {}, options = {})
      req = build_request(:describe_savings_plans, params)
      req.send_request(options)
    end

    # Describes the specified Savings Plans offering rates.
    #
    # @option params [Array<String>] :savings_plan_offering_ids
    #   The IDs of the offerings.
    #
    # @option params [Array<String>] :savings_plan_payment_options
    #   The payment options.
    #
    # @option params [Array<String>] :savings_plan_types
    #   The plan types.
    #
    # @option params [Array<String>] :products
    #   The AWS products.
    #
    # @option params [Array<String>] :service_codes
    #   The services.
    #
    # @option params [Array<String>] :usage_types
    #   The usage details of the line item in the billing report.
    #
    # @option params [Array<String>] :operations
    #   The specific AWS operation for the line item in the billing report.
    #
    # @option params [Array<Types::SavingsPlanOfferingRateFilterElement>] :filters
    #   The filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @return [Types::DescribeSavingsPlansOfferingRatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlansOfferingRatesResponse#search_results #search_results} => Array&lt;Types::SavingsPlanOfferingRate&gt;
    #   * {Types::DescribeSavingsPlansOfferingRatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans_offering_rates({
    #     savings_plan_offering_ids: ["UUID"],
    #     savings_plan_payment_options: ["All Upfront"], # accepts All Upfront, Partial Upfront, No Upfront
    #     savings_plan_types: ["Compute"], # accepts Compute, EC2Instance
    #     products: ["EC2"], # accepts EC2, Fargate, Lambda
    #     service_codes: ["AmazonEC2"], # accepts AmazonEC2, AmazonECS, AWSLambda
    #     usage_types: ["SavingsPlanRateUsageType"],
    #     operations: ["SavingsPlanRateOperation"],
    #     filters: [
    #       {
    #         name: "region", # accepts region, instanceFamily, instanceType, productDescription, tenancy, productId
    #         values: ["JsonSafeFilterValueString"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.search_results #=> Array
    #   resp.search_results[0].savings_plan_offering.offering_id #=> String
    #   resp.search_results[0].savings_plan_offering.payment_option #=> String, one of "All Upfront", "Partial Upfront", "No Upfront"
    #   resp.search_results[0].savings_plan_offering.plan_type #=> String, one of "Compute", "EC2Instance"
    #   resp.search_results[0].savings_plan_offering.duration_seconds #=> Integer
    #   resp.search_results[0].savings_plan_offering.currency #=> String, one of "CNY", "USD"
    #   resp.search_results[0].savings_plan_offering.plan_description #=> String
    #   resp.search_results[0].rate #=> String
    #   resp.search_results[0].unit #=> String, one of "Hrs", "Lambda-GB-Second", "Request"
    #   resp.search_results[0].product_type #=> String, one of "EC2", "Fargate", "Lambda"
    #   resp.search_results[0].service_code #=> String, one of "AmazonEC2", "AmazonECS", "AWSLambda"
    #   resp.search_results[0].usage_type #=> String
    #   resp.search_results[0].operation #=> String
    #   resp.search_results[0].properties #=> Array
    #   resp.search_results[0].properties[0].name #=> String
    #   resp.search_results[0].properties[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlansOfferingRates AWS API Documentation
    #
    # @overload describe_savings_plans_offering_rates(params = {})
    # @param [Hash] params ({})
    def describe_savings_plans_offering_rates(params = {}, options = {})
      req = build_request(:describe_savings_plans_offering_rates, params)
      req.send_request(options)
    end

    # Describes the specified Savings Plans offerings.
    #
    # @option params [Array<String>] :offering_ids
    #   The IDs of the offerings.
    #
    # @option params [Array<String>] :payment_options
    #   The payment options.
    #
    # @option params [String] :product_type
    #   The product type.
    #
    # @option params [Array<String>] :plan_types
    #   The plan type.
    #
    # @option params [Array<Integer>] :durations
    #   The durations, in seconds.
    #
    # @option params [Array<String>] :currencies
    #   The currencies.
    #
    # @option params [Array<String>] :descriptions
    #   The descriptions.
    #
    # @option params [Array<String>] :service_codes
    #   The services.
    #
    # @option params [Array<String>] :usage_types
    #   The usage details of the line item in the billing report.
    #
    # @option params [Array<String>] :operations
    #   The specific AWS operation for the line item in the billing report.
    #
    # @option params [Array<Types::SavingsPlanOfferingFilterElement>] :filters
    #   The filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @return [Types::DescribeSavingsPlansOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlansOfferingsResponse#search_results #search_results} => Array&lt;Types::SavingsPlanOffering&gt;
    #   * {Types::DescribeSavingsPlansOfferingsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans_offerings({
    #     offering_ids: ["UUID"],
    #     payment_options: ["All Upfront"], # accepts All Upfront, Partial Upfront, No Upfront
    #     product_type: "EC2", # accepts EC2, Fargate, Lambda
    #     plan_types: ["Compute"], # accepts Compute, EC2Instance
    #     durations: [1],
    #     currencies: ["CNY"], # accepts CNY, USD
    #     descriptions: ["SavingsPlanDescription"],
    #     service_codes: ["SavingsPlanServiceCode"],
    #     usage_types: ["SavingsPlanUsageType"],
    #     operations: ["SavingsPlanOperation"],
    #     filters: [
    #       {
    #         name: "region", # accepts region, instanceFamily
    #         values: ["JsonSafeFilterValueString"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.search_results #=> Array
    #   resp.search_results[0].offering_id #=> String
    #   resp.search_results[0].product_types #=> Array
    #   resp.search_results[0].product_types[0] #=> String, one of "EC2", "Fargate", "Lambda"
    #   resp.search_results[0].plan_type #=> String, one of "Compute", "EC2Instance"
    #   resp.search_results[0].description #=> String
    #   resp.search_results[0].payment_option #=> String, one of "All Upfront", "Partial Upfront", "No Upfront"
    #   resp.search_results[0].duration_seconds #=> Integer
    #   resp.search_results[0].currency #=> String, one of "CNY", "USD"
    #   resp.search_results[0].service_code #=> String
    #   resp.search_results[0].usage_type #=> String
    #   resp.search_results[0].operation #=> String
    #   resp.search_results[0].properties #=> Array
    #   resp.search_results[0].properties[0].name #=> String, one of "region", "instanceFamily"
    #   resp.search_results[0].properties[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlansOfferings AWS API Documentation
    #
    # @overload describe_savings_plans_offerings(params = {})
    # @param [Hash] params ({})
    def describe_savings_plans_offerings(params = {}, options = {})
      req = build_request(:describe_savings_plans_offerings, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "SavingsPlanArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "SavingsPlanArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "SavingsPlanArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-savingsplans'
      context[:gem_version] = '1.12.0'
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

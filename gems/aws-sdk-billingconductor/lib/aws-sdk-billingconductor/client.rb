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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:billingconductor)

module Aws::BillingConductor
  # An API client for BillingConductor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BillingConductor::Client.new(
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

    @identifier = :billingconductor

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
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
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

    # Connects an array of account IDs in a consolidated billing family to a
    # predefined billing group. The account IDs must be a part of the
    # consolidated billing family during the current month, and not already
    # associated with another billing group. The maximum number of accounts
    # that can be associated in one call is 30.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the billing group that associates
    #   the array of account IDs.
    #
    # @option params [required, Array<String>] :account_ids
    #   The associating array of account IDs.
    #
    # @return [Types::AssociateAccountsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAccountsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_accounts({
    #     arn: "BillingGroupArn", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociateAccounts AWS API Documentation
    #
    # @overload associate_accounts(params = {})
    # @param [Hash] params ({})
    def associate_accounts(params = {}, options = {})
      req = build_request(:associate_accounts, params)
      req.send_request(options)
    end

    # Connects an array of `PricingRuleArns` to a defined `PricingPlan`. The
    # maximum number `PricingRuleArn` that can be associated in one call is
    # 30.
    #
    # @option params [required, String] :arn
    #   The `PricingPlanArn` that the `PricingRuleArns` are associated with.
    #
    # @option params [required, Array<String>] :pricing_rule_arns
    #   The `PricingRuleArns` that are associated with the Pricing Plan.
    #
    # @return [Types::AssociatePricingRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePricingRulesOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_pricing_rules({
    #     arn: "PricingPlanArn", # required
    #     pricing_rule_arns: ["PricingRuleArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/AssociatePricingRules AWS API Documentation
    #
    # @overload associate_pricing_rules(params = {})
    # @param [Hash] params ({})
    def associate_pricing_rules(params = {}, options = {})
      req = build_request(:associate_pricing_rules, params)
      req.send_request(options)
    end

    # Associates a batch of resources to a percentage custom line item.
    #
    # @option params [required, String] :target_arn
    #   A percentage custom line item ARN to associate the resources to.
    #
    # @option params [required, Array<String>] :resource_arns
    #   A list containing the ARNs of the resources to be associated.
    #
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   The billing period range in which the custom line item request will be
    #   applied.
    #
    # @return [Types::BatchAssociateResourcesToCustomLineItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateResourcesToCustomLineItemOutput#successfully_associated_resources #successfully_associated_resources} => Array&lt;Types::AssociateResourceResponseElement&gt;
    #   * {Types::BatchAssociateResourcesToCustomLineItemOutput#failed_associated_resources #failed_associated_resources} => Array&lt;Types::AssociateResourceResponseElement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_resources_to_custom_line_item({
    #     target_arn: "CustomLineItemArn", # required
    #     resource_arns: ["CustomLineItemAssociationElement"], # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.successfully_associated_resources #=> Array
    #   resp.successfully_associated_resources[0].arn #=> String
    #   resp.successfully_associated_resources[0].error.message #=> String
    #   resp.successfully_associated_resources[0].error.reason #=> String, one of "INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"
    #   resp.failed_associated_resources #=> Array
    #   resp.failed_associated_resources[0].arn #=> String
    #   resp.failed_associated_resources[0].error.message #=> String
    #   resp.failed_associated_resources[0].error.reason #=> String, one of "INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BatchAssociateResourcesToCustomLineItem AWS API Documentation
    #
    # @overload batch_associate_resources_to_custom_line_item(params = {})
    # @param [Hash] params ({})
    def batch_associate_resources_to_custom_line_item(params = {}, options = {})
      req = build_request(:batch_associate_resources_to_custom_line_item, params)
      req.send_request(options)
    end

    # Disassociates a batch of resources from a percentage custom line item.
    #
    # @option params [required, String] :target_arn
    #   A percentage custom line item ARN to disassociate the resources from.
    #
    # @option params [required, Array<String>] :resource_arns
    #   A list containing the ARNs of resources to be disassociated.
    #
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   The billing period range in which the custom line item request will be
    #   applied.
    #
    # @return [Types::BatchDisassociateResourcesFromCustomLineItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateResourcesFromCustomLineItemOutput#successfully_disassociated_resources #successfully_disassociated_resources} => Array&lt;Types::DisassociateResourceResponseElement&gt;
    #   * {Types::BatchDisassociateResourcesFromCustomLineItemOutput#failed_disassociated_resources #failed_disassociated_resources} => Array&lt;Types::DisassociateResourceResponseElement&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_resources_from_custom_line_item({
    #     target_arn: "CustomLineItemArn", # required
    #     resource_arns: ["CustomLineItemAssociationElement"], # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.successfully_disassociated_resources #=> Array
    #   resp.successfully_disassociated_resources[0].arn #=> String
    #   resp.successfully_disassociated_resources[0].error.message #=> String
    #   resp.successfully_disassociated_resources[0].error.reason #=> String, one of "INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"
    #   resp.failed_disassociated_resources #=> Array
    #   resp.failed_disassociated_resources[0].arn #=> String
    #   resp.failed_disassociated_resources[0].error.message #=> String
    #   resp.failed_disassociated_resources[0].error.reason #=> String, one of "INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/BatchDisassociateResourcesFromCustomLineItem AWS API Documentation
    #
    # @overload batch_disassociate_resources_from_custom_line_item(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_resources_from_custom_line_item(params = {}, options = {})
      req = build_request(:batch_disassociate_resources_from_custom_line_item, params)
      req.send_request(options)
    end

    # Creates a billing group that resembles a consolidated billing family
    # that Amazon Web Services charges, based off of the predefined pricing
    # plan computation.
    #
    # @option params [String] :client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The billing group name. The names must be unique.
    #
    # @option params [required, Types::AccountGrouping] :account_grouping
    #   The set of accounts that will be under the billing group. The set of
    #   accounts resemble the linked accounts in a consolidated family.
    #
    # @option params [required, Types::ComputationPreference] :computation_preference
    #   The preferences and settings that will be used to compute the Amazon
    #   Web Services charges for a billing group.
    #
    # @option params [String] :primary_account_id
    #   The account ID that serves as the main account in a billing group.
    #
    # @option params [String] :description
    #   The billing group description.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to a
    #   billing group. This feature isn't available during the beta.
    #
    # @return [Types::CreateBillingGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBillingGroupOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_billing_group({
    #     client_token: "ClientToken",
    #     name: "BillingGroupName", # required
    #     account_grouping: { # required
    #       linked_account_ids: ["AccountId"], # required
    #     },
    #     computation_preference: { # required
    #       pricing_plan_arn: "PricingPlanFullArn", # required
    #     },
    #     primary_account_id: "AccountId",
    #     description: "BillingGroupDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateBillingGroup AWS API Documentation
    #
    # @overload create_billing_group(params = {})
    # @param [Hash] params ({})
    def create_billing_group(params = {}, options = {})
      req = build_request(:create_billing_group, params)
      req.send_request(options)
    end

    # Creates a custom line item that can be used to create a one-time fixed
    # charge that can be applied to a single billing group for the current
    # or previous billing period. The one-time fixed charge is either a fee
    # or discount.
    #
    # @option params [String] :client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the custom line item.
    #
    # @option params [required, String] :description
    #   The description of the custom line item. This is shown on the Bills
    #   page in association with the charge value.
    #
    # @option params [required, String] :billing_group_arn
    #   The Amazon Resource Name (ARN) that references the billing group where
    #   the custom line item applies to.
    #
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   A time range for which the custom line item is effective.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to a
    #   custom line item.
    #
    # @option params [required, Types::CustomLineItemChargeDetails] :charge_details
    #   A `CustomLineItemChargeDetails` that describes the charge details for
    #   a custom line item.
    #
    # @return [Types::CreateCustomLineItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomLineItemOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_line_item({
    #     client_token: "ClientToken",
    #     name: "CustomLineItemName", # required
    #     description: "CustomLineItemDescription", # required
    #     billing_group_arn: "BillingGroupArn", # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     charge_details: { # required
    #       flat: {
    #         charge_value: 1.0, # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0, # required
    #         associated_values: ["CustomLineItemAssociationElement"],
    #       },
    #       type: "CREDIT", # required, accepts CREDIT, FEE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreateCustomLineItem AWS API Documentation
    #
    # @overload create_custom_line_item(params = {})
    # @param [Hash] params ({})
    def create_custom_line_item(params = {}, options = {})
      req = build_request(:create_custom_line_item, params)
      req.send_request(options)
    end

    # Creates a pricing plan that is used for computing Amazon Web Services
    # charges for billing groups.
    #
    # @option params [String] :client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The pricing plan name. The names must be unique to each pricing plan.
    #
    # @option params [String] :description
    #   The pricing plan description.
    #
    # @option params [Array<String>] :pricing_rule_arns
    #   A list of Amazon Resource Names (ARNs) that define the pricing plan
    #   parameters.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to a
    #   pricing plan.
    #
    # @return [Types::CreatePricingPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePricingPlanOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pricing_plan({
    #     client_token: "ClientToken",
    #     name: "PricingPlanName", # required
    #     description: "PricingPlanDescription",
    #     pricing_rule_arns: ["PricingRuleArn"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreatePricingPlan AWS API Documentation
    #
    # @overload create_pricing_plan(params = {})
    # @param [Hash] params ({})
    def create_pricing_plan(params = {}, options = {})
      req = build_request(:create_pricing_plan, params)
      req.send_request(options)
    end

    # Creates a pricing rule can be associated to a pricing plan, or a set
    # of pricing plans.
    #
    # @option params [String] :client_token
    #   The token that is needed to support idempotency. Idempotency isn't
    #   currently supported, but will be implemented in a future update.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The pricing rule name. The names must be unique to each pricing rule.
    #
    # @option params [String] :description
    #   The pricing rule description.
    #
    # @option params [required, String] :scope
    #   The scope of pricing rule that indicates if it is globally applicable,
    #   or is service-specific.
    #
    # @option params [required, String] :type
    #   The type of pricing rule.
    #
    # @option params [required, Float] :modifier_percentage
    #   A percentage modifier applied on the public pricing rates.
    #
    # @option params [String] :service
    #   If the `Scope` attribute is set to `SERVICE`, the attribute indicates
    #   which service the `PricingRule` is applicable for.
    #
    # @option params [Hash<String,String>] :tags
    #   A map that contains tag keys and tag values that are attached to a
    #   pricing rule.
    #
    # @return [Types::CreatePricingRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePricingRuleOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pricing_rule({
    #     client_token: "ClientToken",
    #     name: "PricingRuleName", # required
    #     description: "PricingRuleDescription",
    #     scope: "GLOBAL", # required, accepts GLOBAL, SERVICE
    #     type: "MARKUP", # required, accepts MARKUP, DISCOUNT
    #     modifier_percentage: 1.0, # required
    #     service: "Service",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/CreatePricingRule AWS API Documentation
    #
    # @overload create_pricing_rule(params = {})
    # @param [Hash] params ({})
    def create_pricing_rule(params = {}, options = {})
      req = build_request(:create_pricing_rule, params)
      req.send_request(options)
    end

    # Deletes a billing group.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the billing group you're deleting.
    #
    # @return [Types::DeleteBillingGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBillingGroupOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_billing_group({
    #     arn: "BillingGroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeleteBillingGroup AWS API Documentation
    #
    # @overload delete_billing_group(params = {})
    # @param [Hash] params ({})
    def delete_billing_group(params = {}, options = {})
      req = build_request(:delete_billing_group, params)
      req.send_request(options)
    end

    # Deletes the custom line item identified by the given ARN in the
    # current, or previous billing period.
    #
    # @option params [required, String] :arn
    #   The ARN of the custom line item to be deleted.
    #
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   The billing period range in which the custom line item request will be
    #   applied.
    #
    # @return [Types::DeleteCustomLineItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCustomLineItemOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_line_item({
    #     arn: "CustomLineItemArn", # required
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeleteCustomLineItem AWS API Documentation
    #
    # @overload delete_custom_line_item(params = {})
    # @param [Hash] params ({})
    def delete_custom_line_item(params = {}, options = {})
      req = build_request(:delete_custom_line_item, params)
      req.send_request(options)
    end

    # Deletes a pricing plan. The pricing plan must not be associated with
    # any billing groups to delete successfully.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pricing plan you're deleting.
    #
    # @return [Types::DeletePricingPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePricingPlanOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pricing_plan({
    #     arn: "PricingPlanArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeletePricingPlan AWS API Documentation
    #
    # @overload delete_pricing_plan(params = {})
    # @param [Hash] params ({})
    def delete_pricing_plan(params = {}, options = {})
      req = build_request(:delete_pricing_plan, params)
      req.send_request(options)
    end

    # Deletes the pricing rule identified by the input Amazon Resource Name
    # (ARN).
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pricing rule you are deleting.
    #
    # @return [Types::DeletePricingRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePricingRuleOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pricing_rule({
    #     arn: "PricingRuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DeletePricingRule AWS API Documentation
    #
    # @overload delete_pricing_rule(params = {})
    # @param [Hash] params ({})
    def delete_pricing_rule(params = {}, options = {})
      req = build_request(:delete_pricing_rule, params)
      req.send_request(options)
    end

    # Removes the specified list of account IDs from the given billing
    # group.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the billing group that the array of
    #   account IDs will disassociate from.
    #
    # @option params [required, Array<String>] :account_ids
    #   The array of account IDs to disassociate.
    #
    # @return [Types::DisassociateAccountsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateAccountsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_accounts({
    #     arn: "BillingGroupArn", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociateAccounts AWS API Documentation
    #
    # @overload disassociate_accounts(params = {})
    # @param [Hash] params ({})
    def disassociate_accounts(params = {}, options = {})
      req = build_request(:disassociate_accounts, params)
      req.send_request(options)
    end

    # Disassociates a list of pricing rules from a pricing plan.
    #
    # @option params [required, String] :arn
    #   The pricing plan Amazon Resource Name (ARN) to disassociate pricing
    #   rules from.
    #
    # @option params [required, Array<String>] :pricing_rule_arns
    #   A list containing the Amazon Resource Name (ARN) of the pricing rules
    #   that will be disassociated.
    #
    # @return [Types::DisassociatePricingRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociatePricingRulesOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_pricing_rules({
    #     arn: "PricingPlanArn", # required
    #     pricing_rule_arns: ["PricingRuleArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/DisassociatePricingRules AWS API Documentation
    #
    # @overload disassociate_pricing_rules(params = {})
    # @param [Hash] params ({})
    def disassociate_pricing_rules(params = {}, options = {})
      req = build_request(:disassociate_pricing_rules, params)
      req.send_request(options)
    end

    # <i> <b>Amazon Web Services Billing Conductor is in beta release and is
    # subject to change. Your use of Amazon Web Services Billing Conductor
    # is subject to the Beta Service Participation terms of the <a
    # href="https://aws.amazon.com/service-terms/">Amazon Web Services
    # Service Terms</a> (Section 1.10).</b> </i>
    #
    # This is a paginated call to list linked accounts that are linked to
    # the payer account for the specified time period. If no information is
    # provided, the current billing period is used. The response will
    # optionally include the billing group associated with the linked
    # account.
    #
    # @option params [String] :billing_period
    #   The preferred billing period to get account associations.
    #
    # @option params [Types::ListAccountAssociationsFilter] :filters
    #   The filter on the account ID of the linked account, or any of the
    #   following:
    #
    #   `MONITORED`\: linked accounts that are associated to billing groups.
    #
    #   `UNMONITORED`\: linked accounts that are not associated to billing
    #   groups.
    #
    #   `Billing Group Arn`\: linked accounts that are associated to the
    #   provided billing group Arn.
    #
    # @option params [String] :next_token
    #   The pagination token used on subsequent calls to retrieve accounts.
    #
    # @return [Types::ListAccountAssociationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountAssociationsOutput#linked_accounts #linked_accounts} => Array&lt;Types::AccountAssociationsListElement&gt;
    #   * {Types::ListAccountAssociationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_associations({
    #     billing_period: "BillingPeriod",
    #     filters: {
    #       association: "Association",
    #       account_id: "AccountId",
    #     },
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.linked_accounts #=> Array
    #   resp.linked_accounts[0].account_id #=> String
    #   resp.linked_accounts[0].billing_group_arn #=> String
    #   resp.linked_accounts[0].account_name #=> String
    #   resp.linked_accounts[0].account_email #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListAccountAssociations AWS API Documentation
    #
    # @overload list_account_associations(params = {})
    # @param [Hash] params ({})
    def list_account_associations(params = {}, options = {})
      req = build_request(:list_account_associations, params)
      req.send_request(options)
    end

    # A paginated call to retrieve a summary report of actual Amazon Web
    # Services charges and the calculated Amazon Web Services charges based
    # on the associated pricing plan of a billing group.
    #
    # @option params [String] :billing_period
    #   The preferred billing period for your report.
    #
    # @option params [Integer] :max_results
    #   The maximum number of reports to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token used on subsequent calls to get reports.
    #
    # @option params [Types::ListBillingGroupCostReportsFilter] :filters
    #   A `ListBillingGroupCostReportsFilter` to specify billing groups to
    #   retrieve reports from.
    #
    # @return [Types::ListBillingGroupCostReportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillingGroupCostReportsOutput#billing_group_cost_reports #billing_group_cost_reports} => Array&lt;Types::BillingGroupCostReportElement&gt;
    #   * {Types::ListBillingGroupCostReportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_group_cost_reports({
    #     billing_period: "BillingPeriod",
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       billing_group_arns: ["BillingGroupArn"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_group_cost_reports #=> Array
    #   resp.billing_group_cost_reports[0].arn #=> String
    #   resp.billing_group_cost_reports[0].aws_cost #=> String
    #   resp.billing_group_cost_reports[0].proforma_cost #=> String
    #   resp.billing_group_cost_reports[0].margin #=> String
    #   resp.billing_group_cost_reports[0].margin_percentage #=> String
    #   resp.billing_group_cost_reports[0].currency #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroupCostReports AWS API Documentation
    #
    # @overload list_billing_group_cost_reports(params = {})
    # @param [Hash] params ({})
    def list_billing_group_cost_reports(params = {}, options = {})
      req = build_request(:list_billing_group_cost_reports, params)
      req.send_request(options)
    end

    # A paginated call to retrieve a list of billing groups for the given
    # billing period. If you don't provide a billing group, the current
    # billing period is used.
    #
    # @option params [String] :billing_period
    #   The preferred billing period to get billing groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of billing groups to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token used on subsequent calls to get billing groups.
    #
    # @option params [Types::ListBillingGroupsFilter] :filters
    #   A `ListBillingGroupsFilter` that specifies the billing group and
    #   pricing plan to retrieve billing group information.
    #
    # @return [Types::ListBillingGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillingGroupsOutput#billing_groups #billing_groups} => Array&lt;Types::BillingGroupListElement&gt;
    #   * {Types::ListBillingGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_groups({
    #     billing_period: "BillingPeriod",
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       arns: ["BillingGroupArn"],
    #       pricing_plan: "PricingPlanFullArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_groups #=> Array
    #   resp.billing_groups[0].name #=> String
    #   resp.billing_groups[0].arn #=> String
    #   resp.billing_groups[0].description #=> String
    #   resp.billing_groups[0].primary_account_id #=> String
    #   resp.billing_groups[0].computation_preference.pricing_plan_arn #=> String
    #   resp.billing_groups[0].size #=> Integer
    #   resp.billing_groups[0].creation_time #=> Integer
    #   resp.billing_groups[0].last_modified_time #=> Integer
    #   resp.billing_groups[0].status #=> String, one of "ACTIVE", "PRIMARY_ACCOUNT_MISSING"
    #   resp.billing_groups[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListBillingGroups AWS API Documentation
    #
    # @overload list_billing_groups(params = {})
    # @param [Hash] params ({})
    def list_billing_groups(params = {}, options = {})
      req = build_request(:list_billing_groups, params)
      req.send_request(options)
    end

    # A paginated call to get a list of all custom line items (FFLIs) for
    # the given billing period. If you don't provide a billing period, the
    # current billing period is used.
    #
    # @option params [String] :billing_period
    #   The preferred billing period to get custom line items (FFLIs).
    #
    # @option params [Integer] :max_results
    #   The maximum number of billing groups to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token used on subsequent calls to get custom line items
    #   (FFLIs).
    #
    # @option params [Types::ListCustomLineItemsFilter] :filters
    #   A `ListCustomLineItemsFilter` that specifies the custom line item
    #   names and/or billing group Amazon Resource Names (ARNs) to retrieve
    #   FFLI information.
    #
    # @return [Types::ListCustomLineItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomLineItemsOutput#custom_line_items #custom_line_items} => Array&lt;Types::CustomLineItemListElement&gt;
    #   * {Types::ListCustomLineItemsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_line_items({
    #     billing_period: "BillingPeriod",
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       names: ["CustomLineItemName"],
    #       billing_groups: ["BillingGroupArn"],
    #       arns: ["CustomLineItemArn"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_line_items #=> Array
    #   resp.custom_line_items[0].arn #=> String
    #   resp.custom_line_items[0].name #=> String
    #   resp.custom_line_items[0].charge_details.flat.charge_value #=> Float
    #   resp.custom_line_items[0].charge_details.percentage.percentage_value #=> Float
    #   resp.custom_line_items[0].charge_details.type #=> String, one of "CREDIT", "FEE"
    #   resp.custom_line_items[0].currency_code #=> String, one of "USD", "CNY"
    #   resp.custom_line_items[0].description #=> String
    #   resp.custom_line_items[0].product_code #=> String
    #   resp.custom_line_items[0].billing_group_arn #=> String
    #   resp.custom_line_items[0].creation_time #=> Integer
    #   resp.custom_line_items[0].last_modified_time #=> Integer
    #   resp.custom_line_items[0].association_size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListCustomLineItems AWS API Documentation
    #
    # @overload list_custom_line_items(params = {})
    # @param [Hash] params ({})
    def list_custom_line_items(params = {}, options = {})
      req = build_request(:list_custom_line_items, params)
      req.send_request(options)
    end

    # A paginated call to get pricing plans for the given billing period. If
    # you don't provide a billing period, the current billing period is
    # used.
    #
    # @option params [String] :billing_period
    #   The preferred billing period to get pricing plan.
    #
    # @option params [Types::ListPricingPlansFilter] :filters
    #   A `ListPricingPlansFilter` that specifies the Amazon Resource Name
    #   (ARNs) of pricing plans to retrieve pricing plans information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of pricing plans to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token used on subsequent call to get pricing plans.
    #
    # @return [Types::ListPricingPlansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPricingPlansOutput#billing_period #billing_period} => String
    #   * {Types::ListPricingPlansOutput#pricing_plans #pricing_plans} => Array&lt;Types::PricingPlanListElement&gt;
    #   * {Types::ListPricingPlansOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_plans({
    #     billing_period: "BillingPeriod",
    #     filters: {
    #       arns: ["PricingPlanArn"],
    #     },
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_period #=> String
    #   resp.pricing_plans #=> Array
    #   resp.pricing_plans[0].name #=> String
    #   resp.pricing_plans[0].arn #=> String
    #   resp.pricing_plans[0].description #=> String
    #   resp.pricing_plans[0].size #=> Integer
    #   resp.pricing_plans[0].creation_time #=> Integer
    #   resp.pricing_plans[0].last_modified_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlans AWS API Documentation
    #
    # @overload list_pricing_plans(params = {})
    # @param [Hash] params ({})
    def list_pricing_plans(params = {}, options = {})
      req = build_request(:list_pricing_plans, params)
      req.send_request(options)
    end

    # A list of the pricing plans associated with a pricing rule.
    #
    # @option params [String] :billing_period
    #   The pricing plan billing period for which associations will be listed.
    #
    # @option params [required, String] :pricing_rule_arn
    #   The pricing rule Amazon Resource Name (ARN) for which associations
    #   will be listed.
    #
    # @option params [Integer] :max_results
    #   The optional maximum number of pricing rule associations to retrieve.
    #
    # @option params [String] :next_token
    #   The optional pagination token returned by a previous call.
    #
    # @return [Types::ListPricingPlansAssociatedWithPricingRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPricingPlansAssociatedWithPricingRuleOutput#billing_period #billing_period} => String
    #   * {Types::ListPricingPlansAssociatedWithPricingRuleOutput#pricing_rule_arn #pricing_rule_arn} => String
    #   * {Types::ListPricingPlansAssociatedWithPricingRuleOutput#pricing_plan_arns #pricing_plan_arns} => Array&lt;String&gt;
    #   * {Types::ListPricingPlansAssociatedWithPricingRuleOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_plans_associated_with_pricing_rule({
    #     billing_period: "BillingPeriod",
    #     pricing_rule_arn: "PricingRuleArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_period #=> String
    #   resp.pricing_rule_arn #=> String
    #   resp.pricing_plan_arns #=> Array
    #   resp.pricing_plan_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingPlansAssociatedWithPricingRule AWS API Documentation
    #
    # @overload list_pricing_plans_associated_with_pricing_rule(params = {})
    # @param [Hash] params ({})
    def list_pricing_plans_associated_with_pricing_rule(params = {}, options = {})
      req = build_request(:list_pricing_plans_associated_with_pricing_rule, params)
      req.send_request(options)
    end

    # Describes a pricing rule that can be associated to a pricing plan, or
    # set of pricing plans.
    #
    # @option params [String] :billing_period
    #   The preferred billing period to get the pricing plan.
    #
    # @option params [Types::ListPricingRulesFilter] :filters
    #   A `DescribePricingRuleFilter` that specifies the Amazon Resource Name
    #   (ARNs) of pricing rules to retrieve pricing rules information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of pricing rules to retrieve.
    #
    # @option params [String] :next_token
    #   The pagination token used on subsequent call to get pricing rules.
    #
    # @return [Types::ListPricingRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPricingRulesOutput#billing_period #billing_period} => String
    #   * {Types::ListPricingRulesOutput#pricing_rules #pricing_rules} => Array&lt;Types::PricingRuleListElement&gt;
    #   * {Types::ListPricingRulesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_rules({
    #     billing_period: "BillingPeriod",
    #     filters: {
    #       arns: ["PricingRuleArn"],
    #     },
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_period #=> String
    #   resp.pricing_rules #=> Array
    #   resp.pricing_rules[0].name #=> String
    #   resp.pricing_rules[0].arn #=> String
    #   resp.pricing_rules[0].description #=> String
    #   resp.pricing_rules[0].scope #=> String, one of "GLOBAL", "SERVICE"
    #   resp.pricing_rules[0].type #=> String, one of "MARKUP", "DISCOUNT"
    #   resp.pricing_rules[0].modifier_percentage #=> Float
    #   resp.pricing_rules[0].service #=> String
    #   resp.pricing_rules[0].associated_pricing_plan_count #=> Integer
    #   resp.pricing_rules[0].creation_time #=> Integer
    #   resp.pricing_rules[0].last_modified_time #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRules AWS API Documentation
    #
    # @overload list_pricing_rules(params = {})
    # @param [Hash] params ({})
    def list_pricing_rules(params = {}, options = {})
      req = build_request(:list_pricing_rules, params)
      req.send_request(options)
    end

    # Lists the pricing rules associated with a pricing plan.
    #
    # @option params [String] :billing_period
    #   The billing period for which the pricing rule associations are to be
    #   listed.
    #
    # @option params [required, String] :pricing_plan_arn
    #   The Amazon Resource Name (ARN) of the pricing plan for which
    #   associations are to be listed.
    #
    # @option params [Integer] :max_results
    #   The optional maximum number of pricing rule associations to retrieve.
    #
    # @option params [String] :next_token
    #   The optional pagination token returned by a previous call.
    #
    # @return [Types::ListPricingRulesAssociatedToPricingPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPricingRulesAssociatedToPricingPlanOutput#billing_period #billing_period} => String
    #   * {Types::ListPricingRulesAssociatedToPricingPlanOutput#pricing_plan_arn #pricing_plan_arn} => String
    #   * {Types::ListPricingRulesAssociatedToPricingPlanOutput#pricing_rule_arns #pricing_rule_arns} => Array&lt;String&gt;
    #   * {Types::ListPricingRulesAssociatedToPricingPlanOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pricing_rules_associated_to_pricing_plan({
    #     billing_period: "BillingPeriod",
    #     pricing_plan_arn: "PricingPlanArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_period #=> String
    #   resp.pricing_plan_arn #=> String
    #   resp.pricing_rule_arns #=> Array
    #   resp.pricing_rule_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListPricingRulesAssociatedToPricingPlan AWS API Documentation
    #
    # @overload list_pricing_rules_associated_to_pricing_plan(params = {})
    # @param [Hash] params ({})
    def list_pricing_rules_associated_to_pricing_plan(params = {}, options = {})
      req = build_request(:list_pricing_rules_associated_to_pricing_plan, params)
      req.send_request(options)
    end

    # List the resources associated to a custom line item.
    #
    # @option params [String] :billing_period
    #   The billing period for which the resource associations will be listed.
    #
    # @option params [required, String] :arn
    #   The ARN of the custom line item for which the resource associations
    #   will be listed.
    #
    # @option params [Integer] :max_results
    #   (Optional) The maximum number of resource associations to be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   (Optional) The pagination token returned by a previous request.
    #
    # @option params [Types::ListResourcesAssociatedToCustomLineItemFilter] :filters
    #   (Optional) A `ListResourcesAssociatedToCustomLineItemFilter` that can
    #   specify the types of resources that should be retrieved.
    #
    # @return [Types::ListResourcesAssociatedToCustomLineItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesAssociatedToCustomLineItemOutput#arn #arn} => String
    #   * {Types::ListResourcesAssociatedToCustomLineItemOutput#associated_resources #associated_resources} => Array&lt;Types::ListResourcesAssociatedToCustomLineItemResponseElement&gt;
    #   * {Types::ListResourcesAssociatedToCustomLineItemOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_associated_to_custom_line_item({
    #     billing_period: "BillingPeriod",
    #     arn: "CustomLineItemArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: {
    #       relationship: "PARENT", # accepts PARENT, CHILD
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associated_resources #=> Array
    #   resp.associated_resources[0].arn #=> String
    #   resp.associated_resources[0].relationship #=> String, one of "PARENT", "CHILD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListResourcesAssociatedToCustomLineItem AWS API Documentation
    #
    # @overload list_resources_associated_to_custom_line_item(params = {})
    # @param [Hash] params ({})
    def list_resources_associated_to_custom_line_item(params = {}, options = {})
      req = build_request(:list_resources_associated_to_custom_line_item, params)
      req.send_request(options)
    end

    # A list the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource are not specified in the
    # request parameters, they are not changed.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource as a list of key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to delete
    #   tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags to delete from the resource as a list of key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # This updates an existing billing group.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the billing group being updated.
    #
    # @option params [String] :name
    #   The name of the billing group. The names must be unique to each
    #   billing group.
    #
    # @option params [String] :status
    #   The status of the billing group. Only one of the valid values can be
    #   used.
    #
    # @option params [Types::ComputationPreference] :computation_preference
    #   The preferences and settings that will be used to compute the Amazon
    #   Web Services charges for a billing group.
    #
    # @option params [String] :description
    #   A description of the billing group.
    #
    # @return [Types::UpdateBillingGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBillingGroupOutput#arn #arn} => String
    #   * {Types::UpdateBillingGroupOutput#name #name} => String
    #   * {Types::UpdateBillingGroupOutput#description #description} => String
    #   * {Types::UpdateBillingGroupOutput#primary_account_id #primary_account_id} => String
    #   * {Types::UpdateBillingGroupOutput#pricing_plan_arn #pricing_plan_arn} => String
    #   * {Types::UpdateBillingGroupOutput#size #size} => Integer
    #   * {Types::UpdateBillingGroupOutput#last_modified_time #last_modified_time} => Integer
    #   * {Types::UpdateBillingGroupOutput#status #status} => String
    #   * {Types::UpdateBillingGroupOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_billing_group({
    #     arn: "BillingGroupArn", # required
    #     name: "BillingGroupName",
    #     status: "ACTIVE", # accepts ACTIVE, PRIMARY_ACCOUNT_MISSING
    #     computation_preference: {
    #       pricing_plan_arn: "PricingPlanFullArn", # required
    #     },
    #     description: "BillingGroupDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.primary_account_id #=> String
    #   resp.pricing_plan_arn #=> String
    #   resp.size #=> Integer
    #   resp.last_modified_time #=> Integer
    #   resp.status #=> String, one of "ACTIVE", "PRIMARY_ACCOUNT_MISSING"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateBillingGroup AWS API Documentation
    #
    # @overload update_billing_group(params = {})
    # @param [Hash] params ({})
    def update_billing_group(params = {}, options = {})
      req = build_request(:update_billing_group, params)
      req.send_request(options)
    end

    # Update an existing custom line item in the current or previous billing
    # period.
    #
    # @option params [required, String] :arn
    #   The ARN of the custom line item to be updated.
    #
    # @option params [String] :name
    #   The new name for the custom line item.
    #
    # @option params [String] :description
    #   The new line item description of the custom line item.
    #
    # @option params [Types::UpdateCustomLineItemChargeDetails] :charge_details
    #   A `ListCustomLineItemChargeDetails` containing the new charge details
    #   for the custom line item.
    #
    # @option params [Types::CustomLineItemBillingPeriodRange] :billing_period_range
    #   The billing period range in which the custom line item request will be
    #   applied.
    #
    # @return [Types::UpdateCustomLineItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomLineItemOutput#arn #arn} => String
    #   * {Types::UpdateCustomLineItemOutput#billing_group_arn #billing_group_arn} => String
    #   * {Types::UpdateCustomLineItemOutput#name #name} => String
    #   * {Types::UpdateCustomLineItemOutput#description #description} => String
    #   * {Types::UpdateCustomLineItemOutput#charge_details #charge_details} => Types::ListCustomLineItemChargeDetails
    #   * {Types::UpdateCustomLineItemOutput#last_modified_time #last_modified_time} => Integer
    #   * {Types::UpdateCustomLineItemOutput#association_size #association_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_line_item({
    #     arn: "CustomLineItemArn", # required
    #     name: "BillingGroupName",
    #     description: "CustomLineItemDescription",
    #     charge_details: {
    #       flat: {
    #         charge_value: 1.0, # required
    #       },
    #       percentage: {
    #         percentage_value: 1.0, # required
    #       },
    #     },
    #     billing_period_range: {
    #       inclusive_start_billing_period: "BillingPeriod", # required
    #       exclusive_end_billing_period: "BillingPeriod", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.billing_group_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.charge_details.flat.charge_value #=> Float
    #   resp.charge_details.percentage.percentage_value #=> Float
    #   resp.charge_details.type #=> String, one of "CREDIT", "FEE"
    #   resp.last_modified_time #=> Integer
    #   resp.association_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdateCustomLineItem AWS API Documentation
    #
    # @overload update_custom_line_item(params = {})
    # @param [Hash] params ({})
    def update_custom_line_item(params = {}, options = {})
      req = build_request(:update_custom_line_item, params)
      req.send_request(options)
    end

    # This updates an existing pricing plan.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pricing plan you're updating.
    #
    # @option params [String] :name
    #   The name of the pricing plan. The name must be unique to each pricing
    #   plan.
    #
    # @option params [String] :description
    #   The pricing plan description.
    #
    # @return [Types::UpdatePricingPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePricingPlanOutput#arn #arn} => String
    #   * {Types::UpdatePricingPlanOutput#name #name} => String
    #   * {Types::UpdatePricingPlanOutput#description #description} => String
    #   * {Types::UpdatePricingPlanOutput#size #size} => Integer
    #   * {Types::UpdatePricingPlanOutput#last_modified_time #last_modified_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pricing_plan({
    #     arn: "PricingPlanArn", # required
    #     name: "PricingPlanName",
    #     description: "PricingPlanDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.size #=> Integer
    #   resp.last_modified_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdatePricingPlan AWS API Documentation
    #
    # @overload update_pricing_plan(params = {})
    # @param [Hash] params ({})
    def update_pricing_plan(params = {}, options = {})
      req = build_request(:update_pricing_plan, params)
      req.send_request(options)
    end

    # Updates an existing pricing rule.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the pricing rule to update.
    #
    # @option params [String] :name
    #   The new name of the pricing rule. The name must be unique to each
    #   pricing rule.
    #
    # @option params [String] :description
    #   The new description for the pricing rule.
    #
    # @option params [String] :type
    #   The new pricing rule type.
    #
    # @option params [Float] :modifier_percentage
    #   The new modifier to show pricing plan rates as a percentage.
    #
    # @return [Types::UpdatePricingRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePricingRuleOutput#arn #arn} => String
    #   * {Types::UpdatePricingRuleOutput#name #name} => String
    #   * {Types::UpdatePricingRuleOutput#description #description} => String
    #   * {Types::UpdatePricingRuleOutput#scope #scope} => String
    #   * {Types::UpdatePricingRuleOutput#type #type} => String
    #   * {Types::UpdatePricingRuleOutput#modifier_percentage #modifier_percentage} => Float
    #   * {Types::UpdatePricingRuleOutput#service #service} => String
    #   * {Types::UpdatePricingRuleOutput#associated_pricing_plan_count #associated_pricing_plan_count} => Integer
    #   * {Types::UpdatePricingRuleOutput#last_modified_time #last_modified_time} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pricing_rule({
    #     arn: "PricingRuleArn", # required
    #     name: "PricingRuleName",
    #     description: "PricingRuleDescription",
    #     type: "MARKUP", # accepts MARKUP, DISCOUNT
    #     modifier_percentage: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.scope #=> String, one of "GLOBAL", "SERVICE"
    #   resp.type #=> String, one of "MARKUP", "DISCOUNT"
    #   resp.modifier_percentage #=> Float
    #   resp.service #=> String
    #   resp.associated_pricing_plan_count #=> Integer
    #   resp.last_modified_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billingconductor-2021-07-30/UpdatePricingRule AWS API Documentation
    #
    # @overload update_pricing_rule(params = {})
    # @param [Hash] params ({})
    def update_pricing_rule(params = {}, options = {})
      req = build_request(:update_pricing_rule, params)
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
      context[:gem_name] = 'aws-sdk-billingconductor'
      context[:gem_version] = '1.0.0'
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

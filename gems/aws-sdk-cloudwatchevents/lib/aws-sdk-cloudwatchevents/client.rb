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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchevents)

module Aws::CloudWatchEvents
  # An API client for CloudWatchEvents.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchEvents::Client.new(
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

    @identifier = :cloudwatchevents

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

    # Activates a partner event source that has been deactivated. Once
    # activated, your matching event bus will start receiving events from
    # the event source.
    #
    # @option params [required, String] :name
    #   The name of the partner event source to activate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_event_source({
    #     name: "EventSourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ActivateEventSource AWS API Documentation
    #
    # @overload activate_event_source(params = {})
    # @param [Hash] params ({})
    def activate_event_source(params = {}, options = {})
      req = build_request(:activate_event_source, params)
      req.send_request(options)
    end

    # Creates a new event bus within your account. This can be a custom
    # event bus which you can use to receive events from your custom
    # applications and services, or it can be a partner event bus which can
    # be matched to a partner event source.
    #
    # @option params [required, String] :name
    #   The name of the new event bus.
    #
    #   Event bus names cannot contain the / character. You can't use the
    #   name `default` for a custom event bus, as this name is already used
    #   for your account's default event bus.
    #
    #   If this is a partner event bus, the name must exactly match the name
    #   of the partner event source that this event bus is matched to.
    #
    # @option params [String] :event_source_name
    #   If you are creating a partner event bus, this specifies the partner
    #   event source that the new event bus will be matched with.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the event bus.
    #
    # @return [Types::CreateEventBusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventBusResponse#event_bus_arn #event_bus_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_bus({
    #     name: "EventBusName", # required
    #     event_source_name: "EventSourceName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_bus_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateEventBus AWS API Documentation
    #
    # @overload create_event_bus(params = {})
    # @param [Hash] params ({})
    def create_event_bus(params = {}, options = {})
      req = build_request(:create_event_bus, params)
      req.send_request(options)
    end

    # Called by an SaaS partner to create a partner event source. This
    # operation is not used by AWS customers.
    #
    # Each partner event source can be used by one AWS account to create a
    # matching partner event bus in that AWS account. A SaaS partner must
    # create one partner event source for each AWS account that wants to
    # receive those event types.
    #
    # A partner event source creates events based on resources within the
    # SaaS partner's service or application.
    #
    # An AWS account that creates a partner event bus that matches the
    # partner event source can use that event bus to receive events from the
    # partner, and then process them using AWS Events rules and targets.
    #
    # Partner event source names follow this format:
    #
    # ` partner_name/event_namespace/event_name `
    #
    # *partner\_name* is determined during partner registration and
    # identifies the partner to AWS customers. *event\_namespace* is
    # determined by the partner and is a way for the partner to categorize
    # their events. *event\_name* is determined by the partner, and should
    # uniquely identify an event-generating resource within the partner
    # system. The combination of *event\_namespace* and *event\_name* should
    # help AWS customers decide whether to create an event bus to receive
    # these events.
    #
    # @option params [required, String] :name
    #   The name of the partner event source. This name must be unique and
    #   must be in the format ` partner_name/event_namespace/event_name `. The
    #   AWS account that wants to use this partner event source must create a
    #   partner event bus with a name that matches the name of the partner
    #   event source.
    #
    # @option params [required, String] :account
    #   The AWS account ID that is permitted to create a matching partner
    #   event bus for this partner event source.
    #
    # @return [Types::CreatePartnerEventSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePartnerEventSourceResponse#event_source_arn #event_source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partner_event_source({
    #     name: "EventSourceName", # required
    #     account: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreatePartnerEventSource AWS API Documentation
    #
    # @overload create_partner_event_source(params = {})
    # @param [Hash] params ({})
    def create_partner_event_source(params = {}, options = {})
      req = build_request(:create_partner_event_source, params)
      req.send_request(options)
    end

    # You can use this operation to temporarily stop receiving events from
    # the specified partner event source. The matching event bus is not
    # deleted.
    #
    # When you deactivate a partner event source, the source goes into
    # PENDING state. If it remains in PENDING state for more than two weeks,
    # it is deleted.
    #
    # To activate a deactivated partner event source, use
    # ActivateEventSource.
    #
    # @option params [required, String] :name
    #   The name of the partner event source to deactivate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_event_source({
    #     name: "EventSourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeactivateEventSource AWS API Documentation
    #
    # @overload deactivate_event_source(params = {})
    # @param [Hash] params ({})
    def deactivate_event_source(params = {}, options = {})
      req = build_request(:deactivate_event_source, params)
      req.send_request(options)
    end

    # Deletes the specified custom event bus or partner event bus. All rules
    # associated with this event bus need to be deleted. You can't delete
    # your account's default event bus.
    #
    # @option params [required, String] :name
    #   The name of the event bus to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_bus({
    #     name: "EventBusName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteEventBus AWS API Documentation
    #
    # @overload delete_event_bus(params = {})
    # @param [Hash] params ({})
    def delete_event_bus(params = {}, options = {})
      req = build_request(:delete_event_bus, params)
      req.send_request(options)
    end

    # This operation is used by SaaS partners to delete a partner event
    # source. This operation is not used by AWS customers.
    #
    # When you delete an event source, the status of the corresponding
    # partner event bus in the AWS customer account becomes DELETED.
    #
    # @option params [required, String] :name
    #   The name of the event source to delete.
    #
    # @option params [required, String] :account
    #   The AWS account ID of the AWS customer that the event source was
    #   created for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partner_event_source({
    #     name: "EventSourceName", # required
    #     account: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeletePartnerEventSource AWS API Documentation
    #
    # @overload delete_partner_event_source(params = {})
    # @param [Hash] params ({})
    def delete_partner_event_source(params = {}, options = {})
      req = build_request(:delete_partner_event_source, params)
      req.send_request(options)
    end

    # Deletes the specified rule.
    #
    # Before you can delete the rule, you must remove all targets, using
    # RemoveTargets.
    #
    # When you delete a rule, incoming events might continue to match to the
    # deleted rule. Allow a short period of time for changes to take effect.
    #
    # Managed rules are rules created and managed by another AWS service on
    # your behalf. These rules are created by those other AWS services to
    # support functionality in those services. You can delete these rules
    # using the `Force` option, but you should do so only if you are sure
    # the other service is not still using that rule.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The event bus associated with the rule. If you omit this, the default
    #   event bus is used.
    #
    # @option params [Boolean] :force
    #   If this is a managed rule, created by an AWS service on your behalf,
    #   you must specify `Force` as `True` to delete the rule. This parameter
    #   is ignored for rules that are not managed rules. You can check whether
    #   a rule is a managed rule by using `DescribeRule` or `ListRules` and
    #   checking the `ManagedBy` field of the response.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #     force: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Displays details about an event bus in your account. This can include
    # the external AWS accounts that are permitted to write events to your
    # default event bus, and the associated policy. For custom event buses
    # and partner event buses, it displays the name, ARN, policy, state, and
    # creation time.
    #
    # To enable your account to receive events from other accounts on its
    # default event bus, use PutPermission.
    #
    # For more information about partner event buses, see CreateEventBus.
    #
    # @option params [String] :name
    #   The name of the event bus to show details for. If you omit this, the
    #   default event bus is displayed.
    #
    # @return [Types::DescribeEventBusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventBusResponse#name #name} => String
    #   * {Types::DescribeEventBusResponse#arn #arn} => String
    #   * {Types::DescribeEventBusResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_bus({
    #     name: "EventBusName",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBus AWS API Documentation
    #
    # @overload describe_event_bus(params = {})
    # @param [Hash] params ({})
    def describe_event_bus(params = {}, options = {})
      req = build_request(:describe_event_bus, params)
      req.send_request(options)
    end

    # This operation lists details about a partner event source that is
    # shared with your account.
    #
    # @option params [required, String] :name
    #   The name of the partner event source to display the details of.
    #
    # @return [Types::DescribeEventSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventSourceResponse#arn #arn} => String
    #   * {Types::DescribeEventSourceResponse#created_by #created_by} => String
    #   * {Types::DescribeEventSourceResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeEventSourceResponse#expiration_time #expiration_time} => Time
    #   * {Types::DescribeEventSourceResponse#name #name} => String
    #   * {Types::DescribeEventSourceResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_source({
    #     name: "EventSourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_by #=> String
    #   resp.creation_time #=> Time
    #   resp.expiration_time #=> Time
    #   resp.name #=> String
    #   resp.state #=> String, one of "PENDING", "ACTIVE", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventSource AWS API Documentation
    #
    # @overload describe_event_source(params = {})
    # @param [Hash] params ({})
    def describe_event_source(params = {}, options = {})
      req = build_request(:describe_event_source, params)
      req.send_request(options)
    end

    # An SaaS partner can use this operation to list details about a partner
    # event source that they have created. AWS customers do not use this
    # operation. Instead, AWS customers can use DescribeEventSource to see
    # details about a partner event source that is shared with them.
    #
    # @option params [required, String] :name
    #   The name of the event source to display.
    #
    # @return [Types::DescribePartnerEventSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePartnerEventSourceResponse#arn #arn} => String
    #   * {Types::DescribePartnerEventSourceResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_partner_event_source({
    #     name: "EventSourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribePartnerEventSource AWS API Documentation
    #
    # @overload describe_partner_event_source(params = {})
    # @param [Hash] params ({})
    def describe_partner_event_source(params = {}, options = {})
      req = build_request(:describe_partner_event_source, params)
      req.send_request(options)
    end

    # Describes the specified rule.
    #
    # DescribeRule does not list the targets of a rule. To see the targets
    # associated with a rule, use ListTargetsByRule.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The event bus associated with the rule. If you omit this, the default
    #   event bus is used.
    #
    # @return [Types::DescribeRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleResponse#name #name} => String
    #   * {Types::DescribeRuleResponse#arn #arn} => String
    #   * {Types::DescribeRuleResponse#event_pattern #event_pattern} => String
    #   * {Types::DescribeRuleResponse#schedule_expression #schedule_expression} => String
    #   * {Types::DescribeRuleResponse#state #state} => String
    #   * {Types::DescribeRuleResponse#description #description} => String
    #   * {Types::DescribeRuleResponse#role_arn #role_arn} => String
    #   * {Types::DescribeRuleResponse#managed_by #managed_by} => String
    #   * {Types::DescribeRuleResponse#event_bus_name #event_bus_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule({
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.event_pattern #=> String
    #   resp.schedule_expression #=> String
    #   resp.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #   resp.managed_by #=> String
    #   resp.event_bus_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRule AWS API Documentation
    #
    # @overload describe_rule(params = {})
    # @param [Hash] params ({})
    def describe_rule(params = {}, options = {})
      req = build_request(:describe_rule, params)
      req.send_request(options)
    end

    # Disables the specified rule. A disabled rule won't match any events,
    # and won't self-trigger if it has a schedule expression.
    #
    # When you disable a rule, incoming events might continue to match to
    # the disabled rule. Allow a short period of time for changes to take
    # effect.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The event bus associated with the rule. If you omit this, the default
    #   event bus is used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_rule({
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DisableRule AWS API Documentation
    #
    # @overload disable_rule(params = {})
    # @param [Hash] params ({})
    def disable_rule(params = {}, options = {})
      req = build_request(:disable_rule, params)
      req.send_request(options)
    end

    # Enables the specified rule. If the rule does not exist, the operation
    # fails.
    #
    # When you enable a rule, incoming events might not immediately start
    # matching to a newly enabled rule. Allow a short period of time for
    # changes to take effect.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The event bus associated with the rule. If you omit this, the default
    #   event bus is used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_rule({
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EnableRule AWS API Documentation
    #
    # @overload enable_rule(params = {})
    # @param [Hash] params ({})
    def enable_rule(params = {}, options = {})
      req = build_request(:enable_rule, params)
      req.send_request(options)
    end

    # Lists all the event buses in your account, including the default event
    # bus, custom event buses, and partner event buses.
    #
    # @option params [String] :name_prefix
    #   Specifying this limits the results to only those event buses with
    #   names that start with the specified prefix.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use in
    #   a subsequent operation to retrieve the next set of results.
    #
    # @return [Types::ListEventBusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventBusesResponse#event_buses #event_buses} => Array&lt;Types::EventBus&gt;
    #   * {Types::ListEventBusesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_buses({
    #     name_prefix: "EventBusName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_buses #=> Array
    #   resp.event_buses[0].name #=> String
    #   resp.event_buses[0].arn #=> String
    #   resp.event_buses[0].policy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListEventBuses AWS API Documentation
    #
    # @overload list_event_buses(params = {})
    # @param [Hash] params ({})
    def list_event_buses(params = {}, options = {})
      req = build_request(:list_event_buses, params)
      req.send_request(options)
    end

    # You can use this to see all the partner event sources that have been
    # shared with your AWS account. For more information about partner event
    # sources, see CreateEventBus.
    #
    # @option params [String] :name_prefix
    #   Specifying this limits the results to only those partner event sources
    #   with names that start with the specified prefix.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use in
    #   a subsequent operation to retrieve the next set of results.
    #
    # @return [Types::ListEventSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventSourcesResponse#event_sources #event_sources} => Array&lt;Types::EventSource&gt;
    #   * {Types::ListEventSourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_sources({
    #     name_prefix: "EventSourceNamePrefix",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_sources #=> Array
    #   resp.event_sources[0].arn #=> String
    #   resp.event_sources[0].created_by #=> String
    #   resp.event_sources[0].creation_time #=> Time
    #   resp.event_sources[0].expiration_time #=> Time
    #   resp.event_sources[0].name #=> String
    #   resp.event_sources[0].state #=> String, one of "PENDING", "ACTIVE", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListEventSources AWS API Documentation
    #
    # @overload list_event_sources(params = {})
    # @param [Hash] params ({})
    def list_event_sources(params = {}, options = {})
      req = build_request(:list_event_sources, params)
      req.send_request(options)
    end

    # An SaaS partner can use this operation to display the AWS account ID
    # that a particular partner event source name is associated with. This
    # operation is not used by AWS customers.
    #
    # @option params [required, String] :event_source_name
    #   The name of the partner event source to display account information
    #   about.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to this operation. Specifying
    #   this retrieves the next set of results.
    #
    # @option params [Integer] :limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use in
    #   a subsequent operation to retrieve the next set of results.
    #
    # @return [Types::ListPartnerEventSourceAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPartnerEventSourceAccountsResponse#partner_event_source_accounts #partner_event_source_accounts} => Array&lt;Types::PartnerEventSourceAccount&gt;
    #   * {Types::ListPartnerEventSourceAccountsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partner_event_source_accounts({
    #     event_source_name: "EventSourceName", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.partner_event_source_accounts #=> Array
    #   resp.partner_event_source_accounts[0].account #=> String
    #   resp.partner_event_source_accounts[0].creation_time #=> Time
    #   resp.partner_event_source_accounts[0].expiration_time #=> Time
    #   resp.partner_event_source_accounts[0].state #=> String, one of "PENDING", "ACTIVE", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListPartnerEventSourceAccounts AWS API Documentation
    #
    # @overload list_partner_event_source_accounts(params = {})
    # @param [Hash] params ({})
    def list_partner_event_source_accounts(params = {}, options = {})
      req = build_request(:list_partner_event_source_accounts, params)
      req.send_request(options)
    end

    # An SaaS partner can use this operation to list all the partner event
    # source names that they have created. This operation is not used by AWS
    # customers.
    #
    # @option params [required, String] :name_prefix
    #   If you specify this, the results are limited to only those partner
    #   event sources that start with the string you specify.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to this operation. Specifying
    #   this retrieves the next set of results.
    #
    # @option params [Integer] :limit
    #   pecifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use in
    #   a subsequent operation to retrieve the next set of results.
    #
    # @return [Types::ListPartnerEventSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPartnerEventSourcesResponse#partner_event_sources #partner_event_sources} => Array&lt;Types::PartnerEventSource&gt;
    #   * {Types::ListPartnerEventSourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partner_event_sources({
    #     name_prefix: "PartnerEventSourceNamePrefix", # required
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.partner_event_sources #=> Array
    #   resp.partner_event_sources[0].arn #=> String
    #   resp.partner_event_sources[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListPartnerEventSources AWS API Documentation
    #
    # @overload list_partner_event_sources(params = {})
    # @param [Hash] params ({})
    def list_partner_event_sources(params = {}, options = {})
      req = build_request(:list_partner_event_sources, params)
      req.send_request(options)
    end

    # Lists the rules for the specified target. You can see which of the
    # rules in Amazon EventBridge can invoke a specific target in your
    # account.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the target resource.
    #
    # @option params [String] :event_bus_name
    #   Limits the results to show only the rules associated with the
    #   specified event bus.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return.
    #
    # @return [Types::ListRuleNamesByTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleNamesByTargetResponse#rule_names #rule_names} => Array&lt;String&gt;
    #   * {Types::ListRuleNamesByTargetResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_names_by_target({
    #     target_arn: "TargetArn", # required
    #     event_bus_name: "EventBusName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_names #=> Array
    #   resp.rule_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTarget AWS API Documentation
    #
    # @overload list_rule_names_by_target(params = {})
    # @param [Hash] params ({})
    def list_rule_names_by_target(params = {}, options = {})
      req = build_request(:list_rule_names_by_target, params)
      req.send_request(options)
    end

    # Lists your Amazon EventBridge rules. You can either list all the rules
    # or you can provide a prefix to match to the rule names.
    #
    # ListRules does not list the targets of a rule. To see the targets
    # associated with a rule, use ListTargetsByRule.
    #
    # @option params [String] :name_prefix
    #   The prefix matching the rule name.
    #
    # @option params [String] :event_bus_name
    #   Limits the results to show only the rules associated with the
    #   specified event bus.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#rules #rules} => Array&lt;Types::Rule&gt;
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     name_prefix: "RuleName",
    #     event_bus_name: "EventBusName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].arn #=> String
    #   resp.rules[0].event_pattern #=> String
    #   resp.rules[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.rules[0].description #=> String
    #   resp.rules[0].schedule_expression #=> String
    #   resp.rules[0].role_arn #=> String
    #   resp.rules[0].managed_by #=> String
    #   resp.rules[0].event_bus_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Displays the tags associated with an EventBridge resource. In
    # EventBridge, rules and event buses can be tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the EventBridge resource for which you want to view tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the targets assigned to the specified rule.
    #
    # @option params [required, String] :rule
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The event bus associated with the rule. If you omit this, the default
    #   event bus is used.
    #
    # @option params [String] :next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return.
    #
    # @return [Types::ListTargetsByRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsByRuleResponse#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::ListTargetsByRuleResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_by_rule({
    #     rule: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].id #=> String
    #   resp.targets[0].arn #=> String
    #   resp.targets[0].role_arn #=> String
    #   resp.targets[0].input #=> String
    #   resp.targets[0].input_path #=> String
    #   resp.targets[0].input_transformer.input_paths_map #=> Hash
    #   resp.targets[0].input_transformer.input_paths_map["InputTransformerPathKey"] #=> String
    #   resp.targets[0].input_transformer.input_template #=> String
    #   resp.targets[0].kinesis_parameters.partition_key_path #=> String
    #   resp.targets[0].run_command_parameters.run_command_targets #=> Array
    #   resp.targets[0].run_command_parameters.run_command_targets[0].key #=> String
    #   resp.targets[0].run_command_parameters.run_command_targets[0].values #=> Array
    #   resp.targets[0].run_command_parameters.run_command_targets[0].values[0] #=> String
    #   resp.targets[0].ecs_parameters.task_definition_arn #=> String
    #   resp.targets[0].ecs_parameters.task_count #=> Integer
    #   resp.targets[0].ecs_parameters.launch_type #=> String, one of "EC2", "FARGATE"
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.targets[0].ecs_parameters.platform_version #=> String
    #   resp.targets[0].ecs_parameters.group #=> String
    #   resp.targets[0].batch_parameters.job_definition #=> String
    #   resp.targets[0].batch_parameters.job_name #=> String
    #   resp.targets[0].batch_parameters.array_properties.size #=> Integer
    #   resp.targets[0].batch_parameters.retry_strategy.attempts #=> Integer
    #   resp.targets[0].sqs_parameters.message_group_id #=> String
    #   resp.targets[0].http_parameters.path_parameter_values #=> Array
    #   resp.targets[0].http_parameters.path_parameter_values[0] #=> String
    #   resp.targets[0].http_parameters.header_parameters #=> Hash
    #   resp.targets[0].http_parameters.header_parameters["HeaderKey"] #=> String
    #   resp.targets[0].http_parameters.query_string_parameters #=> Hash
    #   resp.targets[0].http_parameters.query_string_parameters["QueryStringKey"] #=> String
    #   resp.targets[0].redshift_data_parameters.secret_manager_arn #=> String
    #   resp.targets[0].redshift_data_parameters.database #=> String
    #   resp.targets[0].redshift_data_parameters.db_user #=> String
    #   resp.targets[0].redshift_data_parameters.sql #=> String
    #   resp.targets[0].redshift_data_parameters.statement_name #=> String
    #   resp.targets[0].redshift_data_parameters.with_event #=> Boolean
    #   resp.targets[0].dead_letter_config.arn #=> String
    #   resp.targets[0].retry_policy.maximum_retry_attempts #=> Integer
    #   resp.targets[0].retry_policy.maximum_event_age_in_seconds #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRule AWS API Documentation
    #
    # @overload list_targets_by_rule(params = {})
    # @param [Hash] params ({})
    def list_targets_by_rule(params = {}, options = {})
      req = build_request(:list_targets_by_rule, params)
      req.send_request(options)
    end

    # Sends custom events to Amazon EventBridge so that they can be matched
    # to rules.
    #
    # @option params [required, Array<Types::PutEventsRequestEntry>] :entries
    #   The entry that defines an event in your system. You can specify
    #   several parameters for the entry such as the source and type of the
    #   event, resources associated with the event, and so on.
    #
    # @return [Types::PutEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutEventsResponse#entries #entries} => Array&lt;Types::PutEventsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events({
    #     entries: [ # required
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #         event_bus_name: "NonPartnerEventBusName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.entries #=> Array
    #   resp.entries[0].event_id #=> String
    #   resp.entries[0].error_code #=> String
    #   resp.entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEvents AWS API Documentation
    #
    # @overload put_events(params = {})
    # @param [Hash] params ({})
    def put_events(params = {}, options = {})
      req = build_request(:put_events, params)
      req.send_request(options)
    end

    # This is used by SaaS partners to write events to a customer's partner
    # event bus. AWS customers do not use this operation.
    #
    # @option params [required, Array<Types::PutPartnerEventsRequestEntry>] :entries
    #   The list of events to write to the event bus.
    #
    # @return [Types::PutPartnerEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPartnerEventsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutPartnerEventsResponse#entries #entries} => Array&lt;Types::PutPartnerEventsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_partner_events({
    #     entries: [ # required
    #       {
    #         time: Time.now,
    #         source: "EventSourceName",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.entries #=> Array
    #   resp.entries[0].event_id #=> String
    #   resp.entries[0].error_code #=> String
    #   resp.entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPartnerEvents AWS API Documentation
    #
    # @overload put_partner_events(params = {})
    # @param [Hash] params ({})
    def put_partner_events(params = {}, options = {})
      req = build_request(:put_partner_events, params)
      req.send_request(options)
    end

    # Running `PutPermission` permits the specified AWS account or AWS
    # organization to put events to the specified *event bus*. Amazon
    # EventBridge (CloudWatch Events) rules in your account are triggered by
    # these events arriving to an event bus in your account.
    #
    # For another account to send events to your account, that external
    # account must have an EventBridge rule with your account's event bus
    # as a target.
    #
    # To enable multiple AWS accounts to put events to your event bus, run
    # `PutPermission` once for each of these accounts. Or, if all the
    # accounts are members of the same AWS organization, you can run
    # `PutPermission` once specifying `Principal` as "*" and specifying
    # the AWS organization ID in `Condition`, to grant permissions to all
    # accounts in that organization.
    #
    # If you grant permissions using an organization, then accounts in that
    # organization must specify a `RoleArn` with proper permissions when
    # they use `PutTarget` to add your account's event bus as a target. For
    # more information, see [Sending and Receiving Events Between AWS
    # Accounts][1] in the *Amazon EventBridge User Guide*.
    #
    # The permission policy on the default event bus cannot exceed 10 KB in
    # size.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html
    #
    # @option params [String] :event_bus_name
    #   The event bus associated with the rule. If you omit this, the default
    #   event bus is used.
    #
    # @option params [required, String] :action
    #   The action that you are enabling the other account to perform.
    #   Currently, this must be `events:PutEvents`.
    #
    # @option params [required, String] :principal
    #   The 12-digit AWS account ID that you are permitting to put events to
    #   your default event bus. Specify "*" to permit any account to put
    #   events to your default event bus.
    #
    #   If you specify "*" without specifying `Condition`, avoid creating
    #   rules that may match undesirable events. To create more secure rules,
    #   make sure that the event pattern for each rule contains an `account`
    #   field with a specific account ID from which to receive events. Rules
    #   with an account field do not match any events sent from other
    #   accounts.
    #
    # @option params [required, String] :statement_id
    #   An identifier string for the external account that you are granting
    #   permissions to. If you later want to revoke the permission for this
    #   external account, specify this `StatementId` when you run
    #   RemovePermission.
    #
    # @option params [Types::Condition] :condition
    #   This parameter enables you to limit the permission to accounts that
    #   fulfill a certain condition, such as being a member of a certain AWS
    #   organization. For more information about AWS Organizations, see [What
    #   Is AWS Organizations][1] in the *AWS Organizations User Guide*.
    #
    #   If you specify `Condition` with an AWS organization ID, and specify
    #   "*" as the value for `Principal`, you grant permission to all the
    #   accounts in the named organization.
    #
    #   The `Condition` is a JSON string which must contain `Type`, `Key`, and
    #   `Value` fields.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission({
    #     event_bus_name: "NonPartnerEventBusName",
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     statement_id: "StatementId", # required
    #     condition: {
    #       type: "String", # required
    #       key: "String", # required
    #       value: "String", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPermission AWS API Documentation
    #
    # @overload put_permission(params = {})
    # @param [Hash] params ({})
    def put_permission(params = {}, options = {})
      req = build_request(:put_permission, params)
      req.send_request(options)
    end

    # Creates or updates the specified rule. Rules are enabled by default,
    # or based on value of the state. You can disable a rule using
    # DisableRule.
    #
    # A single rule watches for events from a single event bus. Events
    # generated by AWS services go to your account's default event bus.
    # Events generated by SaaS partner services or applications go to the
    # matching partner event bus. If you have custom applications or
    # services, you can specify whether their events go to your default
    # event bus or a custom event bus that you have created. For more
    # information, see CreateEventBus.
    #
    # If you are updating an existing rule, the rule is replaced with what
    # you specify in this `PutRule` command. If you omit arguments in
    # `PutRule`, the old values for those arguments are not kept. Instead,
    # they are replaced with null values.
    #
    # When you create or update a rule, incoming events might not
    # immediately start matching to new or updated rules. Allow a short
    # period of time for changes to take effect.
    #
    # A rule must contain at least an EventPattern or ScheduleExpression.
    # Rules with EventPatterns are triggered when a matching event is
    # observed. Rules with ScheduleExpressions self-trigger based on the
    # given schedule. A rule can have both an EventPattern and a
    # ScheduleExpression, in which case the rule triggers on matching events
    # as well as on a schedule.
    #
    # When you initially create a rule, you can optionally assign one or
    # more tags to the rule. Tags can help you organize and categorize your
    # resources. You can also use them to scope user permissions, by
    # granting a user permission to access or change only rules with certain
    # tag values. To use the `PutRule` operation and assign tags, you must
    # have both the `events:PutRule` and `events:TagResource` permissions.
    #
    # If you are updating an existing rule, any tags you specify in the
    # `PutRule` operation are ignored. To update the tags of an existing
    # rule, use TagResource and UntagResource.
    #
    # Most services in AWS treat : or / as the same character in Amazon
    # Resource Names (ARNs). However, EventBridge uses an exact match in
    # event patterns and rules. Be sure to use the correct ARN characters
    # when creating event patterns so that they match the ARN syntax in the
    # event you want to match.
    #
    # In EventBridge, it is possible to create rules that lead to infinite
    # loops, where a rule is fired repeatedly. For example, a rule might
    # detect that ACLs have changed on an S3 bucket, and trigger software to
    # change them to the desired state. If the rule is not written
    # carefully, the subsequent change to the ACLs fires the rule again,
    # creating an infinite loop.
    #
    # To prevent this, write the rules so that the triggered actions do not
    # re-fire the same rule. For example, your rule could fire only if ACLs
    # are found to be in a bad state, instead of after any change.
    #
    # An infinite loop can quickly cause higher than expected charges. We
    # recommend that you use budgeting, which alerts you when charges exceed
    # your specified limit. For more information, see [Managing Your Costs
    # with Budgets][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html
    #
    # @option params [required, String] :name
    #   The name of the rule that you are creating or updating.
    #
    # @option params [String] :schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)" or
    #   "rate(5 minutes)".
    #
    # @option params [String] :event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #
    # @option params [String] :state
    #   Indicates whether the rule is enabled or disabled.
    #
    # @option params [String] :description
    #   A description of the rule.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of key-value pairs to associate with the rule.
    #
    # @option params [String] :event_bus_name
    #   The event bus to associate with this rule. If you omit this, the
    #   default event bus is used.
    #
    # @return [Types::PutRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRuleResponse#rule_arn #rule_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rule({
    #     name: "RuleName", # required
    #     schedule_expression: "ScheduleExpression",
    #     event_pattern: "EventPattern",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "RuleDescription",
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     event_bus_name: "EventBusName",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRule AWS API Documentation
    #
    # @overload put_rule(params = {})
    # @param [Hash] params ({})
    def put_rule(params = {}, options = {})
      req = build_request(:put_rule, params)
      req.send_request(options)
    end

    # Adds the specified targets to the specified rule, or updates the
    # targets if they are already associated with the rule.
    #
    # Targets are the resources that are invoked when a rule is triggered.
    #
    # You can configure the following as targets for Events:
    #
    # * EC2 instances
    #
    # * SSM Run Command
    #
    # * SSM Automation
    #
    # * AWS Lambda functions
    #
    # * Data streams in Amazon Kinesis Data Streams
    #
    # * Data delivery streams in Amazon Kinesis Data Firehose
    #
    # * Amazon ECS tasks
    #
    # * AWS Step Functions state machines
    #
    # * AWS Batch jobs
    #
    # * AWS CodeBuild projects
    #
    # * Pipelines in AWS CodePipeline
    #
    # * Amazon Inspector assessment templates
    #
    # * Amazon SNS topics
    #
    # * Amazon SQS queues, including FIFO queues
    #
    # * The default event bus of another AWS account
    #
    # * Amazon API Gateway REST APIs
    #
    # * Redshift Clusters to invoke Data API ExecuteStatement on
    #
    # Creating rules with built-in targets is supported only in the AWS
    # Management Console. The built-in targets are `EC2 CreateSnapshot API
    # call`, `EC2 RebootInstances API call`, `EC2 StopInstances API call`,
    # and `EC2 TerminateInstances API call`.
    #
    # For some target types, `PutTargets` provides target-specific
    # parameters. If the target is a Kinesis data stream, you can optionally
    # specify which shard the event goes to by using the `KinesisParameters`
    # argument. To invoke a command on multiple EC2 instances with one rule,
    # you can use the `RunCommandParameters` field.
    #
    # To be able to make API calls against the resources that you own,
    # Amazon EventBridge (CloudWatch Events) needs the appropriate
    # permissions. For AWS Lambda and Amazon SNS resources, EventBridge
    # relies on resource-based policies. For EC2 instances, Kinesis data
    # streams, AWS Step Functions state machines and API Gateway REST APIs,
    # EventBridge relies on IAM roles that you specify in the `RoleARN`
    # argument in `PutTargets`. For more information, see [Authentication
    # and Access Control][1] in the *Amazon EventBridge User Guide*.
    #
    # If another AWS account is in the same region and has granted you
    # permission (using `PutPermission`), you can send events to that
    # account. Set that account's event bus as a target of the rules in
    # your account. To send the matched events to the other account, specify
    # that account's event bus as the `Arn` value when you run
    # `PutTargets`. If your account sends events to another account, your
    # account is charged for each sent event. Each event sent to another
    # account is charged as a custom event. The account receiving the event
    # is not charged. For more information, see [Amazon EventBridge
    # (CloudWatch Events) Pricing][2].
    #
    # <note markdown="1"> `Input`, `InputPath`, and `InputTransformer` are not available with
    # `PutTarget` if the target is an event bus of a different AWS account.
    #
    #  </note>
    #
    # If you are setting the event bus of another account as the target, and
    # that account granted permission to your account through an
    # organization instead of directly by the account ID, then you must
    # specify a `RoleArn` with proper permissions in the `Target` structure.
    # For more information, see [Sending and Receiving Events Between AWS
    # Accounts][3] in the *Amazon EventBridge User Guide*.
    #
    # For more information about enabling cross-account events, see
    # PutPermission.
    #
    # **Input**, **InputPath**, and **InputTransformer** are mutually
    # exclusive and optional parameters of a target. When a rule is
    # triggered due to a matched event:
    #
    # * If none of the following arguments are specified for a target, then
    #   the entire event is passed to the target in JSON format (unless the
    #   target is Amazon EC2 Run Command or Amazon ECS task, in which case
    #   nothing from the event is passed to the target).
    #
    # * If **Input** is specified in the form of valid JSON, then the
    #   matched event is overridden with this constant.
    #
    # * If **InputPath** is specified in the form of JSONPath (for example,
    #   `$.detail`), then only the part of the event specified in the path
    #   is passed to the target (for example, only the detail part of the
    #   event is passed).
    #
    # * If **InputTransformer** is specified, then one or more specified
    #   JSONPaths are extracted from the event and used as values in a
    #   template that you specify as the input to the target.
    #
    # When you specify `InputPath` or `InputTransformer`, you must use JSON
    # dot notation, not bracket notation.
    #
    # When you add targets to a rule and the associated rule triggers soon
    # after, new or updated targets might not be immediately invoked. Allow
    # a short period of time for changes to take effect.
    #
    # This action can partially fail if too many requests are made at the
    # same time. If that happens, `FailedEntryCount` is non-zero in the
    # response and each entry in `FailedEntries` provides the ID of the
    # failed target and the error code.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html
    # [2]: https://aws.amazon.com/eventbridge/pricing/
    # [3]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html
    #
    # @option params [required, String] :rule
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The name of the event bus associated with the rule. If you omit this,
    #   the default event bus is used.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets to update or add to the rule.
    #
    # @return [Types::PutTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTargetsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::PutTargetsResponse#failed_entries #failed_entries} => Array&lt;Types::PutTargetsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_targets({
    #     rule: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath",
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             },
    #           ],
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2", # accepts EC2, FARGATE
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           platform_version: "String",
    #           group: "String",
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1,
    #           },
    #           retry_strategy: {
    #             attempts: 1,
    #           },
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId",
    #         },
    #         http_parameters: {
    #           path_parameter_values: ["PathParameter"],
    #           header_parameters: {
    #             "HeaderKey" => "HeaderValue",
    #           },
    #           query_string_parameters: {
    #             "QueryStringKey" => "QueryStringValue",
    #           },
    #         },
    #         redshift_data_parameters: {
    #           secret_manager_arn: "RedshiftSecretManagerArn",
    #           database: "Database", # required
    #           db_user: "DbUser",
    #           sql: "Sql", # required
    #           statement_name: "StatementName",
    #           with_event: false,
    #         },
    #         dead_letter_config: {
    #           arn: "ResourceArn",
    #         },
    #         retry_policy: {
    #           maximum_retry_attempts: 1,
    #           maximum_event_age_in_seconds: 1,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.failed_entries #=> Array
    #   resp.failed_entries[0].target_id #=> String
    #   resp.failed_entries[0].error_code #=> String
    #   resp.failed_entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargets AWS API Documentation
    #
    # @overload put_targets(params = {})
    # @param [Hash] params ({})
    def put_targets(params = {}, options = {})
      req = build_request(:put_targets, params)
      req.send_request(options)
    end

    # Revokes the permission of another AWS account to be able to put events
    # to the specified event bus. Specify the account to revoke by the
    # `StatementId` value that you associated with the account when you
    # granted it permission with `PutPermission`. You can find the
    # `StatementId` by using DescribeEventBus.
    #
    # @option params [required, String] :statement_id
    #   The statement ID corresponding to the account that is no longer
    #   allowed to put events to the default event bus.
    #
    # @option params [String] :event_bus_name
    #   The name of the event bus to revoke permissions for. If you omit this,
    #   the default event bus is used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission({
    #     statement_id: "StatementId", # required
    #     event_bus_name: "NonPartnerEventBusName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemovePermission AWS API Documentation
    #
    # @overload remove_permission(params = {})
    # @param [Hash] params ({})
    def remove_permission(params = {}, options = {})
      req = build_request(:remove_permission, params)
      req.send_request(options)
    end

    # Removes the specified targets from the specified rule. When the rule
    # is triggered, those targets are no longer be invoked.
    #
    # When you remove a target, when the associated rule triggers, removed
    # targets might continue to be invoked. Allow a short period of time for
    # changes to take effect.
    #
    # This action can partially fail if too many requests are made at the
    # same time. If that happens, `FailedEntryCount` is non-zero in the
    # response and each entry in `FailedEntries` provides the ID of the
    # failed target and the error code.
    #
    # @option params [required, String] :rule
    #   The name of the rule.
    #
    # @option params [String] :event_bus_name
    #   The name of the event bus associated with the rule.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the targets to remove from the rule.
    #
    # @option params [Boolean] :force
    #   If this is a managed rule, created by an AWS service on your behalf,
    #   you must specify `Force` as `True` to remove targets. This parameter
    #   is ignored for rules that are not managed rules. You can check whether
    #   a rule is a managed rule by using `DescribeRule` or `ListRules` and
    #   checking the `ManagedBy` field of the response.
    #
    # @return [Types::RemoveTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveTargetsResponse#failed_entry_count #failed_entry_count} => Integer
    #   * {Types::RemoveTargetsResponse#failed_entries #failed_entries} => Array&lt;Types::RemoveTargetsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_targets({
    #     rule: "RuleName", # required
    #     event_bus_name: "EventBusName",
    #     ids: ["TargetId"], # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entry_count #=> Integer
    #   resp.failed_entries #=> Array
    #   resp.failed_entries[0].target_id #=> String
    #   resp.failed_entries[0].error_code #=> String
    #   resp.failed_entries[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargets AWS API Documentation
    #
    # @overload remove_targets(params = {})
    # @param [Hash] params ({})
    def remove_targets(params = {}, options = {})
      req = build_request(:remove_targets, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified
    # EventBridge resource. Tags can help you organize and categorize your
    # resources. You can also use them to scope user permissions by granting
    # a user permission to access or change only resources with certain tag
    # values. In EventBridge, rules and event buses can be tagged.
    #
    # Tags don't have any semantic meaning to AWS and are interpreted
    # strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key, this tag is appended to the list
    # of tags associated with the resource. If you specify a tag key that is
    # already associated with the resource, the new tag value that you
    # specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the EventBridge resource that you're adding tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Tests whether the specified event pattern matches the provided event.
    #
    # Most services in AWS treat : or / as the same character in Amazon
    # Resource Names (ARNs). However, EventBridge uses an exact match in
    # event patterns and rules. Be sure to use the correct ARN characters
    # when creating event patterns so that they match the ARN syntax in the
    # event you want to match.
    #
    # @option params [required, String] :event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #
    # @option params [required, String] :event
    #   The event, in JSON format, to test against the event pattern.
    #
    # @return [Types::TestEventPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestEventPatternResponse#result #result} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_event_pattern({
    #     event_pattern: "EventPattern", # required
    #     event: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPattern AWS API Documentation
    #
    # @overload test_event_pattern(params = {})
    # @param [Hash] params ({})
    def test_event_pattern(params = {}, options = {})
      req = build_request(:test_event_pattern, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified EventBridge resource. In
    # Amazon EventBridge (CloudWatch Events, rules and event buses can be
    # tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the EventBridge resource from which you are removing tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UntagResource AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-cloudwatchevents'
      context[:gem_version] = '1.38.0'
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

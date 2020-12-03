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

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpointemail)

module Aws::PinpointEmail
  # An API client for PinpointEmail.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PinpointEmail::Client.new(
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

    @identifier = :pinpointemail

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

    # Create a configuration set. *Configuration sets* are groups of rules
    # that you can apply to the emails you send using Amazon Pinpoint. You
    # apply a configuration set to an email by including a reference to the
    # configuration set in the headers of the email. When you apply a
    # configuration set to an email, all of the rules in that configuration
    # set are applied to the email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set.
    #
    # @option params [Types::TrackingOptions] :tracking_options
    #   An object that defines the open and click tracking options for emails
    #   that you send using the configuration set.
    #
    # @option params [Types::DeliveryOptions] :delivery_options
    #   An object that defines the dedicated IP pool that is used to send
    #   emails that you send using the configuration set.
    #
    # @option params [Types::ReputationOptions] :reputation_options
    #   An object that defines whether or not Amazon Pinpoint collects
    #   reputation metrics for the emails that you send that use the
    #   configuration set.
    #
    # @option params [Types::SendingOptions] :sending_options
    #   An object that defines whether or not Amazon Pinpoint can send email
    #   that you send using the configuration set.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain", # required
    #     },
    #     delivery_options: {
    #       tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #       sending_pool_name: "PoolName",
    #     },
    #     reputation_options: {
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now,
    #     },
    #     sending_options: {
    #       sending_enabled: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateConfigurationSet AWS API Documentation
    #
    # @overload create_configuration_set(params = {})
    # @param [Hash] params ({})
    def create_configuration_set(params = {}, options = {})
      req = build_request(:create_configuration_set, params)
      req.send_request(options)
    end

    # Create an event destination. In Amazon Pinpoint, *events* include
    # message sends, deliveries, opens, clicks, bounces, and complaints.
    # *Event destinations* are places that you can send information about
    # these events to. For example, you can send event data to Amazon SNS to
    # receive notifications when you receive bounces or complaints, or you
    # can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
    # long-term storage.
    #
    # A single configuration set can include more than one event
    # destination.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to add an event
    #   destination to.
    #
    # @option params [required, String] :event_destination_name
    #   A name that identifies the event destination within the configuration
    #   set.
    #
    # @option params [required, Types::EventDestinationDefinition] :event_destination
    #   An object that defines the event destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: "AmazonResourceName",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateConfigurationSetEventDestination AWS API Documentation
    #
    # @overload create_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def create_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:create_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Create a new pool of dedicated IP addresses. A pool can include one or
    # more dedicated IP addresses that are associated with your Amazon
    # Pinpoint account. You can associate a pool with a configuration set.
    # When you send an email that uses that configuration set, Amazon
    # Pinpoint sends it using only the IP addresses in the associated pool.
    #
    # @option params [required, String] :pool_name
    #   The name of the dedicated IP pool.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An object that defines the tags (keys and values) that you want to
    #   associate with the pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dedicated_ip_pool({
    #     pool_name: "PoolName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateDedicatedIpPool AWS API Documentation
    #
    # @overload create_dedicated_ip_pool(params = {})
    # @param [Hash] params ({})
    def create_dedicated_ip_pool(params = {}, options = {})
      req = build_request(:create_dedicated_ip_pool, params)
      req.send_request(options)
    end

    # Create a new predictive inbox placement test. Predictive inbox
    # placement tests can help you predict how your messages will be handled
    # by various email providers around the world. When you perform a
    # predictive inbox placement test, you provide a sample message that
    # contains the content that you plan to send to your customers. Amazon
    # Pinpoint then sends that message to special email addresses spread
    # across several major email providers. After about 24 hours, the test
    # is complete, and you can use the `GetDeliverabilityTestReport`
    # operation to view the results of the test.
    #
    # @option params [String] :report_name
    #   A unique name that helps you to identify the predictive inbox
    #   placement test when you retrieve the results.
    #
    # @option params [required, String] :from_email_address
    #   The email address that the predictive inbox placement test email was
    #   sent from.
    #
    # @option params [required, Types::EmailContent] :content
    #   The HTML body of the message that you sent when you performed the
    #   predictive inbox placement test.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the predictive inbox placement test.
    #
    # @return [Types::CreateDeliverabilityTestReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeliverabilityTestReportResponse#report_id #report_id} => String
    #   * {Types::CreateDeliverabilityTestReportResponse#deliverability_test_status #deliverability_test_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deliverability_test_report({
    #     report_name: "ReportName",
    #     from_email_address: "EmailAddress", # required
    #     content: { # required
    #       simple: {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #         },
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_arn: "TemplateArn",
    #         template_data: "TemplateData",
    #       },
    #     },
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
    #   resp.report_id #=> String
    #   resp.deliverability_test_status #=> String, one of "IN_PROGRESS", "COMPLETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateDeliverabilityTestReport AWS API Documentation
    #
    # @overload create_deliverability_test_report(params = {})
    # @param [Hash] params ({})
    def create_deliverability_test_report(params = {}, options = {})
      req = build_request(:create_deliverability_test_report, params)
      req.send_request(options)
    end

    # Verifies an email identity for use with Amazon Pinpoint. In Amazon
    # Pinpoint, an identity is an email address or domain that you use when
    # you send email. Before you can use an identity to send email with
    # Amazon Pinpoint, you first have to verify it. By verifying an address,
    # you demonstrate that you're the owner of the address, and that
    # you've given Amazon Pinpoint permission to send email from the
    # address.
    #
    # When you verify an email address, Amazon Pinpoint sends an email to
    # the address. Your email address is verified as soon as you follow the
    # link in the verification email.
    #
    # When you verify a domain, this operation provides a set of DKIM
    # tokens, which you can convert into CNAME tokens. You add these CNAME
    # tokens to the DNS configuration for your domain. Your domain is
    # verified when Amazon Pinpoint detects these records in the DNS
    # configuration for your domain. It usually takes around 72 hours to
    # complete the domain verification process.
    #
    # @option params [required, String] :email_identity
    #   The email address or domain that you want to verify.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the email identity.
    #
    # @return [Types::CreateEmailIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEmailIdentityResponse#identity_type #identity_type} => String
    #   * {Types::CreateEmailIdentityResponse#verified_for_sending_status #verified_for_sending_status} => Boolean
    #   * {Types::CreateEmailIdentityResponse#dkim_attributes #dkim_attributes} => Types::DkimAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_identity({
    #     email_identity: "Identity", # required
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
    #   resp.identity_type #=> String, one of "EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"
    #   resp.verified_for_sending_status #=> Boolean
    #   resp.dkim_attributes.signing_enabled #=> Boolean
    #   resp.dkim_attributes.status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.dkim_attributes.tokens #=> Array
    #   resp.dkim_attributes.tokens[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/CreateEmailIdentity AWS API Documentation
    #
    # @overload create_email_identity(params = {})
    # @param [Hash] params ({})
    def create_email_identity(params = {}, options = {})
      req = build_request(:create_email_identity, params)
      req.send_request(options)
    end

    # Delete an existing configuration set.
    #
    # In Amazon Pinpoint, *configuration sets* are groups of rules that you
    # can apply to the emails you send. You apply a configuration set to an
    # email by including a reference to the configuration set in the headers
    # of the email. When you apply a configuration set to an email, all of
    # the rules in that configuration set are applied to the email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteConfigurationSet AWS API Documentation
    #
    # @overload delete_configuration_set(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set(params = {}, options = {})
      req = build_request(:delete_configuration_set, params)
      req.send_request(options)
    end

    # Delete an event destination.
    #
    # In Amazon Pinpoint, *events* include message sends, deliveries, opens,
    # clicks, bounces, and complaints. *Event destinations* are places that
    # you can send information about these events to. For example, you can
    # send event data to Amazon SNS to receive notifications when you
    # receive bounces or complaints, or you can use Amazon Kinesis Data
    # Firehose to stream data to Amazon S3 for long-term storage.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination
    #   that you want to delete.
    #
    # @option params [required, String] :event_destination_name
    #   The name of the event destination that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteConfigurationSetEventDestination AWS API Documentation
    #
    # @overload delete_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:delete_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Delete a dedicated IP pool.
    #
    # @option params [required, String] :pool_name
    #   The name of the dedicated IP pool that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dedicated_ip_pool({
    #     pool_name: "PoolName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteDedicatedIpPool AWS API Documentation
    #
    # @overload delete_dedicated_ip_pool(params = {})
    # @param [Hash] params ({})
    def delete_dedicated_ip_pool(params = {}, options = {})
      req = build_request(:delete_dedicated_ip_pool, params)
      req.send_request(options)
    end

    # Deletes an email identity that you previously verified for use with
    # Amazon Pinpoint. An identity can be either an email address or a
    # domain name.
    #
    # @option params [required, String] :email_identity
    #   The identity (that is, the email address or domain) that you want to
    #   delete from your Amazon Pinpoint account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_identity({
    #     email_identity: "Identity", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/DeleteEmailIdentity AWS API Documentation
    #
    # @overload delete_email_identity(params = {})
    # @param [Hash] params ({})
    def delete_email_identity(params = {}, options = {})
      req = build_request(:delete_email_identity, params)
      req.send_request(options)
    end

    # Obtain information about the email-sending status and capabilities of
    # your Amazon Pinpoint account in the current AWS Region.
    #
    # @return [Types::GetAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountResponse#send_quota #send_quota} => Types::SendQuota
    #   * {Types::GetAccountResponse#sending_enabled #sending_enabled} => Boolean
    #   * {Types::GetAccountResponse#dedicated_ip_auto_warmup_enabled #dedicated_ip_auto_warmup_enabled} => Boolean
    #   * {Types::GetAccountResponse#enforcement_status #enforcement_status} => String
    #   * {Types::GetAccountResponse#production_access_enabled #production_access_enabled} => Boolean
    #
    # @example Response structure
    #
    #   resp.send_quota.max_24_hour_send #=> Float
    #   resp.send_quota.max_send_rate #=> Float
    #   resp.send_quota.sent_last_24_hours #=> Float
    #   resp.sending_enabled #=> Boolean
    #   resp.dedicated_ip_auto_warmup_enabled #=> Boolean
    #   resp.enforcement_status #=> String
    #   resp.production_access_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetAccount AWS API Documentation
    #
    # @overload get_account(params = {})
    # @param [Hash] params ({})
    def get_account(params = {}, options = {})
      req = build_request(:get_account, params)
      req.send_request(options)
    end

    # Retrieve a list of the blacklists that your dedicated IP addresses
    # appear on.
    #
    # @option params [required, Array<String>] :blacklist_item_names
    #   A list of IP addresses that you want to retrieve blacklist information
    #   about. You can only specify the dedicated IP addresses that you use to
    #   send email using Amazon Pinpoint or Amazon SES.
    #
    # @return [Types::GetBlacklistReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlacklistReportsResponse#blacklist_report #blacklist_report} => Hash&lt;String,Array&lt;Types::BlacklistEntry&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blacklist_reports({
    #     blacklist_item_names: ["BlacklistItemName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blacklist_report #=> Hash
    #   resp.blacklist_report["BlacklistItemName"] #=> Array
    #   resp.blacklist_report["BlacklistItemName"][0].rbl_name #=> String
    #   resp.blacklist_report["BlacklistItemName"][0].listing_time #=> Time
    #   resp.blacklist_report["BlacklistItemName"][0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetBlacklistReports AWS API Documentation
    #
    # @overload get_blacklist_reports(params = {})
    # @param [Hash] params ({})
    def get_blacklist_reports(params = {}, options = {})
      req = build_request(:get_blacklist_reports, params)
      req.send_request(options)
    end

    # Get information about an existing configuration set, including the
    # dedicated IP pool that it's associated with, whether or not it's
    # enabled for sending email, and more.
    #
    # In Amazon Pinpoint, *configuration sets* are groups of rules that you
    # can apply to the emails you send. You apply a configuration set to an
    # email by including a reference to the configuration set in the headers
    # of the email. When you apply a configuration set to an email, all of
    # the rules in that configuration set are applied to the email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to obtain more
    #   information about.
    #
    # @return [Types::GetConfigurationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationSetResponse#configuration_set_name #configuration_set_name} => String
    #   * {Types::GetConfigurationSetResponse#tracking_options #tracking_options} => Types::TrackingOptions
    #   * {Types::GetConfigurationSetResponse#delivery_options #delivery_options} => Types::DeliveryOptions
    #   * {Types::GetConfigurationSetResponse#reputation_options #reputation_options} => Types::ReputationOptions
    #   * {Types::GetConfigurationSetResponse#sending_options #sending_options} => Types::SendingOptions
    #   * {Types::GetConfigurationSetResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_name #=> String
    #   resp.tracking_options.custom_redirect_domain #=> String
    #   resp.delivery_options.tls_policy #=> String, one of "REQUIRE", "OPTIONAL"
    #   resp.delivery_options.sending_pool_name #=> String
    #   resp.reputation_options.reputation_metrics_enabled #=> Boolean
    #   resp.reputation_options.last_fresh_start #=> Time
    #   resp.sending_options.sending_enabled #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetConfigurationSet AWS API Documentation
    #
    # @overload get_configuration_set(params = {})
    # @param [Hash] params ({})
    def get_configuration_set(params = {}, options = {})
      req = build_request(:get_configuration_set, params)
      req.send_request(options)
    end

    # Retrieve a list of event destinations that are associated with a
    # configuration set.
    #
    # In Amazon Pinpoint, *events* include message sends, deliveries, opens,
    # clicks, bounces, and complaints. *Event destinations* are places that
    # you can send information about these events to. For example, you can
    # send event data to Amazon SNS to receive notifications when you
    # receive bounces or complaints, or you can use Amazon Kinesis Data
    # Firehose to stream data to Amazon S3 for long-term storage.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination.
    #
    # @return [Types::GetConfigurationSetEventDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationSetEventDestinationsResponse#event_destinations #event_destinations} => Array&lt;Types::EventDestination&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set_event_destinations({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_destinations #=> Array
    #   resp.event_destinations[0].name #=> String
    #   resp.event_destinations[0].enabled #=> Boolean
    #   resp.event_destinations[0].matching_event_types #=> Array
    #   resp.event_destinations[0].matching_event_types[0] #=> String, one of "SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE"
    #   resp.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations #=> Array
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_name #=> String
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_value_source #=> String, one of "MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].default_dimension_value #=> String
    #   resp.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.event_destinations[0].pinpoint_destination.application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetConfigurationSetEventDestinations AWS API Documentation
    #
    # @overload get_configuration_set_event_destinations(params = {})
    # @param [Hash] params ({})
    def get_configuration_set_event_destinations(params = {}, options = {})
      req = build_request(:get_configuration_set_event_destinations, params)
      req.send_request(options)
    end

    # Get information about a dedicated IP address, including the name of
    # the dedicated IP pool that it's associated with, as well information
    # about the automatic warm-up process for the address.
    #
    # @option params [required, String] :ip
    #   The IP address that you want to obtain more information about. The
    #   value you specify has to be a dedicated IP address that's assocaited
    #   with your Amazon Pinpoint account.
    #
    # @return [Types::GetDedicatedIpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDedicatedIpResponse#dedicated_ip #dedicated_ip} => Types::DedicatedIp
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ip({
    #     ip: "Ip", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ip.ip #=> String
    #   resp.dedicated_ip.warmup_status #=> String, one of "IN_PROGRESS", "DONE"
    #   resp.dedicated_ip.warmup_percentage #=> Integer
    #   resp.dedicated_ip.pool_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDedicatedIp AWS API Documentation
    #
    # @overload get_dedicated_ip(params = {})
    # @param [Hash] params ({})
    def get_dedicated_ip(params = {}, options = {})
      req = build_request(:get_dedicated_ip, params)
      req.send_request(options)
    end

    # List the dedicated IP addresses that are associated with your Amazon
    # Pinpoint account.
    #
    # @option params [String] :pool_name
    #   The name of the IP pool that the dedicated IP address is associated
    #   with.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `GetDedicatedIps` to indicate
    #   the position of the dedicated IP pool in the list of IP pools.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `GetDedicatedIpsRequest`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::GetDedicatedIpsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDedicatedIpsResponse#dedicated_ips #dedicated_ips} => Array&lt;Types::DedicatedIp&gt;
    #   * {Types::GetDedicatedIpsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ips({
    #     pool_name: "PoolName",
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ips #=> Array
    #   resp.dedicated_ips[0].ip #=> String
    #   resp.dedicated_ips[0].warmup_status #=> String, one of "IN_PROGRESS", "DONE"
    #   resp.dedicated_ips[0].warmup_percentage #=> Integer
    #   resp.dedicated_ips[0].pool_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDedicatedIps AWS API Documentation
    #
    # @overload get_dedicated_ips(params = {})
    # @param [Hash] params ({})
    def get_dedicated_ips(params = {}, options = {})
      req = build_request(:get_dedicated_ips, params)
      req.send_request(options)
    end

    # Retrieve information about the status of the Deliverability dashboard
    # for your Amazon Pinpoint account. When the Deliverability dashboard is
    # enabled, you gain access to reputation, deliverability, and other
    # metrics for the domains that you use to send email using Amazon
    # Pinpoint. You also gain the ability to perform predictive inbox
    # placement tests.
    #
    # When you use the Deliverability dashboard, you pay a monthly
    # subscription charge, in addition to any other fees that you accrue by
    # using Amazon Pinpoint. For more information about the features and
    # cost of a Deliverability dashboard subscription, see [Amazon Pinpoint
    # Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/pinpoint/pricing/
    #
    # @return [Types::GetDeliverabilityDashboardOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#dashboard_enabled #dashboard_enabled} => Boolean
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#subscription_expiry_date #subscription_expiry_date} => Time
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#account_status #account_status} => String
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#active_subscribed_domains #active_subscribed_domains} => Array&lt;Types::DomainDeliverabilityTrackingOption&gt;
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#pending_expiration_subscribed_domains #pending_expiration_subscribed_domains} => Array&lt;Types::DomainDeliverabilityTrackingOption&gt;
    #
    # @example Response structure
    #
    #   resp.dashboard_enabled #=> Boolean
    #   resp.subscription_expiry_date #=> Time
    #   resp.account_status #=> String, one of "ACTIVE", "PENDING_EXPIRATION", "DISABLED"
    #   resp.active_subscribed_domains #=> Array
    #   resp.active_subscribed_domains[0].domain #=> String
    #   resp.active_subscribed_domains[0].subscription_start_date #=> Time
    #   resp.active_subscribed_domains[0].inbox_placement_tracking_option.global #=> Boolean
    #   resp.active_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps #=> Array
    #   resp.active_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps[0] #=> String
    #   resp.pending_expiration_subscribed_domains #=> Array
    #   resp.pending_expiration_subscribed_domains[0].domain #=> String
    #   resp.pending_expiration_subscribed_domains[0].subscription_start_date #=> Time
    #   resp.pending_expiration_subscribed_domains[0].inbox_placement_tracking_option.global #=> Boolean
    #   resp.pending_expiration_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps #=> Array
    #   resp.pending_expiration_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDeliverabilityDashboardOptions AWS API Documentation
    #
    # @overload get_deliverability_dashboard_options(params = {})
    # @param [Hash] params ({})
    def get_deliverability_dashboard_options(params = {}, options = {})
      req = build_request(:get_deliverability_dashboard_options, params)
      req.send_request(options)
    end

    # Retrieve the results of a predictive inbox placement test.
    #
    # @option params [required, String] :report_id
    #   A unique string that identifies the predictive inbox placement test.
    #
    # @return [Types::GetDeliverabilityTestReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliverabilityTestReportResponse#deliverability_test_report #deliverability_test_report} => Types::DeliverabilityTestReport
    #   * {Types::GetDeliverabilityTestReportResponse#overall_placement #overall_placement} => Types::PlacementStatistics
    #   * {Types::GetDeliverabilityTestReportResponse#isp_placements #isp_placements} => Array&lt;Types::IspPlacement&gt;
    #   * {Types::GetDeliverabilityTestReportResponse#message #message} => String
    #   * {Types::GetDeliverabilityTestReportResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deliverability_test_report({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deliverability_test_report.report_id #=> String
    #   resp.deliverability_test_report.report_name #=> String
    #   resp.deliverability_test_report.subject #=> String
    #   resp.deliverability_test_report.from_email_address #=> String
    #   resp.deliverability_test_report.create_date #=> Time
    #   resp.deliverability_test_report.deliverability_test_status #=> String, one of "IN_PROGRESS", "COMPLETED"
    #   resp.overall_placement.inbox_percentage #=> Float
    #   resp.overall_placement.spam_percentage #=> Float
    #   resp.overall_placement.missing_percentage #=> Float
    #   resp.overall_placement.spf_percentage #=> Float
    #   resp.overall_placement.dkim_percentage #=> Float
    #   resp.isp_placements #=> Array
    #   resp.isp_placements[0].isp_name #=> String
    #   resp.isp_placements[0].placement_statistics.inbox_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.spam_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.missing_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.spf_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.dkim_percentage #=> Float
    #   resp.message #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDeliverabilityTestReport AWS API Documentation
    #
    # @overload get_deliverability_test_report(params = {})
    # @param [Hash] params ({})
    def get_deliverability_test_report(params = {}, options = {})
      req = build_request(:get_deliverability_test_report, params)
      req.send_request(options)
    end

    # Retrieve all the deliverability data for a specific campaign. This
    # data is available for a campaign only if the campaign sent email by
    # using a domain that the Deliverability dashboard is enabled for
    # (`PutDeliverabilityDashboardOption` operation).
    #
    # @option params [required, String] :campaign_id
    #   The unique identifier for the campaign. Amazon Pinpoint automatically
    #   generates and assigns this identifier to a campaign. This value is not
    #   the same as the campaign identifier that Amazon Pinpoint assigns to
    #   campaigns that you create and manage by using the Amazon Pinpoint API
    #   or the Amazon Pinpoint console.
    #
    # @return [Types::GetDomainDeliverabilityCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainDeliverabilityCampaignResponse#domain_deliverability_campaign #domain_deliverability_campaign} => Types::DomainDeliverabilityCampaign
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_deliverability_campaign({
    #     campaign_id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_deliverability_campaign.campaign_id #=> String
    #   resp.domain_deliverability_campaign.image_url #=> String
    #   resp.domain_deliverability_campaign.subject #=> String
    #   resp.domain_deliverability_campaign.from_address #=> String
    #   resp.domain_deliverability_campaign.sending_ips #=> Array
    #   resp.domain_deliverability_campaign.sending_ips[0] #=> String
    #   resp.domain_deliverability_campaign.first_seen_date_time #=> Time
    #   resp.domain_deliverability_campaign.last_seen_date_time #=> Time
    #   resp.domain_deliverability_campaign.inbox_count #=> Integer
    #   resp.domain_deliverability_campaign.spam_count #=> Integer
    #   resp.domain_deliverability_campaign.read_rate #=> Float
    #   resp.domain_deliverability_campaign.delete_rate #=> Float
    #   resp.domain_deliverability_campaign.read_delete_rate #=> Float
    #   resp.domain_deliverability_campaign.projected_volume #=> Integer
    #   resp.domain_deliverability_campaign.esps #=> Array
    #   resp.domain_deliverability_campaign.esps[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDomainDeliverabilityCampaign AWS API Documentation
    #
    # @overload get_domain_deliverability_campaign(params = {})
    # @param [Hash] params ({})
    def get_domain_deliverability_campaign(params = {}, options = {})
      req = build_request(:get_domain_deliverability_campaign, params)
      req.send_request(options)
    end

    # Retrieve inbox placement and engagement rates for the domains that you
    # use to send email.
    #
    # @option params [required, String] :domain
    #   The domain that you want to obtain deliverability metrics for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The first day (in Unix time) that you want to obtain domain
    #   deliverability metrics for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The last day (in Unix time) that you want to obtain domain
    #   deliverability metrics for. The `EndDate` that you specify has to be
    #   less than or equal to 30 days after the `StartDate`.
    #
    # @return [Types::GetDomainStatisticsReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainStatisticsReportResponse#overall_volume #overall_volume} => Types::OverallVolume
    #   * {Types::GetDomainStatisticsReportResponse#daily_volumes #daily_volumes} => Array&lt;Types::DailyVolume&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_statistics_report({
    #     domain: "Identity", # required
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.overall_volume.volume_statistics.inbox_raw_count #=> Integer
    #   resp.overall_volume.volume_statistics.spam_raw_count #=> Integer
    #   resp.overall_volume.volume_statistics.projected_inbox #=> Integer
    #   resp.overall_volume.volume_statistics.projected_spam #=> Integer
    #   resp.overall_volume.read_rate_percent #=> Float
    #   resp.overall_volume.domain_isp_placements #=> Array
    #   resp.overall_volume.domain_isp_placements[0].isp_name #=> String
    #   resp.overall_volume.domain_isp_placements[0].inbox_raw_count #=> Integer
    #   resp.overall_volume.domain_isp_placements[0].spam_raw_count #=> Integer
    #   resp.overall_volume.domain_isp_placements[0].inbox_percentage #=> Float
    #   resp.overall_volume.domain_isp_placements[0].spam_percentage #=> Float
    #   resp.daily_volumes #=> Array
    #   resp.daily_volumes[0].start_date #=> Time
    #   resp.daily_volumes[0].volume_statistics.inbox_raw_count #=> Integer
    #   resp.daily_volumes[0].volume_statistics.spam_raw_count #=> Integer
    #   resp.daily_volumes[0].volume_statistics.projected_inbox #=> Integer
    #   resp.daily_volumes[0].volume_statistics.projected_spam #=> Integer
    #   resp.daily_volumes[0].domain_isp_placements #=> Array
    #   resp.daily_volumes[0].domain_isp_placements[0].isp_name #=> String
    #   resp.daily_volumes[0].domain_isp_placements[0].inbox_raw_count #=> Integer
    #   resp.daily_volumes[0].domain_isp_placements[0].spam_raw_count #=> Integer
    #   resp.daily_volumes[0].domain_isp_placements[0].inbox_percentage #=> Float
    #   resp.daily_volumes[0].domain_isp_placements[0].spam_percentage #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetDomainStatisticsReport AWS API Documentation
    #
    # @overload get_domain_statistics_report(params = {})
    # @param [Hash] params ({})
    def get_domain_statistics_report(params = {}, options = {})
      req = build_request(:get_domain_statistics_report, params)
      req.send_request(options)
    end

    # Provides information about a specific identity associated with your
    # Amazon Pinpoint account, including the identity's verification
    # status, its DKIM authentication status, and its custom Mail-From
    # settings.
    #
    # @option params [required, String] :email_identity
    #   The email identity that you want to retrieve details for.
    #
    # @return [Types::GetEmailIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailIdentityResponse#identity_type #identity_type} => String
    #   * {Types::GetEmailIdentityResponse#feedback_forwarding_status #feedback_forwarding_status} => Boolean
    #   * {Types::GetEmailIdentityResponse#verified_for_sending_status #verified_for_sending_status} => Boolean
    #   * {Types::GetEmailIdentityResponse#dkim_attributes #dkim_attributes} => Types::DkimAttributes
    #   * {Types::GetEmailIdentityResponse#mail_from_attributes #mail_from_attributes} => Types::MailFromAttributes
    #   * {Types::GetEmailIdentityResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_identity({
    #     email_identity: "Identity", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_type #=> String, one of "EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"
    #   resp.feedback_forwarding_status #=> Boolean
    #   resp.verified_for_sending_status #=> Boolean
    #   resp.dkim_attributes.signing_enabled #=> Boolean
    #   resp.dkim_attributes.status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.dkim_attributes.tokens #=> Array
    #   resp.dkim_attributes.tokens[0] #=> String
    #   resp.mail_from_attributes.mail_from_domain #=> String
    #   resp.mail_from_attributes.mail_from_domain_status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"
    #   resp.mail_from_attributes.behavior_on_mx_failure #=> String, one of "USE_DEFAULT_VALUE", "REJECT_MESSAGE"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/GetEmailIdentity AWS API Documentation
    #
    # @overload get_email_identity(params = {})
    # @param [Hash] params ({})
    def get_email_identity(params = {}, options = {})
      req = build_request(:get_email_identity, params)
      req.send_request(options)
    end

    # List all of the configuration sets associated with your Amazon
    # Pinpoint account in the current region.
    #
    # In Amazon Pinpoint, *configuration sets* are groups of rules that you
    # can apply to the emails you send. You apply a configuration set to an
    # email by including a reference to the configuration set in the headers
    # of the email. When you apply a configuration set to an email, all of
    # the rules in that configuration set are applied to the email.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListConfigurationSets` to
    #   indicate the position in the list of configuration sets.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListConfigurationSets`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::ListConfigurationSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationSetsResponse#configuration_sets #configuration_sets} => Array&lt;String&gt;
    #   * {Types::ListConfigurationSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_sets({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_sets #=> Array
    #   resp.configuration_sets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListConfigurationSets AWS API Documentation
    #
    # @overload list_configuration_sets(params = {})
    # @param [Hash] params ({})
    def list_configuration_sets(params = {}, options = {})
      req = build_request(:list_configuration_sets, params)
      req.send_request(options)
    end

    # List all of the dedicated IP pools that exist in your Amazon Pinpoint
    # account in the current AWS Region.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListDedicatedIpPools` to
    #   indicate the position in the list of dedicated IP pools.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListDedicatedIpPools`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::ListDedicatedIpPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDedicatedIpPoolsResponse#dedicated_ip_pools #dedicated_ip_pools} => Array&lt;String&gt;
    #   * {Types::ListDedicatedIpPoolsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dedicated_ip_pools({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ip_pools #=> Array
    #   resp.dedicated_ip_pools[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListDedicatedIpPools AWS API Documentation
    #
    # @overload list_dedicated_ip_pools(params = {})
    # @param [Hash] params ({})
    def list_dedicated_ip_pools(params = {}, options = {})
      req = build_request(:list_dedicated_ip_pools, params)
      req.send_request(options)
    end

    # Show a list of the predictive inbox placement tests that you've
    # performed, regardless of their statuses. For predictive inbox
    # placement tests that are complete, you can use the
    # `GetDeliverabilityTestReport` operation to view the results.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to
    #   `ListDeliverabilityTestReports` to indicate the position in the list
    #   of predictive inbox placement tests.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListDeliverabilityTestReports`. If the number of results is larger
    #   than the number you specified in this parameter, then the response
    #   includes a `NextToken` element, which you can use to obtain additional
    #   results.
    #
    #   The value you specify has to be at least 0, and can be no more than
    #   1000.
    #
    # @return [Types::ListDeliverabilityTestReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeliverabilityTestReportsResponse#deliverability_test_reports #deliverability_test_reports} => Array&lt;Types::DeliverabilityTestReport&gt;
    #   * {Types::ListDeliverabilityTestReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deliverability_test_reports({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.deliverability_test_reports #=> Array
    #   resp.deliverability_test_reports[0].report_id #=> String
    #   resp.deliverability_test_reports[0].report_name #=> String
    #   resp.deliverability_test_reports[0].subject #=> String
    #   resp.deliverability_test_reports[0].from_email_address #=> String
    #   resp.deliverability_test_reports[0].create_date #=> Time
    #   resp.deliverability_test_reports[0].deliverability_test_status #=> String, one of "IN_PROGRESS", "COMPLETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListDeliverabilityTestReports AWS API Documentation
    #
    # @overload list_deliverability_test_reports(params = {})
    # @param [Hash] params ({})
    def list_deliverability_test_reports(params = {}, options = {})
      req = build_request(:list_deliverability_test_reports, params)
      req.send_request(options)
    end

    # Retrieve deliverability data for all the campaigns that used a
    # specific domain to send email during a specified time range. This data
    # is available for a domain only if you enabled the Deliverability
    # dashboard (`PutDeliverabilityDashboardOption` operation) for the
    # domain.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The first day, in Unix time format, that you want to obtain
    #   deliverability data for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The last day, in Unix time format, that you want to obtain
    #   deliverability data for. This value has to be less than or equal to 30
    #   days after the value of the `StartDate` parameter.
    #
    # @option params [required, String] :subscribed_domain
    #   The domain to obtain deliverability data for.
    #
    # @option params [String] :next_token
    #   A token that’s returned from a previous call to the
    #   `ListDomainDeliverabilityCampaigns` operation. This token indicates
    #   the position of a campaign in the list of campaigns.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to include in response to a single call
    #   to the `ListDomainDeliverabilityCampaigns` operation. If the number of
    #   results is larger than the number that you specify in this parameter,
    #   the response includes a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListDomainDeliverabilityCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainDeliverabilityCampaignsResponse#domain_deliverability_campaigns #domain_deliverability_campaigns} => Array&lt;Types::DomainDeliverabilityCampaign&gt;
    #   * {Types::ListDomainDeliverabilityCampaignsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_deliverability_campaigns({
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     subscribed_domain: "Domain", # required
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_deliverability_campaigns #=> Array
    #   resp.domain_deliverability_campaigns[0].campaign_id #=> String
    #   resp.domain_deliverability_campaigns[0].image_url #=> String
    #   resp.domain_deliverability_campaigns[0].subject #=> String
    #   resp.domain_deliverability_campaigns[0].from_address #=> String
    #   resp.domain_deliverability_campaigns[0].sending_ips #=> Array
    #   resp.domain_deliverability_campaigns[0].sending_ips[0] #=> String
    #   resp.domain_deliverability_campaigns[0].first_seen_date_time #=> Time
    #   resp.domain_deliverability_campaigns[0].last_seen_date_time #=> Time
    #   resp.domain_deliverability_campaigns[0].inbox_count #=> Integer
    #   resp.domain_deliverability_campaigns[0].spam_count #=> Integer
    #   resp.domain_deliverability_campaigns[0].read_rate #=> Float
    #   resp.domain_deliverability_campaigns[0].delete_rate #=> Float
    #   resp.domain_deliverability_campaigns[0].read_delete_rate #=> Float
    #   resp.domain_deliverability_campaigns[0].projected_volume #=> Integer
    #   resp.domain_deliverability_campaigns[0].esps #=> Array
    #   resp.domain_deliverability_campaigns[0].esps[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListDomainDeliverabilityCampaigns AWS API Documentation
    #
    # @overload list_domain_deliverability_campaigns(params = {})
    # @param [Hash] params ({})
    def list_domain_deliverability_campaigns(params = {}, options = {})
      req = build_request(:list_domain_deliverability_campaigns, params)
      req.send_request(options)
    end

    # Returns a list of all of the email identities that are associated with
    # your Amazon Pinpoint account. An identity can be either an email
    # address or a domain. This operation returns identities that are
    # verified as well as those that aren't.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListEmailIdentities` to
    #   indicate the position in the list of identities.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListEmailIdentities`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    #   The value you specify has to be at least 0, and can be no more than
    #   1000.
    #
    # @return [Types::ListEmailIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEmailIdentitiesResponse#email_identities #email_identities} => Array&lt;Types::IdentityInfo&gt;
    #   * {Types::ListEmailIdentitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_email_identities({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.email_identities #=> Array
    #   resp.email_identities[0].identity_type #=> String, one of "EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"
    #   resp.email_identities[0].identity_name #=> String
    #   resp.email_identities[0].sending_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListEmailIdentities AWS API Documentation
    #
    # @overload list_email_identities(params = {})
    # @param [Hash] params ({})
    def list_email_identities(params = {}, options = {})
      req = build_request(:list_email_identities, params)
      req.send_request(options)
    end

    # Retrieve a list of the tags (keys and values) that are associated with
    # a specified resource. A *tag* is a label that you optionally define
    # and associate with a resource in Amazon Pinpoint. Each tag consists of
    # a required *tag key* and an optional associated *tag value*. A tag key
    # is a general label that acts as a category for more specific tag
    # values. A tag value acts as a descriptor within a tag key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tag information for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Enable or disable the automatic warm-up feature for dedicated IP
    # addresses.
    #
    # @option params [Boolean] :auto_warmup_enabled
    #   Enables or disables the automatic warm-up feature for dedicated IP
    #   addresses that are associated with your Amazon Pinpoint account in the
    #   current AWS Region. Set to `true` to enable the automatic warm-up
    #   feature, or set to `false` to disable it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_dedicated_ip_warmup_attributes({
    #     auto_warmup_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutAccountDedicatedIpWarmupAttributes AWS API Documentation
    #
    # @overload put_account_dedicated_ip_warmup_attributes(params = {})
    # @param [Hash] params ({})
    def put_account_dedicated_ip_warmup_attributes(params = {}, options = {})
      req = build_request(:put_account_dedicated_ip_warmup_attributes, params)
      req.send_request(options)
    end

    # Enable or disable the ability of your account to send email.
    #
    # @option params [Boolean] :sending_enabled
    #   Enables or disables your account's ability to send email. Set to
    #   `true` to enable email sending, or set to `false` to disable email
    #   sending.
    #
    #   <note markdown="1"> If AWS paused your account's ability to send email, you can't use
    #   this operation to resume your account's ability to send email.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_sending_attributes({
    #     sending_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutAccountSendingAttributes AWS API Documentation
    #
    # @overload put_account_sending_attributes(params = {})
    # @param [Hash] params ({})
    def put_account_sending_attributes(params = {}, options = {})
      req = build_request(:put_account_sending_attributes, params)
      req.send_request(options)
    end

    # Associate a configuration set with a dedicated IP pool. You can use
    # dedicated IP pools to create groups of dedicated IP addresses for
    # sending specific types of email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to associate with a
    #   dedicated IP pool.
    #
    # @option params [String] :tls_policy
    #   Specifies whether messages that use the configuration set are required
    #   to use Transport Layer Security (TLS). If the value is `Require`,
    #   messages are only delivered if a TLS connection can be established. If
    #   the value is `Optional`, messages can be delivered in plain text if a
    #   TLS connection can't be established.
    #
    # @option params [String] :sending_pool_name
    #   The name of the dedicated IP pool that you want to associate with the
    #   configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_delivery_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #     sending_pool_name: "SendingPoolName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetDeliveryOptions AWS API Documentation
    #
    # @overload put_configuration_set_delivery_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_delivery_options(params = {}, options = {})
      req = build_request(:put_configuration_set_delivery_options, params)
      req.send_request(options)
    end

    # Enable or disable collection of reputation metrics for emails that you
    # send using a particular configuration set in a specific AWS Region.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to enable or disable
    #   reputation metric tracking for.
    #
    # @option params [Boolean] :reputation_metrics_enabled
    #   If `true`, tracking of reputation metrics is enabled for the
    #   configuration set. If `false`, tracking of reputation metrics is
    #   disabled for the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_reputation_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     reputation_metrics_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetReputationOptions AWS API Documentation
    #
    # @overload put_configuration_set_reputation_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_reputation_options(params = {}, options = {})
      req = build_request(:put_configuration_set_reputation_options, params)
      req.send_request(options)
    end

    # Enable or disable email sending for messages that use a particular
    # configuration set in a specific AWS Region.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to enable or disable
    #   email sending for.
    #
    # @option params [Boolean] :sending_enabled
    #   If `true`, email sending is enabled for the configuration set. If
    #   `false`, email sending is disabled for the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_sending_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     sending_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetSendingOptions AWS API Documentation
    #
    # @overload put_configuration_set_sending_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_sending_options(params = {}, options = {})
      req = build_request(:put_configuration_set_sending_options, params)
      req.send_request(options)
    end

    # Specify a custom domain to use for open and click tracking elements in
    # email that you send using Amazon Pinpoint.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that you want to add a custom
    #   tracking domain to.
    #
    # @option params [String] :custom_redirect_domain
    #   The domain that you want to use to track open and click events.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_tracking_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     custom_redirect_domain: "CustomRedirectDomain",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutConfigurationSetTrackingOptions AWS API Documentation
    #
    # @overload put_configuration_set_tracking_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_tracking_options(params = {}, options = {})
      req = build_request(:put_configuration_set_tracking_options, params)
      req.send_request(options)
    end

    # Move a dedicated IP address to an existing dedicated IP pool.
    #
    # <note markdown="1"> The dedicated IP address that you specify must already exist, and must
    # be associated with your Amazon Pinpoint account.
    #
    #  The dedicated IP pool you specify must already exist. You can create a
    # new pool by using the `CreateDedicatedIpPool` operation.
    #
    #  </note>
    #
    # @option params [required, String] :ip
    #   The IP address that you want to move to the dedicated IP pool. The
    #   value you specify has to be a dedicated IP address that's associated
    #   with your Amazon Pinpoint account.
    #
    # @option params [required, String] :destination_pool_name
    #   The name of the IP pool that you want to add the dedicated IP address
    #   to. You have to specify an IP pool that already exists.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_in_pool({
    #     ip: "Ip", # required
    #     destination_pool_name: "PoolName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDedicatedIpInPool AWS API Documentation
    #
    # @overload put_dedicated_ip_in_pool(params = {})
    # @param [Hash] params ({})
    def put_dedicated_ip_in_pool(params = {}, options = {})
      req = build_request(:put_dedicated_ip_in_pool, params)
      req.send_request(options)
    end

    # @option params [required, String] :ip
    #   The dedicated IP address that you want to update the warm-up
    #   attributes for.
    #
    # @option params [required, Integer] :warmup_percentage
    #   The warm-up percentage that you want to associate with the dedicated
    #   IP address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_warmup_attributes({
    #     ip: "Ip", # required
    #     warmup_percentage: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDedicatedIpWarmupAttributes AWS API Documentation
    #
    # @overload put_dedicated_ip_warmup_attributes(params = {})
    # @param [Hash] params ({})
    def put_dedicated_ip_warmup_attributes(params = {}, options = {})
      req = build_request(:put_dedicated_ip_warmup_attributes, params)
      req.send_request(options)
    end

    # Enable or disable the Deliverability dashboard for your Amazon
    # Pinpoint account. When you enable the Deliverability dashboard, you
    # gain access to reputation, deliverability, and other metrics for the
    # domains that you use to send email using Amazon Pinpoint. You also
    # gain the ability to perform predictive inbox placement tests.
    #
    # When you use the Deliverability dashboard, you pay a monthly
    # subscription charge, in addition to any other fees that you accrue by
    # using Amazon Pinpoint. For more information about the features and
    # cost of a Deliverability dashboard subscription, see [Amazon Pinpoint
    # Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/pinpoint/pricing/
    #
    # @option params [required, Boolean] :dashboard_enabled
    #   Specifies whether to enable the Deliverability dashboard for your
    #   Amazon Pinpoint account. To enable the dashboard, set this value to
    #   `true`.
    #
    # @option params [Array<Types::DomainDeliverabilityTrackingOption>] :subscribed_domains
    #   An array of objects, one for each verified domain that you use to send
    #   email and enabled the Deliverability dashboard for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_deliverability_dashboard_option({
    #     dashboard_enabled: false, # required
    #     subscribed_domains: [
    #       {
    #         domain: "Domain",
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: ["IspName"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutDeliverabilityDashboardOption AWS API Documentation
    #
    # @overload put_deliverability_dashboard_option(params = {})
    # @param [Hash] params ({})
    def put_deliverability_dashboard_option(params = {}, options = {})
      req = build_request(:put_deliverability_dashboard_option, params)
      req.send_request(options)
    end

    # Used to enable or disable DKIM authentication for an email identity.
    #
    # @option params [required, String] :email_identity
    #   The email identity that you want to change the DKIM settings for.
    #
    # @option params [Boolean] :signing_enabled
    #   Sets the DKIM signing configuration for the identity.
    #
    #   When you set this value `true`, then the messages that Amazon Pinpoint
    #   sends from the identity are DKIM-signed. When you set this value to
    #   `false`, then the messages that Amazon Pinpoint sends from the
    #   identity aren't DKIM-signed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_dkim_attributes({
    #     email_identity: "Identity", # required
    #     signing_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityDkimAttributes AWS API Documentation
    #
    # @overload put_email_identity_dkim_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_dkim_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_dkim_attributes, params)
      req.send_request(options)
    end

    # Used to enable or disable feedback forwarding for an identity. This
    # setting determines what happens when an identity is used to send an
    # email that results in a bounce or complaint event.
    #
    # When you enable feedback forwarding, Amazon Pinpoint sends you email
    # notifications when bounce or complaint events occur. Amazon Pinpoint
    # sends this notification to the address that you specified in the
    # Return-Path header of the original email.
    #
    # When you disable feedback forwarding, Amazon Pinpoint sends
    # notifications through other mechanisms, such as by notifying an Amazon
    # SNS topic. You're required to have a method of tracking bounces and
    # complaints. If you haven't set up another mechanism for receiving
    # bounce or complaint notifications, Amazon Pinpoint sends an email
    # notification when these events occur (even if this setting is
    # disabled).
    #
    # @option params [required, String] :email_identity
    #   The email identity that you want to configure bounce and complaint
    #   feedback forwarding for.
    #
    # @option params [Boolean] :email_forwarding_enabled
    #   Sets the feedback forwarding configuration for the identity.
    #
    #   If the value is `true`, Amazon Pinpoint sends you email notifications
    #   when bounce or complaint events occur. Amazon Pinpoint sends this
    #   notification to the address that you specified in the Return-Path
    #   header of the original email.
    #
    #   When you set this value to `false`, Amazon Pinpoint sends
    #   notifications through other mechanisms, such as by notifying an Amazon
    #   SNS topic or another event destination. You're required to have a
    #   method of tracking bounces and complaints. If you haven't set up
    #   another mechanism for receiving bounce or complaint notifications,
    #   Amazon Pinpoint sends an email notification when these events occur
    #   (even if this setting is disabled).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_feedback_attributes({
    #     email_identity: "Identity", # required
    #     email_forwarding_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityFeedbackAttributes AWS API Documentation
    #
    # @overload put_email_identity_feedback_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_feedback_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_feedback_attributes, params)
      req.send_request(options)
    end

    # Used to enable or disable the custom Mail-From domain configuration
    # for an email identity.
    #
    # @option params [required, String] :email_identity
    #   The verified email identity that you want to set up the custom MAIL
    #   FROM domain for.
    #
    # @option params [String] :mail_from_domain
    #   The custom MAIL FROM domain that you want the verified identity to
    #   use. The MAIL FROM domain must meet the following criteria:
    #
    #   * It has to be a subdomain of the verified identity.
    #
    #   * It can't be used to receive email.
    #
    #   * It can't be used in a "From" address if the MAIL FROM domain is a
    #     destination for feedback forwarding emails.
    #
    # @option params [String] :behavior_on_mx_failure
    #   The action that you want Amazon Pinpoint to take if it can't read the
    #   required MX record when you send an email. When you set this value to
    #   `UseDefaultValue`, Amazon Pinpoint uses *amazonses.com* as the MAIL
    #   FROM domain. When you set this value to `RejectMessage`, Amazon
    #   Pinpoint returns a `MailFromDomainNotVerified` error, and doesn't
    #   attempt to deliver the email.
    #
    #   These behaviors are taken when the custom MAIL FROM domain
    #   configuration is in the `Pending`, `Failed`, and `TemporaryFailure`
    #   states.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_mail_from_attributes({
    #     email_identity: "Identity", # required
    #     mail_from_domain: "MailFromDomainName",
    #     behavior_on_mx_failure: "USE_DEFAULT_VALUE", # accepts USE_DEFAULT_VALUE, REJECT_MESSAGE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/PutEmailIdentityMailFromAttributes AWS API Documentation
    #
    # @overload put_email_identity_mail_from_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_mail_from_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_mail_from_attributes, params)
      req.send_request(options)
    end

    # Sends an email message. You can use the Amazon Pinpoint Email API to
    # send two types of messages:
    #
    # * **Simple** – A standard email message. When you create this type of
    #   message, you specify the sender, the recipient, and the message
    #   body, and Amazon Pinpoint assembles the message for you.
    #
    # * **Raw** – A raw, MIME-formatted email message. When you send this
    #   type of email, you have to specify all of the message headers, as
    #   well as the message body. You can use this message type to send
    #   messages that contain attachments. The message that you specify has
    #   to be a valid MIME message.
    #
    # @option params [String] :from_email_address
    #   The email address that you want to use as the "From" address for the
    #   email. The address that you specify has to be verified.
    #
    # @option params [required, Types::Destination] :destination
    #   An object that contains the recipients of the email message.
    #
    # @option params [Array<String>] :reply_to_addresses
    #   The "Reply-to" email addresses for the message. When the recipient
    #   replies to the message, each Reply-to address receives the reply.
    #
    # @option params [String] :feedback_forwarding_email_address
    #   The address that Amazon Pinpoint should send bounce and complaint
    #   notifications to.
    #
    # @option params [required, Types::EmailContent] :content
    #   An object that contains the body of the message. You can send either a
    #   Simple message or a Raw message.
    #
    # @option params [Array<Types::MessageTag>] :email_tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send using the `SendEmail` operation. Tags correspond to
    #   characteristics of the email that you define, so that you can publish
    #   email sending events.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set that you want to use when sending
    #   the email.
    #
    # @return [Types::SendEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendEmailResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email({
    #     from_email_address: "EmailAddress",
    #     destination: { # required
    #       to_addresses: ["EmailAddress"],
    #       cc_addresses: ["EmailAddress"],
    #       bcc_addresses: ["EmailAddress"],
    #     },
    #     reply_to_addresses: ["EmailAddress"],
    #     feedback_forwarding_email_address: "EmailAddress",
    #     content: { # required
    #       simple: {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #         },
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_arn: "TemplateArn",
    #         template_data: "TemplateData",
    #       },
    #     },
    #     email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/SendEmail AWS API Documentation
    #
    # @overload send_email(params = {})
    # @param [Hash] params ({})
    def send_email(params = {}, options = {})
      req = build_request(:send_email, params)
      req.send_request(options)
    end

    # Add one or more tags (keys and values) to a specified resource. A
    # *tag* is a label that you optionally define and associate with a
    # resource in Amazon Pinpoint. Tags can help you categorize and manage
    # resources in different ways, such as by purpose, owner, environment,
    # or other criteria. A resource can have as many as 50 tags.
    #
    # Each tag consists of a required *tag key* and an associated *tag
    # value*, both of which you define. A tag key is a general label that
    # acts as a category for more specific tag values. A tag value acts as a
    # descriptor within a tag key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   one or more tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of the tags that you want to add to the resource. A tag
    #   consists of a required tag key (`Key`) and an associated tag value
    #   (`Value`). The maximum length of a tag key is 128 characters. The
    #   maximum length of a tag value is 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove one or more tags (keys and values) from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   one or more tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags (tag keys) that you want to remove from the resource. When
    #   you specify a tag key, the action removes both that key and its
    #   associated tag value.
    #
    #   To remove more than one tag from the resource, append the `TagKeys`
    #   parameter and argument for each additional tag to remove, separated by
    #   an ampersand. For example:
    #   `/v1/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the configuration of an event destination for a configuration
    # set.
    #
    # In Amazon Pinpoint, *events* include message sends, deliveries, opens,
    # clicks, bounces, and complaints. *Event destinations* are places that
    # you can send information about these events to. For example, you can
    # send event data to Amazon SNS to receive notifications when you
    # receive bounces or complaints, or you can use Amazon Kinesis Data
    # Firehose to stream data to Amazon S3 for long-term storage.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination
    #   that you want to modify.
    #
    # @option params [required, String] :event_destination_name
    #   The name of the event destination that you want to modify.
    #
    # @option params [required, Types::EventDestinationDefinition] :event_destination
    #   An object that defines the event destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: "AmazonResourceName",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-email-2018-07-26/UpdateConfigurationSetEventDestination AWS API Documentation
    #
    # @overload update_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def update_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:update_configuration_set_event_destination, params)
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
      context[:gem_name] = 'aws-sdk-pinpointemail'
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

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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpointemail)

module Aws::PinpointEmail
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
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    # @option params [String] :configuration_set_name
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set({
    #     configuration_set_name: "ConfigurationSetName",
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain", # required
    #     },
    #     delivery_options: {
    #       sending_pool_name: "PoolName",
    #     },
    #     reputation_options: {
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now,
    #     },
    #     sending_options: {
    #       sending_enabled: false,
    #     },
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dedicated_ip_pool({
    #     pool_name: "PoolName", # required
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
    #   resp.delivery_options.sending_pool_name #=> String
    #   resp.reputation_options.reputation_metrics_enabled #=> Boolean
    #   resp.reputation_options.last_fresh_start #=> Time
    #   resp.sending_options.sending_enabled #=> Boolean
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
      context[:gem_version] = '1.1.0'
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

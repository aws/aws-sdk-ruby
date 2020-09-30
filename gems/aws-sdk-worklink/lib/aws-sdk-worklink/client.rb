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

Aws::Plugins::GlobalConfiguration.add_identifier(:worklink)

module Aws::WorkLink
  # An API client for WorkLink.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkLink::Client.new(
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

    @identifier = :worklink

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

    # Specifies a domain to be associated to Amazon WorkLink.
    #
    # @option params [required, String] :fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @option params [required, String] :domain_name
    #   The fully qualified domain name (FQDN).
    #
    # @option params [String] :display_name
    #   The name to display.
    #
    # @option params [required, String] :acm_certificate_arn
    #   The ARN of an issued ACM certificate that is valid for the domain
    #   being associated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_domain({
    #     fleet_arn: "FleetArn", # required
    #     domain_name: "DomainName", # required
    #     display_name: "DisplayName",
    #     acm_certificate_arn: "AcmCertificateArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateDomain AWS API Documentation
    #
    # @overload associate_domain(params = {})
    # @param [Hash] params ({})
    def associate_domain(params = {}, options = {})
      req = build_request(:associate_domain, params)
      req.send_request(options)
    end

    # Associates a website authorization provider with a specified fleet.
    # This is used to authorize users against associated websites in the
    # company network.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :authorization_provider_type
    #   The authorization provider type.
    #
    # @option params [String] :domain_name
    #   The domain name of the authorization provider. This applies only to
    #   SAML-based authorization providers.
    #
    # @return [Types::AssociateWebsiteAuthorizationProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateWebsiteAuthorizationProviderResponse#authorization_provider_id #authorization_provider_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_website_authorization_provider({
    #     fleet_arn: "FleetArn", # required
    #     authorization_provider_type: "SAML", # required, accepts SAML
    #     domain_name: "DomainName",
    #   })
    #
    # @example Response structure
    #
    #   resp.authorization_provider_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateWebsiteAuthorizationProvider AWS API Documentation
    #
    # @overload associate_website_authorization_provider(params = {})
    # @param [Hash] params ({})
    def associate_website_authorization_provider(params = {}, options = {})
      req = build_request(:associate_website_authorization_provider, params)
      req.send_request(options)
    end

    # Imports the root certificate of a certificate authority (CA) used to
    # obtain TLS certificates used by associated websites within the company
    # network.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :certificate
    #   The root certificate of the CA.
    #
    # @option params [String] :display_name
    #   The certificate name to display.
    #
    # @return [Types::AssociateWebsiteCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateWebsiteCertificateAuthorityResponse#website_ca_id #website_ca_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_website_certificate_authority({
    #     fleet_arn: "FleetArn", # required
    #     certificate: "Certificate", # required
    #     display_name: "DisplayName",
    #   })
    #
    # @example Response structure
    #
    #   resp.website_ca_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/AssociateWebsiteCertificateAuthority AWS API Documentation
    #
    # @overload associate_website_certificate_authority(params = {})
    # @param [Hash] params ({})
    def associate_website_certificate_authority(params = {}, options = {})
      req = build_request(:associate_website_certificate_authority, params)
      req.send_request(options)
    end

    # Creates a fleet. A fleet consists of resources and the configuration
    # that delivers associated websites to authorized users who download and
    # set up the Amazon WorkLink app.
    #
    # @option params [required, String] :fleet_name
    #   A unique name for the fleet.
    #
    # @option params [String] :display_name
    #   The fleet name to display.
    #
    # @option params [Boolean] :optimize_for_end_user_location
    #   The option to optimize for better performance by routing traffic
    #   through the closest AWS Region to users, which may be outside of your
    #   home Region.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the resource. A tag is a key-value pair.
    #
    # @return [Types::CreateFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetResponse#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     fleet_name: "FleetName", # required
    #     display_name: "DisplayName",
    #     optimize_for_end_user_location: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Deletes a fleet. Prevents users from accessing previously associated
    # websites.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     fleet_arn: "FleetArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Describes the configuration for delivering audit streams to the
    # customer account.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @return [Types::DescribeAuditStreamConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuditStreamConfigurationResponse#audit_stream_arn #audit_stream_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_stream_configuration({
    #     fleet_arn: "FleetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.audit_stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeAuditStreamConfiguration AWS API Documentation
    #
    # @overload describe_audit_stream_configuration(params = {})
    # @param [Hash] params ({})
    def describe_audit_stream_configuration(params = {}, options = {})
      req = build_request(:describe_audit_stream_configuration, params)
      req.send_request(options)
    end

    # Describes the networking configuration to access the internal websites
    # associated with the specified fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @return [Types::DescribeCompanyNetworkConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCompanyNetworkConfigurationResponse#vpc_id #vpc_id} => String
    #   * {Types::DescribeCompanyNetworkConfigurationResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::DescribeCompanyNetworkConfigurationResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_company_network_configuration({
    #     fleet_arn: "FleetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_id #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeCompanyNetworkConfiguration AWS API Documentation
    #
    # @overload describe_company_network_configuration(params = {})
    # @param [Hash] params ({})
    def describe_company_network_configuration(params = {}, options = {})
      req = build_request(:describe_company_network_configuration, params)
      req.send_request(options)
    end

    # Provides information about a user's device.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :device_id
    #   A unique identifier for a registered user's device.
    #
    # @return [Types::DescribeDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeviceResponse#status #status} => String
    #   * {Types::DescribeDeviceResponse#model #model} => String
    #   * {Types::DescribeDeviceResponse#manufacturer #manufacturer} => String
    #   * {Types::DescribeDeviceResponse#operating_system #operating_system} => String
    #   * {Types::DescribeDeviceResponse#operating_system_version #operating_system_version} => String
    #   * {Types::DescribeDeviceResponse#patch_level #patch_level} => String
    #   * {Types::DescribeDeviceResponse#first_accessed_time #first_accessed_time} => Time
    #   * {Types::DescribeDeviceResponse#last_accessed_time #last_accessed_time} => Time
    #   * {Types::DescribeDeviceResponse#username #username} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device({
    #     fleet_arn: "FleetArn", # required
    #     device_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "SIGNED_OUT"
    #   resp.model #=> String
    #   resp.manufacturer #=> String
    #   resp.operating_system #=> String
    #   resp.operating_system_version #=> String
    #   resp.patch_level #=> String
    #   resp.first_accessed_time #=> Time
    #   resp.last_accessed_time #=> Time
    #   resp.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDevice AWS API Documentation
    #
    # @overload describe_device(params = {})
    # @param [Hash] params ({})
    def describe_device(params = {}, options = {})
      req = build_request(:describe_device, params)
      req.send_request(options)
    end

    # Describes the device policy configuration for the specified fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @return [Types::DescribeDevicePolicyConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDevicePolicyConfigurationResponse#device_ca_certificate #device_ca_certificate} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device_policy_configuration({
    #     fleet_arn: "FleetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_ca_certificate #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDevicePolicyConfiguration AWS API Documentation
    #
    # @overload describe_device_policy_configuration(params = {})
    # @param [Hash] params ({})
    def describe_device_policy_configuration(params = {}, options = {})
      req = build_request(:describe_device_policy_configuration, params)
      req.send_request(options)
    end

    # Provides information about the domain.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Types::DescribeDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainResponse#domain_name #domain_name} => String
    #   * {Types::DescribeDomainResponse#display_name #display_name} => String
    #   * {Types::DescribeDomainResponse#created_time #created_time} => Time
    #   * {Types::DescribeDomainResponse#domain_status #domain_status} => String
    #   * {Types::DescribeDomainResponse#acm_certificate_arn #acm_certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain({
    #     fleet_arn: "FleetArn", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.display_name #=> String
    #   resp.created_time #=> Time
    #   resp.domain_status #=> String, one of "PENDING_VALIDATION", "ASSOCIATING", "ACTIVE", "INACTIVE", "DISASSOCIATING", "DISASSOCIATED", "FAILED_TO_ASSOCIATE", "FAILED_TO_DISASSOCIATE"
    #   resp.acm_certificate_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeDomain AWS API Documentation
    #
    # @overload describe_domain(params = {})
    # @param [Hash] params ({})
    def describe_domain(params = {}, options = {})
      req = build_request(:describe_domain, params)
      req.send_request(options)
    end

    # Provides basic information for the specified fleet, excluding identity
    # provider, networking, and device configuration details.
    #
    # @option params [required, String] :fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @return [Types::DescribeFleetMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetMetadataResponse#created_time #created_time} => Time
    #   * {Types::DescribeFleetMetadataResponse#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeFleetMetadataResponse#fleet_name #fleet_name} => String
    #   * {Types::DescribeFleetMetadataResponse#display_name #display_name} => String
    #   * {Types::DescribeFleetMetadataResponse#optimize_for_end_user_location #optimize_for_end_user_location} => Boolean
    #   * {Types::DescribeFleetMetadataResponse#company_code #company_code} => String
    #   * {Types::DescribeFleetMetadataResponse#fleet_status #fleet_status} => String
    #   * {Types::DescribeFleetMetadataResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_metadata({
    #     fleet_arn: "FleetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.fleet_name #=> String
    #   resp.display_name #=> String
    #   resp.optimize_for_end_user_location #=> Boolean
    #   resp.company_code #=> String
    #   resp.fleet_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED_TO_CREATE", "FAILED_TO_DELETE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeFleetMetadata AWS API Documentation
    #
    # @overload describe_fleet_metadata(params = {})
    # @param [Hash] params ({})
    def describe_fleet_metadata(params = {}, options = {})
      req = build_request(:describe_fleet_metadata, params)
      req.send_request(options)
    end

    # Describes the identity provider configuration of the specified fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @return [Types::DescribeIdentityProviderConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIdentityProviderConfigurationResponse#identity_provider_type #identity_provider_type} => String
    #   * {Types::DescribeIdentityProviderConfigurationResponse#service_provider_saml_metadata #service_provider_saml_metadata} => String
    #   * {Types::DescribeIdentityProviderConfigurationResponse#identity_provider_saml_metadata #identity_provider_saml_metadata} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider_configuration({
    #     fleet_arn: "FleetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_type #=> String, one of "SAML"
    #   resp.service_provider_saml_metadata #=> String
    #   resp.identity_provider_saml_metadata #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeIdentityProviderConfiguration AWS API Documentation
    #
    # @overload describe_identity_provider_configuration(params = {})
    # @param [Hash] params ({})
    def describe_identity_provider_configuration(params = {}, options = {})
      req = build_request(:describe_identity_provider_configuration, params)
      req.send_request(options)
    end

    # Provides information about the certificate authority.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :website_ca_id
    #   A unique identifier for the certificate authority.
    #
    # @return [Types::DescribeWebsiteCertificateAuthorityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWebsiteCertificateAuthorityResponse#certificate #certificate} => String
    #   * {Types::DescribeWebsiteCertificateAuthorityResponse#created_time #created_time} => Time
    #   * {Types::DescribeWebsiteCertificateAuthorityResponse#display_name #display_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_website_certificate_authority({
    #     fleet_arn: "FleetArn", # required
    #     website_ca_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate #=> String
    #   resp.created_time #=> Time
    #   resp.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DescribeWebsiteCertificateAuthority AWS API Documentation
    #
    # @overload describe_website_certificate_authority(params = {})
    # @param [Hash] params ({})
    def describe_website_certificate_authority(params = {}, options = {})
      req = build_request(:describe_website_certificate_authority, params)
      req.send_request(options)
    end

    # Disassociates a domain from Amazon WorkLink. End users lose the
    # ability to access the domain with Amazon WorkLink.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_domain({
    #     fleet_arn: "FleetArn", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateDomain AWS API Documentation
    #
    # @overload disassociate_domain(params = {})
    # @param [Hash] params ({})
    def disassociate_domain(params = {}, options = {})
      req = build_request(:disassociate_domain, params)
      req.send_request(options)
    end

    # Disassociates a website authorization provider from a specified fleet.
    # After the disassociation, users can't load any associated websites
    # that require this authorization provider.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :authorization_provider_id
    #   A unique identifier for the authorization provider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_website_authorization_provider({
    #     fleet_arn: "FleetArn", # required
    #     authorization_provider_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateWebsiteAuthorizationProvider AWS API Documentation
    #
    # @overload disassociate_website_authorization_provider(params = {})
    # @param [Hash] params ({})
    def disassociate_website_authorization_provider(params = {}, options = {})
      req = build_request(:disassociate_website_authorization_provider, params)
      req.send_request(options)
    end

    # Removes a certificate authority (CA).
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :website_ca_id
    #   A unique identifier for the CA.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_website_certificate_authority({
    #     fleet_arn: "FleetArn", # required
    #     website_ca_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/DisassociateWebsiteCertificateAuthority AWS API Documentation
    #
    # @overload disassociate_website_certificate_authority(params = {})
    # @param [Hash] params ({})
    def disassociate_website_certificate_authority(params = {}, options = {})
      req = build_request(:disassociate_website_certificate_authority, params)
      req.send_request(options)
    end

    # Retrieves a list of devices registered with the specified fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResponse#devices #devices} => Array&lt;Types::DeviceSummary&gt;
    #   * {Types::ListDevicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     fleet_arn: "FleetArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_id #=> String
    #   resp.devices[0].device_status #=> String, one of "ACTIVE", "SIGNED_OUT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Retrieves a list of domains associated to a specified fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#domains #domains} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     fleet_arn: "FleetArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].domain_name #=> String
    #   resp.domains[0].display_name #=> String
    #   resp.domains[0].created_time #=> Time
    #   resp.domains[0].domain_status #=> String, one of "PENDING_VALIDATION", "ASSOCIATING", "ACTIVE", "INACTIVE", "DISASSOCIATING", "DISASSOCIATED", "FAILED_TO_ASSOCIATE", "FAILED_TO_DISASSOCIATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Retrieves a list of fleets for the current account and Region.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListFleetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsResponse#fleet_summary_list #fleet_summary_list} => Array&lt;Types::FleetSummary&gt;
    #   * {Types::ListFleetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_summary_list #=> Array
    #   resp.fleet_summary_list[0].fleet_arn #=> String
    #   resp.fleet_summary_list[0].created_time #=> Time
    #   resp.fleet_summary_list[0].last_updated_time #=> Time
    #   resp.fleet_summary_list[0].fleet_name #=> String
    #   resp.fleet_summary_list[0].display_name #=> String
    #   resp.fleet_summary_list[0].company_code #=> String
    #   resp.fleet_summary_list[0].fleet_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED_TO_CREATE", "FAILED_TO_DELETE"
    #   resp.fleet_summary_list[0].tags #=> Hash
    #   resp.fleet_summary_list[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListFleets AWS API Documentation
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # Retrieves a list of tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "FleetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of website authorization providers associated with a
    # specified fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [String] :next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @return [Types::ListWebsiteAuthorizationProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebsiteAuthorizationProvidersResponse#website_authorization_providers #website_authorization_providers} => Array&lt;Types::WebsiteAuthorizationProviderSummary&gt;
    #   * {Types::ListWebsiteAuthorizationProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_website_authorization_providers({
    #     fleet_arn: "FleetArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.website_authorization_providers #=> Array
    #   resp.website_authorization_providers[0].authorization_provider_id #=> String
    #   resp.website_authorization_providers[0].authorization_provider_type #=> String, one of "SAML"
    #   resp.website_authorization_providers[0].domain_name #=> String
    #   resp.website_authorization_providers[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListWebsiteAuthorizationProviders AWS API Documentation
    #
    # @overload list_website_authorization_providers(params = {})
    # @param [Hash] params ({})
    def list_website_authorization_providers(params = {}, options = {})
      req = build_request(:list_website_authorization_providers, params)
      req.send_request(options)
    end

    # Retrieves a list of certificate authorities added for the current
    # account and Region.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be included in the next page.
    #
    # @option params [String] :next_token
    #   The pagination token used to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #
    # @return [Types::ListWebsiteCertificateAuthoritiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebsiteCertificateAuthoritiesResponse#website_certificate_authorities #website_certificate_authorities} => Array&lt;Types::WebsiteCaSummary&gt;
    #   * {Types::ListWebsiteCertificateAuthoritiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_website_certificate_authorities({
    #     fleet_arn: "FleetArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.website_certificate_authorities #=> Array
    #   resp.website_certificate_authorities[0].website_ca_id #=> String
    #   resp.website_certificate_authorities[0].created_time #=> Time
    #   resp.website_certificate_authorities[0].display_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/ListWebsiteCertificateAuthorities AWS API Documentation
    #
    # @overload list_website_certificate_authorities(params = {})
    # @param [Hash] params ({})
    def list_website_certificate_authorities(params = {}, options = {})
      req = build_request(:list_website_certificate_authorities, params)
      req.send_request(options)
    end

    # Moves a domain to ACTIVE status if it was in the INACTIVE status.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_domain_access({
    #     fleet_arn: "FleetArn", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/RestoreDomainAccess AWS API Documentation
    #
    # @overload restore_domain_access(params = {})
    # @param [Hash] params ({})
    def restore_domain_access(params = {}, options = {})
      req = build_request(:restore_domain_access, params)
      req.send_request(options)
    end

    # Moves a domain to INACTIVE status if it was in the ACTIVE status.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_domain_access({
    #     fleet_arn: "FleetArn", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/RevokeDomainAccess AWS API Documentation
    #
    # @overload revoke_domain_access(params = {})
    # @param [Hash] params ({})
    def revoke_domain_access(params = {}, options = {})
      req = build_request(:revoke_domain_access, params)
      req.send_request(options)
    end

    # Signs the user out from all of their devices. The user can sign in
    # again if they have valid credentials.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :username
    #   The name of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign_out_user({
    #     fleet_arn: "FleetArn", # required
    #     username: "Username", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/SignOutUser AWS API Documentation
    #
    # @overload sign_out_user(params = {})
    # @param [Hash] params ({})
    def sign_out_user(params = {}, options = {})
      req = build_request(:sign_out_user, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified resource, such
    # as a fleet. Each tag consists of a key and an optional value. If a
    # resource already has a tag with the same key, this operation updates
    # its value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource. A tag is a key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "FleetArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "FleetArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the audit stream configuration for the fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [String] :audit_stream_arn
    #   The ARN of the Amazon Kinesis data stream that receives the audit
    #   events.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_audit_stream_configuration({
    #     fleet_arn: "FleetArn", # required
    #     audit_stream_arn: "AuditStreamArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateAuditStreamConfiguration AWS API Documentation
    #
    # @overload update_audit_stream_configuration(params = {})
    # @param [Hash] params ({})
    def update_audit_stream_configuration(params = {}, options = {})
      req = build_request(:update_audit_stream_configuration, params)
      req.send_request(options)
    end

    # Updates the company network configuration for the fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :vpc_id
    #   The VPC with connectivity to associated websites.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The subnets used for X-ENI connections from Amazon WorkLink rendering
    #   containers.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   The security groups associated with access to the provided subnets.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_company_network_configuration({
    #     fleet_arn: "FleetArn", # required
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateCompanyNetworkConfiguration AWS API Documentation
    #
    # @overload update_company_network_configuration(params = {})
    # @param [Hash] params ({})
    def update_company_network_configuration(params = {}, options = {})
      req = build_request(:update_company_network_configuration, params)
      req.send_request(options)
    end

    # Updates the device policy configuration for the fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [String] :device_ca_certificate
    #   The certificate chain, including intermediate certificates and the
    #   root certificate authority certificate used to issue device
    #   certificates.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_policy_configuration({
    #     fleet_arn: "FleetArn", # required
    #     device_ca_certificate: "CertificateChain",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateDevicePolicyConfiguration AWS API Documentation
    #
    # @overload update_device_policy_configuration(params = {})
    # @param [Hash] params ({})
    def update_device_policy_configuration(params = {}, options = {})
      req = build_request(:update_device_policy_configuration, params)
      req.send_request(options)
    end

    # Updates domain metadata, such as DisplayName.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [String] :display_name
    #   The name to display.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_metadata({
    #     fleet_arn: "FleetArn", # required
    #     domain_name: "DomainName", # required
    #     display_name: "DisplayName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateDomainMetadata AWS API Documentation
    #
    # @overload update_domain_metadata(params = {})
    # @param [Hash] params ({})
    def update_domain_metadata(params = {}, options = {})
      req = build_request(:update_domain_metadata, params)
      req.send_request(options)
    end

    # Updates fleet metadata, such as DisplayName.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [String] :display_name
    #   The fleet name to display. The existing DisplayName is unset if null
    #   is passed.
    #
    # @option params [Boolean] :optimize_for_end_user_location
    #   The option to optimize for better performance by routing traffic
    #   through the closest AWS Region to users, which may be outside of your
    #   home Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_metadata({
    #     fleet_arn: "FleetArn", # required
    #     display_name: "DisplayName",
    #     optimize_for_end_user_location: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateFleetMetadata AWS API Documentation
    #
    # @overload update_fleet_metadata(params = {})
    # @param [Hash] params ({})
    def update_fleet_metadata(params = {}, options = {})
      req = build_request(:update_fleet_metadata, params)
      req.send_request(options)
    end

    # Updates the identity provider configuration for the fleet.
    #
    # @option params [required, String] :fleet_arn
    #   The ARN of the fleet.
    #
    # @option params [required, String] :identity_provider_type
    #   The type of identity provider.
    #
    # @option params [String] :identity_provider_saml_metadata
    #   The SAML metadata document provided by the customer’s identity
    #   provider. The existing IdentityProviderSamlMetadata is unset if null
    #   is passed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider_configuration({
    #     fleet_arn: "FleetArn", # required
    #     identity_provider_type: "SAML", # required, accepts SAML
    #     identity_provider_saml_metadata: "SamlMetadata",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/worklink-2018-09-25/UpdateIdentityProviderConfiguration AWS API Documentation
    #
    # @overload update_identity_provider_configuration(params = {})
    # @param [Hash] params ({})
    def update_identity_provider_configuration(params = {}, options = {})
      req = build_request(:update_identity_provider_configuration, params)
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
      context[:gem_name] = 'aws-sdk-worklink'
      context[:gem_version] = '1.21.0'
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

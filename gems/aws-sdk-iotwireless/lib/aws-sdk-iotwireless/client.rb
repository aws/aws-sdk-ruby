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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotwireless)

module Aws::IoTWireless
  # An API client for IoTWireless.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTWireless::Client.new(
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

    @identifier = :iotwireless

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

    # Associates a partner account with your AWS account.
    #
    # @option params [required, Types::SidewalkAccountInfo] :sidewalk
    #   The Sidewalk account credentials.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Types::AssociateAwsAccountWithPartnerAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAwsAccountWithPartnerAccountResponse#sidewalk #sidewalk} => Types::SidewalkAccountInfo
    #   * {Types::AssociateAwsAccountWithPartnerAccountResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_aws_account_with_partner_account({
    #     sidewalk: { # required
    #       amazon_id: "AmazonId",
    #       app_server_private_key: "AppServerPrivateKey",
    #     },
    #     client_request_token: "ClientRequestToken",
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
    #   resp.sidewalk.amazon_id #=> String
    #   resp.sidewalk.app_server_private_key #=> String
    #   resp.arn #=> String
    #
    # @overload associate_aws_account_with_partner_account(params = {})
    # @param [Hash] params ({})
    def associate_aws_account_with_partner_account(params = {}, options = {})
      req = build_request(:associate_aws_account_with_partner_account, params)
      req.send_request(options)
    end

    # Associate a multicast group with a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [required, String] :multicast_group_id
    #   The ID of the multicast group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_multicast_group_with_fuota_task({
    #     id: "FuotaTaskId", # required
    #     multicast_group_id: "MulticastGroupId", # required
    #   })
    #
    # @overload associate_multicast_group_with_fuota_task(params = {})
    # @param [Hash] params ({})
    def associate_multicast_group_with_fuota_task(params = {}, options = {})
      req = build_request(:associate_multicast_group_with_fuota_task, params)
      req.send_request(options)
    end

    # Associate a wireless device with a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [required, String] :wireless_device_id
    #   The ID of the wireless device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_device_with_fuota_task({
    #     id: "FuotaTaskId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   })
    #
    # @overload associate_wireless_device_with_fuota_task(params = {})
    # @param [Hash] params ({})
    def associate_wireless_device_with_fuota_task(params = {}, options = {})
      req = build_request(:associate_wireless_device_with_fuota_task, params)
      req.send_request(options)
    end

    # Associates a wireless device with a multicast group.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [required, String] :wireless_device_id
    #   The ID of the wireless device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_device_with_multicast_group({
    #     id: "MulticastGroupId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   })
    #
    # @overload associate_wireless_device_with_multicast_group(params = {})
    # @param [Hash] params ({})
    def associate_wireless_device_with_multicast_group(params = {}, options = {})
      req = build_request(:associate_wireless_device_with_multicast_group, params)
      req.send_request(options)
    end

    # Associates a wireless device with a thing.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @option params [required, String] :thing_arn
    #   The ARN of the thing to associate with the wireless device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_device_with_thing({
    #     id: "WirelessDeviceId", # required
    #     thing_arn: "ThingArn", # required
    #   })
    #
    # @overload associate_wireless_device_with_thing(params = {})
    # @param [Hash] params ({})
    def associate_wireless_device_with_thing(params = {}, options = {})
      req = build_request(:associate_wireless_device_with_thing, params)
      req.send_request(options)
    end

    # Associates a wireless gateway with a certificate.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @option params [required, String] :iot_certificate_id
    #   The ID of the certificate to associate with the wireless gateway.
    #
    # @return [Types::AssociateWirelessGatewayWithCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateWirelessGatewayWithCertificateResponse#iot_certificate_id #iot_certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_gateway_with_certificate({
    #     id: "WirelessGatewayId", # required
    #     iot_certificate_id: "IotCertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iot_certificate_id #=> String
    #
    # @overload associate_wireless_gateway_with_certificate(params = {})
    # @param [Hash] params ({})
    def associate_wireless_gateway_with_certificate(params = {}, options = {})
      req = build_request(:associate_wireless_gateway_with_certificate, params)
      req.send_request(options)
    end

    # Associates a wireless gateway with a thing.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @option params [required, String] :thing_arn
    #   The ARN of the thing to associate with the wireless gateway.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_gateway_with_thing({
    #     id: "WirelessGatewayId", # required
    #     thing_arn: "ThingArn", # required
    #   })
    #
    # @overload associate_wireless_gateway_with_thing(params = {})
    # @param [Hash] params ({})
    def associate_wireless_gateway_with_thing(params = {}, options = {})
      req = build_request(:associate_wireless_gateway_with_thing, params)
      req.send_request(options)
    end

    # Cancels an existing multicast group session.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_multicast_group_session({
    #     id: "MulticastGroupId", # required
    #   })
    #
    # @overload cancel_multicast_group_session(params = {})
    # @param [Hash] params ({})
    def cancel_multicast_group_session(params = {}, options = {})
      req = build_request(:cancel_multicast_group_session, params)
      req.send_request(options)
    end

    # Creates a new destination that maps a device message to an AWS IoT
    # rule.
    #
    # @option params [required, String] :name
    #   The name of the new resource.
    #
    # @option params [required, String] :expression_type
    #   The type of value in `Expression`.
    #
    # @option params [required, String] :expression
    #   The rule name or topic rule to send messages to.
    #
    # @option params [String] :description
    #   The description of the new resource.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM Role that authorizes the destination.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new destination. Tags are metadata that you
    #   can use to manage a resource.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDestinationResponse#arn #arn} => String
    #   * {Types::CreateDestinationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_destination({
    #     name: "DestinationName", # required
    #     expression_type: "RuleName", # required, accepts RuleName, MqttTopic
    #     expression: "Expression", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @overload create_destination(params = {})
    # @param [Hash] params ({})
    def create_destination(params = {}, options = {})
      req = build_request(:create_destination, params)
      req.send_request(options)
    end

    # Creates a new device profile.
    #
    # @option params [String] :name
    #   The name of the new resource.
    #
    # @option params [Types::LoRaWANDeviceProfile] :lo_ra_wan
    #   The device profile information to use to create the device profile.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new device profile. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDeviceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeviceProfileResponse#arn #arn} => String
    #   * {Types::CreateDeviceProfileResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_profile({
    #     name: "DeviceProfileName",
    #     lo_ra_wan: {
    #       supports_class_b: false,
    #       class_b_timeout: 1,
    #       ping_slot_period: 1,
    #       ping_slot_dr: 1,
    #       ping_slot_freq: 1,
    #       supports_class_c: false,
    #       class_c_timeout: 1,
    #       mac_version: "MacVersion",
    #       reg_params_revision: "RegParamsRevision",
    #       rx_delay_1: 1,
    #       rx_dr_offset_1: 1,
    #       rx_data_rate_2: 1,
    #       rx_freq_2: 1,
    #       factory_preset_freqs_list: [1],
    #       max_eirp: 1,
    #       max_duty_cycle: 1,
    #       rf_region: "RfRegion",
    #       supports_join: false,
    #       supports_32_bit_f_cnt: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_device_profile(params = {})
    # @param [Hash] params ({})
    def create_device_profile(params = {}, options = {})
      req = build_request(:create_device_profile, params)
      req.send_request(options)
    end

    # Creates a FUOTA task.
    #
    # @option params [String] :name
    #   The name of a FUOTA task.
    #
    # @option params [String] :description
    #   The description of the new resource.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LoRaWANFuotaTask] :lo_ra_wan
    #   The LoRaWAN information used with a FUOTA task.
    #
    # @option params [required, String] :firmware_update_image
    #   The S3 URI points to a firmware update image that is to be used with a
    #   FUOTA task.
    #
    # @option params [required, String] :firmware_update_role
    #   The firmware update role that is to be used with a FUOTA task.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Types::CreateFuotaTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFuotaTaskResponse#arn #arn} => String
    #   * {Types::CreateFuotaTaskResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fuota_task({
    #     name: "FuotaTaskName",
    #     description: "Description",
    #     client_request_token: "ClientRequestToken",
    #     lo_ra_wan: {
    #       rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #     },
    #     firmware_update_image: "FirmwareUpdateImage", # required
    #     firmware_update_role: "FirmwareUpdateRole", # required
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
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_fuota_task(params = {})
    # @param [Hash] params ({})
    def create_fuota_task(params = {}, options = {})
      req = build_request(:create_fuota_task, params)
      req.send_request(options)
    end

    # Creates a multicast group.
    #
    # @option params [String] :name
    #   The name of the multicast group.
    #
    # @option params [String] :description
    #   The description of the multicast group.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::LoRaWANMulticast] :lo_ra_wan
    #   The LoRaWAN information that is to be used with the multicast group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Types::CreateMulticastGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMulticastGroupResponse#arn #arn} => String
    #   * {Types::CreateMulticastGroupResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multicast_group({
    #     name: "MulticastGroupName",
    #     description: "Description",
    #     client_request_token: "ClientRequestToken",
    #     lo_ra_wan: { # required
    #       rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #       dl_class: "ClassB", # accepts ClassB, ClassC
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
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_multicast_group(params = {})
    # @param [Hash] params ({})
    def create_multicast_group(params = {}, options = {})
      req = build_request(:create_multicast_group, params)
      req.send_request(options)
    end

    # Creates a new service profile.
    #
    # @option params [String] :name
    #   The name of the new resource.
    #
    # @option params [Types::LoRaWANServiceProfile] :lo_ra_wan
    #   The service profile information to use to create the service profile.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new service profile. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateServiceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceProfileResponse#arn #arn} => String
    #   * {Types::CreateServiceProfileResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_profile({
    #     name: "ServiceProfileName",
    #     lo_ra_wan: {
    #       add_gw_metadata: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_service_profile(params = {})
    # @param [Hash] params ({})
    def create_service_profile(params = {}, options = {})
      req = build_request(:create_service_profile, params)
      req.send_request(options)
    end

    # Provisions a wireless device.
    #
    # @option params [required, String] :type
    #   The wireless device type.
    #
    # @option params [String] :name
    #   The name of the new resource.
    #
    # @option params [String] :description
    #   The description of the new resource.
    #
    # @option params [required, String] :destination_name
    #   The name of the destination to assign to the new wireless device.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::LoRaWANDevice] :lo_ra_wan
    #   The device configuration information to use to create the wireless
    #   device.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new wireless device. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Types::CreateWirelessDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWirelessDeviceResponse#arn #arn} => String
    #   * {Types::CreateWirelessDeviceResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_device({
    #     type: "Sidewalk", # required, accepts Sidewalk, LoRaWAN
    #     name: "WirelessDeviceName",
    #     description: "Description",
    #     destination_name: "DestinationName", # required
    #     client_request_token: "ClientRequestToken",
    #     lo_ra_wan: {
    #       dev_eui: "DevEui",
    #       device_profile_id: "DeviceProfileId",
    #       service_profile_id: "ServiceProfileId",
    #       otaa_v1_1: {
    #         app_key: "AppKey",
    #         nwk_key: "NwkKey",
    #         join_eui: "JoinEui",
    #       },
    #       otaa_v1_0_x: {
    #         app_key: "AppKey",
    #         app_eui: "AppEui",
    #         gen_app_key: "GenAppKey",
    #       },
    #       abp_v1_1: {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           f_nwk_s_int_key: "FNwkSIntKey",
    #           s_nwk_s_int_key: "SNwkSIntKey",
    #           nwk_s_enc_key: "NwkSEncKey",
    #           app_s_key: "AppSKey",
    #         },
    #       },
    #       abp_v1_0_x: {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           nwk_s_key: "NwkSKey",
    #           app_s_key: "AppSKey",
    #         },
    #       },
    #       f_ports: {
    #         fuota: 1,
    #         multicast: 1,
    #         clock_sync: 1,
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
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_wireless_device(params = {})
    # @param [Hash] params ({})
    def create_wireless_device(params = {}, options = {})
      req = build_request(:create_wireless_device, params)
      req.send_request(options)
    end

    # Provisions a wireless gateway.
    #
    # @option params [String] :name
    #   The name of the new resource.
    #
    # @option params [String] :description
    #   The description of the new resource.
    #
    # @option params [required, Types::LoRaWANGateway] :lo_ra_wan
    #   The gateway configuration information to use to create the wireless
    #   gateway.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the new wireless gateway. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateWirelessGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWirelessGatewayResponse#arn #arn} => String
    #   * {Types::CreateWirelessGatewayResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_gateway({
    #     name: "WirelessGatewayName",
    #     description: "Description",
    #     lo_ra_wan: { # required
    #       gateway_eui: "GatewayEui",
    #       rf_region: "RfRegion",
    #       join_eui_filters: [
    #         ["JoinEui"],
    #       ],
    #       net_id_filters: ["NetId"],
    #       sub_bands: [1],
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @overload create_wireless_gateway(params = {})
    # @param [Hash] params ({})
    def create_wireless_gateway(params = {}, options = {})
      req = build_request(:create_wireless_gateway, params)
      req.send_request(options)
    end

    # Creates a task for a wireless gateway.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @option params [required, String] :wireless_gateway_task_definition_id
    #   The ID of the WirelessGatewayTaskDefinition.
    #
    # @return [Types::CreateWirelessGatewayTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWirelessGatewayTaskResponse#wireless_gateway_task_definition_id #wireless_gateway_task_definition_id} => String
    #   * {Types::CreateWirelessGatewayTaskResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_gateway_task({
    #     id: "WirelessGatewayId", # required
    #     wireless_gateway_task_definition_id: "WirelessGatewayTaskDefinitionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.wireless_gateway_task_definition_id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"
    #
    # @overload create_wireless_gateway_task(params = {})
    # @param [Hash] params ({})
    def create_wireless_gateway_task(params = {}, options = {})
      req = build_request(:create_wireless_gateway_task, params)
      req.send_request(options)
    end

    # Creates a gateway task definition.
    #
    # @option params [required, Boolean] :auto_create_tasks
    #   Whether to automatically create tasks using this task definition for
    #   all gateways with the specified current version. If `false`, the task
    #   must me created by calling `CreateWirelessGatewayTask`.
    #
    # @option params [String] :name
    #   The name of the new resource.
    #
    # @option params [Types::UpdateWirelessGatewayTaskCreate] :update
    #   Information about the gateways to update.
    #
    # @option params [String] :client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Types::CreateWirelessGatewayTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWirelessGatewayTaskDefinitionResponse#id #id} => String
    #   * {Types::CreateWirelessGatewayTaskDefinitionResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_gateway_task_definition({
    #     auto_create_tasks: false, # required
    #     name: "WirelessGatewayTaskName",
    #     update: {
    #       update_data_source: "UpdateDataSource",
    #       update_data_role: "UpdateDataSource",
    #       lo_ra_wan: {
    #         update_signature: "UpdateSignature",
    #         sig_key_crc: 1,
    #         current_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station",
    #         },
    #         update_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station",
    #         },
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
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
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @overload create_wireless_gateway_task_definition(params = {})
    # @param [Hash] params ({})
    def create_wireless_gateway_task_definition(params = {}, options = {})
      req = build_request(:create_wireless_gateway_task_definition, params)
      req.send_request(options)
    end

    # Deletes a destination.
    #
    # @option params [required, String] :name
    #   The name of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination({
    #     name: "DestinationName", # required
    #   })
    #
    # @overload delete_destination(params = {})
    # @param [Hash] params ({})
    def delete_destination(params = {}, options = {})
      req = build_request(:delete_destination, params)
      req.send_request(options)
    end

    # Deletes a device profile.
    #
    # @option params [required, String] :id
    #   The ID of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_profile({
    #     id: "DeviceProfileId", # required
    #   })
    #
    # @overload delete_device_profile(params = {})
    # @param [Hash] params ({})
    def delete_device_profile(params = {}, options = {})
      req = build_request(:delete_device_profile, params)
      req.send_request(options)
    end

    # Deletes a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fuota_task({
    #     id: "FuotaTaskId", # required
    #   })
    #
    # @overload delete_fuota_task(params = {})
    # @param [Hash] params ({})
    def delete_fuota_task(params = {}, options = {})
      req = build_request(:delete_fuota_task, params)
      req.send_request(options)
    end

    # Deletes a multicast group if it is not in use by a fuota task.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multicast_group({
    #     id: "MulticastGroupId", # required
    #   })
    #
    # @overload delete_multicast_group(params = {})
    # @param [Hash] params ({})
    def delete_multicast_group(params = {}, options = {})
      req = build_request(:delete_multicast_group, params)
      req.send_request(options)
    end

    # The operation to delete queued messages.
    #
    # @option params [required, String] :id
    #   Id of a given wireless device which messages will be deleted
    #
    # @option params [required, String] :message_id
    #   if messageID=="*", the queue for a particular wireless deviceId
    #   will be purged, otherwise, the specific message with messageId will be
    #   deleted
    #
    # @option params [String] :wireless_device_type
    #   The wireless device type, it is either Sidewalk or LoRaWAN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queued_messages({
    #     id: "WirelessDeviceId", # required
    #     message_id: "MessageId", # required
    #     wireless_device_type: "Sidewalk", # accepts Sidewalk, LoRaWAN
    #   })
    #
    # @overload delete_queued_messages(params = {})
    # @param [Hash] params ({})
    def delete_queued_messages(params = {}, options = {})
      req = build_request(:delete_queued_messages, params)
      req.send_request(options)
    end

    # Deletes a service profile.
    #
    # @option params [required, String] :id
    #   The ID of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_profile({
    #     id: "ServiceProfileId", # required
    #   })
    #
    # @overload delete_service_profile(params = {})
    # @param [Hash] params ({})
    def delete_service_profile(params = {}, options = {})
      req = build_request(:delete_service_profile, params)
      req.send_request(options)
    end

    # Deletes a wireless device.
    #
    # @option params [required, String] :id
    #   The ID of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_device({
    #     id: "WirelessDeviceId", # required
    #   })
    #
    # @overload delete_wireless_device(params = {})
    # @param [Hash] params ({})
    def delete_wireless_device(params = {}, options = {})
      req = build_request(:delete_wireless_device, params)
      req.send_request(options)
    end

    # Deletes a wireless gateway.
    #
    # @option params [required, String] :id
    #   The ID of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_gateway({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @overload delete_wireless_gateway(params = {})
    # @param [Hash] params ({})
    def delete_wireless_gateway(params = {}, options = {})
      req = build_request(:delete_wireless_gateway, params)
      req.send_request(options)
    end

    # Deletes a wireless gateway task.
    #
    # @option params [required, String] :id
    #   The ID of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_gateway_task({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @overload delete_wireless_gateway_task(params = {})
    # @param [Hash] params ({})
    def delete_wireless_gateway_task(params = {}, options = {})
      req = build_request(:delete_wireless_gateway_task, params)
      req.send_request(options)
    end

    # Deletes a wireless gateway task definition. Deleting this task
    # definition does not affect tasks that are currently in progress.
    #
    # @option params [required, String] :id
    #   The ID of the resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_gateway_task_definition({
    #     id: "WirelessGatewayTaskDefinitionId", # required
    #   })
    #
    # @overload delete_wireless_gateway_task_definition(params = {})
    # @param [Hash] params ({})
    def delete_wireless_gateway_task_definition(params = {}, options = {})
      req = build_request(:delete_wireless_gateway_task_definition, params)
      req.send_request(options)
    end

    # Disassociates your AWS account from a partner account. If
    # `PartnerAccountId` and `PartnerType` are `null`, disassociates your
    # AWS account from all partner accounts.
    #
    # @option params [required, String] :partner_account_id
    #   The partner account ID to disassociate from the AWS account.
    #
    # @option params [required, String] :partner_type
    #   The partner type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_aws_account_from_partner_account({
    #     partner_account_id: "PartnerAccountId", # required
    #     partner_type: "Sidewalk", # required, accepts Sidewalk
    #   })
    #
    # @overload disassociate_aws_account_from_partner_account(params = {})
    # @param [Hash] params ({})
    def disassociate_aws_account_from_partner_account(params = {}, options = {})
      req = build_request(:disassociate_aws_account_from_partner_account, params)
      req.send_request(options)
    end

    # Disassociates a multicast group from a fuota task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [required, String] :multicast_group_id
    #   The ID of the multicast group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_multicast_group_from_fuota_task({
    #     id: "FuotaTaskId", # required
    #     multicast_group_id: "MulticastGroupId", # required
    #   })
    #
    # @overload disassociate_multicast_group_from_fuota_task(params = {})
    # @param [Hash] params ({})
    def disassociate_multicast_group_from_fuota_task(params = {}, options = {})
      req = build_request(:disassociate_multicast_group_from_fuota_task, params)
      req.send_request(options)
    end

    # Disassociates a wireless device from a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [required, String] :wireless_device_id
    #   The ID of the wireless device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_device_from_fuota_task({
    #     id: "FuotaTaskId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   })
    #
    # @overload disassociate_wireless_device_from_fuota_task(params = {})
    # @param [Hash] params ({})
    def disassociate_wireless_device_from_fuota_task(params = {}, options = {})
      req = build_request(:disassociate_wireless_device_from_fuota_task, params)
      req.send_request(options)
    end

    # Disassociates a wireless device from a multicast group.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [required, String] :wireless_device_id
    #   The ID of the wireless device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_device_from_multicast_group({
    #     id: "MulticastGroupId", # required
    #     wireless_device_id: "WirelessDeviceId", # required
    #   })
    #
    # @overload disassociate_wireless_device_from_multicast_group(params = {})
    # @param [Hash] params ({})
    def disassociate_wireless_device_from_multicast_group(params = {}, options = {})
      req = build_request(:disassociate_wireless_device_from_multicast_group, params)
      req.send_request(options)
    end

    # Disassociates a wireless device from its currently associated thing.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_device_from_thing({
    #     id: "WirelessDeviceId", # required
    #   })
    #
    # @overload disassociate_wireless_device_from_thing(params = {})
    # @param [Hash] params ({})
    def disassociate_wireless_device_from_thing(params = {}, options = {})
      req = build_request(:disassociate_wireless_device_from_thing, params)
      req.send_request(options)
    end

    # Disassociates a wireless gateway from its currently associated
    # certificate.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_gateway_from_certificate({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @overload disassociate_wireless_gateway_from_certificate(params = {})
    # @param [Hash] params ({})
    def disassociate_wireless_gateway_from_certificate(params = {}, options = {})
      req = build_request(:disassociate_wireless_gateway_from_certificate, params)
      req.send_request(options)
    end

    # Disassociates a wireless gateway from its currently associated thing.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_gateway_from_thing({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @overload disassociate_wireless_gateway_from_thing(params = {})
    # @param [Hash] params ({})
    def disassociate_wireless_gateway_from_thing(params = {}, options = {})
      req = build_request(:disassociate_wireless_gateway_from_thing, params)
      req.send_request(options)
    end

    # Gets information about a destination.
    #
    # @option params [required, String] :name
    #   The name of the resource to get.
    #
    # @return [Types::GetDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDestinationResponse#arn #arn} => String
    #   * {Types::GetDestinationResponse#name #name} => String
    #   * {Types::GetDestinationResponse#expression #expression} => String
    #   * {Types::GetDestinationResponse#expression_type #expression_type} => String
    #   * {Types::GetDestinationResponse#description #description} => String
    #   * {Types::GetDestinationResponse#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_destination({
    #     name: "DestinationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.expression #=> String
    #   resp.expression_type #=> String, one of "RuleName", "MqttTopic"
    #   resp.description #=> String
    #   resp.role_arn #=> String
    #
    # @overload get_destination(params = {})
    # @param [Hash] params ({})
    def get_destination(params = {}, options = {})
      req = build_request(:get_destination, params)
      req.send_request(options)
    end

    # Gets information about a device profile.
    #
    # @option params [required, String] :id
    #   The ID of the resource to get.
    #
    # @return [Types::GetDeviceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceProfileResponse#arn #arn} => String
    #   * {Types::GetDeviceProfileResponse#name #name} => String
    #   * {Types::GetDeviceProfileResponse#id #id} => String
    #   * {Types::GetDeviceProfileResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANDeviceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_profile({
    #     id: "DeviceProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.lo_ra_wan.supports_class_b #=> Boolean
    #   resp.lo_ra_wan.class_b_timeout #=> Integer
    #   resp.lo_ra_wan.ping_slot_period #=> Integer
    #   resp.lo_ra_wan.ping_slot_dr #=> Integer
    #   resp.lo_ra_wan.ping_slot_freq #=> Integer
    #   resp.lo_ra_wan.supports_class_c #=> Boolean
    #   resp.lo_ra_wan.class_c_timeout #=> Integer
    #   resp.lo_ra_wan.mac_version #=> String
    #   resp.lo_ra_wan.reg_params_revision #=> String
    #   resp.lo_ra_wan.rx_delay_1 #=> Integer
    #   resp.lo_ra_wan.rx_dr_offset_1 #=> Integer
    #   resp.lo_ra_wan.rx_data_rate_2 #=> Integer
    #   resp.lo_ra_wan.rx_freq_2 #=> Integer
    #   resp.lo_ra_wan.factory_preset_freqs_list #=> Array
    #   resp.lo_ra_wan.factory_preset_freqs_list[0] #=> Integer
    #   resp.lo_ra_wan.max_eirp #=> Integer
    #   resp.lo_ra_wan.max_duty_cycle #=> Integer
    #   resp.lo_ra_wan.rf_region #=> String
    #   resp.lo_ra_wan.supports_join #=> Boolean
    #   resp.lo_ra_wan.supports_32_bit_f_cnt #=> Boolean
    #
    # @overload get_device_profile(params = {})
    # @param [Hash] params ({})
    def get_device_profile(params = {}, options = {})
      req = build_request(:get_device_profile, params)
      req.send_request(options)
    end

    # Gets information about a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @return [Types::GetFuotaTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFuotaTaskResponse#arn #arn} => String
    #   * {Types::GetFuotaTaskResponse#id #id} => String
    #   * {Types::GetFuotaTaskResponse#status #status} => String
    #   * {Types::GetFuotaTaskResponse#name #name} => String
    #   * {Types::GetFuotaTaskResponse#description #description} => String
    #   * {Types::GetFuotaTaskResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANFuotaTaskGetInfo
    #   * {Types::GetFuotaTaskResponse#firmware_update_image #firmware_update_image} => String
    #   * {Types::GetFuotaTaskResponse#firmware_update_role #firmware_update_role} => String
    #   * {Types::GetFuotaTaskResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_fuota_task({
    #     id: "FuotaTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "Pending", "FuotaSession_Waiting", "In_FuotaSession", "FuotaDone", "Delete_Waiting"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.lo_ra_wan.rf_region #=> String
    #   resp.lo_ra_wan.start_time #=> Time
    #   resp.firmware_update_image #=> String
    #   resp.firmware_update_role #=> String
    #   resp.created_at #=> Time
    #
    # @overload get_fuota_task(params = {})
    # @param [Hash] params ({})
    def get_fuota_task(params = {}, options = {})
      req = build_request(:get_fuota_task, params)
      req.send_request(options)
    end

    # Returns current default log levels or log levels by resource types.
    # Based on resource types, log levels can be for wireless device log
    # options or wireless gateway log options.
    #
    # @return [Types::GetLogLevelsByResourceTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLogLevelsByResourceTypesResponse#default_log_level #default_log_level} => String
    #   * {Types::GetLogLevelsByResourceTypesResponse#wireless_gateway_log_options #wireless_gateway_log_options} => Array&lt;Types::WirelessGatewayLogOption&gt;
    #   * {Types::GetLogLevelsByResourceTypesResponse#wireless_device_log_options #wireless_device_log_options} => Array&lt;Types::WirelessDeviceLogOption&gt;
    #
    # @example Response structure
    #
    #   resp.default_log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #   resp.wireless_gateway_log_options #=> Array
    #   resp.wireless_gateway_log_options[0].type #=> String, one of "LoRaWAN"
    #   resp.wireless_gateway_log_options[0].log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #   resp.wireless_gateway_log_options[0].events #=> Array
    #   resp.wireless_gateway_log_options[0].events[0].event #=> String, one of "CUPS_Request", "Certificate"
    #   resp.wireless_gateway_log_options[0].events[0].log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #   resp.wireless_device_log_options #=> Array
    #   resp.wireless_device_log_options[0].type #=> String, one of "Sidewalk", "LoRaWAN"
    #   resp.wireless_device_log_options[0].log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #   resp.wireless_device_log_options[0].events #=> Array
    #   resp.wireless_device_log_options[0].events[0].event #=> String, one of "Join", "Rejoin", "Uplink_Data", "Downlink_Data", "Registration"
    #   resp.wireless_device_log_options[0].events[0].log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #
    # @overload get_log_levels_by_resource_types(params = {})
    # @param [Hash] params ({})
    def get_log_levels_by_resource_types(params = {}, options = {})
      req = build_request(:get_log_levels_by_resource_types, params)
      req.send_request(options)
    end

    # Gets information about a multicast group.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @return [Types::GetMulticastGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMulticastGroupResponse#arn #arn} => String
    #   * {Types::GetMulticastGroupResponse#id #id} => String
    #   * {Types::GetMulticastGroupResponse#name #name} => String
    #   * {Types::GetMulticastGroupResponse#description #description} => String
    #   * {Types::GetMulticastGroupResponse#status #status} => String
    #   * {Types::GetMulticastGroupResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANMulticastGet
    #   * {Types::GetMulticastGroupResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multicast_group({
    #     id: "MulticastGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String
    #   resp.lo_ra_wan.rf_region #=> String, one of "EU868", "US915", "AU915", "AS923-1"
    #   resp.lo_ra_wan.dl_class #=> String, one of "ClassB", "ClassC"
    #   resp.lo_ra_wan.number_of_devices_requested #=> Integer
    #   resp.lo_ra_wan.number_of_devices_in_group #=> Integer
    #   resp.created_at #=> Time
    #
    # @overload get_multicast_group(params = {})
    # @param [Hash] params ({})
    def get_multicast_group(params = {}, options = {})
      req = build_request(:get_multicast_group, params)
      req.send_request(options)
    end

    # Gets information about a multicast group session.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @return [Types::GetMulticastGroupSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMulticastGroupSessionResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANMulticastSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multicast_group_session({
    #     id: "MulticastGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lo_ra_wan.dl_dr #=> Integer
    #   resp.lo_ra_wan.dl_freq #=> Integer
    #   resp.lo_ra_wan.session_start_time #=> Time
    #   resp.lo_ra_wan.session_timeout #=> Integer
    #
    # @overload get_multicast_group_session(params = {})
    # @param [Hash] params ({})
    def get_multicast_group_session(params = {}, options = {})
      req = build_request(:get_multicast_group_session, params)
      req.send_request(options)
    end

    # Get NetworkAnalyzer configuration.
    #
    # @option params [required, String] :configuration_name
    #   NetworkAnalyzer configuration name.
    #
    # @return [Types::GetNetworkAnalyzerConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkAnalyzerConfigurationResponse#trace_content #trace_content} => Types::TraceContent
    #   * {Types::GetNetworkAnalyzerConfigurationResponse#wireless_devices #wireless_devices} => Array&lt;String&gt;
    #   * {Types::GetNetworkAnalyzerConfigurationResponse#wireless_gateways #wireless_gateways} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_analyzer_configuration({
    #     configuration_name: "NetworkAnalyzerConfigurationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trace_content.wireless_device_frame_info #=> String, one of "ENABLED", "DISABLED"
    #   resp.trace_content.log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #   resp.wireless_devices #=> Array
    #   resp.wireless_devices[0] #=> String
    #   resp.wireless_gateways #=> Array
    #   resp.wireless_gateways[0] #=> String
    #
    # @overload get_network_analyzer_configuration(params = {})
    # @param [Hash] params ({})
    def get_network_analyzer_configuration(params = {}, options = {})
      req = build_request(:get_network_analyzer_configuration, params)
      req.send_request(options)
    end

    # Gets information about a partner account. If `PartnerAccountId` and
    # `PartnerType` are `null`, returns all partner accounts.
    #
    # @option params [required, String] :partner_account_id
    #   The partner account ID to disassociate from the AWS account.
    #
    # @option params [required, String] :partner_type
    #   The partner type.
    #
    # @return [Types::GetPartnerAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPartnerAccountResponse#sidewalk #sidewalk} => Types::SidewalkAccountInfoWithFingerprint
    #   * {Types::GetPartnerAccountResponse#account_linked #account_linked} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partner_account({
    #     partner_account_id: "PartnerAccountId", # required
    #     partner_type: "Sidewalk", # required, accepts Sidewalk
    #   })
    #
    # @example Response structure
    #
    #   resp.sidewalk.amazon_id #=> String
    #   resp.sidewalk.fingerprint #=> String
    #   resp.sidewalk.arn #=> String
    #   resp.account_linked #=> Boolean
    #
    # @overload get_partner_account(params = {})
    # @param [Hash] params ({})
    def get_partner_account(params = {}, options = {})
      req = build_request(:get_partner_account, params)
      req.send_request(options)
    end

    # Get the event configuration for a particular resource identifier.
    #
    # @option params [required, String] :identifier
    #   Resource identifier to opt in for event messaging.
    #
    # @option params [required, String] :identifier_type
    #   Identifier type of the particular resource identifier for event
    #   configuration.
    #
    # @option params [String] :partner_type
    #   Partner type of the resource if the identifier type is
    #   PartnerAccountId.
    #
    # @return [Types::GetResourceEventConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceEventConfigurationResponse#device_registration_state #device_registration_state} => Types::DeviceRegistrationStateEventConfiguration
    #   * {Types::GetResourceEventConfigurationResponse#proximity #proximity} => Types::ProximityEventConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_event_configuration({
    #     identifier: "Identifier", # required
    #     identifier_type: "PartnerAccountId", # required, accepts PartnerAccountId
    #     partner_type: "Sidewalk", # accepts Sidewalk
    #   })
    #
    # @example Response structure
    #
    #   resp.device_registration_state.sidewalk.amazon_id_event_topic #=> String, one of "Enabled", "Disabled"
    #   resp.proximity.sidewalk.amazon_id_event_topic #=> String, one of "Enabled", "Disabled"
    #
    # @overload get_resource_event_configuration(params = {})
    # @param [Hash] params ({})
    def get_resource_event_configuration(params = {}, options = {})
      req = build_request(:get_resource_event_configuration, params)
      req.send_request(options)
    end

    # Fetches the log-level override, if any, for a given resource-ID and
    # resource-type. It can be used for a wireless device or a wireless
    # gateway.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier of the resource. For a Wireless Device, it is the
    #   wireless device ID. For a wireless gateway, it is the wireless gateway
    #   ID.
    #
    # @option params [required, String] :resource_type
    #   The type of the resource, which can be `WirelessDevice` or
    #   `WirelessGateway`.
    #
    # @return [Types::GetResourceLogLevelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceLogLevelResponse#log_level #log_level} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_log_level({
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_type: "ResourceType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_level #=> String, one of "INFO", "ERROR", "DISABLED"
    #
    # @overload get_resource_log_level(params = {})
    # @param [Hash] params ({})
    def get_resource_log_level(params = {}, options = {})
      req = build_request(:get_resource_log_level, params)
      req.send_request(options)
    end

    # Gets the account-specific endpoint for Configuration and Update Server
    # (CUPS) protocol or LoRaWAN Network Server (LNS) connections.
    #
    # @option params [String] :service_type
    #   The service type for which to get endpoint information about. Can be
    #   `CUPS` for the Configuration and Update Server endpoint, or `LNS` for
    #   the LoRaWAN Network Server endpoint.
    #
    # @return [Types::GetServiceEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceEndpointResponse#service_type #service_type} => String
    #   * {Types::GetServiceEndpointResponse#service_endpoint #service_endpoint} => String
    #   * {Types::GetServiceEndpointResponse#server_trust #server_trust} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_endpoint({
    #     service_type: "CUPS", # accepts CUPS, LNS
    #   })
    #
    # @example Response structure
    #
    #   resp.service_type #=> String, one of "CUPS", "LNS"
    #   resp.service_endpoint #=> String
    #   resp.server_trust #=> String
    #
    # @overload get_service_endpoint(params = {})
    # @param [Hash] params ({})
    def get_service_endpoint(params = {}, options = {})
      req = build_request(:get_service_endpoint, params)
      req.send_request(options)
    end

    # Gets information about a service profile.
    #
    # @option params [required, String] :id
    #   The ID of the resource to get.
    #
    # @return [Types::GetServiceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceProfileResponse#arn #arn} => String
    #   * {Types::GetServiceProfileResponse#name #name} => String
    #   * {Types::GetServiceProfileResponse#id #id} => String
    #   * {Types::GetServiceProfileResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANGetServiceProfileInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_profile({
    #     id: "ServiceProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.lo_ra_wan.ul_rate #=> Integer
    #   resp.lo_ra_wan.ul_bucket_size #=> Integer
    #   resp.lo_ra_wan.ul_rate_policy #=> String
    #   resp.lo_ra_wan.dl_rate #=> Integer
    #   resp.lo_ra_wan.dl_bucket_size #=> Integer
    #   resp.lo_ra_wan.dl_rate_policy #=> String
    #   resp.lo_ra_wan.add_gw_metadata #=> Boolean
    #   resp.lo_ra_wan.dev_status_req_freq #=> Integer
    #   resp.lo_ra_wan.report_dev_status_battery #=> Boolean
    #   resp.lo_ra_wan.report_dev_status_margin #=> Boolean
    #   resp.lo_ra_wan.dr_min #=> Integer
    #   resp.lo_ra_wan.dr_max #=> Integer
    #   resp.lo_ra_wan.channel_mask #=> String
    #   resp.lo_ra_wan.pr_allowed #=> Boolean
    #   resp.lo_ra_wan.hr_allowed #=> Boolean
    #   resp.lo_ra_wan.ra_allowed #=> Boolean
    #   resp.lo_ra_wan.nwk_geo_loc #=> Boolean
    #   resp.lo_ra_wan.target_per #=> Integer
    #   resp.lo_ra_wan.min_gw_diversity #=> Integer
    #
    # @overload get_service_profile(params = {})
    # @param [Hash] params ({})
    def get_service_profile(params = {}, options = {})
      req = build_request(:get_service_profile, params)
      req.send_request(options)
    end

    # Gets information about a wireless device.
    #
    # @option params [required, String] :identifier
    #   The identifier of the wireless device to get.
    #
    # @option params [required, String] :identifier_type
    #   The type of identifier used in `identifier`.
    #
    # @return [Types::GetWirelessDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessDeviceResponse#type #type} => String
    #   * {Types::GetWirelessDeviceResponse#name #name} => String
    #   * {Types::GetWirelessDeviceResponse#description #description} => String
    #   * {Types::GetWirelessDeviceResponse#destination_name #destination_name} => String
    #   * {Types::GetWirelessDeviceResponse#id #id} => String
    #   * {Types::GetWirelessDeviceResponse#arn #arn} => String
    #   * {Types::GetWirelessDeviceResponse#thing_name #thing_name} => String
    #   * {Types::GetWirelessDeviceResponse#thing_arn #thing_arn} => String
    #   * {Types::GetWirelessDeviceResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANDevice
    #   * {Types::GetWirelessDeviceResponse#sidewalk #sidewalk} => Types::SidewalkDevice
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_device({
    #     identifier: "Identifier", # required
    #     identifier_type: "WirelessDeviceId", # required, accepts WirelessDeviceId, DevEui, ThingName, SidewalkManufacturingSn
    #   })
    #
    # @example Response structure
    #
    #   resp.type #=> String, one of "Sidewalk", "LoRaWAN"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.destination_name #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.thing_name #=> String
    #   resp.thing_arn #=> String
    #   resp.lo_ra_wan.dev_eui #=> String
    #   resp.lo_ra_wan.device_profile_id #=> String
    #   resp.lo_ra_wan.service_profile_id #=> String
    #   resp.lo_ra_wan.otaa_v1_1.app_key #=> String
    #   resp.lo_ra_wan.otaa_v1_1.nwk_key #=> String
    #   resp.lo_ra_wan.otaa_v1_1.join_eui #=> String
    #   resp.lo_ra_wan.otaa_v1_0_x.app_key #=> String
    #   resp.lo_ra_wan.otaa_v1_0_x.app_eui #=> String
    #   resp.lo_ra_wan.otaa_v1_0_x.gen_app_key #=> String
    #   resp.lo_ra_wan.abp_v1_1.dev_addr #=> String
    #   resp.lo_ra_wan.abp_v1_1.session_keys.f_nwk_s_int_key #=> String
    #   resp.lo_ra_wan.abp_v1_1.session_keys.s_nwk_s_int_key #=> String
    #   resp.lo_ra_wan.abp_v1_1.session_keys.nwk_s_enc_key #=> String
    #   resp.lo_ra_wan.abp_v1_1.session_keys.app_s_key #=> String
    #   resp.lo_ra_wan.abp_v1_0_x.dev_addr #=> String
    #   resp.lo_ra_wan.abp_v1_0_x.session_keys.nwk_s_key #=> String
    #   resp.lo_ra_wan.abp_v1_0_x.session_keys.app_s_key #=> String
    #   resp.lo_ra_wan.f_ports.fuota #=> Integer
    #   resp.lo_ra_wan.f_ports.multicast #=> Integer
    #   resp.lo_ra_wan.f_ports.clock_sync #=> Integer
    #   resp.sidewalk.amazon_id #=> String
    #   resp.sidewalk.sidewalk_id #=> String
    #   resp.sidewalk.sidewalk_manufacturing_sn #=> String
    #   resp.sidewalk.device_certificates #=> Array
    #   resp.sidewalk.device_certificates[0].signing_alg #=> String, one of "Ed25519", "P256r1"
    #   resp.sidewalk.device_certificates[0].value #=> String
    #
    # @overload get_wireless_device(params = {})
    # @param [Hash] params ({})
    def get_wireless_device(params = {}, options = {})
      req = build_request(:get_wireless_device, params)
      req.send_request(options)
    end

    # Gets operating information about a wireless device.
    #
    # @option params [required, String] :wireless_device_id
    #   The ID of the wireless device for which to get the data.
    #
    # @return [Types::GetWirelessDeviceStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessDeviceStatisticsResponse#wireless_device_id #wireless_device_id} => String
    #   * {Types::GetWirelessDeviceStatisticsResponse#last_uplink_received_at #last_uplink_received_at} => String
    #   * {Types::GetWirelessDeviceStatisticsResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANDeviceMetadata
    #   * {Types::GetWirelessDeviceStatisticsResponse#sidewalk #sidewalk} => Types::SidewalkDeviceMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_device_statistics({
    #     wireless_device_id: "WirelessDeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.wireless_device_id #=> String
    #   resp.last_uplink_received_at #=> String
    #   resp.lo_ra_wan.dev_eui #=> String
    #   resp.lo_ra_wan.f_port #=> Integer
    #   resp.lo_ra_wan.data_rate #=> Integer
    #   resp.lo_ra_wan.frequency #=> Integer
    #   resp.lo_ra_wan.timestamp #=> String
    #   resp.lo_ra_wan.gateways #=> Array
    #   resp.lo_ra_wan.gateways[0].gateway_eui #=> String
    #   resp.lo_ra_wan.gateways[0].snr #=> Float
    #   resp.lo_ra_wan.gateways[0].rssi #=> Float
    #   resp.sidewalk.rssi #=> Integer
    #   resp.sidewalk.battery_level #=> String, one of "normal", "low", "critical"
    #   resp.sidewalk.event #=> String, one of "discovered", "lost", "ack", "nack", "passthrough"
    #   resp.sidewalk.device_state #=> String, one of "Provisioned", "RegisteredNotSeen", "RegisteredReachable", "RegisteredUnreachable"
    #
    # @overload get_wireless_device_statistics(params = {})
    # @param [Hash] params ({})
    def get_wireless_device_statistics(params = {}, options = {})
      req = build_request(:get_wireless_device_statistics, params)
      req.send_request(options)
    end

    # Gets information about a wireless gateway.
    #
    # @option params [required, String] :identifier
    #   The identifier of the wireless gateway to get.
    #
    # @option params [required, String] :identifier_type
    #   The type of identifier used in `identifier`.
    #
    # @return [Types::GetWirelessGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessGatewayResponse#name #name} => String
    #   * {Types::GetWirelessGatewayResponse#id #id} => String
    #   * {Types::GetWirelessGatewayResponse#description #description} => String
    #   * {Types::GetWirelessGatewayResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANGateway
    #   * {Types::GetWirelessGatewayResponse#arn #arn} => String
    #   * {Types::GetWirelessGatewayResponse#thing_name #thing_name} => String
    #   * {Types::GetWirelessGatewayResponse#thing_arn #thing_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway({
    #     identifier: "Identifier", # required
    #     identifier_type: "GatewayEui", # required, accepts GatewayEui, WirelessGatewayId, ThingName
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.lo_ra_wan.gateway_eui #=> String
    #   resp.lo_ra_wan.rf_region #=> String
    #   resp.lo_ra_wan.join_eui_filters #=> Array
    #   resp.lo_ra_wan.join_eui_filters[0] #=> Array
    #   resp.lo_ra_wan.join_eui_filters[0][0] #=> String
    #   resp.lo_ra_wan.net_id_filters #=> Array
    #   resp.lo_ra_wan.net_id_filters[0] #=> String
    #   resp.lo_ra_wan.sub_bands #=> Array
    #   resp.lo_ra_wan.sub_bands[0] #=> Integer
    #   resp.arn #=> String
    #   resp.thing_name #=> String
    #   resp.thing_arn #=> String
    #
    # @overload get_wireless_gateway(params = {})
    # @param [Hash] params ({})
    def get_wireless_gateway(params = {}, options = {})
      req = build_request(:get_wireless_gateway, params)
      req.send_request(options)
    end

    # Gets the ID of the certificate that is currently associated with a
    # wireless gateway.
    #
    # @option params [required, String] :id
    #   The ID of the resource to get.
    #
    # @return [Types::GetWirelessGatewayCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessGatewayCertificateResponse#iot_certificate_id #iot_certificate_id} => String
    #   * {Types::GetWirelessGatewayCertificateResponse#lo_ra_wan_network_server_certificate_id #lo_ra_wan_network_server_certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_certificate({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.iot_certificate_id #=> String
    #   resp.lo_ra_wan_network_server_certificate_id #=> String
    #
    # @overload get_wireless_gateway_certificate(params = {})
    # @param [Hash] params ({})
    def get_wireless_gateway_certificate(params = {}, options = {})
      req = build_request(:get_wireless_gateway_certificate, params)
      req.send_request(options)
    end

    # Gets the firmware version and other information about a wireless
    # gateway.
    #
    # @option params [required, String] :id
    #   The ID of the resource to get.
    #
    # @return [Types::GetWirelessGatewayFirmwareInformationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessGatewayFirmwareInformationResponse#lo_ra_wan #lo_ra_wan} => Types::LoRaWANGatewayCurrentVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_firmware_information({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lo_ra_wan.current_version.package_version #=> String
    #   resp.lo_ra_wan.current_version.model #=> String
    #   resp.lo_ra_wan.current_version.station #=> String
    #
    # @overload get_wireless_gateway_firmware_information(params = {})
    # @param [Hash] params ({})
    def get_wireless_gateway_firmware_information(params = {}, options = {})
      req = build_request(:get_wireless_gateway_firmware_information, params)
      req.send_request(options)
    end

    # Gets operating information about a wireless gateway.
    #
    # @option params [required, String] :wireless_gateway_id
    #   The ID of the wireless gateway for which to get the data.
    #
    # @return [Types::GetWirelessGatewayStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessGatewayStatisticsResponse#wireless_gateway_id #wireless_gateway_id} => String
    #   * {Types::GetWirelessGatewayStatisticsResponse#last_uplink_received_at #last_uplink_received_at} => String
    #   * {Types::GetWirelessGatewayStatisticsResponse#connection_status #connection_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_statistics({
    #     wireless_gateway_id: "WirelessGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.wireless_gateway_id #=> String
    #   resp.last_uplink_received_at #=> String
    #   resp.connection_status #=> String, one of "Connected", "Disconnected"
    #
    # @overload get_wireless_gateway_statistics(params = {})
    # @param [Hash] params ({})
    def get_wireless_gateway_statistics(params = {}, options = {})
      req = build_request(:get_wireless_gateway_statistics, params)
      req.send_request(options)
    end

    # Gets information about a wireless gateway task.
    #
    # @option params [required, String] :id
    #   The ID of the resource to get.
    #
    # @return [Types::GetWirelessGatewayTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessGatewayTaskResponse#wireless_gateway_id #wireless_gateway_id} => String
    #   * {Types::GetWirelessGatewayTaskResponse#wireless_gateway_task_definition_id #wireless_gateway_task_definition_id} => String
    #   * {Types::GetWirelessGatewayTaskResponse#last_uplink_received_at #last_uplink_received_at} => String
    #   * {Types::GetWirelessGatewayTaskResponse#task_created_at #task_created_at} => String
    #   * {Types::GetWirelessGatewayTaskResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_task({
    #     id: "WirelessGatewayId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.wireless_gateway_id #=> String
    #   resp.wireless_gateway_task_definition_id #=> String
    #   resp.last_uplink_received_at #=> String
    #   resp.task_created_at #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"
    #
    # @overload get_wireless_gateway_task(params = {})
    # @param [Hash] params ({})
    def get_wireless_gateway_task(params = {}, options = {})
      req = build_request(:get_wireless_gateway_task, params)
      req.send_request(options)
    end

    # Gets information about a wireless gateway task definition.
    #
    # @option params [required, String] :id
    #   The ID of the resource to get.
    #
    # @return [Types::GetWirelessGatewayTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWirelessGatewayTaskDefinitionResponse#auto_create_tasks #auto_create_tasks} => Boolean
    #   * {Types::GetWirelessGatewayTaskDefinitionResponse#name #name} => String
    #   * {Types::GetWirelessGatewayTaskDefinitionResponse#update #update} => Types::UpdateWirelessGatewayTaskCreate
    #   * {Types::GetWirelessGatewayTaskDefinitionResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_task_definition({
    #     id: "WirelessGatewayTaskDefinitionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_create_tasks #=> Boolean
    #   resp.name #=> String
    #   resp.update.update_data_source #=> String
    #   resp.update.update_data_role #=> String
    #   resp.update.lo_ra_wan.update_signature #=> String
    #   resp.update.lo_ra_wan.sig_key_crc #=> Integer
    #   resp.update.lo_ra_wan.current_version.package_version #=> String
    #   resp.update.lo_ra_wan.current_version.model #=> String
    #   resp.update.lo_ra_wan.current_version.station #=> String
    #   resp.update.lo_ra_wan.update_version.package_version #=> String
    #   resp.update.lo_ra_wan.update_version.model #=> String
    #   resp.update.lo_ra_wan.update_version.station #=> String
    #   resp.arn #=> String
    #
    # @overload get_wireless_gateway_task_definition(params = {})
    # @param [Hash] params ({})
    def get_wireless_gateway_task_definition(params = {}, options = {})
      req = build_request(:get_wireless_gateway_task_definition, params)
      req.send_request(options)
    end

    # Lists the destinations registered to your AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @return [Types::ListDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDestinationsResponse#next_token #next_token} => String
    #   * {Types::ListDestinationsResponse#destination_list #destination_list} => Array&lt;Types::Destinations&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_destinations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.destination_list #=> Array
    #   resp.destination_list[0].arn #=> String
    #   resp.destination_list[0].name #=> String
    #   resp.destination_list[0].expression_type #=> String, one of "RuleName", "MqttTopic"
    #   resp.destination_list[0].expression #=> String
    #   resp.destination_list[0].description #=> String
    #   resp.destination_list[0].role_arn #=> String
    #
    # @overload list_destinations(params = {})
    # @param [Hash] params ({})
    def list_destinations(params = {}, options = {})
      req = build_request(:list_destinations, params)
      req.send_request(options)
    end

    # Lists the device profiles registered to your AWS account.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListDeviceProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceProfilesResponse#next_token #next_token} => String
    #   * {Types::ListDeviceProfilesResponse#device_profile_list #device_profile_list} => Array&lt;Types::DeviceProfile&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.device_profile_list #=> Array
    #   resp.device_profile_list[0].arn #=> String
    #   resp.device_profile_list[0].name #=> String
    #   resp.device_profile_list[0].id #=> String
    #
    # @overload list_device_profiles(params = {})
    # @param [Hash] params ({})
    def list_device_profiles(params = {}, options = {})
      req = build_request(:list_device_profiles, params)
      req.send_request(options)
    end

    # Lists the FUOTA tasks registered to your AWS account.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListFuotaTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFuotaTasksResponse#next_token #next_token} => String
    #   * {Types::ListFuotaTasksResponse#fuota_task_list #fuota_task_list} => Array&lt;Types::FuotaTask&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fuota_tasks({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.fuota_task_list #=> Array
    #   resp.fuota_task_list[0].id #=> String
    #   resp.fuota_task_list[0].arn #=> String
    #   resp.fuota_task_list[0].name #=> String
    #
    # @overload list_fuota_tasks(params = {})
    # @param [Hash] params ({})
    def list_fuota_tasks(params = {}, options = {})
      req = build_request(:list_fuota_tasks, params)
      req.send_request(options)
    end

    # Lists the multicast groups registered to your AWS account.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListMulticastGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMulticastGroupsResponse#next_token #next_token} => String
    #   * {Types::ListMulticastGroupsResponse#multicast_group_list #multicast_group_list} => Array&lt;Types::MulticastGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multicast_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.multicast_group_list #=> Array
    #   resp.multicast_group_list[0].id #=> String
    #   resp.multicast_group_list[0].arn #=> String
    #   resp.multicast_group_list[0].name #=> String
    #
    # @overload list_multicast_groups(params = {})
    # @param [Hash] params ({})
    def list_multicast_groups(params = {}, options = {})
      req = build_request(:list_multicast_groups, params)
      req.send_request(options)
    end

    # List all multicast groups associated with a fuota task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListMulticastGroupsByFuotaTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMulticastGroupsByFuotaTaskResponse#next_token #next_token} => String
    #   * {Types::ListMulticastGroupsByFuotaTaskResponse#multicast_group_list #multicast_group_list} => Array&lt;Types::MulticastGroupByFuotaTask&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multicast_groups_by_fuota_task({
    #     id: "FuotaTaskId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.multicast_group_list #=> Array
    #   resp.multicast_group_list[0].id #=> String
    #
    # @overload list_multicast_groups_by_fuota_task(params = {})
    # @param [Hash] params ({})
    def list_multicast_groups_by_fuota_task(params = {}, options = {})
      req = build_request(:list_multicast_groups_by_fuota_task, params)
      req.send_request(options)
    end

    # Lists the partner accounts associated with your AWS account.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListPartnerAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPartnerAccountsResponse#next_token #next_token} => String
    #   * {Types::ListPartnerAccountsResponse#sidewalk #sidewalk} => Array&lt;Types::SidewalkAccountInfoWithFingerprint&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partner_accounts({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sidewalk #=> Array
    #   resp.sidewalk[0].amazon_id #=> String
    #   resp.sidewalk[0].fingerprint #=> String
    #   resp.sidewalk[0].arn #=> String
    #
    # @overload list_partner_accounts(params = {})
    # @param [Hash] params ({})
    def list_partner_accounts(params = {}, options = {})
      req = build_request(:list_partner_accounts, params)
      req.send_request(options)
    end

    # The operation to list queued messages.
    #
    # @option params [required, String] :id
    #   Id of a given wireless device which the downlink packets are targeted
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :wireless_device_type
    #   The wireless device type, it is either Sidewalk or LoRaWAN.
    #
    # @return [Types::ListQueuedMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuedMessagesResponse#next_token #next_token} => String
    #   * {Types::ListQueuedMessagesResponse#downlink_queue_messages_list #downlink_queue_messages_list} => Array&lt;Types::DownlinkQueueMessage&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queued_messages({
    #     id: "WirelessDeviceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     wireless_device_type: "Sidewalk", # accepts Sidewalk, LoRaWAN
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.downlink_queue_messages_list #=> Array
    #   resp.downlink_queue_messages_list[0].message_id #=> String
    #   resp.downlink_queue_messages_list[0].transmit_mode #=> Integer
    #   resp.downlink_queue_messages_list[0].received_at #=> String
    #   resp.downlink_queue_messages_list[0].lo_ra_wan.f_port #=> Integer
    #
    # @overload list_queued_messages(params = {})
    # @param [Hash] params ({})
    def list_queued_messages(params = {}, options = {})
      req = build_request(:list_queued_messages, params)
      req.send_request(options)
    end

    # Lists the service profiles registered to your AWS account.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListServiceProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceProfilesResponse#next_token #next_token} => String
    #   * {Types::ListServiceProfilesResponse#service_profile_list #service_profile_list} => Array&lt;Types::ServiceProfile&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.service_profile_list #=> Array
    #   resp.service_profile_list[0].arn #=> String
    #   resp.service_profile_list[0].name #=> String
    #   resp.service_profile_list[0].id #=> String
    #
    # @overload list_service_profiles(params = {})
    # @param [Hash] params ({})
    def list_service_profiles(params = {}, options = {})
      req = build_request(:list_service_profiles, params)
      req.send_request(options)
    end

    # Lists the tags (metadata) you have assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to list tags.
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
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the wireless devices registered to your AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [String] :destination_name
    #   A filter to list only the wireless devices that use this destination.
    #
    # @option params [String] :device_profile_id
    #   A filter to list only the wireless devices that use this device
    #   profile.
    #
    # @option params [String] :service_profile_id
    #   A filter to list only the wireless devices that use this service
    #   profile.
    #
    # @option params [String] :wireless_device_type
    #   A filter to list only the wireless devices that use this wireless
    #   device type.
    #
    # @option params [String] :fuota_task_id
    #   The ID of a FUOTA task.
    #
    # @option params [String] :multicast_group_id
    #   The ID of the multicast group.
    #
    # @return [Types::ListWirelessDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWirelessDevicesResponse#next_token #next_token} => String
    #   * {Types::ListWirelessDevicesResponse#wireless_device_list #wireless_device_list} => Array&lt;Types::WirelessDeviceStatistics&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_wireless_devices({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     destination_name: "DestinationName",
    #     device_profile_id: "DeviceProfileId",
    #     service_profile_id: "ServiceProfileId",
    #     wireless_device_type: "Sidewalk", # accepts Sidewalk, LoRaWAN
    #     fuota_task_id: "FuotaTaskId",
    #     multicast_group_id: "MulticastGroupId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.wireless_device_list #=> Array
    #   resp.wireless_device_list[0].arn #=> String
    #   resp.wireless_device_list[0].id #=> String
    #   resp.wireless_device_list[0].type #=> String, one of "Sidewalk", "LoRaWAN"
    #   resp.wireless_device_list[0].name #=> String
    #   resp.wireless_device_list[0].destination_name #=> String
    #   resp.wireless_device_list[0].last_uplink_received_at #=> String
    #   resp.wireless_device_list[0].lo_ra_wan.dev_eui #=> String
    #   resp.wireless_device_list[0].sidewalk.amazon_id #=> String
    #   resp.wireless_device_list[0].sidewalk.sidewalk_id #=> String
    #   resp.wireless_device_list[0].sidewalk.sidewalk_manufacturing_sn #=> String
    #   resp.wireless_device_list[0].sidewalk.device_certificates #=> Array
    #   resp.wireless_device_list[0].sidewalk.device_certificates[0].signing_alg #=> String, one of "Ed25519", "P256r1"
    #   resp.wireless_device_list[0].sidewalk.device_certificates[0].value #=> String
    #   resp.wireless_device_list[0].fuota_device_status #=> String, one of "Initial", "Package_Not_Supported", "FragAlgo_unsupported", "Not_enough_memory", "FragIndex_unsupported", "Wrong_descriptor", "SessionCnt_replay", "MissingFrag", "MemoryError", "MICError", "Successful"
    #   resp.wireless_device_list[0].multicast_device_status #=> String
    #   resp.wireless_device_list[0].mc_group_id #=> Integer
    #
    # @overload list_wireless_devices(params = {})
    # @param [Hash] params ({})
    def list_wireless_devices(params = {}, options = {})
      req = build_request(:list_wireless_devices, params)
      req.send_request(options)
    end

    # List the wireless gateway tasks definitions registered to your AWS
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [String] :task_definition_type
    #   A filter to list only the wireless gateway task definitions that use
    #   this task definition type.
    #
    # @return [Types::ListWirelessGatewayTaskDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWirelessGatewayTaskDefinitionsResponse#next_token #next_token} => String
    #   * {Types::ListWirelessGatewayTaskDefinitionsResponse#task_definitions #task_definitions} => Array&lt;Types::UpdateWirelessGatewayTaskEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_wireless_gateway_task_definitions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     task_definition_type: "UPDATE", # accepts UPDATE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.task_definitions #=> Array
    #   resp.task_definitions[0].id #=> String
    #   resp.task_definitions[0].lo_ra_wan.current_version.package_version #=> String
    #   resp.task_definitions[0].lo_ra_wan.current_version.model #=> String
    #   resp.task_definitions[0].lo_ra_wan.current_version.station #=> String
    #   resp.task_definitions[0].lo_ra_wan.update_version.package_version #=> String
    #   resp.task_definitions[0].lo_ra_wan.update_version.model #=> String
    #   resp.task_definitions[0].lo_ra_wan.update_version.station #=> String
    #   resp.task_definitions[0].arn #=> String
    #
    # @overload list_wireless_gateway_task_definitions(params = {})
    # @param [Hash] params ({})
    def list_wireless_gateway_task_definitions(params = {}, options = {})
      req = build_request(:list_wireless_gateway_task_definitions, params)
      req.send_request(options)
    end

    # Lists the wireless gateways registered to your AWS account.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListWirelessGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWirelessGatewaysResponse#next_token #next_token} => String
    #   * {Types::ListWirelessGatewaysResponse#wireless_gateway_list #wireless_gateway_list} => Array&lt;Types::WirelessGatewayStatistics&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_wireless_gateways({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.wireless_gateway_list #=> Array
    #   resp.wireless_gateway_list[0].arn #=> String
    #   resp.wireless_gateway_list[0].id #=> String
    #   resp.wireless_gateway_list[0].name #=> String
    #   resp.wireless_gateway_list[0].description #=> String
    #   resp.wireless_gateway_list[0].lo_ra_wan.gateway_eui #=> String
    #   resp.wireless_gateway_list[0].lo_ra_wan.rf_region #=> String
    #   resp.wireless_gateway_list[0].lo_ra_wan.join_eui_filters #=> Array
    #   resp.wireless_gateway_list[0].lo_ra_wan.join_eui_filters[0] #=> Array
    #   resp.wireless_gateway_list[0].lo_ra_wan.join_eui_filters[0][0] #=> String
    #   resp.wireless_gateway_list[0].lo_ra_wan.net_id_filters #=> Array
    #   resp.wireless_gateway_list[0].lo_ra_wan.net_id_filters[0] #=> String
    #   resp.wireless_gateway_list[0].lo_ra_wan.sub_bands #=> Array
    #   resp.wireless_gateway_list[0].lo_ra_wan.sub_bands[0] #=> Integer
    #   resp.wireless_gateway_list[0].last_uplink_received_at #=> String
    #
    # @overload list_wireless_gateways(params = {})
    # @param [Hash] params ({})
    def list_wireless_gateways(params = {}, options = {})
      req = build_request(:list_wireless_gateways, params)
      req.send_request(options)
    end

    # Sets the log-level override for a resource-ID and resource-type. This
    # option can be specified for a wireless gateway or a wireless device. A
    # limit of 200 log level override can be set per account.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier of the resource. For a Wireless Device, it is the
    #   wireless device ID. For a wireless gateway, it is the wireless gateway
    #   ID.
    #
    # @option params [required, String] :resource_type
    #   The type of the resource, which can be `WirelessDevice` or
    #   `WirelessGateway`.
    #
    # @option params [required, String] :log_level
    #   The log level for a log message.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_log_level({
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_type: "ResourceType", # required
    #     log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #   })
    #
    # @overload put_resource_log_level(params = {})
    # @param [Hash] params ({})
    def put_resource_log_level(params = {}, options = {})
      req = build_request(:put_resource_log_level, params)
      req.send_request(options)
    end

    # Removes the log-level overrides for all resources; both wireless
    # devices and wireless gateways.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @overload reset_all_resource_log_levels(params = {})
    # @param [Hash] params ({})
    def reset_all_resource_log_levels(params = {}, options = {})
      req = build_request(:reset_all_resource_log_levels, params)
      req.send_request(options)
    end

    # Removes the log-level override, if any, for a specific resource-ID and
    # resource-type. It can be used for a wireless device or a wireless
    # gateway.
    #
    # @option params [required, String] :resource_identifier
    #   The identifier of the resource. For a Wireless Device, it is the
    #   wireless device ID. For a wireless gateway, it is the wireless gateway
    #   ID.
    #
    # @option params [required, String] :resource_type
    #   The type of the resource, which can be `WirelessDevice` or
    #   `WirelessGateway`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_resource_log_level({
    #     resource_identifier: "ResourceIdentifier", # required
    #     resource_type: "ResourceType", # required
    #   })
    #
    # @overload reset_resource_log_level(params = {})
    # @param [Hash] params ({})
    def reset_resource_log_level(params = {}, options = {})
      req = build_request(:reset_resource_log_level, params)
      req.send_request(options)
    end

    # Sends the specified data to a multicast group.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [required, String] :payload_data
    #   The binary to be sent to the end device, encoded in base64.
    #
    # @option params [required, Types::MulticastWirelessMetadata] :wireless_metadata
    #   Wireless metadata that is to be sent to multicast group.
    #
    # @return [Types::SendDataToMulticastGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendDataToMulticastGroupResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_data_to_multicast_group({
    #     id: "MulticastGroupId", # required
    #     payload_data: "PayloadData", # required
    #     wireless_metadata: { # required
    #       lo_ra_wan: {
    #         f_port: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @overload send_data_to_multicast_group(params = {})
    # @param [Hash] params ({})
    def send_data_to_multicast_group(params = {}, options = {})
      req = build_request(:send_data_to_multicast_group, params)
      req.send_request(options)
    end

    # Sends a decrypted application data frame to a device.
    #
    # @option params [required, String] :id
    #   The ID of the wireless device to receive the data.
    #
    # @option params [required, Integer] :transmit_mode
    #   The transmit mode to use to send data to the wireless device. Can be:
    #   `0` for UM (unacknowledge mode) or `1` for AM (acknowledge mode).
    #
    # @option params [required, String] :payload_data
    #   The binary to be sent to the end device, encoded in base64.
    #
    # @option params [Types::WirelessMetadata] :wireless_metadata
    #   Metadata about the message request.
    #
    # @return [Types::SendDataToWirelessDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendDataToWirelessDeviceResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_data_to_wireless_device({
    #     id: "WirelessDeviceId", # required
    #     transmit_mode: 1, # required
    #     payload_data: "PayloadData", # required
    #     wireless_metadata: {
    #       lo_ra_wan: {
    #         f_port: 1,
    #       },
    #       sidewalk: {
    #         seq: 1,
    #         message_type: "CUSTOM_COMMAND_ID_NOTIFY", # accepts CUSTOM_COMMAND_ID_NOTIFY, CUSTOM_COMMAND_ID_GET, CUSTOM_COMMAND_ID_SET, CUSTOM_COMMAND_ID_RESP
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @overload send_data_to_wireless_device(params = {})
    # @param [Hash] params ({})
    def send_data_to_wireless_device(params = {}, options = {})
      req = build_request(:send_data_to_wireless_device, params)
      req.send_request(options)
    end

    # Starts a bulk association of all qualifying wireless devices with a
    # multicast group.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [String] :query_string
    #   Query string used to search for wireless devices as part of the bulk
    #   associate and disassociate process.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bulk_associate_wireless_device_with_multicast_group({
    #     id: "MulticastGroupId", # required
    #     query_string: "QueryString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload start_bulk_associate_wireless_device_with_multicast_group(params = {})
    # @param [Hash] params ({})
    def start_bulk_associate_wireless_device_with_multicast_group(params = {}, options = {})
      req = build_request(:start_bulk_associate_wireless_device_with_multicast_group, params)
      req.send_request(options)
    end

    # Starts a bulk disassociatin of all qualifying wireless devices from a
    # multicast group.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [String] :query_string
    #   Query string used to search for wireless devices as part of the bulk
    #   associate and disassociate process.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bulk_disassociate_wireless_device_from_multicast_group({
    #     id: "MulticastGroupId", # required
    #     query_string: "QueryString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload start_bulk_disassociate_wireless_device_from_multicast_group(params = {})
    # @param [Hash] params ({})
    def start_bulk_disassociate_wireless_device_from_multicast_group(params = {}, options = {})
      req = build_request(:start_bulk_disassociate_wireless_device_from_multicast_group, params)
      req.send_request(options)
    end

    # Starts a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [Types::LoRaWANStartFuotaTask] :lo_ra_wan
    #   The LoRaWAN information used to start a FUOTA task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fuota_task({
    #     id: "FuotaTaskId", # required
    #     lo_ra_wan: {
    #       start_time: Time.now,
    #     },
    #   })
    #
    # @overload start_fuota_task(params = {})
    # @param [Hash] params ({})
    def start_fuota_task(params = {}, options = {})
      req = build_request(:start_fuota_task, params)
      req.send_request(options)
    end

    # Starts a multicast group session.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [required, Types::LoRaWANMulticastSession] :lo_ra_wan
    #   The LoRaWAN information used with the multicast session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_multicast_group_session({
    #     id: "MulticastGroupId", # required
    #     lo_ra_wan: { # required
    #       dl_dr: 1,
    #       dl_freq: 1,
    #       session_start_time: Time.now,
    #       session_timeout: 1,
    #     },
    #   })
    #
    # @overload start_multicast_group_session(params = {})
    # @param [Hash] params ({})
    def start_multicast_group_session(params = {}, options = {})
      req = build_request(:start_multicast_group_session, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to add tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Adds to or modifies the tags of the given resource. Tags are metadata
    #   that you can use to manage a resource.
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
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Simulates a provisioned device by sending an uplink data payload of
    # `Hello`.
    #
    # @option params [required, String] :id
    #   The ID of the wireless device to test.
    #
    # @return [Types::TestWirelessDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestWirelessDeviceResponse#result #result} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_wireless_device({
    #     id: "WirelessDeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> String
    #
    # @overload test_wireless_device(params = {})
    # @param [Hash] params ({})
    def test_wireless_device(params = {}, options = {})
      req = build_request(:test_wireless_device, params)
      req.send_request(options)
    end

    # Removes one or more tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys of the tags to remove from the resource.
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
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates properties of a destination.
    #
    # @option params [required, String] :name
    #   The new name of the resource.
    #
    # @option params [String] :expression_type
    #   The type of value in `Expression`.
    #
    # @option params [String] :expression
    #   The new rule name or topic rule to send messages to.
    #
    # @option params [String] :description
    #   A new description of the resource.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM Role that authorizes the destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination({
    #     name: "DestinationName", # required
    #     expression_type: "RuleName", # accepts RuleName, MqttTopic
    #     expression: "Expression",
    #     description: "Description",
    #     role_arn: "RoleArn",
    #   })
    #
    # @overload update_destination(params = {})
    # @param [Hash] params ({})
    def update_destination(params = {}, options = {})
      req = build_request(:update_destination, params)
      req.send_request(options)
    end

    # Updates properties of a FUOTA task.
    #
    # @option params [required, String] :id
    #   The ID of a FUOTA task.
    #
    # @option params [String] :name
    #   The name of a FUOTA task.
    #
    # @option params [String] :description
    #   The description of the new resource.
    #
    # @option params [Types::LoRaWANFuotaTask] :lo_ra_wan
    #   The LoRaWAN information used with a FUOTA task.
    #
    # @option params [String] :firmware_update_image
    #   The S3 URI points to a firmware update image that is to be used with a
    #   FUOTA task.
    #
    # @option params [String] :firmware_update_role
    #   The firmware update role that is to be used with a FUOTA task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fuota_task({
    #     id: "FuotaTaskId", # required
    #     name: "FuotaTaskName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #     },
    #     firmware_update_image: "FirmwareUpdateImage",
    #     firmware_update_role: "FirmwareUpdateRole",
    #   })
    #
    # @overload update_fuota_task(params = {})
    # @param [Hash] params ({})
    def update_fuota_task(params = {}, options = {})
      req = build_request(:update_fuota_task, params)
      req.send_request(options)
    end

    # Set default log level, or log levels by resource types. This can be
    # for wireless device log options or wireless gateways log options and
    # is used to control the log messages that'll be displayed in
    # CloudWatch.
    #
    # @option params [String] :default_log_level
    #   The log level for a log message.
    #
    # @option params [Array<Types::WirelessDeviceLogOption>] :wireless_device_log_options
    #   The list of wireless device log options.
    #
    # @option params [Array<Types::WirelessGatewayLogOption>] :wireless_gateway_log_options
    #   The list of wireless gateway log options.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_log_levels_by_resource_types({
    #     default_log_level: "INFO", # accepts INFO, ERROR, DISABLED
    #     wireless_device_log_options: [
    #       {
    #         type: "Sidewalk", # required, accepts Sidewalk, LoRaWAN
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #         events: [
    #           {
    #             event: "Join", # required, accepts Join, Rejoin, Uplink_Data, Downlink_Data, Registration
    #             log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #           },
    #         ],
    #       },
    #     ],
    #     wireless_gateway_log_options: [
    #       {
    #         type: "LoRaWAN", # required, accepts LoRaWAN
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #         events: [
    #           {
    #             event: "CUPS_Request", # required, accepts CUPS_Request, Certificate
    #             log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @overload update_log_levels_by_resource_types(params = {})
    # @param [Hash] params ({})
    def update_log_levels_by_resource_types(params = {}, options = {})
      req = build_request(:update_log_levels_by_resource_types, params)
      req.send_request(options)
    end

    # Updates properties of a multicast group session.
    #
    # @option params [required, String] :id
    #   The ID of the multicast group.
    #
    # @option params [String] :name
    #   The name of the multicast group.
    #
    # @option params [String] :description
    #   The description of the new resource.
    #
    # @option params [Types::LoRaWANMulticast] :lo_ra_wan
    #   The LoRaWAN information that is to be used with the multicast group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_multicast_group({
    #     id: "MulticastGroupId", # required
    #     name: "MulticastGroupName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #       dl_class: "ClassB", # accepts ClassB, ClassC
    #     },
    #   })
    #
    # @overload update_multicast_group(params = {})
    # @param [Hash] params ({})
    def update_multicast_group(params = {}, options = {})
      req = build_request(:update_multicast_group, params)
      req.send_request(options)
    end

    # Update NetworkAnalyzer configuration.
    #
    # @option params [required, String] :configuration_name
    #   NetworkAnalyzer configuration name.
    #
    # @option params [Types::TraceContent] :trace_content
    #   Trace Content for resources.
    #
    # @option params [Array<String>] :wireless_devices_to_add
    #   WirelessDevices to add into NetworkAnalyzerConfiguration.
    #
    # @option params [Array<String>] :wireless_devices_to_remove
    #   WirelessDevices to remove from NetworkAnalyzerConfiguration.
    #
    # @option params [Array<String>] :wireless_gateways_to_add
    #   WirelessGateways to add into NetworkAnalyzerConfiguration.
    #
    # @option params [Array<String>] :wireless_gateways_to_remove
    #   WirelessGateways to remove from NetworkAnalyzerConfiguration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_analyzer_configuration({
    #     configuration_name: "NetworkAnalyzerConfigurationName", # required
    #     trace_content: {
    #       wireless_device_frame_info: "ENABLED", # accepts ENABLED, DISABLED
    #       log_level: "INFO", # accepts INFO, ERROR, DISABLED
    #     },
    #     wireless_devices_to_add: ["WirelessDeviceId"],
    #     wireless_devices_to_remove: ["WirelessDeviceId"],
    #     wireless_gateways_to_add: ["WirelessGatewayId"],
    #     wireless_gateways_to_remove: ["WirelessGatewayId"],
    #   })
    #
    # @overload update_network_analyzer_configuration(params = {})
    # @param [Hash] params ({})
    def update_network_analyzer_configuration(params = {}, options = {})
      req = build_request(:update_network_analyzer_configuration, params)
      req.send_request(options)
    end

    # Updates properties of a partner account.
    #
    # @option params [required, Types::SidewalkUpdateAccount] :sidewalk
    #   The Sidewalk account credentials.
    #
    # @option params [required, String] :partner_account_id
    #   The ID of the partner account to update.
    #
    # @option params [required, String] :partner_type
    #   The partner type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_partner_account({
    #     sidewalk: { # required
    #       app_server_private_key: "AppServerPrivateKey",
    #     },
    #     partner_account_id: "PartnerAccountId", # required
    #     partner_type: "Sidewalk", # required, accepts Sidewalk
    #   })
    #
    # @overload update_partner_account(params = {})
    # @param [Hash] params ({})
    def update_partner_account(params = {}, options = {})
      req = build_request(:update_partner_account, params)
      req.send_request(options)
    end

    # Update the event configuration for a particular resource identifier.
    #
    # @option params [required, String] :identifier
    #   Resource identifier to opt in for event messaging.
    #
    # @option params [required, String] :identifier_type
    #   Identifier type of the particular resource identifier for event
    #   configuration.
    #
    # @option params [String] :partner_type
    #   Partner type of the resource if the identifier type is
    #   PartnerAccountId
    #
    # @option params [Types::DeviceRegistrationStateEventConfiguration] :device_registration_state
    #   Event configuration for the device registration state event
    #
    # @option params [Types::ProximityEventConfiguration] :proximity
    #   Event configuration for the Proximity event
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_event_configuration({
    #     identifier: "Identifier", # required
    #     identifier_type: "PartnerAccountId", # required, accepts PartnerAccountId
    #     partner_type: "Sidewalk", # accepts Sidewalk
    #     device_registration_state: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #       },
    #     },
    #     proximity: {
    #       sidewalk: {
    #         amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #       },
    #     },
    #   })
    #
    # @overload update_resource_event_configuration(params = {})
    # @param [Hash] params ({})
    def update_resource_event_configuration(params = {}, options = {})
      req = build_request(:update_resource_event_configuration, params)
      req.send_request(options)
    end

    # Updates properties of a wireless device.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @option params [String] :destination_name
    #   The name of the new destination for the device.
    #
    # @option params [String] :name
    #   The new name of the resource.
    #
    # @option params [String] :description
    #   A new description of the resource.
    #
    # @option params [Types::LoRaWANUpdateDevice] :lo_ra_wan
    #   The updated wireless device's configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_wireless_device({
    #     id: "WirelessDeviceId", # required
    #     destination_name: "DestinationName",
    #     name: "WirelessDeviceName",
    #     description: "Description",
    #     lo_ra_wan: {
    #       device_profile_id: "DeviceProfileId",
    #       service_profile_id: "ServiceProfileId",
    #     },
    #   })
    #
    # @overload update_wireless_device(params = {})
    # @param [Hash] params ({})
    def update_wireless_device(params = {}, options = {})
      req = build_request(:update_wireless_device, params)
      req.send_request(options)
    end

    # Updates properties of a wireless gateway.
    #
    # @option params [required, String] :id
    #   The ID of the resource to update.
    #
    # @option params [String] :name
    #   The new name of the resource.
    #
    # @option params [String] :description
    #   A new description of the resource.
    #
    # @option params [Array<Array>] :join_eui_filters
    #   A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.
    #
    # @option params [Array<String>] :net_id_filters
    #   A list of NetId values that are used by LoRa gateways to filter the
    #   uplink frames.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_wireless_gateway({
    #     id: "WirelessGatewayId", # required
    #     name: "WirelessGatewayName",
    #     description: "Description",
    #     join_eui_filters: [
    #       ["JoinEui"],
    #     ],
    #     net_id_filters: ["NetId"],
    #   })
    #
    # @overload update_wireless_gateway(params = {})
    # @param [Hash] params ({})
    def update_wireless_gateway(params = {}, options = {})
      req = build_request(:update_wireless_gateway, params)
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
      context[:gem_name] = 'aws-sdk-iotwireless'
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

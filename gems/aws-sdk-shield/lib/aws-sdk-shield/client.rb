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
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:shield)

module Aws::Shield
  # An API client for Shield.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Shield::Client.new(
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

    @identifier = :shield

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
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Shield::Plugins::Endpoints)

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
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
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
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
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
    #   @option options [Aws::Shield::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Shield::EndpointParameters`
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

    # Authorizes the Shield Response Team (SRT) to access the specified
    # Amazon S3 bucket containing log data such as Application Load Balancer
    # access logs, CloudFront logs, or logs from third party sources. You
    # can associate up to 10 Amazon S3 buckets with your subscription.
    #
    # To use the services of the SRT and make an `AssociateDRTLogBucket`
    # request, you must be subscribed to the [Business Support plan][1] or
    # the [Enterprise Support plan][2].
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/business-support/
    # [2]: http://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :log_bucket
    #   The Amazon S3 bucket that contains the logs that you want to share.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_drt_log_bucket({
    #     log_bucket: "LogBucket", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucket AWS API Documentation
    #
    # @overload associate_drt_log_bucket(params = {})
    # @param [Hash] params ({})
    def associate_drt_log_bucket(params = {}, options = {})
      req = build_request(:associate_drt_log_bucket, params)
      req.send_request(options)
    end

    # Authorizes the Shield Response Team (SRT) using the specified role, to
    # access your Amazon Web Services account to assist with DDoS attack
    # mitigation during potential attacks. This enables the SRT to inspect
    # your WAF configuration and create or update WAF rules and web ACLs.
    #
    # You can associate only one `RoleArn` with your subscription. If you
    # submit an `AssociateDRTRole` request for an account that already has
    # an associated role, the new `RoleArn` will replace the existing
    # `RoleArn`.
    #
    # Prior to making the `AssociateDRTRole` request, you must attach the
    # `AWSShieldDRTAccessPolicy` managed policy to the role that you'll
    # specify in the request. You can access this policy in the IAM console
    # at [AWSShieldDRTAccessPolicy][1]. For more information see [Adding and
    # removing IAM identity permissions][2]. The role must also trust the
    # service principal `drt.shield.amazonaws.com`. For more information,
    # see [IAM JSON policy elements: Principal][3].
    #
    # The SRT will have access only to your WAF and Shield resources. By
    # submitting this request, you authorize the SRT to inspect your WAF and
    # Shield configuration and create and update WAF rules and web ACLs on
    # your behalf. The SRT takes these actions only if explicitly authorized
    # by you.
    #
    # You must have the `iam:PassRole` permission to make an
    # `AssociateDRTRole` request. For more information, see [Granting a user
    # permissions to pass a role to an Amazon Web Services service][4].
    #
    # To use the services of the SRT and make an `AssociateDRTRole` request,
    # you must be subscribed to the [Business Support plan][5] or the
    # [Enterprise Support plan][6].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    # [5]: http://aws.amazon.com/premiumsupport/business-support/
    # [6]: http://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the role the SRT will use to access
    #   your Amazon Web Services account.
    #
    #   Prior to making the `AssociateDRTRole` request, you must attach the
    #   [AWSShieldDRTAccessPolicy][1] managed policy to this role. For more
    #   information see [Attaching and Detaching IAM Policies](
    #   https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_drt_role({
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTRole AWS API Documentation
    #
    # @overload associate_drt_role(params = {})
    # @param [Hash] params ({})
    def associate_drt_role(params = {}, options = {})
      req = build_request(:associate_drt_role, params)
      req.send_request(options)
    end

    # Adds health-based detection to the Shield Advanced protection for a
    # resource. Shield Advanced health-based detection uses the health of
    # your Amazon Web Services resource to improve responsiveness and
    # accuracy in attack detection and response.
    #
    # You define the health check in Route 53 and then associate it with
    # your Shield Advanced protection. For more information, see [Shield
    # Advanced Health-Based Detection][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option
    #
    # @option params [required, String] :protection_id
    #   The unique identifier (ID) for the Protection object to add the health
    #   check association to.
    #
    # @option params [required, String] :health_check_arn
    #   The Amazon Resource Name (ARN) of the health check to associate with
    #   the protection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_health_check({
    #     protection_id: "ProtectionId", # required
    #     health_check_arn: "HealthCheckArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateHealthCheck AWS API Documentation
    #
    # @overload associate_health_check(params = {})
    # @param [Hash] params ({})
    def associate_health_check(params = {}, options = {})
      req = build_request(:associate_health_check, params)
      req.send_request(options)
    end

    # Initializes proactive engagement and sets the list of contacts for the
    # Shield Response Team (SRT) to use. You must provide at least one phone
    # number in the emergency contact list.
    #
    # After you have initialized proactive engagement using this call, to
    # disable or enable proactive engagement, use the calls
    # `DisableProactiveEngagement` and `EnableProactiveEngagement`.
    #
    # <note markdown="1"> This call defines the list of email addresses and phone numbers that
    # the SRT can use to contact you for escalations to the SRT and to
    # initiate proactive customer support.
    #
    #  The contacts that you provide in the request replace any contacts that
    # were already defined. If you already have contacts defined and want to
    # use them, retrieve the list using `DescribeEmergencyContactSettings`
    # and then provide it to this call.
    #
    #  </note>
    #
    # @option params [required, Array<Types::EmergencyContact>] :emergency_contact_list
    #   A list of email addresses and phone numbers that the Shield Response
    #   Team (SRT) can use to contact you for escalations to the SRT and to
    #   initiate proactive customer support.
    #
    #   To enable proactive engagement, the contact list must include at least
    #   one phone number.
    #
    #   <note markdown="1"> The contacts that you provide here replace any contacts that were
    #   already defined. If you already have contacts defined and want to use
    #   them, retrieve the list using `DescribeEmergencyContactSettings` and
    #   then provide it here.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_proactive_engagement_details({
    #     emergency_contact_list: [ # required
    #       {
    #         email_address: "EmailAddress", # required
    #         phone_number: "PhoneNumber",
    #         contact_notes: "ContactNotes",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateProactiveEngagementDetails AWS API Documentation
    #
    # @overload associate_proactive_engagement_details(params = {})
    # @param [Hash] params ({})
    def associate_proactive_engagement_details(params = {}, options = {})
      req = build_request(:associate_proactive_engagement_details, params)
      req.send_request(options)
    end

    # Enables Shield Advanced for a specific Amazon Web Services resource.
    # The resource can be an Amazon CloudFront distribution, Amazon Route 53
    # hosted zone, Global Accelerator standard accelerator, Elastic IP
    # Address, Application Load Balancer, or a Classic Load Balancer. You
    # can protect Amazon EC2 instances and Network Load Balancers by
    # association with protected Amazon EC2 Elastic IP addresses.
    #
    # You can add protection to only a single resource with each
    # `CreateProtection` request. You can add protection to multiple
    # resources at once through the Shield Advanced console at
    # [https://console.aws.amazon.com/wafv2/shieldv2#/][1]. For more
    # information see [Getting Started with Shield Advanced][2] and [Adding
    # Shield Advanced protection to Amazon Web Services resources][3].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/wafv2/shieldv2#/
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html
    # [3]: https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html
    #
    # @option params [required, String] :name
    #   Friendly name for the `Protection` you are creating.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the resource to be protected.
    #
    #   The ARN should be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Elastic Load Balancer (Classic Load Balancer):
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name
    #     `
    #
    #   * For an Amazon CloudFront distribution:
    #     `arn:aws:cloudfront::account-id:distribution/distribution-id `
    #
    #   * For an Global Accelerator standard accelerator:
    #     `arn:aws:globalaccelerator::account-id:accelerator/accelerator-id `
    #
    #   * For Amazon Route 53: `arn:aws:route53:::hostedzone/hosted-zone-id `
    #
    #   * For an Elastic IP address:
    #     `arn:aws:ec2:region:account-id:eip-allocation/allocation-id `
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tag key-value pairs for the Protection object that is
    #   created.
    #
    # @return [Types::CreateProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProtectionResponse#protection_id #protection_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_protection({
    #     name: "ProtectionName", # required
    #     resource_arn: "ResourceArn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.protection_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtection AWS API Documentation
    #
    # @overload create_protection(params = {})
    # @param [Hash] params ({})
    def create_protection(params = {}, options = {})
      req = build_request(:create_protection, params)
      req.send_request(options)
    end

    # Creates a grouping of protected resources so they can be handled as a
    # collective. This resource grouping improves the accuracy of detection
    # and reduces false positives.
    #
    # @option params [required, String] :protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #
    # @option params [required, String] :aggregation
    #   Defines how Shield combines resource data for the group in order to
    #   detect, mitigate, and report events.
    #
    #   * Sum - Use the total traffic across the group. This is a good choice
    #     for most cases. Examples include Elastic IP addresses for EC2
    #     instances that scale manually or automatically.
    #
    #   * Mean - Use the average of the traffic across the group. This is a
    #     good choice for resources that share traffic uniformly. Examples
    #     include accelerators and load balancers.
    #
    #   * Max - Use the highest traffic from each resource. This is useful for
    #     resources that don't share traffic and for resources that share
    #     that traffic in a non-uniform way. Examples include Amazon
    #     CloudFront and origin resources for CloudFront distributions.
    #
    # @option params [required, String] :pattern
    #   The criteria to use to choose the protected resources for inclusion in
    #   the group. You can include all resources that have protections,
    #   provide a list of resource Amazon Resource Names (ARNs), or include
    #   all resources of a specified resource type.
    #
    # @option params [String] :resource_type
    #   The resource type to include in the protection group. All protected
    #   resources of this type are included in the protection group. Newly
    #   protected resources of this type are automatically added to the group.
    #   You must set this when you set `Pattern` to `BY_RESOURCE_TYPE` and you
    #   must not set it for any other `Pattern` setting.
    #
    # @option params [Array<String>] :members
    #   The Amazon Resource Names (ARNs) of the resources to include in the
    #   protection group. You must set this when you set `Pattern` to
    #   `ARBITRARY` and you must not set it for any other `Pattern` setting.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tag key-value pairs for the protection group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_protection_group({
    #     protection_group_id: "ProtectionGroupId", # required
    #     aggregation: "SUM", # required, accepts SUM, MEAN, MAX
    #     pattern: "ALL", # required, accepts ALL, ARBITRARY, BY_RESOURCE_TYPE
    #     resource_type: "CLOUDFRONT_DISTRIBUTION", # accepts CLOUDFRONT_DISTRIBUTION, ROUTE_53_HOSTED_ZONE, ELASTIC_IP_ALLOCATION, CLASSIC_LOAD_BALANCER, APPLICATION_LOAD_BALANCER, GLOBAL_ACCELERATOR
    #     members: ["ResourceArn"],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionGroup AWS API Documentation
    #
    # @overload create_protection_group(params = {})
    # @param [Hash] params ({})
    def create_protection_group(params = {}, options = {})
      req = build_request(:create_protection_group, params)
      req.send_request(options)
    end

    # Activates Shield Advanced for an account.
    #
    # <note markdown="1"> For accounts that are members of an Organizations organization, Shield
    # Advanced subscriptions are billed against the organization's payer
    # account, regardless of whether the payer account itself is subscribed.
    #
    #  </note>
    #
    # When you initially create a subscription, your subscription is set to
    # be automatically renewed at the end of the existing subscription
    # period. You can change this by submitting an `UpdateSubscription`
    # request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscription AWS API Documentation
    #
    # @overload create_subscription(params = {})
    # @param [Hash] params ({})
    def create_subscription(params = {}, options = {})
      req = build_request(:create_subscription, params)
      req.send_request(options)
    end

    # Deletes an Shield Advanced Protection.
    #
    # @option params [required, String] :protection_id
    #   The unique identifier (ID) for the Protection object to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protection({
    #     protection_id: "ProtectionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtection AWS API Documentation
    #
    # @overload delete_protection(params = {})
    # @param [Hash] params ({})
    def delete_protection(params = {}, options = {})
      req = build_request(:delete_protection, params)
      req.send_request(options)
    end

    # Removes the specified protection group.
    #
    # @option params [required, String] :protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protection_group({
    #     protection_group_id: "ProtectionGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionGroup AWS API Documentation
    #
    # @overload delete_protection_group(params = {})
    # @param [Hash] params ({})
    def delete_protection_group(params = {}, options = {})
      req = build_request(:delete_protection_group, params)
      req.send_request(options)
    end

    # Removes Shield Advanced from an account. Shield Advanced requires a
    # 1-year subscription commitment. You cannot delete a subscription prior
    # to the completion of that commitment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscription AWS API Documentation
    #
    # @overload delete_subscription(params = {})
    # @param [Hash] params ({})
    def delete_subscription(params = {}, options = {})
      req = build_request(:delete_subscription, params)
      req.send_request(options)
    end

    # Describes the details of a DDoS attack.
    #
    # @option params [required, String] :attack_id
    #   The unique identifier (ID) for the attack.
    #
    # @return [Types::DescribeAttackResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAttackResponse#attack #attack} => Types::AttackDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_attack({
    #     attack_id: "AttackId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attack.attack_id #=> String
    #   resp.attack.resource_arn #=> String
    #   resp.attack.sub_resources #=> Array
    #   resp.attack.sub_resources[0].type #=> String, one of "IP", "URL"
    #   resp.attack.sub_resources[0].id #=> String
    #   resp.attack.sub_resources[0].attack_vectors #=> Array
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_type #=> String
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters #=> Array
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].name #=> String
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].max #=> Float
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].average #=> Float
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].sum #=> Float
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].n #=> Integer
    #   resp.attack.sub_resources[0].attack_vectors[0].vector_counters[0].unit #=> String
    #   resp.attack.sub_resources[0].counters #=> Array
    #   resp.attack.sub_resources[0].counters[0].name #=> String
    #   resp.attack.sub_resources[0].counters[0].max #=> Float
    #   resp.attack.sub_resources[0].counters[0].average #=> Float
    #   resp.attack.sub_resources[0].counters[0].sum #=> Float
    #   resp.attack.sub_resources[0].counters[0].n #=> Integer
    #   resp.attack.sub_resources[0].counters[0].unit #=> String
    #   resp.attack.start_time #=> Time
    #   resp.attack.end_time #=> Time
    #   resp.attack.attack_counters #=> Array
    #   resp.attack.attack_counters[0].name #=> String
    #   resp.attack.attack_counters[0].max #=> Float
    #   resp.attack.attack_counters[0].average #=> Float
    #   resp.attack.attack_counters[0].sum #=> Float
    #   resp.attack.attack_counters[0].n #=> Integer
    #   resp.attack.attack_counters[0].unit #=> String
    #   resp.attack.attack_properties #=> Array
    #   resp.attack.attack_properties[0].attack_layer #=> String, one of "NETWORK", "APPLICATION"
    #   resp.attack.attack_properties[0].attack_property_identifier #=> String, one of "DESTINATION_URL", "REFERRER", "SOURCE_ASN", "SOURCE_COUNTRY", "SOURCE_IP_ADDRESS", "SOURCE_USER_AGENT", "WORDPRESS_PINGBACK_REFLECTOR", "WORDPRESS_PINGBACK_SOURCE"
    #   resp.attack.attack_properties[0].top_contributors #=> Array
    #   resp.attack.attack_properties[0].top_contributors[0].name #=> String
    #   resp.attack.attack_properties[0].top_contributors[0].value #=> Integer
    #   resp.attack.attack_properties[0].unit #=> String, one of "BITS", "BYTES", "PACKETS", "REQUESTS"
    #   resp.attack.attack_properties[0].total #=> Integer
    #   resp.attack.mitigations #=> Array
    #   resp.attack.mitigations[0].mitigation_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttack AWS API Documentation
    #
    # @overload describe_attack(params = {})
    # @param [Hash] params ({})
    def describe_attack(params = {}, options = {})
      req = build_request(:describe_attack, params)
      req.send_request(options)
    end

    # Provides information about the number and type of attacks Shield has
    # detected in the last year for all resources that belong to your
    # account, regardless of whether you've defined Shield protections for
    # them. This operation is available to Shield customers as well as to
    # Shield Advanced customers.
    #
    # The operation returns data for the time range of midnight UTC, one
    # year ago, to midnight UTC, today. For example, if the current time is
    # `2020-10-26 15:39:32 PDT`, equal to `2020-10-26 22:39:32 UTC`, then
    # the time range for the attack data returned is from `2019-10-26
    # 00:00:00 UTC` to `2020-10-26 00:00:00 UTC`.
    #
    # The time range indicates the period covered by the attack statistics
    # data items.
    #
    # @return [Types::DescribeAttackStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAttackStatisticsResponse#time_range #time_range} => Types::TimeRange
    #   * {Types::DescribeAttackStatisticsResponse#data_items #data_items} => Array&lt;Types::AttackStatisticsDataItem&gt;
    #
    # @example Response structure
    #
    #   resp.time_range.from_inclusive #=> Time
    #   resp.time_range.to_exclusive #=> Time
    #   resp.data_items #=> Array
    #   resp.data_items[0].attack_volume.bits_per_second.max #=> Float
    #   resp.data_items[0].attack_volume.packets_per_second.max #=> Float
    #   resp.data_items[0].attack_volume.requests_per_second.max #=> Float
    #   resp.data_items[0].attack_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackStatistics AWS API Documentation
    #
    # @overload describe_attack_statistics(params = {})
    # @param [Hash] params ({})
    def describe_attack_statistics(params = {}, options = {})
      req = build_request(:describe_attack_statistics, params)
      req.send_request(options)
    end

    # Returns the current role and list of Amazon S3 log buckets used by the
    # Shield Response Team (SRT) to access your Amazon Web Services account
    # while assisting with attack mitigation.
    #
    # @return [Types::DescribeDRTAccessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDRTAccessResponse#role_arn #role_arn} => String
    #   * {Types::DescribeDRTAccessResponse#log_bucket_list #log_bucket_list} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.log_bucket_list #=> Array
    #   resp.log_bucket_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccess AWS API Documentation
    #
    # @overload describe_drt_access(params = {})
    # @param [Hash] params ({})
    def describe_drt_access(params = {}, options = {})
      req = build_request(:describe_drt_access, params)
      req.send_request(options)
    end

    # A list of email addresses and phone numbers that the Shield Response
    # Team (SRT) can use to contact you if you have proactive engagement
    # enabled, for escalations to the SRT and to initiate proactive customer
    # support.
    #
    # @return [Types::DescribeEmergencyContactSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEmergencyContactSettingsResponse#emergency_contact_list #emergency_contact_list} => Array&lt;Types::EmergencyContact&gt;
    #
    # @example Response structure
    #
    #   resp.emergency_contact_list #=> Array
    #   resp.emergency_contact_list[0].email_address #=> String
    #   resp.emergency_contact_list[0].phone_number #=> String
    #   resp.emergency_contact_list[0].contact_notes #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettings AWS API Documentation
    #
    # @overload describe_emergency_contact_settings(params = {})
    # @param [Hash] params ({})
    def describe_emergency_contact_settings(params = {}, options = {})
      req = build_request(:describe_emergency_contact_settings, params)
      req.send_request(options)
    end

    # Lists the details of a Protection object.
    #
    # @option params [String] :protection_id
    #   The unique identifier (ID) for the Protection object to describe. You
    #   must provide either the `ResourceArn` of the protected resource or the
    #   `ProtectionID` of the protection, but not both.
    #
    # @option params [String] :resource_arn
    #   The ARN (Amazon Resource Name) of the protected Amazon Web Services
    #   resource. You must provide either the `ResourceArn` of the protected
    #   resource or the `ProtectionID` of the protection, but not both.
    #
    # @return [Types::DescribeProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProtectionResponse#protection #protection} => Types::Protection
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protection({
    #     protection_id: "ProtectionId",
    #     resource_arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.protection.id #=> String
    #   resp.protection.name #=> String
    #   resp.protection.resource_arn #=> String
    #   resp.protection.health_check_ids #=> Array
    #   resp.protection.health_check_ids[0] #=> String
    #   resp.protection.protection_arn #=> String
    #   resp.protection.application_layer_automatic_response_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtection AWS API Documentation
    #
    # @overload describe_protection(params = {})
    # @param [Hash] params ({})
    def describe_protection(params = {}, options = {})
      req = build_request(:describe_protection, params)
      req.send_request(options)
    end

    # Returns the specification for the specified protection group.
    #
    # @option params [required, String] :protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #
    # @return [Types::DescribeProtectionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProtectionGroupResponse#protection_group #protection_group} => Types::ProtectionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protection_group({
    #     protection_group_id: "ProtectionGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protection_group.protection_group_id #=> String
    #   resp.protection_group.aggregation #=> String, one of "SUM", "MEAN", "MAX"
    #   resp.protection_group.pattern #=> String, one of "ALL", "ARBITRARY", "BY_RESOURCE_TYPE"
    #   resp.protection_group.resource_type #=> String, one of "CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"
    #   resp.protection_group.members #=> Array
    #   resp.protection_group.members[0] #=> String
    #   resp.protection_group.protection_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionGroup AWS API Documentation
    #
    # @overload describe_protection_group(params = {})
    # @param [Hash] params ({})
    def describe_protection_group(params = {}, options = {})
      req = build_request(:describe_protection_group, params)
      req.send_request(options)
    end

    # Provides details about the Shield Advanced subscription for an
    # account.
    #
    # @return [Types::DescribeSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscriptionResponse#subscription #subscription} => Types::Subscription
    #
    # @example Response structure
    #
    #   resp.subscription.start_time #=> Time
    #   resp.subscription.end_time #=> Time
    #   resp.subscription.time_commitment_in_seconds #=> Integer
    #   resp.subscription.auto_renew #=> String, one of "ENABLED", "DISABLED"
    #   resp.subscription.limits #=> Array
    #   resp.subscription.limits[0].type #=> String
    #   resp.subscription.limits[0].max #=> Integer
    #   resp.subscription.proactive_engagement_status #=> String, one of "ENABLED", "DISABLED", "PENDING"
    #   resp.subscription.subscription_limits.protection_limits.protected_resource_type_limits #=> Array
    #   resp.subscription.subscription_limits.protection_limits.protected_resource_type_limits[0].type #=> String
    #   resp.subscription.subscription_limits.protection_limits.protected_resource_type_limits[0].max #=> Integer
    #   resp.subscription.subscription_limits.protection_group_limits.max_protection_groups #=> Integer
    #   resp.subscription.subscription_limits.protection_group_limits.pattern_type_limits.arbitrary_pattern_limits.max_members #=> Integer
    #   resp.subscription.subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscription AWS API Documentation
    #
    # @overload describe_subscription(params = {})
    # @param [Hash] params ({})
    def describe_subscription(params = {}, options = {})
      req = build_request(:describe_subscription, params)
      req.send_request(options)
    end

    # Disable the Shield Advanced automatic application layer DDoS
    # mitigation feature for the protected resource. This stops Shield
    # Advanced from creating, verifying, and applying WAF rules for attacks
    # that it detects for the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the protected resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_application_layer_automatic_response({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableApplicationLayerAutomaticResponse AWS API Documentation
    #
    # @overload disable_application_layer_automatic_response(params = {})
    # @param [Hash] params ({})
    def disable_application_layer_automatic_response(params = {}, options = {})
      req = build_request(:disable_application_layer_automatic_response, params)
      req.send_request(options)
    end

    # Removes authorization from the Shield Response Team (SRT) to notify
    # contacts about escalations to the SRT and to initiate proactive
    # customer support.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableProactiveEngagement AWS API Documentation
    #
    # @overload disable_proactive_engagement(params = {})
    # @param [Hash] params ({})
    def disable_proactive_engagement(params = {}, options = {})
      req = build_request(:disable_proactive_engagement, params)
      req.send_request(options)
    end

    # Removes the Shield Response Team's (SRT) access to the specified
    # Amazon S3 bucket containing the logs that you shared previously.
    #
    # @option params [required, String] :log_bucket
    #   The Amazon S3 bucket that contains the logs that you want to share.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_drt_log_bucket({
    #     log_bucket: "LogBucket", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTLogBucket AWS API Documentation
    #
    # @overload disassociate_drt_log_bucket(params = {})
    # @param [Hash] params ({})
    def disassociate_drt_log_bucket(params = {}, options = {})
      req = build_request(:disassociate_drt_log_bucket, params)
      req.send_request(options)
    end

    # Removes the Shield Response Team's (SRT) access to your Amazon Web
    # Services account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTRole AWS API Documentation
    #
    # @overload disassociate_drt_role(params = {})
    # @param [Hash] params ({})
    def disassociate_drt_role(params = {}, options = {})
      req = build_request(:disassociate_drt_role, params)
      req.send_request(options)
    end

    # Removes health-based detection from the Shield Advanced protection for
    # a resource. Shield Advanced health-based detection uses the health of
    # your Amazon Web Services resource to improve responsiveness and
    # accuracy in attack detection and response.
    #
    # You define the health check in Route 53 and then associate or
    # disassociate it with your Shield Advanced protection. For more
    # information, see [Shield Advanced Health-Based Detection][1] in the
    # *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option
    #
    # @option params [required, String] :protection_id
    #   The unique identifier (ID) for the Protection object to remove the
    #   health check association from.
    #
    # @option params [required, String] :health_check_arn
    #   The Amazon Resource Name (ARN) of the health check that is associated
    #   with the protection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_health_check({
    #     protection_id: "ProtectionId", # required
    #     health_check_arn: "HealthCheckArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateHealthCheck AWS API Documentation
    #
    # @overload disassociate_health_check(params = {})
    # @param [Hash] params ({})
    def disassociate_health_check(params = {}, options = {})
      req = build_request(:disassociate_health_check, params)
      req.send_request(options)
    end

    # Enable the Shield Advanced automatic application layer DDoS mitigation
    # for the protected resource.
    #
    # <note markdown="1"> This feature is available for Amazon CloudFront distributions and
    # Application Load Balancers only.
    #
    #  </note>
    #
    # This causes Shield Advanced to create, verify, and apply WAF rules for
    # DDoS attacks that it detects for the resource. Shield Advanced applies
    # the rules in a Shield rule group inside the web ACL that you've
    # associated with the resource. For information about how automatic
    # mitigation works and the requirements for using it, see [Shield
    # Advanced automatic application layer DDoS mitigation][1].
    #
    # <note markdown="1"> Don't use this action to make changes to automatic mitigation
    # settings when it's already enabled for a resource. Instead, use
    # UpdateApplicationLayerAutomaticResponse.
    #
    #  </note>
    #
    # To use this feature, you must associate a web ACL with the protected
    # resource. The web ACL must be created using the latest version of WAF
    # (v2). You can associate the web ACL through the Shield Advanced
    # console at [https://console.aws.amazon.com/wafv2/shieldv2#/][2]. For
    # more information, see [Getting Started with Shield Advanced][3]. You
    # can also associate the web ACL to the resource through the WAF console
    # or the WAF API, but you must manage Shield Advanced automatic
    # mitigation through Shield Advanced. For information about WAF, see
    # [WAF Developer Guide][4].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html
    # [2]: https://console.aws.amazon.com/wafv2/shieldv2#/
    # [3]: https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html
    # [4]: https://docs.aws.amazon.com/waf/latest/developerguide/
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the protected resource.
    #
    # @option params [required, Types::ResponseAction] :action
    #   Specifies the action setting that Shield Advanced should use in the
    #   WAF rules that it creates on behalf of the protected resource in
    #   response to DDoS attacks. You specify this as part of the
    #   configuration for the automatic application layer DDoS mitigation
    #   feature, when you enable or update automatic mitigation. Shield
    #   Advanced creates the WAF rules in a Shield Advanced-managed rule
    #   group, inside the web ACL that you have associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_application_layer_automatic_response({
    #     resource_arn: "ResourceArn", # required
    #     action: { # required
    #       block: {
    #       },
    #       count: {
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EnableApplicationLayerAutomaticResponse AWS API Documentation
    #
    # @overload enable_application_layer_automatic_response(params = {})
    # @param [Hash] params ({})
    def enable_application_layer_automatic_response(params = {}, options = {})
      req = build_request(:enable_application_layer_automatic_response, params)
      req.send_request(options)
    end

    # Authorizes the Shield Response Team (SRT) to use email and phone to
    # notify contacts about escalations to the SRT and to initiate proactive
    # customer support.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EnableProactiveEngagement AWS API Documentation
    #
    # @overload enable_proactive_engagement(params = {})
    # @param [Hash] params ({})
    def enable_proactive_engagement(params = {}, options = {})
      req = build_request(:enable_proactive_engagement, params)
      req.send_request(options)
    end

    # Returns the `SubscriptionState`, either `Active` or `Inactive`.
    #
    # @return [Types::GetSubscriptionStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionStateResponse#subscription_state #subscription_state} => String
    #
    # @example Response structure
    #
    #   resp.subscription_state #=> String, one of "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/GetSubscriptionState AWS API Documentation
    #
    # @overload get_subscription_state(params = {})
    # @param [Hash] params ({})
    def get_subscription_state(params = {}, options = {})
      req = build_request(:get_subscription_state, params)
      req.send_request(options)
    end

    # Returns all ongoing DDoS attacks or all DDoS attacks during a
    # specified time period.
    #
    # @option params [Array<String>] :resource_arns
    #   The ARNs (Amazon Resource Names) of the resources that were attacked.
    #   If you leave this blank, all applicable resources for this account
    #   will be included.
    #
    # @option params [Types::TimeRange] :start_time
    #   The start of the time period for the attacks. This is a `timestamp`
    #   type. The request syntax listing for this call indicates a `number`
    #   type, but you can provide the time in any valid [timestamp format][1]
    #   setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp
    #
    # @option params [Types::TimeRange] :end_time
    #   The end of the time period for the attacks. This is a `timestamp`
    #   type. The request syntax listing for this call indicates a `number`
    #   type, but you can provide the time in any valid [timestamp format][1]
    #   setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp
    #
    # @option params [String] :next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You can
    #   retrieve the next batch of objects by requesting the list again and
    #   providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet returned
    #   to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #
    # @option params [Integer] :max_results
    #   The greatest number of objects that you want Shield Advanced to return
    #   to the list request. Shield Advanced might return fewer objects than
    #   you indicate in this setting, even if more objects are available. If
    #   there are more objects remaining, Shield Advanced will always also
    #   return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #
    # @return [Types::ListAttacksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttacksResponse#attack_summaries #attack_summaries} => Array&lt;Types::AttackSummary&gt;
    #   * {Types::ListAttacksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attacks({
    #     resource_arns: ["ResourceArn"],
    #     start_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now,
    #     },
    #     end_time: {
    #       from_inclusive: Time.now,
    #       to_exclusive: Time.now,
    #     },
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attack_summaries #=> Array
    #   resp.attack_summaries[0].attack_id #=> String
    #   resp.attack_summaries[0].resource_arn #=> String
    #   resp.attack_summaries[0].start_time #=> Time
    #   resp.attack_summaries[0].end_time #=> Time
    #   resp.attack_summaries[0].attack_vectors #=> Array
    #   resp.attack_summaries[0].attack_vectors[0].vector_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacks AWS API Documentation
    #
    # @overload list_attacks(params = {})
    # @param [Hash] params ({})
    def list_attacks(params = {}, options = {})
      req = build_request(:list_attacks, params)
      req.send_request(options)
    end

    # Retrieves ProtectionGroup objects for the account. You can retrieve
    # all protection groups or you can provide filtering criteria and
    # retrieve just the subset of protection groups that match the criteria.
    #
    # @option params [String] :next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You can
    #   retrieve the next batch of objects by requesting the list again and
    #   providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet returned
    #   to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #
    # @option params [Integer] :max_results
    #   The greatest number of objects that you want Shield Advanced to return
    #   to the list request. Shield Advanced might return fewer objects than
    #   you indicate in this setting, even if more objects are available. If
    #   there are more objects remaining, Shield Advanced will always also
    #   return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #
    # @option params [Types::InclusionProtectionGroupFilters] :inclusion_filters
    #   Narrows the set of protection groups that the call retrieves. You can
    #   retrieve a single protection group by its name and you can retrieve
    #   all protection groups that are configured with specific pattern or
    #   aggregation settings. You can provide up to one criteria per filter
    #   type. Shield Advanced returns the protection groups that exactly match
    #   all of the search criteria that you provide.
    #
    # @return [Types::ListProtectionGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtectionGroupsResponse#protection_groups #protection_groups} => Array&lt;Types::ProtectionGroup&gt;
    #   * {Types::ListProtectionGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protection_groups({
    #     next_token: "Token",
    #     max_results: 1,
    #     inclusion_filters: {
    #       protection_group_ids: ["ProtectionGroupId"],
    #       patterns: ["ALL"], # accepts ALL, ARBITRARY, BY_RESOURCE_TYPE
    #       resource_types: ["CLOUDFRONT_DISTRIBUTION"], # accepts CLOUDFRONT_DISTRIBUTION, ROUTE_53_HOSTED_ZONE, ELASTIC_IP_ALLOCATION, CLASSIC_LOAD_BALANCER, APPLICATION_LOAD_BALANCER, GLOBAL_ACCELERATOR
    #       aggregations: ["SUM"], # accepts SUM, MEAN, MAX
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.protection_groups #=> Array
    #   resp.protection_groups[0].protection_group_id #=> String
    #   resp.protection_groups[0].aggregation #=> String, one of "SUM", "MEAN", "MAX"
    #   resp.protection_groups[0].pattern #=> String, one of "ALL", "ARBITRARY", "BY_RESOURCE_TYPE"
    #   resp.protection_groups[0].resource_type #=> String, one of "CLOUDFRONT_DISTRIBUTION", "ROUTE_53_HOSTED_ZONE", "ELASTIC_IP_ALLOCATION", "CLASSIC_LOAD_BALANCER", "APPLICATION_LOAD_BALANCER", "GLOBAL_ACCELERATOR"
    #   resp.protection_groups[0].members #=> Array
    #   resp.protection_groups[0].members[0] #=> String
    #   resp.protection_groups[0].protection_group_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionGroups AWS API Documentation
    #
    # @overload list_protection_groups(params = {})
    # @param [Hash] params ({})
    def list_protection_groups(params = {}, options = {})
      req = build_request(:list_protection_groups, params)
      req.send_request(options)
    end

    # Retrieves Protection objects for the account. You can retrieve all
    # protections or you can provide filtering criteria and retrieve just
    # the subset of protections that match the criteria.
    #
    # @option params [String] :next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You can
    #   retrieve the next batch of objects by requesting the list again and
    #   providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet returned
    #   to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #
    # @option params [Integer] :max_results
    #   The greatest number of objects that you want Shield Advanced to return
    #   to the list request. Shield Advanced might return fewer objects than
    #   you indicate in this setting, even if more objects are available. If
    #   there are more objects remaining, Shield Advanced will always also
    #   return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #
    # @option params [Types::InclusionProtectionFilters] :inclusion_filters
    #   Narrows the set of protections that the call retrieves. You can
    #   retrieve a single protection by providing its name or the ARN (Amazon
    #   Resource Name) of its protected resource. You can also retrieve all
    #   protections for a specific resource type. You can provide up to one
    #   criteria per filter type. Shield Advanced returns protections that
    #   exactly match all of the filter criteria that you provide.
    #
    # @return [Types::ListProtectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtectionsResponse#protections #protections} => Array&lt;Types::Protection&gt;
    #   * {Types::ListProtectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protections({
    #     next_token: "Token",
    #     max_results: 1,
    #     inclusion_filters: {
    #       resource_arns: ["ResourceArn"],
    #       protection_names: ["ProtectionName"],
    #       resource_types: ["CLOUDFRONT_DISTRIBUTION"], # accepts CLOUDFRONT_DISTRIBUTION, ROUTE_53_HOSTED_ZONE, ELASTIC_IP_ALLOCATION, CLASSIC_LOAD_BALANCER, APPLICATION_LOAD_BALANCER, GLOBAL_ACCELERATOR
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.protections #=> Array
    #   resp.protections[0].id #=> String
    #   resp.protections[0].name #=> String
    #   resp.protections[0].resource_arn #=> String
    #   resp.protections[0].health_check_ids #=> Array
    #   resp.protections[0].health_check_ids[0] #=> String
    #   resp.protections[0].protection_arn #=> String
    #   resp.protections[0].application_layer_automatic_response_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtections AWS API Documentation
    #
    # @overload list_protections(params = {})
    # @param [Hash] params ({})
    def list_protections(params = {}, options = {})
      req = build_request(:list_protections, params)
      req.send_request(options)
    end

    # Retrieves the resources that are included in the protection group.
    #
    # @option params [required, String] :protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #
    # @option params [String] :next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You can
    #   retrieve the next batch of objects by requesting the list again and
    #   providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet returned
    #   to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #
    # @option params [Integer] :max_results
    #   The greatest number of objects that you want Shield Advanced to return
    #   to the list request. Shield Advanced might return fewer objects than
    #   you indicate in this setting, even if more objects are available. If
    #   there are more objects remaining, Shield Advanced will always also
    #   return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #
    # @return [Types::ListResourcesInProtectionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesInProtectionGroupResponse#resource_arns #resource_arns} => Array&lt;String&gt;
    #   * {Types::ListResourcesInProtectionGroupResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_in_protection_group({
    #     protection_group_id: "ProtectionGroupId", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arns #=> Array
    #   resp.resource_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListResourcesInProtectionGroup AWS API Documentation
    #
    # @overload list_resources_in_protection_group(params = {})
    # @param [Hash] params ({})
    def list_resources_in_protection_group(params = {}, options = {})
      req = build_request(:list_resources_in_protection_group, params)
      req.send_request(options)
    end

    # Gets information about Amazon Web Services tags for a specified Amazon
    # Resource Name (ARN) in Shield.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds or updates tags for a resource in Shield.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add or
    #   update tags for.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags that you want to modify or add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource in Shield.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key for each tag that you want to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Shield Advanced automatic application layer DDoS
    # mitigation configuration for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN (Amazon Resource Name) of the resource.
    #
    # @option params [required, Types::ResponseAction] :action
    #   Specifies the action setting that Shield Advanced should use in the
    #   WAF rules that it creates on behalf of the protected resource in
    #   response to DDoS attacks. You specify this as part of the
    #   configuration for the automatic application layer DDoS mitigation
    #   feature, when you enable or update automatic mitigation. Shield
    #   Advanced creates the WAF rules in a Shield Advanced-managed rule
    #   group, inside the web ACL that you have associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_layer_automatic_response({
    #     resource_arn: "ResourceArn", # required
    #     action: { # required
    #       block: {
    #       },
    #       count: {
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateApplicationLayerAutomaticResponse AWS API Documentation
    #
    # @overload update_application_layer_automatic_response(params = {})
    # @param [Hash] params ({})
    def update_application_layer_automatic_response(params = {}, options = {})
      req = build_request(:update_application_layer_automatic_response, params)
      req.send_request(options)
    end

    # Updates the details of the list of email addresses and phone numbers
    # that the Shield Response Team (SRT) can use to contact you if you have
    # proactive engagement enabled, for escalations to the SRT and to
    # initiate proactive customer support.
    #
    # @option params [Array<Types::EmergencyContact>] :emergency_contact_list
    #   A list of email addresses and phone numbers that the Shield Response
    #   Team (SRT) can use to contact you if you have proactive engagement
    #   enabled, for escalations to the SRT and to initiate proactive customer
    #   support.
    #
    #   If you have proactive engagement enabled, the contact list must
    #   include at least one phone number.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_emergency_contact_settings({
    #     emergency_contact_list: [
    #       {
    #         email_address: "EmailAddress", # required
    #         phone_number: "PhoneNumber",
    #         contact_notes: "ContactNotes",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateEmergencyContactSettings AWS API Documentation
    #
    # @overload update_emergency_contact_settings(params = {})
    # @param [Hash] params ({})
    def update_emergency_contact_settings(params = {}, options = {})
      req = build_request(:update_emergency_contact_settings, params)
      req.send_request(options)
    end

    # Updates an existing protection group. A protection group is a grouping
    # of protected resources so they can be handled as a collective. This
    # resource grouping improves the accuracy of detection and reduces false
    # positives.
    #
    # @option params [required, String] :protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #
    # @option params [required, String] :aggregation
    #   Defines how Shield combines resource data for the group in order to
    #   detect, mitigate, and report events.
    #
    #   * Sum - Use the total traffic across the group. This is a good choice
    #     for most cases. Examples include Elastic IP addresses for EC2
    #     instances that scale manually or automatically.
    #
    #   * Mean - Use the average of the traffic across the group. This is a
    #     good choice for resources that share traffic uniformly. Examples
    #     include accelerators and load balancers.
    #
    #   * Max - Use the highest traffic from each resource. This is useful for
    #     resources that don't share traffic and for resources that share
    #     that traffic in a non-uniform way. Examples include Amazon
    #     CloudFront distributions and origin resources for CloudFront
    #     distributions.
    #
    # @option params [required, String] :pattern
    #   The criteria to use to choose the protected resources for inclusion in
    #   the group. You can include all resources that have protections,
    #   provide a list of resource Amazon Resource Names (ARNs), or include
    #   all resources of a specified resource type.
    #
    # @option params [String] :resource_type
    #   The resource type to include in the protection group. All protected
    #   resources of this type are included in the protection group. You must
    #   set this when you set `Pattern` to `BY_RESOURCE_TYPE` and you must not
    #   set it for any other `Pattern` setting.
    #
    # @option params [Array<String>] :members
    #   The Amazon Resource Names (ARNs) of the resources to include in the
    #   protection group. You must set this when you set `Pattern` to
    #   `ARBITRARY` and you must not set it for any other `Pattern` setting.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_protection_group({
    #     protection_group_id: "ProtectionGroupId", # required
    #     aggregation: "SUM", # required, accepts SUM, MEAN, MAX
    #     pattern: "ALL", # required, accepts ALL, ARBITRARY, BY_RESOURCE_TYPE
    #     resource_type: "CLOUDFRONT_DISTRIBUTION", # accepts CLOUDFRONT_DISTRIBUTION, ROUTE_53_HOSTED_ZONE, ELASTIC_IP_ALLOCATION, CLASSIC_LOAD_BALANCER, APPLICATION_LOAD_BALANCER, GLOBAL_ACCELERATOR
    #     members: ["ResourceArn"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateProtectionGroup AWS API Documentation
    #
    # @overload update_protection_group(params = {})
    # @param [Hash] params ({})
    def update_protection_group(params = {}, options = {})
      req = build_request(:update_protection_group, params)
      req.send_request(options)
    end

    # Updates the details of an existing subscription. Only enter values for
    # parameters you want to change. Empty parameters are not updated.
    #
    # <note markdown="1"> For accounts that are members of an Organizations organization, Shield
    # Advanced subscriptions are billed against the organization's payer
    # account, regardless of whether the payer account itself is subscribed.
    #
    #  </note>
    #
    # @option params [String] :auto_renew
    #   When you initally create a subscription, `AutoRenew` is set to
    #   `ENABLED`. If `ENABLED`, the subscription will be automatically
    #   renewed at the end of the existing subscription period. You can change
    #   this by submitting an `UpdateSubscription` request. If the
    #   `UpdateSubscription` request does not included a value for
    #   `AutoRenew`, the existing value for `AutoRenew` remains unchanged.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription({
    #     auto_renew: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateSubscription AWS API Documentation
    #
    # @overload update_subscription(params = {})
    # @param [Hash] params ({})
    def update_subscription(params = {}, options = {})
      req = build_request(:update_subscription, params)
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
      context[:gem_name] = 'aws-sdk-shield'
      context[:gem_version] = '1.56.0'
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

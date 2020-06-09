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

    # Authorizes the DDoS Response Team (DRT) to access the specified Amazon
    # S3 bucket containing your AWS WAF logs. You can associate up to 10
    # Amazon S3 buckets with your subscription.
    #
    # To use the services of the DRT and make an `AssociateDRTLogBucket`
    # request, you must be subscribed to the [Business Support plan][1] or
    # the [Enterprise Support plan][2].
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/business-support/
    # [2]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :log_bucket
    #   The Amazon S3 bucket that contains your AWS WAF logs.
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

    # Authorizes the DDoS Response Team (DRT), using the specified role, to
    # access your AWS account to assist with DDoS attack mitigation during
    # potential attacks. This enables the DRT to inspect your AWS WAF
    # configuration and create or update AWS WAF rules and web ACLs.
    #
    # You can associate only one `RoleArn` with your subscription. If you
    # submit an `AssociateDRTRole` request for an account that already has
    # an associated role, the new `RoleArn` will replace the existing
    # `RoleArn`.
    #
    # Prior to making the `AssociateDRTRole` request, you must attach the
    # [AWSShieldDRTAccessPolicy][1] managed policy to the role you will
    # specify in the request. For more information see [Attaching and
    # Detaching IAM Policies](
    # https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
    # The role must also trust the service principal `
    # drt.shield.amazonaws.com`. For more information, see [IAM JSON Policy
    # Elements: Principal][2].
    #
    # The DRT will have access only to your AWS WAF and Shield resources. By
    # submitting this request, you authorize the DRT to inspect your AWS WAF
    # and Shield configuration and create and update AWS WAF rules and web
    # ACLs on your behalf. The DRT takes these actions only if explicitly
    # authorized by you.
    #
    # You must have the `iam:PassRole` permission to make an
    # `AssociateDRTRole` request. For more information, see [Granting a User
    # Permissions to Pass a Role to an AWS Service][3].
    #
    # To use the services of the DRT and make an `AssociateDRTRole` request,
    # you must be subscribed to the [Business Support plan][4] or the
    # [Enterprise Support plan][5].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    # [4]: https://aws.amazon.com/premiumsupport/business-support/
    # [5]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the role the DRT will use to access
    #   your AWS account.
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
    # your AWS resource to improve responsiveness and accuracy in attack
    # detection and mitigation.
    #
    # You define the health check in Route 53 and then associate it with
    # your Shield Advanced protection. For more information, see [Shield
    # Advanced Health-Based Detection][1] in the [AWS WAF and AWS Shield
    # Developer Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/
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
    # DDoS Response Team (DRT) to use. You must provide at least one phone
    # number in the emergency contact list.
    #
    # After you have initialized proactive engagement using this call, to
    # disable or enable proactive engagement, use the calls
    # `DisableProactiveEngagement` and `EnableProactiveEngagement`.
    #
    # <note markdown="1"> This call defines the list of email addresses and phone numbers that
    # the DDoS Response Team (DRT) can use to contact you for escalations to
    # the DRT and to initiate proactive customer support.
    #
    #  The contacts that you provide in the request replace any contacts that
    # were already defined. If you already have contacts defined and want to
    # use them, retrieve the list using `DescribeEmergencyContactSettings`
    # and then provide it to this call.
    #
    #  </note>
    #
    # @option params [required, Array<Types::EmergencyContact>] :emergency_contact_list
    #   A list of email addresses and phone numbers that the DDoS Response
    #   Team (DRT) can use to contact you for escalations to the DRT and to
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

    # Enables AWS Shield Advanced for a specific AWS resource. The resource
    # can be an Amazon CloudFront distribution, Elastic Load Balancing load
    # balancer, AWS Global Accelerator accelerator, Elastic IP Address, or
    # an Amazon Route 53 hosted zone.
    #
    # You can add protection to only a single resource with each
    # CreateProtection request. If you want to add protection to multiple
    # resources at once, use the [AWS WAF console][1]. For more information
    # see [Getting Started with AWS Shield Advanced][2] and [Add AWS Shield
    # Advanced Protection to more AWS Resources][3].
    #
    #
    #
    # [1]: https://console.aws.amazon.com/waf/
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
    #   * For an AWS CloudFront distribution:
    #     `arn:aws:cloudfront::account-id:distribution/distribution-id `
    #
    #   * For an AWS Global Accelerator accelerator:
    #     `arn:aws:globalaccelerator::account-id:accelerator/accelerator-id `
    #
    #   * For Amazon Route 53: `arn:aws:route53:::hostedzone/hosted-zone-id `
    #
    #   * For an Elastic IP address:
    #     `arn:aws:ec2:region:account-id:eip-allocation/allocation-id `
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

    # Activates AWS Shield Advanced for an account.
    #
    # As part of this request you can specify `EmergencySettings` that
    # automaticaly grant the DDoS response team (DRT) needed permissions to
    # assist you during a suspected DDoS attack. For more information see
    # [Authorize the DDoS Response Team to Create Rules and Web ACLs on Your
    # Behalf][1].
    #
    # To use the services of the DRT, you must be subscribed to the
    # [Business Support plan][2] or the [Enterprise Support plan][3].
    #
    # When you initally create a subscription, your subscription is set to
    # be automatically renewed at the end of the existing subscription
    # period. You can change this by submitting an `UpdateSubscription`
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/authorize-DRT.html
    # [2]: https://aws.amazon.com/premiumsupport/business-support/
    # [3]: https://aws.amazon.com/premiumsupport/enterprise-support/
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

    # Deletes an AWS Shield Advanced Protection.
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

    # Removes AWS Shield Advanced from an account. AWS Shield Advanced
    # requires a 1-year subscription commitment. You cannot delete a
    # subscription prior to the completion of that commitment.
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
    #   The unique identifier (ID) for the attack that to be described.
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

    # Returns the current role and list of Amazon S3 log buckets used by the
    # DDoS Response Team (DRT) to access your AWS account while assisting
    # with attack mitigation.
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

    # A list of email addresses and phone numbers that the DDoS Response
    # Team (DRT) can use to contact you if you have proactive engagement
    # enabled, for escalations to the DRT and to initiate proactive customer
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
    #   The unique identifier (ID) for the Protection object that is
    #   described. When submitting the `DescribeProtection` request you must
    #   provide either the `ResourceArn` or the `ProtectionID`, but not both.
    #
    # @option params [String] :resource_arn
    #   The ARN (Amazon Resource Name) of the AWS resource for the Protection
    #   object that is described. When submitting the `DescribeProtection`
    #   request you must provide either the `ResourceArn` or the
    #   `ProtectionID`, but not both.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtection AWS API Documentation
    #
    # @overload describe_protection(params = {})
    # @param [Hash] params ({})
    def describe_protection(params = {}, options = {})
      req = build_request(:describe_protection, params)
      req.send_request(options)
    end

    # Provides details about the AWS Shield Advanced subscription for an
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscription AWS API Documentation
    #
    # @overload describe_subscription(params = {})
    # @param [Hash] params ({})
    def describe_subscription(params = {}, options = {})
      req = build_request(:describe_subscription, params)
      req.send_request(options)
    end

    # Removes authorization from the DDoS Response Team (DRT) to notify
    # contacts about escalations to the DRT and to initiate proactive
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

    # Removes the DDoS Response Team's (DRT) access to the specified Amazon
    # S3 bucket containing your AWS WAF logs.
    #
    # To make a `DisassociateDRTLogBucket` request, you must be subscribed
    # to the [Business Support plan][1] or the [Enterprise Support plan][2].
    # However, if you are not subscribed to one of these support plans, but
    # had been previously and had granted the DRT access to your account,
    # you can submit a `DisassociateDRTLogBucket` request to remove this
    # access.
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/business-support/
    # [2]: https://aws.amazon.com/premiumsupport/enterprise-support/
    #
    # @option params [required, String] :log_bucket
    #   The Amazon S3 bucket that contains your AWS WAF logs.
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

    # Removes the DDoS Response Team's (DRT) access to your AWS account.
    #
    # To make a `DisassociateDRTRole` request, you must be subscribed to the
    # [Business Support plan][1] or the [Enterprise Support plan][2].
    # However, if you are not subscribed to one of these support plans, but
    # had been previously and had granted the DRT access to your account,
    # you can submit a `DisassociateDRTRole` request to remove this access.
    #
    #
    #
    # [1]: https://aws.amazon.com/premiumsupport/business-support/
    # [2]: https://aws.amazon.com/premiumsupport/enterprise-support/
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
    # your AWS resource to improve responsiveness and accuracy in attack
    # detection and mitigation.
    #
    # You define the health check in Route 53 and then associate or
    # disassociate it with your Shield Advanced protection. For more
    # information, see [Shield Advanced Health-Based Detection][1] in the
    # [AWS WAF and AWS Shield Developer Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option
    # [2]: https://docs.aws.amazon.com/waf/latest/developerguide/
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

    # Authorizes the DDoS Response Team (DRT) to use email and phone to
    # notify contacts about escalations to the DRT and to initiate proactive
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
    #   The ARN (Amazon Resource Name) of the resource that was attacked. If
    #   this is left blank, all applicable resources for this account will be
    #   included.
    #
    # @option params [Types::TimeRange] :start_time
    #   The start of the time period for the attacks. This is a `timestamp`
    #   type. The sample request above indicates a `number` type because the
    #   default used by WAF is Unix time in seconds. However any valid
    #   [timestamp format][1] is allowed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #
    # @option params [Types::TimeRange] :end_time
    #   The end of the time period for the attacks. This is a `timestamp`
    #   type. The sample request above indicates a `number` type because the
    #   default used by WAF is Unix time in seconds. However any valid
    #   [timestamp format][1] is allowed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #
    # @option params [String] :next_token
    #   The `ListAttacksRequest.NextMarker` value from a previous call to
    #   `ListAttacksRequest`. Pass null if this is the first call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of AttackSummary objects to be returned. If this is
    #   left blank, the first 20 results will be returned.
    #
    #   This is a maximum value; it is possible that AWS WAF will return the
    #   results in smaller batches. That is, the number of AttackSummary
    #   objects returned could be less than `MaxResults`, even if there are
    #   still more AttackSummary objects yet to return. If there are more
    #   AttackSummary objects to return, AWS WAF will always also return a
    #   `NextToken`.
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

    # Lists all Protection objects for the account.
    #
    # @option params [String] :next_token
    #   The `ListProtectionsRequest.NextToken` value from a previous call to
    #   `ListProtections`. Pass null if this is the first call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Protection objects to be returned. If this is
    #   left blank the first 20 results will be returned.
    #
    #   This is a maximum value; it is possible that AWS WAF will return the
    #   results in smaller batches. That is, the number of Protection objects
    #   returned could be less than `MaxResults`, even if there are still more
    #   Protection objects yet to return. If there are more Protection objects
    #   to return, AWS WAF will always also return a `NextToken`.
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

    # Updates the details of the list of email addresses and phone numbers
    # that the DDoS Response Team (DRT) can use to contact you if you have
    # proactive engagement enabled, for escalations to the DRT and to
    # initiate proactive customer support.
    #
    # @option params [Array<Types::EmergencyContact>] :emergency_contact_list
    #   A list of email addresses and phone numbers that the DDoS Response
    #   Team (DRT) can use to contact you if you have proactive engagement
    #   enabled, for escalations to the DRT and to initiate proactive customer
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

    # Updates the details of an existing subscription. Only enter values for
    # parameters you want to change. Empty parameters are not updated.
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
      context[:gem_version] = '1.26.0'
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

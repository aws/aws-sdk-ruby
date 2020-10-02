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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticloadbalancingv2)

module Aws::ElasticLoadBalancingV2
  # An API client for ElasticLoadBalancingV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ElasticLoadBalancingV2::Client.new(
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

    @identifier = :elasticloadbalancingv2

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Adds the specified SSL server certificate to the certificate list for
    # the specified HTTPS or TLS listener.
    #
    # If the certificate in already in the certificate list, the call is
    # successful but the certificate is not added again.
    #
    # To get the certificate list for a listener, use
    # DescribeListenerCertificates. To remove certificates from the
    # certificate list for a listener, use RemoveListenerCertificates. To
    # replace the default certificate for a listener, use ModifyListener.
    #
    # For more information, see [SSL Certificates][1] in the *Application
    # Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, Array<Types::Certificate>] :certificates
    #   The certificate to add. You can specify one certificate per call. Set
    #   `CertificateArn` to the certificate ARN but do not set `IsDefault`.
    #
    # @return [Types::AddListenerCertificatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddListenerCertificatesOutput#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_listener_certificates({
    #     listener_arn: "ListenerArn", # required
    #     certificates: [ # required
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddListenerCertificates AWS API Documentation
    #
    # @overload add_listener_certificates(params = {})
    # @param [Hash] params ({})
    def add_listener_certificates(params = {}, options = {})
      req = build_request(:add_listener_certificates, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified Elastic Load Balancing
    # resource. You can tag your Application Load Balancers, Network Load
    # Balancers, target groups, listeners, and rules.
    #
    # Each tag consists of a key and an optional value. If a resource
    # already has a tag with the same key, `AddTags` updates its value.
    #
    # To list the current tags for your resources, use DescribeTags. To
    # remove tags from your resources, use RemoveTags.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a load balancer
    #
    #   # This example adds the specified tags to the specified load balancer.
    #
    #   resp = client.add_tags({
    #     resource_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     ], 
    #     tags: [
    #       {
    #         key: "project", 
    #         value: "lima", 
    #       }, 
    #       {
    #         key: "department", 
    #         value: "digital-media", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_arns: ["ResourceArn"], # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Creates a listener for the specified Application Load Balancer or
    # Network Load Balancer.
    #
    # To update a listener, use ModifyListener. When you are finished with a
    # listener, you can delete it using DeleteListener. If you are finished
    # with both the listener and the load balancer, you can delete them both
    # using DeleteLoadBalancer.
    #
    # This operation is idempotent, which means that it completes at most
    # one time. If you attempt to create multiple listeners with the same
    # settings, each call succeeds.
    #
    # For more information, see [Listeners for Your Application Load
    # Balancers][1] in the *Application Load Balancers Guide* and [Listeners
    # for Your Network Load Balancers][2] in the *Network Load Balancers
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, String] :protocol
    #   The protocol for connections from clients to the load balancer. For
    #   Application Load Balancers, the supported protocols are HTTP and
    #   HTTPS. For Network Load Balancers, the supported protocols are TCP,
    #   TLS, UDP, and TCP\_UDP.
    #
    # @option params [required, Integer] :port
    #   The port on which the load balancer is listening.
    #
    # @option params [String] :ssl_policy
    #   \[HTTPS and TLS listeners\] The security policy that defines which
    #   protocols and ciphers are supported. The following are the possible
    #   values:
    #
    #   * `ELBSecurityPolicy-2016-08`
    #
    #   * `ELBSecurityPolicy-TLS-1-0-2015-04`
    #
    #   * `ELBSecurityPolicy-TLS-1-1-2017-01`
    #
    #   * `ELBSecurityPolicy-TLS-1-2-2017-01`
    #
    #   * `ELBSecurityPolicy-TLS-1-2-Ext-2018-06`
    #
    #   * `ELBSecurityPolicy-FS-2018-06`
    #
    #   * `ELBSecurityPolicy-FS-1-1-2019-08`
    #
    #   * `ELBSecurityPolicy-FS-1-2-2019-08`
    #
    #   * `ELBSecurityPolicy-FS-1-2-Res-2019-08`
    #
    #   For more information, see [Security Policies][1] in the *Application
    #   Load Balancers Guide* and [Security Policies][2] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   \[HTTPS and TLS listeners\] The default certificate for the listener.
    #   You must provide exactly one certificate. Set `CertificateArn` to the
    #   certificate ARN but do not set `IsDefault`.
    #
    #   To create a certificate list for the listener, use
    #   AddListenerCertificates.
    #
    # @option params [required, Array<Types::Action>] :default_actions
    #   The actions for the default rule. The rule must include one forward
    #   action or one or more fixed-response actions.
    #
    #   If the action type is `forward`, you specify one or more target
    #   groups. The protocol of the target group must be HTTP or HTTPS for an
    #   Application Load Balancer. The protocol of the target group must be
    #   TCP, TLS, UDP, or TCP\_UDP for a Network Load Balancer.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-oidc`, you
    #   authenticate users through an identity provider that is OpenID Connect
    #   (OIDC) compliant.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-cognito`, you
    #   authenticate users through the user pools supported by Amazon Cognito.
    #
    #   \[Application Load Balancer\] If the action type is `redirect`, you
    #   redirect specified client requests from one URL to another.
    #
    #   \[Application Load Balancer\] If the action type is `fixed-response`,
    #   you drop specified client requests and return a custom HTTP response.
    #
    # @option params [Array<String>] :alpn_policy
    #   \[TLS listeners\] The name of the Application-Layer Protocol
    #   Negotiation (ALPN) policy. You can specify one policy name. The
    #   following are the possible values:
    #
    #   * `HTTP1Only`
    #
    #   * `HTTP2Only`
    #
    #   * `HTTP2Optional`
    #
    #   * `HTTP2Preferred`
    #
    #   * `None`
    #
    #   For more information, see [ALPN Policies][1] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to assign to the listener.
    #
    # @return [Types::CreateListenerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListenerOutput#listeners #listeners} => Array&lt;Types::Listener&gt;
    #
    #
    # @example Example: To create an HTTP listener
    #
    #   # This example creates an HTTP listener for the specified load balancer that forwards requests to the specified target
    #   # group.
    #
    #   resp = client.create_listener({
    #     default_actions: [
    #       {
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         type: "forward", 
    #       }, 
    #     ], 
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     port: 80, 
    #     protocol: "HTTP", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listeners: [
    #       {
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To create an HTTPS listener
    #
    #   # This example creates an HTTPS listener for the specified load balancer that forwards requests to the specified target
    #   # group. Note that you must specify an SSL certificate for an HTTPS listener. You can create and manage certificates using
    #   # AWS Certificate Manager (ACM). Alternatively, you can create a certificate using SSL/TLS tools, get the certificate
    #   # signed by a certificate authority (CA), and upload the certificate to AWS Identity and Access Management (IAM).
    #
    #   resp = client.create_listener({
    #     certificates: [
    #       {
    #         certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-server-cert", 
    #       }, 
    #     ], 
    #     default_actions: [
    #       {
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         type: "forward", 
    #       }, 
    #     ], 
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     port: 443, 
    #     protocol: "HTTPS", 
    #     ssl_policy: "ELBSecurityPolicy-2015-05", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listeners: [
    #       {
    #         certificates: [
    #           {
    #             certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-server-cert", 
    #           }, 
    #         ], 
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         port: 443, 
    #         protocol: "HTTPS", 
    #         ssl_policy: "ELBSecurityPolicy-2015-05", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     protocol: "HTTP", # required, accepts HTTP, HTTPS, TCP, TLS, UDP, TCP_UDP
    #     port: 1, # required
    #     ssl_policy: "SslPolicyName",
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false,
    #       },
    #     ],
    #     default_actions: [ # required
    #       {
    #         type: "forward", # required, accepts forward, authenticate-oidc, authenticate-cognito, redirect, fixed-response
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #           use_existing_client_secret: false,
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301", # required, accepts HTTP_301, HTTP_302
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType",
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1,
    #             },
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1,
    #           },
    #         },
    #       },
    #     ],
    #     alpn_policy: ["AlpnPolicyValue"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].load_balancer_arn #=> String
    #   resp.listeners[0].port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.listeners[0].certificates #=> Array
    #   resp.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.listeners[0].certificates[0].is_default #=> Boolean
    #   resp.listeners[0].ssl_policy #=> String
    #   resp.listeners[0].default_actions #=> Array
    #   resp.listeners[0].default_actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.scope #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.scope #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.listeners[0].default_actions[0].order #=> Integer
    #   resp.listeners[0].default_actions[0].redirect_config.protocol #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.port #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.host #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.path #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.query #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.listeners[0].default_actions[0].fixed_response_config.message_body #=> String
    #   resp.listeners[0].default_actions[0].fixed_response_config.status_code #=> String
    #   resp.listeners[0].default_actions[0].fixed_response_config.content_type #=> String
    #   resp.listeners[0].default_actions[0].forward_config.target_groups #=> Array
    #   resp.listeners[0].default_actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.listeners[0].default_actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.listeners[0].alpn_policy #=> Array
    #   resp.listeners[0].alpn_policy[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateListener AWS API Documentation
    #
    # @overload create_listener(params = {})
    # @param [Hash] params ({})
    def create_listener(params = {}, options = {})
      req = build_request(:create_listener, params)
      req.send_request(options)
    end

    # Creates an Application Load Balancer or a Network Load Balancer.
    #
    # When you create a load balancer, you can specify security groups,
    # public subnets, IP address type, and tags. Otherwise, you could do so
    # later using SetSecurityGroups, SetSubnets, SetIpAddressType, and
    # AddTags.
    #
    # To create listeners for your load balancer, use CreateListener. To
    # describe your current load balancers, see DescribeLoadBalancers. When
    # you are finished with a load balancer, you can delete it using
    # DeleteLoadBalancer.
    #
    # For limit information, see [Limits for Your Application Load
    # Balancer][1] in the *Application Load Balancers Guide* and [Limits for
    # Your Network Load Balancer][2] in the *Network Load Balancers Guide*.
    #
    # This operation is idempotent, which means that it completes at most
    # one time. If you attempt to create multiple load balancers with the
    # same settings, each call succeeds.
    #
    # For more information, see [Application Load Balancers][3] in the
    # *Application Load Balancers Guide* and [Network Load Balancers][4] in
    # the *Network Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html
    # [3]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html
    # [4]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html
    #
    # @option params [required, String] :name
    #   The name of the load balancer.
    #
    #   This name must be unique per region per account, can have a maximum of
    #   32 characters, must contain only alphanumeric characters or hyphens,
    #   must not begin or end with a hyphen, and must not begin with
    #   "internal-".
    #
    # @option params [Array<String>] :subnets
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet mappings.
    #
    #   \[Application Load Balancers\] You must specify subnets from at least
    #   two Availability Zones.
    #
    #   \[Application Load Balancers on Outposts\] You must specify one
    #   Outpost subnet.
    #
    #   \[Application Load Balancers on Local Zones\] You can specify subnets
    #   from one or more Local Zones.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones.
    #
    # @option params [Array<Types::SubnetMapping>] :subnet_mappings
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet mappings.
    #
    #   \[Application Load Balancers\] You must specify subnets from at least
    #   two Availability Zones. You cannot specify Elastic IP addresses for
    #   your subnets.
    #
    #   \[Application Load Balancers on Outposts\] You must specify one
    #   Outpost subnet.
    #
    #   \[Application Load Balancers on Local Zones\] You can specify subnets
    #   from one or more Local Zones.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones. You can specify one Elastic IP address per subnet
    #   if you need static IP addresses for your internet-facing load
    #   balancer. For internal load balancers, you can specify one private IP
    #   address per subnet from the IPv4 range of the subnet.
    #
    # @option params [Array<String>] :security_groups
    #   \[Application Load Balancers\] The IDs of the security groups for the
    #   load balancer.
    #
    # @option params [String] :scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses. The DNS name of an Internet-facing load balancer is
    #   publicly resolvable to the public IP addresses of the nodes.
    #   Therefore, Internet-facing load balancers can route requests from
    #   clients over the internet.
    #
    #   The nodes of an internal load balancer have only private IP addresses.
    #   The DNS name of an internal load balancer is publicly resolvable to
    #   the private IP addresses of the nodes. Therefore, internal load
    #   balancers can route requests only from clients with access to the VPC
    #   for the load balancer.
    #
    #   The default is an Internet-facing load balancer.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to assign to the load balancer.
    #
    # @option params [String] :type
    #   The type of load balancer. The default is `application`.
    #
    # @option params [String] :ip_address_type
    #   \[Application Load Balancers\] The type of IP addresses used by the
    #   subnets for your load balancer. The possible values are `ipv4` (for
    #   IPv4 addresses) and `dualstack` (for IPv4 and IPv6 addresses).
    #   Internal load balancers must use `ipv4`.
    #
    # @option params [String] :customer_owned_ipv_4_pool
    #   \[Application Load Balancers on Outposts\] The ID of the
    #   customer-owned address pool (CoIP pool).
    #
    # @return [Types::CreateLoadBalancerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLoadBalancerOutput#load_balancers #load_balancers} => Array&lt;Types::LoadBalancer&gt;
    #
    #
    # @example Example: To create an Internet-facing load balancer
    #
    #   # This example creates an Internet-facing load balancer and enables the Availability Zones for the specified subnets.
    #
    #   resp = client.create_load_balancer({
    #     name: "my-load-balancer", 
    #     subnets: [
    #       "subnet-b7d581c0", 
    #       "subnet-8360a9e7", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancers: [
    #       {
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #             zone_name: "us-west-2a", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #             zone_name: "us-west-2b", 
    #           }, 
    #         ], 
    #         canonical_hosted_zone_id: "Z2P70J7EXAMPLE", 
    #         created_time: Time.parse("2016-03-25T21:26:12.920Z"), 
    #         dns_name: "my-load-balancer-424835706.us-west-2.elb.amazonaws.com", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         load_balancer_name: "my-load-balancer", 
    #         scheme: "internet-facing", 
    #         security_groups: [
    #           "sg-5943793c", 
    #         ], 
    #         state: {
    #           code: "provisioning", 
    #         }, 
    #         type: "application", 
    #         vpc_id: "vpc-3ac0fb5f", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To create an internal load balancer
    #
    #   # This example creates an internal load balancer and enables the Availability Zones for the specified subnets.
    #
    #   resp = client.create_load_balancer({
    #     name: "my-internal-load-balancer", 
    #     scheme: "internal", 
    #     security_groups: [
    #     ], 
    #     subnets: [
    #       "subnet-b7d581c0", 
    #       "subnet-8360a9e7", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancers: [
    #       {
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #             zone_name: "us-west-2a", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #             zone_name: "us-west-2b", 
    #           }, 
    #         ], 
    #         canonical_hosted_zone_id: "Z2P70J7EXAMPLE", 
    #         created_time: Time.parse("2016-03-25T21:29:48.850Z"), 
    #         dns_name: "internal-my-internal-load-balancer-1529930873.us-west-2.elb.amazonaws.com", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-internal-load-balancer/5b49b8d4303115c2", 
    #         load_balancer_name: "my-internal-load-balancer", 
    #         scheme: "internal", 
    #         security_groups: [
    #           "sg-5943793c", 
    #         ], 
    #         state: {
    #           code: "provisioning", 
    #         }, 
    #         type: "application", 
    #         vpc_id: "vpc-3ac0fb5f", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_load_balancer({
    #     name: "LoadBalancerName", # required
    #     subnets: ["SubnetId"],
    #     subnet_mappings: [
    #       {
    #         subnet_id: "SubnetId",
    #         allocation_id: "AllocationId",
    #         private_i_pv_4_address: "PrivateIPv4Address",
    #       },
    #     ],
    #     security_groups: ["SecurityGroupId"],
    #     scheme: "internet-facing", # accepts internet-facing, internal
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     type: "application", # accepts application, network
    #     ip_address_type: "ipv4", # accepts ipv4, dualstack
    #     customer_owned_ipv_4_pool: "CustomerOwnedIpv4Pool",
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].load_balancer_arn #=> String
    #   resp.load_balancers[0].dns_name #=> String
    #   resp.load_balancers[0].canonical_hosted_zone_id #=> String
    #   resp.load_balancers[0].created_time #=> Time
    #   resp.load_balancers[0].load_balancer_name #=> String
    #   resp.load_balancers[0].scheme #=> String, one of "internet-facing", "internal"
    #   resp.load_balancers[0].vpc_id #=> String
    #   resp.load_balancers[0].state.code #=> String, one of "active", "provisioning", "active_impaired", "failed"
    #   resp.load_balancers[0].state.reason #=> String
    #   resp.load_balancers[0].type #=> String, one of "application", "network"
    #   resp.load_balancers[0].availability_zones #=> Array
    #   resp.load_balancers[0].availability_zones[0].zone_name #=> String
    #   resp.load_balancers[0].availability_zones[0].subnet_id #=> String
    #   resp.load_balancers[0].availability_zones[0].outpost_id #=> String
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses #=> Array
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses[0].ip_address #=> String
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses[0].allocation_id #=> String
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses[0].private_i_pv_4_address #=> String
    #   resp.load_balancers[0].security_groups #=> Array
    #   resp.load_balancers[0].security_groups[0] #=> String
    #   resp.load_balancers[0].ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.load_balancers[0].customer_owned_ipv_4_pool #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateLoadBalancer AWS API Documentation
    #
    # @overload create_load_balancer(params = {})
    # @param [Hash] params ({})
    def create_load_balancer(params = {}, options = {})
      req = build_request(:create_load_balancer, params)
      req.send_request(options)
    end

    # Creates a rule for the specified listener. The listener must be
    # associated with an Application Load Balancer.
    #
    # Each rule consists of a priority, one or more actions, and one or more
    # conditions. Rules are evaluated in priority order, from the lowest
    # value to the highest value. When the conditions for a rule are met,
    # its actions are performed. If the conditions for no rules are met, the
    # actions for the default rule are performed. For more information, see
    # [Listener Rules][1] in the *Application Load Balancers Guide*.
    #
    # To view your current rules, use DescribeRules. To update a rule, use
    # ModifyRule. To set the priorities of your rules, use
    # SetRulePriorities. To delete a rule, use DeleteRule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, Array<Types::RuleCondition>] :conditions
    #   The conditions. Each rule can optionally include up to one of each of
    #   the following conditions: `http-request-method`, `host-header`,
    #   `path-pattern`, and `source-ip`. Each rule can also optionally include
    #   one or more of each of the following conditions: `http-header` and
    #   `query-string`.
    #
    # @option params [required, Integer] :priority
    #   The rule priority. A listener can't have multiple rules with the same
    #   priority.
    #
    # @option params [required, Array<Types::Action>] :actions
    #   The actions. Each rule must include exactly one of the following types
    #   of actions: `forward`, `fixed-response`, or `redirect`, and it must be
    #   the last action to be performed.
    #
    #   If the action type is `forward`, you specify one or more target
    #   groups. The protocol of the target group must be HTTP or HTTPS for an
    #   Application Load Balancer. The protocol of the target group must be
    #   TCP, TLS, UDP, or TCP\_UDP for a Network Load Balancer.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-oidc`, you
    #   authenticate users through an identity provider that is OpenID Connect
    #   (OIDC) compliant.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-cognito`, you
    #   authenticate users through the user pools supported by Amazon Cognito.
    #
    #   \[Application Load Balancer\] If the action type is `redirect`, you
    #   redirect specified client requests from one URL to another.
    #
    #   \[Application Load Balancer\] If the action type is `fixed-response`,
    #   you drop specified client requests and return a custom HTTP response.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to assign to the rule.
    #
    # @return [Types::CreateRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #
    #
    # @example Example: To create a rule
    #
    #   # This example creates a rule that forwards requests to the specified target group if the URL contains the specified
    #   # pattern (for example, /img/*).
    #
    #   resp = client.create_rule({
    #     actions: [
    #       {
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         type: "forward", 
    #       }, 
    #     ], 
    #     conditions: [
    #       {
    #         field: "path-pattern", 
    #         values: [
    #           "/img/*", 
    #         ], 
    #       }, 
    #     ], 
    #     listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #     priority: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         conditions: [
    #           {
    #             field: "path-pattern", 
    #             values: [
    #               "/img/*", 
    #             ], 
    #           }, 
    #         ], 
    #         is_default: false, 
    #         priority: "10", 
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     listener_arn: "ListenerArn", # required
    #     conditions: [ # required
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #         host_header_config: {
    #           values: ["StringValue"],
    #         },
    #         path_pattern_config: {
    #           values: ["StringValue"],
    #         },
    #         http_header_config: {
    #           http_header_name: "HttpHeaderConditionName",
    #           values: ["StringValue"],
    #         },
    #         query_string_config: {
    #           values: [
    #             {
    #               key: "StringValue",
    #               value: "StringValue",
    #             },
    #           ],
    #         },
    #         http_request_method_config: {
    #           values: ["StringValue"],
    #         },
    #         source_ip_config: {
    #           values: ["StringValue"],
    #         },
    #       },
    #     ],
    #     priority: 1, # required
    #     actions: [ # required
    #       {
    #         type: "forward", # required, accepts forward, authenticate-oidc, authenticate-cognito, redirect, fixed-response
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #           use_existing_client_secret: false,
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301", # required, accepts HTTP_301, HTTP_302
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType",
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1,
    #             },
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1,
    #           },
    #         },
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].conditions[0].host_header_config.values #=> Array
    #   resp.rules[0].conditions[0].host_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].path_pattern_config.values #=> Array
    #   resp.rules[0].conditions[0].path_pattern_config.values[0] #=> String
    #   resp.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.rules[0].conditions[0].http_header_config.values #=> Array
    #   resp.rules[0].conditions[0].http_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].query_string_config.values #=> Array
    #   resp.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.rules[0].conditions[0].http_request_method_config.values #=> Array
    #   resp.rules[0].conditions[0].http_request_method_config.values[0] #=> String
    #   resp.rules[0].conditions[0].source_ip_config.values #=> Array
    #   resp.rules[0].conditions[0].source_ip_config.values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].order #=> Integer
    #   resp.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.rules[0].actions[0].redirect_config.port #=> String
    #   resp.rules[0].actions[0].redirect_config.host #=> String
    #   resp.rules[0].actions[0].redirect_config.path #=> String
    #   resp.rules[0].actions[0].redirect_config.query #=> String
    #   resp.rules[0].actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups #=> Array
    #   resp.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.rules[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a target group.
    #
    # To register targets with the target group, use RegisterTargets. To
    # update the health check settings for the target group, use
    # ModifyTargetGroup. To monitor the health of targets in the target
    # group, use DescribeTargetHealth.
    #
    # To route traffic to the targets in a target group, specify the target
    # group in an action using CreateListener or CreateRule.
    #
    # To delete a target group, use DeleteTargetGroup.
    #
    # This operation is idempotent, which means that it completes at most
    # one time. If you attempt to create multiple target groups with the
    # same settings, each call succeeds.
    #
    # For more information, see [Target Groups for Your Application Load
    # Balancers][1] in the *Application Load Balancers Guide* or [Target
    # Groups for Your Network Load Balancers][2] in the *Network Load
    # Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html
    #
    # @option params [required, String] :name
    #   The name of the target group.
    #
    #   This name must be unique per region per account, can have a maximum of
    #   32 characters, must contain only alphanumeric characters or hyphens,
    #   and must not begin or end with a hyphen.
    #
    # @option params [String] :protocol
    #   The protocol to use for routing traffic to the targets. For
    #   Application Load Balancers, the supported protocols are HTTP and
    #   HTTPS. For Network Load Balancers, the supported protocols are TCP,
    #   TLS, UDP, or TCP\_UDP. A TCP\_UDP listener must be associated with a
    #   TCP\_UDP target group. If the target is a Lambda function, this
    #   parameter does not apply.
    #
    # @option params [Integer] :port
    #   The port on which the targets receive traffic. This port is used
    #   unless you specify a port override when registering the target. If the
    #   target is a Lambda function, this parameter does not apply.
    #
    # @option params [String] :vpc_id
    #   The identifier of the virtual private cloud (VPC). If the target is a
    #   Lambda function, this parameter does not apply. Otherwise, this
    #   parameter is required.
    #
    # @option params [String] :health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. For Application Load Balancers, the default is HTTP. For
    #   Network Load Balancers, the default is TCP. The TCP protocol is
    #   supported for health checks only if the protocol of the target group
    #   is TCP, TLS, UDP, or TCP\_UDP. The TLS, UDP, and TCP\_UDP protocols
    #   are not supported for health checks.
    #
    # @option params [String] :health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets. The default is `traffic-port`, which is the port on which
    #   each target receives traffic from the load balancer.
    #
    # @option params [Boolean] :health_check_enabled
    #   Indicates whether health checks are enabled. If the target type is
    #   `lambda`, health checks are disabled by default but can be enabled. If
    #   the target type is `instance` or `ip`, health checks are always
    #   enabled and cannot be disabled.
    #
    # @option params [String] :health_check_path
    #   \[HTTP/HTTPS health checks\] The ping path that is the destination on
    #   the targets for health checks. The default is /.
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. For HTTP and HTTPS health checks, the range is
    #   5–300 seconds. For TCP health checks, the supported values are 10 and
    #   30 seconds. If the target type is `instance` or `ip`, the default is
    #   30 seconds. If the target type is `lambda`, the default is 35 seconds.
    #
    # @option params [Integer] :health_check_timeout_seconds
    #   The amount of time, in seconds, during which no response from a target
    #   means a failed health check. For target groups with a protocol of HTTP
    #   or HTTPS, the default is 5 seconds. For target groups with a protocol
    #   of TCP or TLS, this value must be 6 seconds for HTTP health checks and
    #   10 seconds for TCP and HTTPS health checks. If the target type is
    #   `lambda`, the default is 30 seconds.
    #
    # @option params [Integer] :healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy. For target groups with a
    #   protocol of HTTP or HTTPS, the default is 5. For target groups with a
    #   protocol of TCP or TLS, the default is 3. If the target type is
    #   `lambda`, the default is 5.
    #
    # @option params [Integer] :unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering a target unhealthy. For target groups with a protocol of
    #   HTTP or HTTPS, the default is 2. For target groups with a protocol of
    #   TCP or TLS, this value must be the same as the healthy threshold
    #   count. If the target type is `lambda`, the default is 2.
    #
    # @option params [Types::Matcher] :matcher
    #   \[HTTP/HTTPS health checks\] The HTTP codes to use when checking for a
    #   successful response from a target.
    #
    # @option params [String] :target_type
    #   The type of target that you must specify when registering targets with
    #   this target group. You can't specify targets for a target group using
    #   more than one target type.
    #
    #   * `instance` - Targets are specified by instance ID. This is the
    #     default value.
    #
    #   * `ip` - Targets are specified by IP address. You can specify IP
    #     addresses from the subnets of the virtual private cloud (VPC) for
    #     the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and
    #     192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't
    #     specify publicly routable IP addresses.
    #
    #   * `lambda` - The target groups contains a single Lambda function.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to assign to the target group.
    #
    # @return [Types::CreateTargetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTargetGroupOutput#target_groups #target_groups} => Array&lt;Types::TargetGroup&gt;
    #
    #
    # @example Example: To create a target group
    #
    #   # This example creates a target group that you can use to route traffic to targets using HTTP on port 80. This target
    #   # group uses the default health check configuration.
    #
    #   resp = client.create_target_group({
    #     name: "my-targets", 
    #     port: 80, 
    #     protocol: "HTTP", 
    #     vpc_id: "vpc-3ac0fb5f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_groups: [
    #       {
    #         health_check_interval_seconds: 30, 
    #         health_check_path: "/", 
    #         health_check_port: "traffic-port", 
    #         health_check_protocol: "HTTP", 
    #         health_check_timeout_seconds: 5, 
    #         healthy_threshold_count: 5, 
    #         matcher: {
    #           http_code: "200", 
    #         }, 
    #         port: 80, 
    #         protocol: "HTTP", 
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         target_group_name: "my-targets", 
    #         unhealthy_threshold_count: 2, 
    #         vpc_id: "vpc-3ac0fb5f", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_target_group({
    #     name: "TargetGroupName", # required
    #     protocol: "HTTP", # accepts HTTP, HTTPS, TCP, TLS, UDP, TCP_UDP
    #     port: 1,
    #     vpc_id: "VpcId",
    #     health_check_protocol: "HTTP", # accepts HTTP, HTTPS, TCP, TLS, UDP, TCP_UDP
    #     health_check_port: "HealthCheckPort",
    #     health_check_enabled: false,
    #     health_check_path: "Path",
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: "HttpCode", # required
    #     },
    #     target_type: "instance", # accepts instance, ip, lambda
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.target_groups #=> Array
    #   resp.target_groups[0].target_group_arn #=> String
    #   resp.target_groups[0].target_group_name #=> String
    #   resp.target_groups[0].protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.target_groups[0].port #=> Integer
    #   resp.target_groups[0].vpc_id #=> String
    #   resp.target_groups[0].health_check_protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.target_groups[0].health_check_port #=> String
    #   resp.target_groups[0].health_check_enabled #=> Boolean
    #   resp.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.target_groups[0].health_check_path #=> String
    #   resp.target_groups[0].matcher.http_code #=> String
    #   resp.target_groups[0].load_balancer_arns #=> Array
    #   resp.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.target_groups[0].target_type #=> String, one of "instance", "ip", "lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateTargetGroup AWS API Documentation
    #
    # @overload create_target_group(params = {})
    # @param [Hash] params ({})
    def create_target_group(params = {}, options = {})
      req = build_request(:create_target_group, params)
      req.send_request(options)
    end

    # Deletes the specified listener.
    #
    # Alternatively, your listener is deleted when you delete the load
    # balancer to which it is attached, using DeleteLoadBalancer.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a listener
    #
    #   # This example deletes the specified listener.
    #
    #   resp = client.delete_listener({
    #     listener_arn: "arn:aws:elasticloadbalancing:ua-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener({
    #     listener_arn: "ListenerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListener AWS API Documentation
    #
    # @overload delete_listener(params = {})
    # @param [Hash] params ({})
    def delete_listener(params = {}, options = {})
      req = build_request(:delete_listener, params)
      req.send_request(options)
    end

    # Deletes the specified Application Load Balancer or Network Load
    # Balancer and its attached listeners.
    #
    # You can't delete a load balancer if deletion protection is enabled.
    # If the load balancer does not exist or has already been deleted, the
    # call succeeds.
    #
    # Deleting a load balancer does not affect its registered targets. For
    # example, your EC2 instances continue to run and are still registered
    # to their target groups. If you no longer need these EC2 instances, you
    # can stop or terminate them.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a load balancer
    #
    #   # This example deletes the specified load balancer.
    #
    #   resp = client.delete_load_balancer({
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_load_balancer({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancer AWS API Documentation
    #
    # @overload delete_load_balancer(params = {})
    # @param [Hash] params ({})
    def delete_load_balancer(params = {}, options = {})
      req = build_request(:delete_load_balancer, params)
      req.send_request(options)
    end

    # Deletes the specified rule.
    #
    # You can't delete the default rule.
    #
    # @option params [required, String] :rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a rule
    #
    #   # This example deletes the specified rule.
    #
    #   resp = client.delete_rule({
    #     rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     rule_arn: "RuleArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Deletes the specified target group.
    #
    # You can delete a target group if it is not referenced by any actions.
    # Deleting a target group also deletes any associated health checks.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a target group
    #
    #   # This example deletes the specified target group.
    #
    #   resp = client.delete_target_group({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target_group({
    #     target_group_arn: "TargetGroupArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroup AWS API Documentation
    #
    # @overload delete_target_group(params = {})
    # @param [Hash] params ({})
    def delete_target_group(params = {}, options = {})
      req = build_request(:delete_target_group, params)
      req.send_request(options)
    end

    # Deregisters the specified targets from the specified target group.
    # After the targets are deregistered, they no longer receive traffic
    # from the load balancer.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::TargetDescription>] :targets
    #   The targets. If you specified a port override when you registered a
    #   target, you must specify both the target ID and the port when you
    #   deregister it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To deregister a target from a target group
    #
    #   # This example deregisters the specified instance from the specified target group.
    #
    #   resp = client.deregister_targets({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     targets: [
    #       {
    #         id: "i-0f76fade", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_targets({
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeregisterTargets AWS API Documentation
    #
    # @overload deregister_targets(params = {})
    # @param [Hash] params ({})
    def deregister_targets(params = {}, options = {})
      req = build_request(:deregister_targets, params)
      req.send_request(options)
    end

    # Describes the current Elastic Load Balancing resource limits for your
    # AWS account.
    #
    # For more information, see [Limits for Your Application Load
    # Balancers][1] in the *Application Load Balancer Guide* or [Limits for
    # Your Network Load Balancers][2] in the *Network Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeAccountLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsOutput#limits #limits} => Array&lt;Types::Limit&gt;
    #   * {Types::DescribeAccountLimitsOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits({
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.limits #=> Array
    #   resp.limits[0].name #=> String
    #   resp.limits[0].max #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Describes the default certificate and the certificate list for the
    # specified HTTPS or TLS listener.
    #
    # If the default certificate is also in the certificate list, it appears
    # twice in the results (once with `IsDefault` set to true and once with
    # `IsDefault` set to false).
    #
    # For more information, see [SSL Certificates][1] in the *Application
    # Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#https-listener-certificates
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Names (ARN) of the listener.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeListenerCertificatesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeListenerCertificatesOutput#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::DescribeListenerCertificatesOutput#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listener_certificates({
    #     listener_arn: "ListenerArn", # required
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].is_default #=> Boolean
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenerCertificates AWS API Documentation
    #
    # @overload describe_listener_certificates(params = {})
    # @param [Hash] params ({})
    def describe_listener_certificates(params = {}, options = {})
      req = build_request(:describe_listener_certificates, params)
      req.send_request(options)
    end

    # Describes the specified listeners or the listeners for the specified
    # Application Load Balancer or Network Load Balancer. You must specify
    # either a load balancer or one or more listeners.
    #
    # For an HTTPS or TLS listener, the output includes the default
    # certificate for the listener. To describe the certificate list for the
    # listener, use DescribeListenerCertificates.
    #
    # @option params [String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [Array<String>] :listener_arns
    #   The Amazon Resource Names (ARN) of the listeners.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeListenersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeListenersOutput#listeners #listeners} => Array&lt;Types::Listener&gt;
    #   * {Types::DescribeListenersOutput#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe a listener
    #
    #   # This example describes the specified listener.
    #
    #   resp = client.describe_listeners({
    #     listener_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listeners: [
    #       {
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_listeners({
    #     load_balancer_arn: "LoadBalancerArn",
    #     listener_arns: ["ListenerArn"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].load_balancer_arn #=> String
    #   resp.listeners[0].port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.listeners[0].certificates #=> Array
    #   resp.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.listeners[0].certificates[0].is_default #=> Boolean
    #   resp.listeners[0].ssl_policy #=> String
    #   resp.listeners[0].default_actions #=> Array
    #   resp.listeners[0].default_actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.scope #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.scope #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.listeners[0].default_actions[0].order #=> Integer
    #   resp.listeners[0].default_actions[0].redirect_config.protocol #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.port #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.host #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.path #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.query #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.listeners[0].default_actions[0].fixed_response_config.message_body #=> String
    #   resp.listeners[0].default_actions[0].fixed_response_config.status_code #=> String
    #   resp.listeners[0].default_actions[0].fixed_response_config.content_type #=> String
    #   resp.listeners[0].default_actions[0].forward_config.target_groups #=> Array
    #   resp.listeners[0].default_actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.listeners[0].default_actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.listeners[0].alpn_policy #=> Array
    #   resp.listeners[0].alpn_policy[0] #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListeners AWS API Documentation
    #
    # @overload describe_listeners(params = {})
    # @param [Hash] params ({})
    def describe_listeners(params = {}, options = {})
      req = build_request(:describe_listeners, params)
      req.send_request(options)
    end

    # Describes the attributes for the specified Application Load Balancer
    # or Network Load Balancer.
    #
    # For more information, see [Load Balancer Attributes][1] in the
    # *Application Load Balancers Guide* or [Load Balancer Attributes][2] in
    # the *Network Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @return [Types::DescribeLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerAttributesOutput#attributes #attributes} => Array&lt;Types::LoadBalancerAttribute&gt;
    #
    #
    # @example Example: To describe load balancer attributes
    #
    #   # This example describes the attributes of the specified load balancer.
    #
    #   resp = client.describe_load_balancer_attributes({
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "access_logs.s3.enabled", 
    #         value: "false", 
    #       }, 
    #       {
    #         key: "idle_timeout.timeout_seconds", 
    #         value: "60", 
    #       }, 
    #       {
    #         key: "access_logs.s3.prefix", 
    #         value: "", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "false", 
    #       }, 
    #       {
    #         key: "access_logs.s3.bucket", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_attributes({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancerAttributes AWS API Documentation
    #
    # @overload describe_load_balancer_attributes(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_attributes(params = {}, options = {})
      req = build_request(:describe_load_balancer_attributes, params)
      req.send_request(options)
    end

    # Describes the specified load balancers or all of your load balancers.
    #
    # To describe the listeners for a load balancer, use DescribeListeners.
    # To describe the attributes for a load balancer, use
    # DescribeLoadBalancerAttributes.
    #
    # @option params [Array<String>] :load_balancer_arns
    #   The Amazon Resource Names (ARN) of the load balancers. You can specify
    #   up to 20 load balancers in a single call.
    #
    # @option params [Array<String>] :names
    #   The names of the load balancers.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeLoadBalancersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancersOutput#load_balancers #load_balancers} => Array&lt;Types::LoadBalancer&gt;
    #   * {Types::DescribeLoadBalancersOutput#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe a load balancer
    #
    #   # This example describes the specified load balancer.
    #
    #   resp = client.describe_load_balancers({
    #     load_balancer_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancers: [
    #       {
    #         availability_zones: [
    #           {
    #             subnet_id: "subnet-8360a9e7", 
    #             zone_name: "us-west-2a", 
    #           }, 
    #           {
    #             subnet_id: "subnet-b7d581c0", 
    #             zone_name: "us-west-2b", 
    #           }, 
    #         ], 
    #         canonical_hosted_zone_id: "Z2P70J7EXAMPLE", 
    #         created_time: Time.parse("2016-03-25T21:26:12.920Z"), 
    #         dns_name: "my-load-balancer-424835706.us-west-2.elb.amazonaws.com", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         load_balancer_name: "my-load-balancer", 
    #         scheme: "internet-facing", 
    #         security_groups: [
    #           "sg-5943793c", 
    #         ], 
    #         state: {
    #           code: "active", 
    #         }, 
    #         type: "application", 
    #         vpc_id: "vpc-3ac0fb5f", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers({
    #     load_balancer_arns: ["LoadBalancerArn"],
    #     names: ["LoadBalancerName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].load_balancer_arn #=> String
    #   resp.load_balancers[0].dns_name #=> String
    #   resp.load_balancers[0].canonical_hosted_zone_id #=> String
    #   resp.load_balancers[0].created_time #=> Time
    #   resp.load_balancers[0].load_balancer_name #=> String
    #   resp.load_balancers[0].scheme #=> String, one of "internet-facing", "internal"
    #   resp.load_balancers[0].vpc_id #=> String
    #   resp.load_balancers[0].state.code #=> String, one of "active", "provisioning", "active_impaired", "failed"
    #   resp.load_balancers[0].state.reason #=> String
    #   resp.load_balancers[0].type #=> String, one of "application", "network"
    #   resp.load_balancers[0].availability_zones #=> Array
    #   resp.load_balancers[0].availability_zones[0].zone_name #=> String
    #   resp.load_balancers[0].availability_zones[0].subnet_id #=> String
    #   resp.load_balancers[0].availability_zones[0].outpost_id #=> String
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses #=> Array
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses[0].ip_address #=> String
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses[0].allocation_id #=> String
    #   resp.load_balancers[0].availability_zones[0].load_balancer_addresses[0].private_i_pv_4_address #=> String
    #   resp.load_balancers[0].security_groups #=> Array
    #   resp.load_balancers[0].security_groups[0] #=> String
    #   resp.load_balancers[0].ip_address_type #=> String, one of "ipv4", "dualstack"
    #   resp.load_balancers[0].customer_owned_ipv_4_pool #=> String
    #   resp.next_marker #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * load_balancer_available
    #   * load_balancer_exists
    #   * load_balancers_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancers AWS API Documentation
    #
    # @overload describe_load_balancers(params = {})
    # @param [Hash] params ({})
    def describe_load_balancers(params = {}, options = {})
      req = build_request(:describe_load_balancers, params)
      req.send_request(options)
    end

    # Describes the specified rules or the rules for the specified listener.
    # You must specify either a listener or one or more rules.
    #
    # @option params [String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Array<String>] :rule_arns
    #   The Amazon Resource Names (ARN) of the rules.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRulesOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #   * {Types::DescribeRulesOutput#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe a rule
    #
    #   # This example describes the specified rule.
    #
    #   resp = client.describe_rules({
    #     rule_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         conditions: [
    #           {
    #             field: "path-pattern", 
    #             values: [
    #               "/img/*", 
    #             ], 
    #           }, 
    #         ], 
    #         is_default: false, 
    #         priority: "10", 
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rules({
    #     listener_arn: "ListenerArn",
    #     rule_arns: ["RuleArn"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].conditions[0].host_header_config.values #=> Array
    #   resp.rules[0].conditions[0].host_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].path_pattern_config.values #=> Array
    #   resp.rules[0].conditions[0].path_pattern_config.values[0] #=> String
    #   resp.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.rules[0].conditions[0].http_header_config.values #=> Array
    #   resp.rules[0].conditions[0].http_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].query_string_config.values #=> Array
    #   resp.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.rules[0].conditions[0].http_request_method_config.values #=> Array
    #   resp.rules[0].conditions[0].http_request_method_config.values[0] #=> String
    #   resp.rules[0].conditions[0].source_ip_config.values #=> Array
    #   resp.rules[0].conditions[0].source_ip_config.values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].order #=> Integer
    #   resp.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.rules[0].actions[0].redirect_config.port #=> String
    #   resp.rules[0].actions[0].redirect_config.host #=> String
    #   resp.rules[0].actions[0].redirect_config.path #=> String
    #   resp.rules[0].actions[0].redirect_config.query #=> String
    #   resp.rules[0].actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups #=> Array
    #   resp.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.rules[0].is_default #=> Boolean
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeRules AWS API Documentation
    #
    # @overload describe_rules(params = {})
    # @param [Hash] params ({})
    def describe_rules(params = {}, options = {})
      req = build_request(:describe_rules, params)
      req.send_request(options)
    end

    # Describes the specified policies or all policies used for SSL
    # negotiation.
    #
    # For more information, see [Security Policies][1] in the *Application
    # Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #
    # @option params [Array<String>] :names
    #   The names of the policies.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeSSLPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSSLPoliciesOutput#ssl_policies #ssl_policies} => Array&lt;Types::SslPolicy&gt;
    #   * {Types::DescribeSSLPoliciesOutput#next_marker #next_marker} => String
    #
    #
    # @example Example: To describe a policy used for SSL negotiation
    #
    #   # This example describes the specified policy used for SSL negotiation.
    #
    #   resp = client.describe_ssl_policies({
    #     names: [
    #       "ELBSecurityPolicy-2015-05", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     ssl_policies: [
    #       {
    #         ciphers: [
    #           {
    #             name: "ECDHE-ECDSA-AES128-GCM-SHA256", 
    #             priority: 1, 
    #           }, 
    #           {
    #             name: "ECDHE-RSA-AES128-GCM-SHA256", 
    #             priority: 2, 
    #           }, 
    #           {
    #             name: "ECDHE-ECDSA-AES128-SHA256", 
    #             priority: 3, 
    #           }, 
    #           {
    #             name: "ECDHE-RSA-AES128-SHA256", 
    #             priority: 4, 
    #           }, 
    #           {
    #             name: "ECDHE-ECDSA-AES128-SHA", 
    #             priority: 5, 
    #           }, 
    #           {
    #             name: "ECDHE-RSA-AES128-SHA", 
    #             priority: 6, 
    #           }, 
    #           {
    #             name: "DHE-RSA-AES128-SHA", 
    #             priority: 7, 
    #           }, 
    #           {
    #             name: "ECDHE-ECDSA-AES256-GCM-SHA384", 
    #             priority: 8, 
    #           }, 
    #           {
    #             name: "ECDHE-RSA-AES256-GCM-SHA384", 
    #             priority: 9, 
    #           }, 
    #           {
    #             name: "ECDHE-ECDSA-AES256-SHA384", 
    #             priority: 10, 
    #           }, 
    #           {
    #             name: "ECDHE-RSA-AES256-SHA384", 
    #             priority: 11, 
    #           }, 
    #           {
    #             name: "ECDHE-RSA-AES256-SHA", 
    #             priority: 12, 
    #           }, 
    #           {
    #             name: "ECDHE-ECDSA-AES256-SHA", 
    #             priority: 13, 
    #           }, 
    #           {
    #             name: "AES128-GCM-SHA256", 
    #             priority: 14, 
    #           }, 
    #           {
    #             name: "AES128-SHA256", 
    #             priority: 15, 
    #           }, 
    #           {
    #             name: "AES128-SHA", 
    #             priority: 16, 
    #           }, 
    #           {
    #             name: "AES256-GCM-SHA384", 
    #             priority: 17, 
    #           }, 
    #           {
    #             name: "AES256-SHA256", 
    #             priority: 18, 
    #           }, 
    #           {
    #             name: "AES256-SHA", 
    #             priority: 19, 
    #           }, 
    #         ], 
    #         name: "ELBSecurityPolicy-2015-05", 
    #         ssl_protocols: [
    #           "TLSv1", 
    #           "TLSv1.1", 
    #           "TLSv1.2", 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ssl_policies({
    #     names: ["SslPolicyName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.ssl_policies #=> Array
    #   resp.ssl_policies[0].ssl_protocols #=> Array
    #   resp.ssl_policies[0].ssl_protocols[0] #=> String
    #   resp.ssl_policies[0].ciphers #=> Array
    #   resp.ssl_policies[0].ciphers[0].name #=> String
    #   resp.ssl_policies[0].ciphers[0].priority #=> Integer
    #   resp.ssl_policies[0].name #=> String
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPolicies AWS API Documentation
    #
    # @overload describe_ssl_policies(params = {})
    # @param [Hash] params ({})
    def describe_ssl_policies(params = {}, options = {})
      req = build_request(:describe_ssl_policies, params)
      req.send_request(options)
    end

    # Describes the tags for the specified Elastic Load Balancing resources.
    # You can describe the tags for one or more Application Load Balancers,
    # Network Load Balancers, target groups, listeners, or rules.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Names (ARN) of the resources. You can specify up
    #   to 20 resources in a single call.
    #
    # @return [Types::DescribeTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsOutput#tag_descriptions #tag_descriptions} => Array&lt;Types::TagDescription&gt;
    #
    #
    # @example Example: To describe the tags assigned to a load balancer
    #
    #   # This example describes the tags assigned to the specified load balancer.
    #
    #   resp = client.describe_tags({
    #     resource_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_descriptions: [
    #       {
    #         resource_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         tags: [
    #           {
    #             key: "project", 
    #             value: "lima", 
    #           }, 
    #           {
    #             key: "department", 
    #             value: "digital-media", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_arns: ["ResourceArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_descriptions #=> Array
    #   resp.tag_descriptions[0].resource_arn #=> String
    #   resp.tag_descriptions[0].tags #=> Array
    #   resp.tag_descriptions[0].tags[0].key #=> String
    #   resp.tag_descriptions[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Describes the attributes for the specified target group.
    #
    # For more information, see [Target Group Attributes][1] in the
    # *Application Load Balancers Guide* or [Target Group Attributes][2] in
    # the *Network Load Balancers Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes
    # [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @return [Types::DescribeTargetGroupAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetGroupAttributesOutput#attributes #attributes} => Array&lt;Types::TargetGroupAttribute&gt;
    #
    #
    # @example Example: To describe target group attributes
    #
    #   # This example describes the attributes of the specified target group.
    #
    #   resp = client.describe_target_group_attributes({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "stickiness.enabled", 
    #         value: "false", 
    #       }, 
    #       {
    #         key: "deregistration_delay.timeout_seconds", 
    #         value: "300", 
    #       }, 
    #       {
    #         key: "stickiness.type", 
    #         value: "lb_cookie", 
    #       }, 
    #       {
    #         key: "stickiness.lb_cookie.duration_seconds", 
    #         value: "86400", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_group_attributes({
    #     target_group_arn: "TargetGroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupAttributes AWS API Documentation
    #
    # @overload describe_target_group_attributes(params = {})
    # @param [Hash] params ({})
    def describe_target_group_attributes(params = {}, options = {})
      req = build_request(:describe_target_group_attributes, params)
      req.send_request(options)
    end

    # Describes the specified target groups or all of your target groups. By
    # default, all target groups are described. Alternatively, you can
    # specify one of the following to filter the results: the ARN of the
    # load balancer, the names of one or more target groups, or the ARNs of
    # one or more target groups.
    #
    # To describe the targets for a target group, use DescribeTargetHealth.
    # To describe the attributes of a target group, use
    # DescribeTargetGroupAttributes.
    #
    # @option params [String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups.
    #
    # @option params [Array<String>] :names
    #   The names of the target groups.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return with this call.
    #
    # @return [Types::DescribeTargetGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetGroupsOutput#target_groups #target_groups} => Array&lt;Types::TargetGroup&gt;
    #   * {Types::DescribeTargetGroupsOutput#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe a target group
    #
    #   # This example describes the specified target group.
    #
    #   resp = client.describe_target_groups({
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_groups: [
    #       {
    #         health_check_interval_seconds: 30, 
    #         health_check_path: "/", 
    #         health_check_port: "traffic-port", 
    #         health_check_protocol: "HTTP", 
    #         health_check_timeout_seconds: 5, 
    #         healthy_threshold_count: 5, 
    #         load_balancer_arns: [
    #           "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         ], 
    #         matcher: {
    #           http_code: "200", 
    #         }, 
    #         port: 80, 
    #         protocol: "HTTP", 
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         target_group_name: "my-targets", 
    #         unhealthy_threshold_count: 2, 
    #         vpc_id: "vpc-3ac0fb5f", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_groups({
    #     load_balancer_arn: "LoadBalancerArn",
    #     target_group_arns: ["TargetGroupArn"],
    #     names: ["TargetGroupName"],
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.target_groups #=> Array
    #   resp.target_groups[0].target_group_arn #=> String
    #   resp.target_groups[0].target_group_name #=> String
    #   resp.target_groups[0].protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.target_groups[0].port #=> Integer
    #   resp.target_groups[0].vpc_id #=> String
    #   resp.target_groups[0].health_check_protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.target_groups[0].health_check_port #=> String
    #   resp.target_groups[0].health_check_enabled #=> Boolean
    #   resp.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.target_groups[0].health_check_path #=> String
    #   resp.target_groups[0].matcher.http_code #=> String
    #   resp.target_groups[0].load_balancer_arns #=> Array
    #   resp.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.target_groups[0].target_type #=> String, one of "instance", "ip", "lambda"
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroups AWS API Documentation
    #
    # @overload describe_target_groups(params = {})
    # @param [Hash] params ({})
    def describe_target_groups(params = {}, options = {})
      req = build_request(:describe_target_groups, params)
      req.send_request(options)
    end

    # Describes the health of the specified targets or all of your targets.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [Array<Types::TargetDescription>] :targets
    #   The targets.
    #
    # @return [Types::DescribeTargetHealthOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetHealthOutput#target_health_descriptions #target_health_descriptions} => Array&lt;Types::TargetHealthDescription&gt;
    #
    #
    # @example Example: To describe the health of the targets for a target group
    #
    #   # This example describes the health of the targets for the specified target group. One target is healthy but the other is
    #   # not specified in an action, so it can't receive traffic from the load balancer.
    #
    #   resp = client.describe_target_health({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_health_descriptions: [
    #       {
    #         target: {
    #           id: "i-0f76fade", 
    #           port: 80, 
    #         }, 
    #         target_health: {
    #           description: "Given target group is not configured to receive traffic from ELB", 
    #           reason: "Target.NotInUse", 
    #           state: "unused", 
    #         }, 
    #       }, 
    #       {
    #         health_check_port: "80", 
    #         target: {
    #           id: "i-0f76fade", 
    #           port: 80, 
    #         }, 
    #         target_health: {
    #           state: "healthy", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe the health of a target
    #
    #   # This example describes the health of the specified target. This target is healthy.
    #
    #   resp = client.describe_target_health({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     targets: [
    #       {
    #         id: "i-0f76fade", 
    #         port: 80, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_health_descriptions: [
    #       {
    #         health_check_port: "80", 
    #         target: {
    #           id: "i-0f76fade", 
    #           port: 80, 
    #         }, 
    #         target_health: {
    #           state: "healthy", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_target_health({
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.target_health_descriptions #=> Array
    #   resp.target_health_descriptions[0].target.id #=> String
    #   resp.target_health_descriptions[0].target.port #=> Integer
    #   resp.target_health_descriptions[0].target.availability_zone #=> String
    #   resp.target_health_descriptions[0].health_check_port #=> String
    #   resp.target_health_descriptions[0].target_health.state #=> String, one of "initial", "healthy", "unhealthy", "unused", "draining", "unavailable"
    #   resp.target_health_descriptions[0].target_health.reason #=> String, one of "Elb.RegistrationInProgress", "Elb.InitialHealthChecking", "Target.ResponseCodeMismatch", "Target.Timeout", "Target.FailedHealthChecks", "Target.NotRegistered", "Target.NotInUse", "Target.DeregistrationInProgress", "Target.InvalidState", "Target.IpUnusable", "Target.HealthCheckDisabled", "Elb.InternalError"
    #   resp.target_health_descriptions[0].target_health.description #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * target_deregistered
    #   * target_in_service
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetHealth AWS API Documentation
    #
    # @overload describe_target_health(params = {})
    # @param [Hash] params ({})
    def describe_target_health(params = {}, options = {})
      req = build_request(:describe_target_health, params)
      req.send_request(options)
    end

    # Replaces the specified properties of the specified listener. Any
    # properties that you do not specify remain unchanged.
    #
    # Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes
    # the security policy and default certificate properties. If you change
    # the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the
    # security policy and default certificate properties.
    #
    # To add an item to a list, remove an item from a list, or update an
    # item in a list, you must provide the entire list. For example, to add
    # an action, specify a list with the current actions plus the new
    # action.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Integer] :port
    #   The port for connections from clients to the load balancer.
    #
    # @option params [String] :protocol
    #   The protocol for connections from clients to the load balancer.
    #   Application Load Balancers support the HTTP and HTTPS protocols.
    #   Network Load Balancers support the TCP, TLS, UDP, and TCP\_UDP
    #   protocols.
    #
    # @option params [String] :ssl_policy
    #   \[HTTPS and TLS listeners\] The security policy that defines which
    #   protocols and ciphers are supported. The following are the possible
    #   values:
    #
    #   * `ELBSecurityPolicy-2016-08`
    #
    #   * `ELBSecurityPolicy-TLS-1-0-2015-04`
    #
    #   * `ELBSecurityPolicy-TLS-1-1-2017-01`
    #
    #   * `ELBSecurityPolicy-TLS-1-2-2017-01`
    #
    #   * `ELBSecurityPolicy-TLS-1-2-Ext-2018-06`
    #
    #   * `ELBSecurityPolicy-FS-2018-06`
    #
    #   * `ELBSecurityPolicy-FS-1-1-2019-08`
    #
    #   * `ELBSecurityPolicy-FS-1-2-2019-08`
    #
    #   * `ELBSecurityPolicy-FS-1-2-Res-2019-08`
    #
    #   For more information, see [Security Policies][1] in the *Application
    #   Load Balancers Guide* and [Security Policies][2] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   \[HTTPS and TLS listeners\] The default certificate for the listener.
    #   You must provide exactly one certificate. Set `CertificateArn` to the
    #   certificate ARN but do not set `IsDefault`.
    #
    #   To create a certificate list, use AddListenerCertificates.
    #
    # @option params [Array<Types::Action>] :default_actions
    #   The actions for the default rule. The rule must include one forward
    #   action or one or more fixed-response actions.
    #
    #   If the action type is `forward`, you specify one or more target
    #   groups. The protocol of the target group must be HTTP or HTTPS for an
    #   Application Load Balancer. The protocol of the target group must be
    #   TCP, TLS, UDP, or TCP\_UDP for a Network Load Balancer.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-oidc`, you
    #   authenticate users through an identity provider that is OpenID Connect
    #   (OIDC) compliant.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-cognito`, you
    #   authenticate users through the user pools supported by Amazon Cognito.
    #
    #   \[Application Load Balancer\] If the action type is `redirect`, you
    #   redirect specified client requests from one URL to another.
    #
    #   \[Application Load Balancer\] If the action type is `fixed-response`,
    #   you drop specified client requests and return a custom HTTP response.
    #
    # @option params [Array<String>] :alpn_policy
    #   \[TLS listeners\] The name of the Application-Layer Protocol
    #   Negotiation (ALPN) policy. You can specify one policy name. The
    #   following are the possible values:
    #
    #   * `HTTP1Only`
    #
    #   * `HTTP2Only`
    #
    #   * `HTTP2Optional`
    #
    #   * `HTTP2Preferred`
    #
    #   * `None`
    #
    #   For more information, see [ALPN Policies][1] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies
    #
    # @return [Types::ModifyListenerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyListenerOutput#listeners #listeners} => Array&lt;Types::Listener&gt;
    #
    #
    # @example Example: To change the default action for a listener
    #
    #   # This example changes the default action for the specified listener.
    #
    #   resp = client.modify_listener({
    #     default_actions: [
    #       {
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f", 
    #         type: "forward", 
    #       }, 
    #     ], 
    #     listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listeners: [
    #       {
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/2453ed029918f21f", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         port: 80, 
    #         protocol: "HTTP", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To change the server certificate
    #
    #   # This example changes the server certificate for the specified HTTPS listener.
    #
    #   resp = client.modify_listener({
    #     certificates: [
    #       {
    #         certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-new-server-cert", 
    #       }, 
    #     ], 
    #     listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listeners: [
    #       {
    #         certificates: [
    #           {
    #             certificate_arn: "arn:aws:iam::123456789012:server-certificate/my-new-server-cert", 
    #           }, 
    #         ], 
    #         default_actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         listener_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/0467ef3c8400ae65", 
    #         load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         port: 443, 
    #         protocol: "HTTPS", 
    #         ssl_policy: "ELBSecurityPolicy-2015-05", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_listener({
    #     listener_arn: "ListenerArn", # required
    #     port: 1,
    #     protocol: "HTTP", # accepts HTTP, HTTPS, TCP, TLS, UDP, TCP_UDP
    #     ssl_policy: "SslPolicyName",
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false,
    #       },
    #     ],
    #     default_actions: [
    #       {
    #         type: "forward", # required, accepts forward, authenticate-oidc, authenticate-cognito, redirect, fixed-response
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #           use_existing_client_secret: false,
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301", # required, accepts HTTP_301, HTTP_302
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType",
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1,
    #             },
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1,
    #           },
    #         },
    #       },
    #     ],
    #     alpn_policy: ["AlpnPolicyValue"],
    #   })
    #
    # @example Response structure
    #
    #   resp.listeners #=> Array
    #   resp.listeners[0].listener_arn #=> String
    #   resp.listeners[0].load_balancer_arn #=> String
    #   resp.listeners[0].port #=> Integer
    #   resp.listeners[0].protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.listeners[0].certificates #=> Array
    #   resp.listeners[0].certificates[0].certificate_arn #=> String
    #   resp.listeners[0].certificates[0].is_default #=> Boolean
    #   resp.listeners[0].ssl_policy #=> String
    #   resp.listeners[0].default_actions #=> Array
    #   resp.listeners[0].default_actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.listeners[0].default_actions[0].target_group_arn #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.scope #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.listeners[0].default_actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.scope #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.listeners[0].default_actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.listeners[0].default_actions[0].order #=> Integer
    #   resp.listeners[0].default_actions[0].redirect_config.protocol #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.port #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.host #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.path #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.query #=> String
    #   resp.listeners[0].default_actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.listeners[0].default_actions[0].fixed_response_config.message_body #=> String
    #   resp.listeners[0].default_actions[0].fixed_response_config.status_code #=> String
    #   resp.listeners[0].default_actions[0].fixed_response_config.content_type #=> String
    #   resp.listeners[0].default_actions[0].forward_config.target_groups #=> Array
    #   resp.listeners[0].default_actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.listeners[0].default_actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.listeners[0].default_actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.listeners[0].alpn_policy #=> Array
    #   resp.listeners[0].alpn_policy[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListener AWS API Documentation
    #
    # @overload modify_listener(params = {})
    # @param [Hash] params ({})
    def modify_listener(params = {}, options = {})
      req = build_request(:modify_listener, params)
      req.send_request(options)
    end

    # Modifies the specified attributes of the specified Application Load
    # Balancer or Network Load Balancer.
    #
    # If any of the specified attributes can't be modified as requested,
    # the call fails. Any existing attributes that you do not modify retain
    # their current values.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, Array<Types::LoadBalancerAttribute>] :attributes
    #   The load balancer attributes.
    #
    # @return [Types::ModifyLoadBalancerAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyLoadBalancerAttributesOutput#attributes #attributes} => Array&lt;Types::LoadBalancerAttribute&gt;
    #
    #
    # @example Example: To enable deletion protection
    #
    #   # This example enables deletion protection for the specified load balancer.
    #
    #   resp = client.modify_load_balancer_attributes({
    #     attributes: [
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #       }, 
    #     ], 
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #       }, 
    #       {
    #         key: "access_logs.s3.enabled", 
    #         value: "false", 
    #       }, 
    #       {
    #         key: "idle_timeout.timeout_seconds", 
    #         value: "60", 
    #       }, 
    #       {
    #         key: "access_logs.s3.prefix", 
    #         value: "", 
    #       }, 
    #       {
    #         key: "access_logs.s3.bucket", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To change the idle timeout
    #
    #   # This example changes the idle timeout value for the specified load balancer.
    #
    #   resp = client.modify_load_balancer_attributes({
    #     attributes: [
    #       {
    #         key: "idle_timeout.timeout_seconds", 
    #         value: "30", 
    #       }, 
    #     ], 
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "idle_timeout.timeout_seconds", 
    #         value: "30", 
    #       }, 
    #       {
    #         key: "access_logs.s3.enabled", 
    #         value: "false", 
    #       }, 
    #       {
    #         key: "access_logs.s3.prefix", 
    #         value: "", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "true", 
    #       }, 
    #       {
    #         key: "access_logs.s3.bucket", 
    #         value: "", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To enable access logs
    #
    #   # This example enables access logs for the specified load balancer. Note that the S3 bucket must exist in the same region
    #   # as the load balancer and must have a policy attached that grants access to the Elastic Load Balancing service.
    #
    #   resp = client.modify_load_balancer_attributes({
    #     attributes: [
    #       {
    #         key: "access_logs.s3.enabled", 
    #         value: "true", 
    #       }, 
    #       {
    #         key: "access_logs.s3.bucket", 
    #         value: "my-loadbalancer-logs", 
    #       }, 
    #       {
    #         key: "access_logs.s3.prefix", 
    #         value: "myapp", 
    #       }, 
    #     ], 
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "access_logs.s3.enabled", 
    #         value: "true", 
    #       }, 
    #       {
    #         key: "access_logs.s3.bucket", 
    #         value: "my-load-balancer-logs", 
    #       }, 
    #       {
    #         key: "access_logs.s3.prefix", 
    #         value: "myapp", 
    #       }, 
    #       {
    #         key: "idle_timeout.timeout_seconds", 
    #         value: "60", 
    #       }, 
    #       {
    #         key: "deletion_protection.enabled", 
    #         value: "false", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_load_balancer_attributes({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     attributes: [ # required
    #       {
    #         key: "LoadBalancerAttributeKey",
    #         value: "LoadBalancerAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyLoadBalancerAttributes AWS API Documentation
    #
    # @overload modify_load_balancer_attributes(params = {})
    # @param [Hash] params ({})
    def modify_load_balancer_attributes(params = {}, options = {})
      req = build_request(:modify_load_balancer_attributes, params)
      req.send_request(options)
    end

    # Replaces the specified properties of the specified rule. Any
    # properties that you do not specify are unchanged.
    #
    # To add an item to a list, remove an item from a list, or update an
    # item in a list, you must provide the entire list. For example, to add
    # an action, specify a list with the current actions plus the new
    # action.
    #
    # To modify the actions for the default rule, use ModifyListener.
    #
    # @option params [required, String] :rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #
    # @option params [Array<Types::RuleCondition>] :conditions
    #   The conditions. Each rule can include zero or one of the following
    #   conditions: `http-request-method`, `host-header`, `path-pattern`, and
    #   `source-ip`, and zero or more of the following conditions:
    #   `http-header` and `query-string`.
    #
    # @option params [Array<Types::Action>] :actions
    #   The actions. Each rule must include exactly one of the following types
    #   of actions: `forward`, `fixed-response`, or `redirect`, and it must be
    #   the last action to be performed.
    #
    #   If the action type is `forward`, you specify one or more target
    #   groups. The protocol of the target group must be HTTP or HTTPS for an
    #   Application Load Balancer. The protocol of the target group must be
    #   TCP, TLS, UDP, or TCP\_UDP for a Network Load Balancer.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-oidc`, you
    #   authenticate users through an identity provider that is OpenID Connect
    #   (OIDC) compliant.
    #
    #   \[HTTPS listeners\] If the action type is `authenticate-cognito`, you
    #   authenticate users through the user pools supported by Amazon Cognito.
    #
    #   \[Application Load Balancer\] If the action type is `redirect`, you
    #   redirect specified client requests from one URL to another.
    #
    #   \[Application Load Balancer\] If the action type is `fixed-response`,
    #   you drop specified client requests and return a custom HTTP response.
    #
    # @return [Types::ModifyRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyRuleOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #
    #
    # @example Example: To modify a rule
    #
    #   # This example modifies the condition for the specified rule.
    #
    #   resp = client.modify_rule({
    #     conditions: [
    #       {
    #         field: "path-pattern", 
    #         values: [
    #           "/images/*", 
    #         ], 
    #       }, 
    #     ], 
    #     rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         conditions: [
    #           {
    #             field: "path-pattern", 
    #             values: [
    #               "/images/*", 
    #             ], 
    #           }, 
    #         ], 
    #         is_default: false, 
    #         priority: "10", 
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_rule({
    #     rule_arn: "RuleArn", # required
    #     conditions: [
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #         host_header_config: {
    #           values: ["StringValue"],
    #         },
    #         path_pattern_config: {
    #           values: ["StringValue"],
    #         },
    #         http_header_config: {
    #           http_header_name: "HttpHeaderConditionName",
    #           values: ["StringValue"],
    #         },
    #         query_string_config: {
    #           values: [
    #             {
    #               key: "StringValue",
    #               value: "StringValue",
    #             },
    #           ],
    #         },
    #         http_request_method_config: {
    #           values: ["StringValue"],
    #         },
    #         source_ip_config: {
    #           values: ["StringValue"],
    #         },
    #       },
    #     ],
    #     actions: [
    #       {
    #         type: "forward", # required, accepts forward, authenticate-oidc, authenticate-cognito, redirect, fixed-response
    #         target_group_arn: "TargetGroupArn",
    #         authenticate_oidc_config: {
    #           issuer: "AuthenticateOidcActionIssuer", # required
    #           authorization_endpoint: "AuthenticateOidcActionAuthorizationEndpoint", # required
    #           token_endpoint: "AuthenticateOidcActionTokenEndpoint", # required
    #           user_info_endpoint: "AuthenticateOidcActionUserInfoEndpoint", # required
    #           client_id: "AuthenticateOidcActionClientId", # required
    #           client_secret: "AuthenticateOidcActionClientSecret",
    #           session_cookie_name: "AuthenticateOidcActionSessionCookieName",
    #           scope: "AuthenticateOidcActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateOidcActionAuthenticationRequestParamName" => "AuthenticateOidcActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #           use_existing_client_secret: false,
    #         },
    #         authenticate_cognito_config: {
    #           user_pool_arn: "AuthenticateCognitoActionUserPoolArn", # required
    #           user_pool_client_id: "AuthenticateCognitoActionUserPoolClientId", # required
    #           user_pool_domain: "AuthenticateCognitoActionUserPoolDomain", # required
    #           session_cookie_name: "AuthenticateCognitoActionSessionCookieName",
    #           scope: "AuthenticateCognitoActionScope",
    #           session_timeout: 1,
    #           authentication_request_extra_params: {
    #             "AuthenticateCognitoActionAuthenticationRequestParamName" => "AuthenticateCognitoActionAuthenticationRequestParamValue",
    #           },
    #           on_unauthenticated_request: "deny", # accepts deny, allow, authenticate
    #         },
    #         order: 1,
    #         redirect_config: {
    #           protocol: "RedirectActionProtocol",
    #           port: "RedirectActionPort",
    #           host: "RedirectActionHost",
    #           path: "RedirectActionPath",
    #           query: "RedirectActionQuery",
    #           status_code: "HTTP_301", # required, accepts HTTP_301, HTTP_302
    #         },
    #         fixed_response_config: {
    #           message_body: "FixedResponseActionMessage",
    #           status_code: "FixedResponseActionStatusCode", # required
    #           content_type: "FixedResponseActionContentType",
    #         },
    #         forward_config: {
    #           target_groups: [
    #             {
    #               target_group_arn: "TargetGroupArn",
    #               weight: 1,
    #             },
    #           ],
    #           target_group_stickiness_config: {
    #             enabled: false,
    #             duration_seconds: 1,
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].conditions[0].host_header_config.values #=> Array
    #   resp.rules[0].conditions[0].host_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].path_pattern_config.values #=> Array
    #   resp.rules[0].conditions[0].path_pattern_config.values[0] #=> String
    #   resp.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.rules[0].conditions[0].http_header_config.values #=> Array
    #   resp.rules[0].conditions[0].http_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].query_string_config.values #=> Array
    #   resp.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.rules[0].conditions[0].http_request_method_config.values #=> Array
    #   resp.rules[0].conditions[0].http_request_method_config.values[0] #=> String
    #   resp.rules[0].conditions[0].source_ip_config.values #=> Array
    #   resp.rules[0].conditions[0].source_ip_config.values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].order #=> Integer
    #   resp.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.rules[0].actions[0].redirect_config.port #=> String
    #   resp.rules[0].actions[0].redirect_config.host #=> String
    #   resp.rules[0].actions[0].redirect_config.path #=> String
    #   resp.rules[0].actions[0].redirect_config.query #=> String
    #   resp.rules[0].actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups #=> Array
    #   resp.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.rules[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRule AWS API Documentation
    #
    # @overload modify_rule(params = {})
    # @param [Hash] params ({})
    def modify_rule(params = {}, options = {})
      req = build_request(:modify_rule, params)
      req.send_request(options)
    end

    # Modifies the health checks used when evaluating the health state of
    # the targets in the specified target group.
    #
    # To monitor the health of the targets, use DescribeTargetHealth.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [String] :health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. The TCP protocol is supported for health checks only if the
    #   protocol of the target group is TCP, TLS, UDP, or TCP\_UDP. The TLS,
    #   UDP, and TCP\_UDP protocols are not supported for health checks.
    #
    #   With Network Load Balancers, you can't modify this setting.
    #
    # @option params [String] :health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets.
    #
    # @option params [String] :health_check_path
    #   \[HTTP/HTTPS health checks\] The ping path that is the destination for
    #   the health check request.
    #
    # @option params [Boolean] :health_check_enabled
    #   Indicates whether health checks are enabled.
    #
    # @option params [Integer] :health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. For Application Load Balancers, the range is 5
    #   to 300 seconds. For Network Load Balancers, the supported values are
    #   10 or 30 seconds.
    #
    #   With Network Load Balancers, you can't modify this setting.
    #
    # @option params [Integer] :health_check_timeout_seconds
    #   \[HTTP/HTTPS health checks\] The amount of time, in seconds, during
    #   which no response means a failed health check.
    #
    #   With Network Load Balancers, you can't modify this setting.
    #
    # @option params [Integer] :healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy.
    #
    # @option params [Integer] :unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering the target unhealthy. For Network Load Balancers, this
    #   value must be the same as the healthy threshold count.
    #
    # @option params [Types::Matcher] :matcher
    #   \[HTTP/HTTPS health checks\] The HTTP codes to use when checking for a
    #   successful response from a target. The possible values are from 200 to
    #   499. You can specify multiple values (for example, "200,202") or a
    #   range of values (for example, "200-299"). The default is 200.
    #
    #   With Network Load Balancers, you can't modify this setting.
    #
    # @return [Types::ModifyTargetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyTargetGroupOutput#target_groups #target_groups} => Array&lt;Types::TargetGroup&gt;
    #
    #
    # @example Example: To modify the health check configuration for a target group
    #
    #   # This example changes the configuration of the health checks used to evaluate the health of the targets for the specified
    #   # target group.
    #
    #   resp = client.modify_target_group({
    #     health_check_port: "443", 
    #     health_check_protocol: "HTTPS", 
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_groups: [
    #       {
    #         health_check_interval_seconds: 30, 
    #         health_check_port: "443", 
    #         health_check_protocol: "HTTPS", 
    #         health_check_timeout_seconds: 5, 
    #         healthy_threshold_count: 5, 
    #         load_balancer_arns: [
    #           "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #         ], 
    #         matcher: {
    #           http_code: "200", 
    #         }, 
    #         port: 443, 
    #         protocol: "HTTPS", 
    #         target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-https-targets/2453ed029918f21f", 
    #         target_group_name: "my-https-targets", 
    #         unhealthy_threshold_count: 2, 
    #         vpc_id: "vpc-3ac0fb5f", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_target_group({
    #     target_group_arn: "TargetGroupArn", # required
    #     health_check_protocol: "HTTP", # accepts HTTP, HTTPS, TCP, TLS, UDP, TCP_UDP
    #     health_check_port: "HealthCheckPort",
    #     health_check_path: "Path",
    #     health_check_enabled: false,
    #     health_check_interval_seconds: 1,
    #     health_check_timeout_seconds: 1,
    #     healthy_threshold_count: 1,
    #     unhealthy_threshold_count: 1,
    #     matcher: {
    #       http_code: "HttpCode", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.target_groups #=> Array
    #   resp.target_groups[0].target_group_arn #=> String
    #   resp.target_groups[0].target_group_name #=> String
    #   resp.target_groups[0].protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.target_groups[0].port #=> Integer
    #   resp.target_groups[0].vpc_id #=> String
    #   resp.target_groups[0].health_check_protocol #=> String, one of "HTTP", "HTTPS", "TCP", "TLS", "UDP", "TCP_UDP"
    #   resp.target_groups[0].health_check_port #=> String
    #   resp.target_groups[0].health_check_enabled #=> Boolean
    #   resp.target_groups[0].health_check_interval_seconds #=> Integer
    #   resp.target_groups[0].health_check_timeout_seconds #=> Integer
    #   resp.target_groups[0].healthy_threshold_count #=> Integer
    #   resp.target_groups[0].unhealthy_threshold_count #=> Integer
    #   resp.target_groups[0].health_check_path #=> String
    #   resp.target_groups[0].matcher.http_code #=> String
    #   resp.target_groups[0].load_balancer_arns #=> Array
    #   resp.target_groups[0].load_balancer_arns[0] #=> String
    #   resp.target_groups[0].target_type #=> String, one of "instance", "ip", "lambda"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroup AWS API Documentation
    #
    # @overload modify_target_group(params = {})
    # @param [Hash] params ({})
    def modify_target_group(params = {}, options = {})
      req = build_request(:modify_target_group, params)
      req.send_request(options)
    end

    # Modifies the specified attributes of the specified target group.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::TargetGroupAttribute>] :attributes
    #   The attributes.
    #
    # @return [Types::ModifyTargetGroupAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyTargetGroupAttributesOutput#attributes #attributes} => Array&lt;Types::TargetGroupAttribute&gt;
    #
    #
    # @example Example: To modify the deregistration delay timeout
    #
    #   # This example sets the deregistration delay timeout to the specified value for the specified target group.
    #
    #   resp = client.modify_target_group_attributes({
    #     attributes: [
    #       {
    #         key: "deregistration_delay.timeout_seconds", 
    #         value: "600", 
    #       }, 
    #     ], 
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         key: "stickiness.enabled", 
    #         value: "false", 
    #       }, 
    #       {
    #         key: "deregistration_delay.timeout_seconds", 
    #         value: "600", 
    #       }, 
    #       {
    #         key: "stickiness.type", 
    #         value: "lb_cookie", 
    #       }, 
    #       {
    #         key: "stickiness.lb_cookie.duration_seconds", 
    #         value: "86400", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_target_group_attributes({
    #     target_group_arn: "TargetGroupArn", # required
    #     attributes: [ # required
    #       {
    #         key: "TargetGroupAttributeKey",
    #         value: "TargetGroupAttributeValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key #=> String
    #   resp.attributes[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupAttributes AWS API Documentation
    #
    # @overload modify_target_group_attributes(params = {})
    # @param [Hash] params ({})
    def modify_target_group_attributes(params = {}, options = {})
      req = build_request(:modify_target_group_attributes, params)
      req.send_request(options)
    end

    # Registers the specified targets with the specified target group.
    #
    # If the target is an EC2 instance, it must be in the `running` state
    # when you register it.
    #
    # By default, the load balancer routes requests to registered targets
    # using the protocol and port for the target group. Alternatively, you
    # can override the port for a target when you register it. You can
    # register each EC2 instance or IP address with the same target group
    # multiple times using different ports.
    #
    # With a Network Load Balancer, you cannot register instances by
    # instance ID if they have the following instance types: C1, CC1, CC2,
    # CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can
    # register instances of these types by IP address.
    #
    # To remove a target from a target group, use DeregisterTargets.
    #
    # @option params [required, String] :target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::TargetDescription>] :targets
    #   The targets.
    #
    #   To register a target by instance ID, specify the instance ID. To
    #   register a target by IP address, specify the IP address. To register a
    #   Lambda function, specify the ARN of the Lambda function.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To register targets with a target group
    #
    #   # This example registers the specified instances with the specified target group.
    #
    #   resp = client.register_targets({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     targets: [
    #       {
    #         id: "i-80c8dd94", 
    #       }, 
    #       {
    #         id: "i-ceddcd4d", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Example: To register targets with a target group using port overrides
    #
    #   # This example registers the specified instance with the specified target group using multiple ports. This enables you to
    #   # register ECS containers on the same instance as targets in the target group.
    #
    #   resp = client.register_targets({
    #     target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-new-targets/3bb63f11dfb0faf9", 
    #     targets: [
    #       {
    #         id: "i-80c8dd94", 
    #         port: 80, 
    #       }, 
    #       {
    #         id: "i-80c8dd94", 
    #         port: 766, 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_targets({
    #     target_group_arn: "TargetGroupArn", # required
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargets AWS API Documentation
    #
    # @overload register_targets(params = {})
    # @param [Hash] params ({})
    def register_targets(params = {}, options = {})
      req = build_request(:register_targets, params)
      req.send_request(options)
    end

    # Removes the specified certificate from the certificate list for the
    # specified HTTPS or TLS listener.
    #
    # You can't remove the default certificate for a listener. To replace
    # the default certificate, call ModifyListener.
    #
    # To list the certificates for your listener, use
    # DescribeListenerCertificates.
    #
    # @option params [required, String] :listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, Array<Types::Certificate>] :certificates
    #   The certificate to remove. You can specify one certificate per call.
    #   Set `CertificateArn` to the certificate ARN but do not set
    #   `IsDefault`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_listener_certificates({
    #     listener_arn: "ListenerArn", # required
    #     certificates: [ # required
    #       {
    #         certificate_arn: "CertificateArn",
    #         is_default: false,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveListenerCertificates AWS API Documentation
    #
    # @overload remove_listener_certificates(params = {})
    # @param [Hash] params ({})
    def remove_listener_certificates(params = {}, options = {})
      req = build_request(:remove_listener_certificates, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified Elastic Load Balancing
    # resources. You can remove the tags for one or more Application Load
    # Balancers, Network Load Balancers, target groups, listeners, or rules.
    #
    # To list the current tags for your resources, use DescribeTags.
    #
    # @option params [required, Array<String>] :resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys for the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a load balancer
    #
    #   # This example removes the specified tags from the specified load balancer.
    #
    #   resp = client.remove_tags({
    #     resource_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     ], 
    #     tag_keys: [
    #       "project", 
    #       "department", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_arns: ["ResourceArn"], # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Sets the type of IP addresses used by the subnets of the specified
    # Application Load Balancer or Network Load Balancer.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, String] :ip_address_type
    #   The IP address type. The possible values are `ipv4` (for IPv4
    #   addresses) and `dualstack` (for IPv4 and IPv6 addresses). Internal
    #   load balancers must use `ipv4`. Network Load Balancers must use
    #   `ipv4`.
    #
    # @return [Types::SetIpAddressTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetIpAddressTypeOutput#ip_address_type #ip_address_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_ip_address_type({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     ip_address_type: "ipv4", # required, accepts ipv4, dualstack
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_address_type #=> String, one of "ipv4", "dualstack"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetIpAddressType AWS API Documentation
    #
    # @overload set_ip_address_type(params = {})
    # @param [Hash] params ({})
    def set_ip_address_type(params = {}, options = {})
      req = build_request(:set_ip_address_type, params)
      req.send_request(options)
    end

    # Sets the priorities of the specified rules.
    #
    # You can reorder the rules as long as there are no priority conflicts
    # in the new order. Any existing rules that you do not specify retain
    # their current priority.
    #
    # @option params [required, Array<Types::RulePriorityPair>] :rule_priorities
    #   The rule priorities.
    #
    # @return [Types::SetRulePrioritiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetRulePrioritiesOutput#rules #rules} => Array&lt;Types::Rule&gt;
    #
    #
    # @example Example: To set the rule priority
    #
    #   # This example sets the priority of the specified rule.
    #
    #   resp = client.set_rule_priorities({
    #     rule_priorities: [
    #       {
    #         priority: 5, 
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #             type: "forward", 
    #           }, 
    #         ], 
    #         conditions: [
    #           {
    #             field: "path-pattern", 
    #             values: [
    #               "/img/*", 
    #             ], 
    #           }, 
    #         ], 
    #         is_default: false, 
    #         priority: "5", 
    #         rule_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_rule_priorities({
    #     rule_priorities: [ # required
    #       {
    #         rule_arn: "RuleArn",
    #         priority: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].priority #=> String
    #   resp.rules[0].conditions #=> Array
    #   resp.rules[0].conditions[0].field #=> String
    #   resp.rules[0].conditions[0].values #=> Array
    #   resp.rules[0].conditions[0].values[0] #=> String
    #   resp.rules[0].conditions[0].host_header_config.values #=> Array
    #   resp.rules[0].conditions[0].host_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].path_pattern_config.values #=> Array
    #   resp.rules[0].conditions[0].path_pattern_config.values[0] #=> String
    #   resp.rules[0].conditions[0].http_header_config.http_header_name #=> String
    #   resp.rules[0].conditions[0].http_header_config.values #=> Array
    #   resp.rules[0].conditions[0].http_header_config.values[0] #=> String
    #   resp.rules[0].conditions[0].query_string_config.values #=> Array
    #   resp.rules[0].conditions[0].query_string_config.values[0].key #=> String
    #   resp.rules[0].conditions[0].query_string_config.values[0].value #=> String
    #   resp.rules[0].conditions[0].http_request_method_config.values #=> Array
    #   resp.rules[0].conditions[0].http_request_method_config.values[0] #=> String
    #   resp.rules[0].conditions[0].source_ip_config.values #=> Array
    #   resp.rules[0].conditions[0].source_ip_config.values[0] #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "forward", "authenticate-oidc", "authenticate-cognito", "redirect", "fixed-response"
    #   resp.rules[0].actions[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.issuer #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.authorization_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.token_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.user_info_endpoint #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_id #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.client_secret #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_oidc_config.authentication_request_extra_params["AuthenticateOidcActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_oidc_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].authenticate_oidc_config.use_existing_client_secret #=> Boolean
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_arn #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_client_id #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.user_pool_domain #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_cookie_name #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.scope #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.session_timeout #=> Integer
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params #=> Hash
    #   resp.rules[0].actions[0].authenticate_cognito_config.authentication_request_extra_params["AuthenticateCognitoActionAuthenticationRequestParamName"] #=> String
    #   resp.rules[0].actions[0].authenticate_cognito_config.on_unauthenticated_request #=> String, one of "deny", "allow", "authenticate"
    #   resp.rules[0].actions[0].order #=> Integer
    #   resp.rules[0].actions[0].redirect_config.protocol #=> String
    #   resp.rules[0].actions[0].redirect_config.port #=> String
    #   resp.rules[0].actions[0].redirect_config.host #=> String
    #   resp.rules[0].actions[0].redirect_config.path #=> String
    #   resp.rules[0].actions[0].redirect_config.query #=> String
    #   resp.rules[0].actions[0].redirect_config.status_code #=> String, one of "HTTP_301", "HTTP_302"
    #   resp.rules[0].actions[0].fixed_response_config.message_body #=> String
    #   resp.rules[0].actions[0].fixed_response_config.status_code #=> String
    #   resp.rules[0].actions[0].fixed_response_config.content_type #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups #=> Array
    #   resp.rules[0].actions[0].forward_config.target_groups[0].target_group_arn #=> String
    #   resp.rules[0].actions[0].forward_config.target_groups[0].weight #=> Integer
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.enabled #=> Boolean
    #   resp.rules[0].actions[0].forward_config.target_group_stickiness_config.duration_seconds #=> Integer
    #   resp.rules[0].is_default #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetRulePriorities AWS API Documentation
    #
    # @overload set_rule_priorities(params = {})
    # @param [Hash] params ({})
    def set_rule_priorities(params = {}, options = {})
      req = build_request(:set_rule_priorities, params)
      req.send_request(options)
    end

    # Associates the specified security groups with the specified
    # Application Load Balancer. The specified security groups override the
    # previously associated security groups.
    #
    # You can't specify a security group for a Network Load Balancer.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [required, Array<String>] :security_groups
    #   The IDs of the security groups.
    #
    # @return [Types::SetSecurityGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetSecurityGroupsOutput#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #
    #
    # @example Example: To associate a security group with a load balancer
    #
    #   # This example associates the specified security group with the specified load balancer.
    #
    #   resp = client.set_security_groups({
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     security_groups: [
    #       "sg-5943793c", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_group_ids: [
    #       "sg-5943793c", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_security_groups({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     security_groups: ["SecurityGroupId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSecurityGroups AWS API Documentation
    #
    # @overload set_security_groups(params = {})
    # @param [Hash] params ({})
    def set_security_groups(params = {}, options = {})
      req = build_request(:set_security_groups, params)
      req.send_request(options)
    end

    # Enables the Availability Zones for the specified public subnets for
    # the specified load balancer. The specified subnets replace the
    # previously enabled subnets.
    #
    # When you specify subnets for a Network Load Balancer, you must include
    # all subnets that were enabled previously, with their existing
    # configurations, plus any additional subnets.
    #
    # @option params [required, String] :load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #
    # @option params [Array<String>] :subnets
    #   The IDs of the public subnets. You must specify subnets from at least
    #   two Availability Zones. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet mappings.
    #
    # @option params [Array<Types::SubnetMapping>] :subnet_mappings
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet mappings.
    #
    #   \[Application Load Balancers\] You must specify subnets from at least
    #   two Availability Zones. You cannot specify Elastic IP addresses for
    #   your subnets.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones. If you need static IP addresses for your
    #   internet-facing load balancer, you can specify one Elastic IP address
    #   per subnet. For internal load balancers, you can specify one private
    #   IP address per subnet from the IPv4 range of the subnet.
    #
    # @return [Types::SetSubnetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetSubnetsOutput#availability_zones #availability_zones} => Array&lt;Types::AvailabilityZone&gt;
    #
    #
    # @example Example: To enable Availability Zones for a load balancer
    #
    #   # This example enables the Availability Zones for the specified subnets for the specified load balancer.
    #
    #   resp = client.set_subnets({
    #     load_balancer_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188", 
    #     subnets: [
    #       "subnet-8360a9e7", 
    #       "subnet-b7d581c0", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     availability_zones: [
    #       {
    #         subnet_id: "subnet-8360a9e7", 
    #         zone_name: "us-west-2a", 
    #       }, 
    #       {
    #         subnet_id: "subnet-b7d581c0", 
    #         zone_name: "us-west-2b", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_subnets({
    #     load_balancer_arn: "LoadBalancerArn", # required
    #     subnets: ["SubnetId"],
    #     subnet_mappings: [
    #       {
    #         subnet_id: "SubnetId",
    #         allocation_id: "AllocationId",
    #         private_i_pv_4_address: "PrivateIPv4Address",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_zones #=> Array
    #   resp.availability_zones[0].zone_name #=> String
    #   resp.availability_zones[0].subnet_id #=> String
    #   resp.availability_zones[0].outpost_id #=> String
    #   resp.availability_zones[0].load_balancer_addresses #=> Array
    #   resp.availability_zones[0].load_balancer_addresses[0].ip_address #=> String
    #   resp.availability_zones[0].load_balancer_addresses[0].allocation_id #=> String
    #   resp.availability_zones[0].load_balancer_addresses[0].private_i_pv_4_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnets AWS API Documentation
    #
    # @overload set_subnets(params = {})
    # @param [Hash] params ({})
    def set_subnets(params = {}, options = {})
      req = build_request(:set_subnets, params)
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
      context[:gem_name] = 'aws-sdk-elasticloadbalancingv2'
      context[:gem_version] = '1.53.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name             | params                           | :delay   | :max_attempts |
    # | ----------------------- | -------------------------------- | -------- | ------------- |
    # | load_balancer_available | {Client#describe_load_balancers} | 15       | 40            |
    # | load_balancer_exists    | {Client#describe_load_balancers} | 15       | 40            |
    # | load_balancers_deleted  | {Client#describe_load_balancers} | 15       | 40            |
    # | target_deregistered     | {Client#describe_target_health}  | 15       | 40            |
    # | target_in_service       | {Client#describe_target_health}  | 15       | 40            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        load_balancer_available: Waiters::LoadBalancerAvailable,
        load_balancer_exists: Waiters::LoadBalancerExists,
        load_balancers_deleted: Waiters::LoadBalancersDeleted,
        target_deregistered: Waiters::TargetDeregistered,
        target_in_service: Waiters::TargetInService
      }
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

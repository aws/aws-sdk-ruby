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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iot)

module Aws::IoT
  # An API client for IoT.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoT::Client.new(
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

    @identifier = :iot

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::IoT::Plugins::Endpoints)

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
    #   @option options [Aws::IoT::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IoT::EndpointParameters`
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

    # Accepts a pending certificate transfer. The default state of the
    # certificate is INACTIVE.
    #
    # To check for pending certificate transfers, call ListCertificates to
    # enumerate your certificates.
    #
    # Requires permission to access the [AcceptCertificateTransfer][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @option params [Boolean] :set_as_active
    #   Specifies whether the certificate is active.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_certificate_transfer({
    #     certificate_id: "CertificateId", # required
    #     set_as_active: false,
    #   })
    #
    # @overload accept_certificate_transfer(params = {})
    # @param [Hash] params ({})
    def accept_certificate_transfer(params = {}, options = {})
      req = build_request(:accept_certificate_transfer, params)
      req.send_request(options)
    end

    # Adds a thing to a billing group.
    #
    # Requires permission to access the [AddThingToBillingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :billing_group_name
    #   The name of the billing group.
    #
    #   <note markdown="1"> This call is asynchronous. It might take several seconds for the
    #   detachment to propagate.
    #
    #    </note>
    #
    # @option params [String] :billing_group_arn
    #   The ARN of the billing group.
    #
    # @option params [String] :thing_name
    #   The name of the thing to be added to the billing group.
    #
    # @option params [String] :thing_arn
    #   The ARN of the thing to be added to the billing group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_thing_to_billing_group({
    #     billing_group_name: "BillingGroupName",
    #     billing_group_arn: "BillingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #   })
    #
    # @overload add_thing_to_billing_group(params = {})
    # @param [Hash] params ({})
    def add_thing_to_billing_group(params = {}, options = {})
      req = build_request(:add_thing_to_billing_group, params)
      req.send_request(options)
    end

    # Adds a thing to a thing group.
    #
    # Requires permission to access the [AddThingToThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :thing_group_name
    #   The name of the group to which you are adding a thing.
    #
    # @option params [String] :thing_group_arn
    #   The ARN of the group to which you are adding a thing.
    #
    # @option params [String] :thing_name
    #   The name of the thing to add to a group.
    #
    # @option params [String] :thing_arn
    #   The ARN of the thing to add to a group.
    #
    # @option params [Boolean] :override_dynamic_groups
    #   Override dynamic thing groups with static thing groups when 10-group
    #   limit is reached. If a thing belongs to 10 thing groups, and one or
    #   more of those groups are dynamic thing groups, adding a thing to a
    #   static group removes the thing from the last dynamic group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_thing_to_thing_group({
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #     override_dynamic_groups: false,
    #   })
    #
    # @overload add_thing_to_thing_group(params = {})
    # @param [Hash] params ({})
    def add_thing_to_thing_group(params = {}, options = {})
      req = build_request(:add_thing_to_thing_group, params)
      req.send_request(options)
    end

    # Associates a group with a continuous job. The following criteria must
    # be met:
    #
    # * The job must have been created with the `targetSelection` field set
    #   to "CONTINUOUS".
    #
    # * The job status must currently be "IN\_PROGRESS".
    #
    # * The total number of targets associated with a job must not exceed
    #   100.
    #
    # Requires permission to access the [AssociateTargetsWithJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Array<String>] :targets
    #   A list of thing group ARNs that define the targets of the job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [String] :comment
    #   An optional comment string describing why the job was associated with
    #   the targets.
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @return [Types::AssociateTargetsWithJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateTargetsWithJobResponse#job_arn #job_arn} => String
    #   * {Types::AssociateTargetsWithJobResponse#job_id #job_id} => String
    #   * {Types::AssociateTargetsWithJobResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_targets_with_job({
    #     targets: ["TargetArn"], # required
    #     job_id: "JobId", # required
    #     comment: "Comment",
    #     namespace_id: "NamespaceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.description #=> String
    #
    # @overload associate_targets_with_job(params = {})
    # @param [Hash] params ({})
    def associate_targets_with_job(params = {}, options = {})
      req = build_request(:associate_targets_with_job, params)
      req.send_request(options)
    end

    # Attaches the specified policy to the specified principal (certificate
    # or other credential).
    #
    # Requires permission to access the [AttachPolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to attach.
    #
    # @option params [required, String] :target
    #   The [identity][1] to which the policy is attached. For example, a
    #   thing group or a certificate.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy({
    #     policy_name: "PolicyName", # required
    #     target: "PolicyTarget", # required
    #   })
    #
    # @overload attach_policy(params = {})
    # @param [Hash] params ({})
    def attach_policy(params = {}, options = {})
      req = build_request(:attach_policy, params)
      req.send_request(options)
    end

    # Attaches the specified policy to the specified principal (certificate
    # or other credential).
    #
    # **Note:** This action is deprecated and works as expected for backward
    # compatibility, but we won't add enhancements. Use AttachPolicy
    # instead.
    #
    # Requires permission to access the [AttachPrincipalPolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :principal
    #   The principal, which can be a certificate ARN (as returned from the
    #   CreateCertificate operation) or an Amazon Cognito ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_principal_policy({
    #     policy_name: "PolicyName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload attach_principal_policy(params = {})
    # @param [Hash] params ({})
    def attach_principal_policy(params = {}, options = {})
      req = build_request(:attach_principal_policy, params)
      req.send_request(options)
    end

    # Associates a Device Defender security profile with a thing group or
    # this account. Each thing group or account can have up to five security
    # profiles associated with it.
    #
    # Requires permission to access the [AttachSecurityProfile][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The security profile that is attached.
    #
    # @option params [required, String] :security_profile_target_arn
    #   The ARN of the target (thing group) to which the security profile is
    #   attached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_target_arn: "SecurityProfileTargetArn", # required
    #   })
    #
    # @overload attach_security_profile(params = {})
    # @param [Hash] params ({})
    def attach_security_profile(params = {}, options = {})
      req = build_request(:attach_security_profile, params)
      req.send_request(options)
    end

    # Attaches the specified principal to the specified thing. A principal
    # can be X.509 certificates, Amazon Cognito identities or federated
    # identities.
    #
    # Requires permission to access the [AttachThingPrincipal][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [required, String] :principal
    #   The principal, which can be a certificate ARN (as returned from the
    #   CreateCertificate operation) or an Amazon Cognito ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_thing_principal({
    #     thing_name: "ThingName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload attach_thing_principal(params = {})
    # @param [Hash] params ({})
    def attach_thing_principal(params = {}, options = {})
      req = build_request(:attach_thing_principal, params)
      req.send_request(options)
    end

    # Cancels a mitigation action task that is in progress. If the task is
    # not in progress, an InvalidRequestException occurs.
    #
    # Requires permission to access the
    # [CancelAuditMitigationActionsTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The unique identifier for the task that you want to cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_audit_mitigation_actions_task({
    #     task_id: "MitigationActionsTaskId", # required
    #   })
    #
    # @overload cancel_audit_mitigation_actions_task(params = {})
    # @param [Hash] params ({})
    def cancel_audit_mitigation_actions_task(params = {}, options = {})
      req = build_request(:cancel_audit_mitigation_actions_task, params)
      req.send_request(options)
    end

    # Cancels an audit that is in progress. The audit can be either
    # scheduled or on demand. If the audit isn't in progress, an
    # "InvalidRequestException" occurs.
    #
    # Requires permission to access the [CancelAuditTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The ID of the audit you want to cancel. You can only cancel an audit
    #   that is "IN\_PROGRESS".
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_audit_task({
    #     task_id: "AuditTaskId", # required
    #   })
    #
    # @overload cancel_audit_task(params = {})
    # @param [Hash] params ({})
    def cancel_audit_task(params = {}, options = {})
      req = build_request(:cancel_audit_task, params)
      req.send_request(options)
    end

    # Cancels a pending transfer for the specified certificate.
    #
    # **Note** Only the transfer source account can use this operation to
    # cancel a transfer. (Transfer destinations can use
    # RejectCertificateTransfer instead.) After transfer, IoT returns the
    # certificate to the source account in the INACTIVE state. After the
    # destination account has accepted the transfer, the transfer cannot be
    # cancelled.
    #
    # After a certificate transfer is cancelled, the status of the
    # certificate changes from PENDING\_TRANSFER to INACTIVE.
    #
    # Requires permission to access the [CancelCertificateTransfer][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_certificate_transfer({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @overload cancel_certificate_transfer(params = {})
    # @param [Hash] params ({})
    def cancel_certificate_transfer(params = {}, options = {})
      req = build_request(:cancel_certificate_transfer, params)
      req.send_request(options)
    end

    # Cancels a Device Defender ML Detect mitigation action.
    #
    # Requires permission to access the
    # [CancelDetectMitigationActionsTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_detect_mitigation_actions_task({
    #     task_id: "MitigationActionsTaskId", # required
    #   })
    #
    # @overload cancel_detect_mitigation_actions_task(params = {})
    # @param [Hash] params ({})
    def cancel_detect_mitigation_actions_task(params = {}, options = {})
      req = build_request(:cancel_detect_mitigation_actions_task, params)
      req.send_request(options)
    end

    # Cancels a job.
    #
    # Requires permission to access the [CancelJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [String] :reason_code
    #   (Optional)A reason code string that explains why the job was canceled.
    #
    # @option params [String] :comment
    #   An optional comment string describing why the job was canceled.
    #
    # @option params [Boolean] :force
    #   (Optional) If `true` job executions with status "IN\_PROGRESS" and
    #   "QUEUED" are canceled, otherwise only job executions with status
    #   "QUEUED" are canceled. The default is `false`.
    #
    #   Canceling a job which is "IN\_PROGRESS", will cause a device which
    #   is executing the job to be unable to update the job execution status.
    #   Use caution and ensure that each device executing a job which is
    #   canceled is able to recover to a valid state.
    #
    # @return [Types::CancelJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJobResponse#job_arn #job_arn} => String
    #   * {Types::CancelJobResponse#job_id #job_id} => String
    #   * {Types::CancelJobResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "JobId", # required
    #     reason_code: "ReasonCode",
    #     comment: "Comment",
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.description #=> String
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Cancels the execution of a job for a given thing.
    #
    # Requires permission to access the [CancelJobExecution][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The ID of the job to be canceled.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing whose execution of the job will be canceled.
    #
    # @option params [Boolean] :force
    #   (Optional) If `true` the job execution will be canceled if it has
    #   status IN\_PROGRESS or QUEUED, otherwise the job execution will be
    #   canceled only if it has status QUEUED. If you attempt to cancel a job
    #   execution that is IN\_PROGRESS, and you do not set `force` to `true`,
    #   then an `InvalidStateTransitionException` will be thrown. The default
    #   is `false`.
    #
    #   Canceling a job execution which is "IN\_PROGRESS", will cause the
    #   device to be unable to update the job execution status. Use caution
    #   and ensure that the device is able to recover to a valid state.
    #
    # @option params [Integer] :expected_version
    #   (Optional) The expected current version of the job execution. Each
    #   time you update the job execution, its version is incremented. If the
    #   version of the job execution stored in Jobs does not match, the update
    #   is rejected with a VersionMismatch error, and an ErrorResponse that
    #   contains the current job execution status data is returned. (This
    #   makes it unnecessary to perform a separate DescribeJobExecution
    #   request in order to obtain the job execution status data.)
    #
    # @option params [Hash<String,String>] :status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution. If not specified, the statusDetails are unchanged. You can
    #   specify at most 10 name/value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job_execution({
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     force: false,
    #     expected_version: 1,
    #     status_details: {
    #       "DetailsKey" => "DetailsValue",
    #     },
    #   })
    #
    # @overload cancel_job_execution(params = {})
    # @param [Hash] params ({})
    def cancel_job_execution(params = {}, options = {})
      req = build_request(:cancel_job_execution, params)
      req.send_request(options)
    end

    # Clears the default authorizer.
    #
    # Requires permission to access the [ClearDefaultAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @overload clear_default_authorizer(params = {})
    # @param [Hash] params ({})
    def clear_default_authorizer(params = {}, options = {})
      req = build_request(:clear_default_authorizer, params)
      req.send_request(options)
    end

    # Confirms a topic rule destination. When you create a rule requiring a
    # destination, IoT sends a confirmation message to the endpoint or base
    # address you specify. The message includes a token which you pass back
    # when calling `ConfirmTopicRuleDestination` to confirm that you own or
    # have access to the endpoint.
    #
    # Requires permission to access the [ConfirmTopicRuleDestination][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :confirmation_token
    #   The token used to confirm ownership or access to the topic rule
    #   confirmation URL.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_topic_rule_destination({
    #     confirmation_token: "ConfirmationToken", # required
    #   })
    #
    # @overload confirm_topic_rule_destination(params = {})
    # @param [Hash] params ({})
    def confirm_topic_rule_destination(params = {}, options = {})
      req = build_request(:confirm_topic_rule_destination, params)
      req.send_request(options)
    end

    # Creates a Device Defender audit suppression.
    #
    # Requires permission to access the [CreateAuditSuppression][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [required, Types::ResourceIdentifier] :resource_identifier
    #   Information that identifies the noncompliant resource.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_date
    #   The epoch timestamp in seconds at which this suppression expires.
    #
    # @option params [Boolean] :suppress_indefinitely
    #   Indicates whether a suppression should exist indefinitely or not.
    #
    # @option params [String] :description
    #   The description of the audit suppression.
    #
    # @option params [required, String] :client_request_token
    #   Each audit supression must have a unique client request token. If you
    #   try to create a new audit suppression with the same token as one that
    #   already exists, an exception occurs. If you omit this value, Amazon
    #   Web Services SDKs will automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_audit_suppression({
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber",
    #       },
    #       device_certificate_arn: "CertificateArn",
    #     },
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: "AuditDescription",
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @overload create_audit_suppression(params = {})
    # @param [Hash] params ({})
    def create_audit_suppression(params = {}, options = {})
      req = build_request(:create_audit_suppression, params)
      req.send_request(options)
    end

    # Creates an authorizer.
    #
    # Requires permission to access the [CreateAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :authorizer_name
    #   The authorizer name.
    #
    # @option params [required, String] :authorizer_function_arn
    #   The ARN of the authorizer's Lambda function.
    #
    # @option params [String] :token_key_name
    #   The name of the token key used to extract the token from the HTTP
    #   headers.
    #
    # @option params [Hash<String,String>] :token_signing_public_keys
    #   The public keys used to verify the digital signature returned by your
    #   custom authentication service.
    #
    # @option params [String] :status
    #   The status of the create authorizer request.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the custom authorizer.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @option params [Boolean] :signing_disabled
    #   Specifies whether IoT validates the token signature in an
    #   authorization request.
    #
    # @option params [Boolean] :enable_caching_for_http
    #   When `true`, the result from the authorizer’s Lambda function is
    #   cached for clients that use persistent HTTP connections. The results
    #   are cached for the time specified by the Lambda function in
    #   `refreshAfterInSeconds`. This value does not affect authorization of
    #   clients that use MQTT connections.
    #
    #   The default value is `false`.
    #
    # @return [Types::CreateAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAuthorizerResponse#authorizer_name #authorizer_name} => String
    #   * {Types::CreateAuthorizerResponse#authorizer_arn #authorizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #     authorizer_function_arn: "AuthorizerFunctionArn", # required
    #     token_key_name: "TokenKeyName",
    #     token_signing_public_keys: {
    #       "KeyName" => "KeyValue",
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     signing_disabled: false,
    #     enable_caching_for_http: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_name #=> String
    #   resp.authorizer_arn #=> String
    #
    # @overload create_authorizer(params = {})
    # @param [Hash] params ({})
    def create_authorizer(params = {}, options = {})
      req = build_request(:create_authorizer, params)
      req.send_request(options)
    end

    # Creates a billing group.
    #
    # Requires permission to access the [CreateBillingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :billing_group_name
    #   The name you wish to give to the billing group.
    #
    # @option params [Types::BillingGroupProperties] :billing_group_properties
    #   The properties of the billing group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the billing group.
    #
    # @return [Types::CreateBillingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBillingGroupResponse#billing_group_name #billing_group_name} => String
    #   * {Types::CreateBillingGroupResponse#billing_group_arn #billing_group_arn} => String
    #   * {Types::CreateBillingGroupResponse#billing_group_id #billing_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_billing_group({
    #     billing_group_name: "BillingGroupName", # required
    #     billing_group_properties: {
    #       billing_group_description: "BillingGroupDescription",
    #     },
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
    #   resp.billing_group_name #=> String
    #   resp.billing_group_arn #=> String
    #   resp.billing_group_id #=> String
    #
    # @overload create_billing_group(params = {})
    # @param [Hash] params ({})
    def create_billing_group(params = {}, options = {})
      req = build_request(:create_billing_group, params)
      req.send_request(options)
    end

    # Creates an X.509 certificate using the specified certificate signing
    # request.
    #
    # Requires permission to access the [CreateCertificateFromCsr][1]
    # action.
    #
    # <note markdown="1"> The CSR must include a public key that is either an RSA key with a
    # length of at least 2048 bits or an ECC key from NIST P-256 or NIST
    # P-384 curves. For supported certificates, consult [ Certificate
    # signing algorithms supported by IoT][2].
    #
    #  </note>
    #
    # <note markdown="1"> Reusing the same certificate signing request (CSR) results in a
    # distinct certificate.
    #
    #  </note>
    #
    # You can create multiple certificates in a batch by creating a
    # directory, copying multiple `.csr` files into that directory, and then
    # specifying that directory on the command line. The following commands
    # show how to create a batch of certificates given a batch of CSRs. In
    # the following commands, we assume that a set of CSRs are located
    # inside of the directory my-csr-directory:
    #
    # On Linux and OS X, the command is:
    #
    # `$ ls my-csr-directory/ | xargs -I \{\} aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://my-csr-directory/\{\}`
    #
    # This command lists all of the CSRs in my-csr-directory and pipes each
    # CSR file name to the `aws iot create-certificate-from-csr` Amazon Web
    # Services CLI command to create a certificate for the corresponding
    # CSR.
    #
    # You can also run the `aws iot create-certificate-from-csr` part of the
    # command in parallel to speed up the certificate creation process:
    #
    # `$ ls my-csr-directory/ | xargs -P 10 -I \{\} aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://my-csr-directory/\{\} `
    #
    # On Windows PowerShell, the command to create certificates for all CSRs
    # in my-csr-directory is:
    #
    # `> ls -Name my-csr-directory | %\{aws iot create-certificate-from-csr
    # --certificate-signing-request file://my-csr-directory/$_\} `
    #
    # On a Windows command prompt, the command to create certificates for
    # all CSRs in my-csr-directory is:
    #
    # `> forfiles /p my-csr-directory /c "cmd /c aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://@path" `
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms
    #
    # @option params [required, String] :certificate_signing_request
    #   The certificate signing request (CSR).
    #
    # @option params [Boolean] :set_as_active
    #   Specifies whether the certificate is active.
    #
    # @return [Types::CreateCertificateFromCsrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCertificateFromCsrResponse#certificate_arn #certificate_arn} => String
    #   * {Types::CreateCertificateFromCsrResponse#certificate_id #certificate_id} => String
    #   * {Types::CreateCertificateFromCsrResponse#certificate_pem #certificate_pem} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_from_csr({
    #     certificate_signing_request: "CertificateSigningRequest", # required
    #     set_as_active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #   resp.certificate_pem #=> String
    #
    # @overload create_certificate_from_csr(params = {})
    # @param [Hash] params ({})
    def create_certificate_from_csr(params = {}, options = {})
      req = build_request(:create_certificate_from_csr, params)
      req.send_request(options)
    end

    # Use this API to define a Custom Metric published by your devices to
    # Device Defender.
    #
    # Requires permission to access the [CreateCustomMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the custom metric. This will be used in the metric report
    #   submitted from the device/thing. The name can't begin with `aws:`.
    #   You can't change the name after you define it.
    #
    # @option params [String] :display_name
    #   The friendly name in the console for the custom metric. This name
    #   doesn't have to be unique. Don't use this name as the metric
    #   identifier in the device metric report. You can update the friendly
    #   name after you define it.
    #
    # @option params [required, String] :metric_type
    #   The type of the custom metric.
    #
    #   The type `number` only takes a single metric value as an input, but
    #   when you submit the metrics value in the DeviceMetrics report, you
    #   must pass it as an array with a single value.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the custom metric.
    #
    # @option params [required, String] :client_request_token
    #   Each custom metric must have a unique client request token. If you try
    #   to create a new custom metric that already exists with a different
    #   token, an exception occurs. If you omit this value, Amazon Web
    #   Services SDKs will automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCustomMetricResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomMetricResponse#metric_name #metric_name} => String
    #   * {Types::CreateCustomMetricResponse#metric_arn #metric_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_metric({
    #     metric_name: "MetricName", # required
    #     display_name: "CustomMetricDisplayName",
    #     metric_type: "string-list", # required, accepts string-list, ip-address-list, number-list, number
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String
    #   resp.metric_arn #=> String
    #
    # @overload create_custom_metric(params = {})
    # @param [Hash] params ({})
    def create_custom_metric(params = {}, options = {})
      req = build_request(:create_custom_metric, params)
      req.send_request(options)
    end

    # Create a dimension that you can use to limit the scope of a metric
    # used in a security profile for IoT Device Defender. For example, using
    # a `TOPIC_FILTER` dimension, you can narrow down the scope of the
    # metric only to MQTT topics whose name match the pattern specified in
    # the dimension.
    #
    # Requires permission to access the [CreateDimension][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :name
    #   A unique identifier for the dimension. Choose something that describes
    #   the type and value to make it easy to remember what it does.
    #
    # @option params [required, String] :type
    #   Specifies the type of dimension. Supported types: `TOPIC_FILTER.`
    #
    # @option params [required, Array<String>] :string_values
    #   Specifies the value or list of values for the dimension. For
    #   `TOPIC_FILTER` dimensions, this is a pattern used to match the MQTT
    #   topic (for example, "admin/#").
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the dimension.
    #
    # @option params [required, String] :client_request_token
    #   Each dimension must have a unique client request token. If you try to
    #   create a new dimension with the same token as a dimension that already
    #   exists, an exception occurs. If you omit this value, Amazon Web
    #   Services SDKs will automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDimensionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDimensionResponse#name #name} => String
    #   * {Types::CreateDimensionResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dimension({
    #     name: "DimensionName", # required
    #     type: "TOPIC_FILTER", # required, accepts TOPIC_FILTER
    #     string_values: ["DimensionStringValue"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #
    # @overload create_dimension(params = {})
    # @param [Hash] params ({})
    def create_dimension(params = {}, options = {})
      req = build_request(:create_dimension, params)
      req.send_request(options)
    end

    # Creates a domain configuration.
    #
    # Requires permission to access the [CreateDomainConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :domain_configuration_name
    #   The name of the domain configuration. This value must be unique to a
    #   region.
    #
    # @option params [String] :domain_name
    #   The name of the domain.
    #
    # @option params [Array<String>] :server_certificate_arns
    #   The ARNs of the certificates that IoT passes to the device during the
    #   TLS handshake. Currently you can specify only one certificate ARN.
    #   This value is not required for Amazon Web Services-managed domains.
    #
    # @option params [String] :validation_certificate_arn
    #   The certificate used to validate the server certificate and prove
    #   domain name ownership. This certificate must be signed by a public
    #   certificate authority. This value is not required for Amazon Web
    #   Services-managed domains.
    #
    # @option params [Types::AuthorizerConfig] :authorizer_config
    #   An object that specifies the authorization service for a domain.
    #
    # @option params [String] :service_type
    #   The type of service delivered by the endpoint.
    #
    #   <note markdown="1"> Amazon Web Services IoT Core currently supports only the `DATA`
    #   service type.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the domain configuration.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @option params [Types::TlsConfig] :tls_config
    #   An object that specifies the TLS configuration for a domain.
    #
    # @return [Types::CreateDomainConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainConfigurationResponse#domain_configuration_name #domain_configuration_name} => String
    #   * {Types::CreateDomainConfigurationResponse#domain_configuration_arn #domain_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_configuration({
    #     domain_configuration_name: "DomainConfigurationName", # required
    #     domain_name: "DomainName",
    #     server_certificate_arns: ["AcmCertificateArn"],
    #     validation_certificate_arn: "AcmCertificateArn",
    #     authorizer_config: {
    #       default_authorizer_name: "AuthorizerName",
    #       allow_authorizer_override: false,
    #     },
    #     service_type: "DATA", # accepts DATA, CREDENTIAL_PROVIDER, JOBS
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     tls_config: {
    #       security_policy: "SecurityPolicy",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_configuration_name #=> String
    #   resp.domain_configuration_arn #=> String
    #
    # @overload create_domain_configuration(params = {})
    # @param [Hash] params ({})
    def create_domain_configuration(params = {}, options = {})
      req = build_request(:create_domain_configuration, params)
      req.send_request(options)
    end

    # Creates a dynamic thing group.
    #
    # Requires permission to access the [CreateDynamicThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The dynamic thing group name to create.
    #
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   The dynamic thing group properties.
    #
    # @option params [String] :index_name
    #   The dynamic thing group index name.
    #
    #   <note markdown="1"> Currently one index is supported: `AWS_Things`.
    #
    #    </note>
    #
    # @option params [required, String] :query_string
    #   The dynamic thing group search query string.
    #
    #   See [Query Syntax][1] for information about query string syntax.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html
    #
    # @option params [String] :query_version
    #   The dynamic thing group query version.
    #
    #   <note markdown="1"> Currently one query version is supported: "2017-09-30". If not
    #   specified, the query version defaults to this value.
    #
    #    </note>
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the dynamic thing group.
    #
    # @return [Types::CreateDynamicThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDynamicThingGroupResponse#thing_group_name #thing_group_name} => String
    #   * {Types::CreateDynamicThingGroupResponse#thing_group_arn #thing_group_arn} => String
    #   * {Types::CreateDynamicThingGroupResponse#thing_group_id #thing_group_id} => String
    #   * {Types::CreateDynamicThingGroupResponse#index_name #index_name} => String
    #   * {Types::CreateDynamicThingGroupResponse#query_string #query_string} => String
    #   * {Types::CreateDynamicThingGroupResponse#query_version #query_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dynamic_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: {
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       },
    #     },
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     query_version: "QueryVersion",
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
    #   resp.thing_group_name #=> String
    #   resp.thing_group_arn #=> String
    #   resp.thing_group_id #=> String
    #   resp.index_name #=> String
    #   resp.query_string #=> String
    #   resp.query_version #=> String
    #
    # @overload create_dynamic_thing_group(params = {})
    # @param [Hash] params ({})
    def create_dynamic_thing_group(params = {}, options = {})
      req = build_request(:create_dynamic_thing_group, params)
      req.send_request(options)
    end

    # Creates a fleet metric.
    #
    # Requires permission to access the [CreateFleetMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the fleet metric to create.
    #
    # @option params [required, String] :query_string
    #   The search query string.
    #
    # @option params [required, Types::AggregationType] :aggregation_type
    #   The type of the aggregation query.
    #
    # @option params [required, Integer] :period
    #   The time in seconds between fleet metric emissions. Range \[60(1 min),
    #   86400(1 day)\] and must be multiple of 60.
    #
    # @option params [required, String] :aggregation_field
    #   The field to aggregate.
    #
    # @option params [String] :description
    #   The fleet metric description.
    #
    # @option params [String] :query_version
    #   The query version.
    #
    # @option params [String] :index_name
    #   The name of the index to search.
    #
    # @option params [String] :unit
    #   Used to support unit transformation such as milliseconds to seconds.
    #   The unit must be supported by [CW metric][1]. Default to null.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata, which can be used to manage the fleet metric.
    #
    # @return [Types::CreateFleetMetricResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetMetricResponse#metric_name #metric_name} => String
    #   * {Types::CreateFleetMetricResponse#metric_arn #metric_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet_metric({
    #     metric_name: "FleetMetricName", # required
    #     query_string: "QueryString", # required
    #     aggregation_type: { # required
    #       name: "Statistics", # required, accepts Statistics, Percentiles, Cardinality
    #       values: ["AggregationTypeValue"],
    #     },
    #     period: 1, # required
    #     aggregation_field: "AggregationField", # required
    #     description: "FleetMetricDescription",
    #     query_version: "QueryVersion",
    #     index_name: "IndexName",
    #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
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
    #   resp.metric_name #=> String
    #   resp.metric_arn #=> String
    #
    # @overload create_fleet_metric(params = {})
    # @param [Hash] params ({})
    def create_fleet_metric(params = {}, options = {})
      req = build_request(:create_fleet_metric, params)
      req.send_request(options)
    end

    # Creates a job.
    #
    # Requires permission to access the [CreateJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   A job identifier which must be unique for your Amazon Web Services
    #   account. We recommend using a UUID. Alpha-numeric characters, "-"
    #   and "\_" are valid for use here.
    #
    # @option params [required, Array<String>] :targets
    #   A list of things and thing groups to which the job should be sent.
    #
    # @option params [String] :document_source
    #   An S3 link, or S3 object URL, to the job document. The link is an
    #   Amazon S3 object URL and is required if you don't specify a value for
    #   `document`.
    #
    #   For example, `--document-source
    #   https://s3.region-code.amazonaws.com/example-firmware/device-firmware.1.0`
    #
    #   For more information, see [Methods for accessing a bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html
    #
    # @option params [String] :document
    #   The job document. Required if you don't specify a value for
    #   `documentSource`.
    #
    # @option params [String] :description
    #   A short text description of the job.
    #
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   Configuration information for pre-signed S3 URLs.
    #
    # @option params [String] :target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have completed
    #   the job (SNAPSHOT). If continuous, the job may also be run on a thing
    #   when a change is detected in a target. For example, a job will run on
    #   a thing when the thing is added to a target group, even after the job
    #   was completed by all things originally in the group.
    #
    #   <note markdown="1"> We recommend that you use continuous jobs instead of snapshot jobs for
    #   dynamic thing group targets. By using continuous jobs, devices that
    #   join the group receive the job execution even after the job has been
    #   created.
    #
    #    </note>
    #
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   Allows you to create a staged rollout of the job.
    #
    # @option params [Types::AbortConfig] :abort_config
    #   Allows you to create the criteria to abort a job.
    #
    # @option params [Types::TimeoutConfig] :timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. The timer is started when the job execution status is set
    #   to `IN_PROGRESS`. If the job execution status is not set to another
    #   terminal state before the time expires, it will be automatically set
    #   to `TIMED_OUT`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the job.
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @option params [String] :job_template_arn
    #   The ARN of the job template used to create the job.
    #
    # @option params [Types::JobExecutionsRetryConfig] :job_executions_retry_config
    #   Allows you to create the criteria to retry a job.
    #
    # @option params [Hash<String,String>] :document_parameters
    #   Parameters of an Amazon Web Services managed template that you can
    #   specify to create the job document.
    #
    #   <note markdown="1"> `documentParameters` can only be used when creating jobs from Amazon
    #   Web Services managed templates. This parameter can't be used with
    #   custom job templates or to create jobs from them.
    #
    #    </note>
    #
    # @option params [Types::SchedulingConfig] :scheduling_config
    #   The configuration that allows you to schedule a job for a future date
    #   and time in addition to specifying the end behavior for each job
    #   execution.
    #
    # @option params [Array<String>] :destination_package_versions
    #   The package version Amazon Resource Names (ARNs) that are installed on
    #   the device when the job successfully completes.
    #
    #   **Note:**The following Length Constraints relates to a single string.
    #   Up to five strings are allowed.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job_arn #job_arn} => String
    #   * {Types::CreateJobResponse#job_id #job_id} => String
    #   * {Types::CreateJobResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     job_id: "JobId", # required
    #     targets: ["TargetArn"], # required
    #     document_source: "JobDocumentSource",
    #     document: "JobDocument",
    #     description: "JobDescription",
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1,
    #     },
    #     target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1,
    #         },
    #       },
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #           action: "CANCEL", # required, accepts CANCEL
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         },
    #       ],
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     namespace_id: "NamespaceId",
    #     job_template_arn: "JobTemplateArn",
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, TIMED_OUT, ALL
    #           number_of_retries: 1, # required
    #         },
    #       ],
    #     },
    #     document_parameters: {
    #       "ParameterKey" => "ParameterValue",
    #     },
    #     scheduling_config: {
    #       start_time: "StringDateTime",
    #       end_time: "StringDateTime",
    #       end_behavior: "STOP_ROLLOUT", # accepts STOP_ROLLOUT, CANCEL, FORCE_CANCEL
    #       maintenance_windows: [
    #         {
    #           start_time: "CronExpression", # required
    #           duration_in_minutes: 1, # required
    #         },
    #       ],
    #     },
    #     destination_package_versions: ["PackageVersionArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.description #=> String
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates a job template.
    #
    # Requires permission to access the [CreateJobTemplate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_template_id
    #   A unique identifier for the job template. We recommend using a UUID.
    #   Alpha-numeric characters, "-", and "\_" are valid for use here.
    #
    # @option params [String] :job_arn
    #   The ARN of the job to use as the basis for the job template.
    #
    # @option params [String] :document_source
    #   An S3 link to the job document to use in the template. Required if you
    #   don't specify a value for `document`.
    #
    #   <note markdown="1"> If the job document resides in an S3 bucket, you must use a
    #   placeholder link when specifying the document.
    #
    #    The placeholder link is of the following form:
    #
    #    `$\{aws:iot:s3-presigned-url:https://s3.amazonaws.com/bucket/key\}`
    #
    #    where *bucket* is your bucket name and *key* is the object in the
    #   bucket to which you are linking.
    #
    #    </note>
    #
    # @option params [String] :document
    #   The job document. Required if you don't specify a value for
    #   `documentSource`.
    #
    # @option params [required, String] :description
    #   A description of the job document.
    #
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   Configuration for pre-signed S3 URLs.
    #
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   Allows you to create a staged rollout of a job.
    #
    # @option params [Types::AbortConfig] :abort_config
    #   The criteria that determine when and how a job abort takes place.
    #
    # @option params [Types::TimeoutConfig] :timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. A timer is started when the job execution status is set to
    #   `IN_PROGRESS`. If the job execution status is not set to another
    #   terminal state before the timer expires, it will be automatically set
    #   to `TIMED_OUT`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the job template.
    #
    # @option params [Types::JobExecutionsRetryConfig] :job_executions_retry_config
    #   Allows you to create the criteria to retry a job.
    #
    # @option params [Array<Types::MaintenanceWindow>] :maintenance_windows
    #   Allows you to configure an optional maintenance window for the rollout
    #   of a job document to all devices in the target group for a job.
    #
    # @option params [Array<String>] :destination_package_versions
    #   The package version Amazon Resource Names (ARNs) that are installed on
    #   the device when the job successfully completes.
    #
    #   **Note:**The following Length Constraints relates to a single string.
    #   Up to five strings are allowed.
    #
    # @return [Types::CreateJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobTemplateResponse#job_template_arn #job_template_arn} => String
    #   * {Types::CreateJobTemplateResponse#job_template_id #job_template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_template({
    #     job_template_id: "JobTemplateId", # required
    #     job_arn: "JobArn",
    #     document_source: "JobDocumentSource",
    #     document: "JobDocument",
    #     description: "JobDescription", # required
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1,
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1,
    #         },
    #       },
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #           action: "CANCEL", # required, accepts CANCEL
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         },
    #       ],
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, TIMED_OUT, ALL
    #           number_of_retries: 1, # required
    #         },
    #       ],
    #     },
    #     maintenance_windows: [
    #       {
    #         start_time: "CronExpression", # required
    #         duration_in_minutes: 1, # required
    #       },
    #     ],
    #     destination_package_versions: ["PackageVersionArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_template_arn #=> String
    #   resp.job_template_id #=> String
    #
    # @overload create_job_template(params = {})
    # @param [Hash] params ({})
    def create_job_template(params = {}, options = {})
      req = build_request(:create_job_template, params)
      req.send_request(options)
    end

    # Creates a 2048-bit RSA key pair and issues an X.509 certificate using
    # the issued public key. You can also call `CreateKeysAndCertificate`
    # over MQTT from a device, for more information, see [Provisioning MQTT
    # API][1].
    #
    # **Note** This is the only time IoT issues the private key for this
    # certificate, so it is important to keep it in a secure location.
    #
    # Requires permission to access the [CreateKeysAndCertificate][2]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Boolean] :set_as_active
    #   Specifies whether the certificate is active.
    #
    # @return [Types::CreateKeysAndCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeysAndCertificateResponse#certificate_arn #certificate_arn} => String
    #   * {Types::CreateKeysAndCertificateResponse#certificate_id #certificate_id} => String
    #   * {Types::CreateKeysAndCertificateResponse#certificate_pem #certificate_pem} => String
    #   * {Types::CreateKeysAndCertificateResponse#key_pair #key_pair} => Types::KeyPair
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_keys_and_certificate({
    #     set_as_active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #   resp.certificate_pem #=> String
    #   resp.key_pair.public_key #=> String
    #   resp.key_pair.private_key #=> String
    #
    # @overload create_keys_and_certificate(params = {})
    # @param [Hash] params ({})
    def create_keys_and_certificate(params = {}, options = {})
      req = build_request(:create_keys_and_certificate, params)
      req.send_request(options)
    end

    # Defines an action that can be applied to audit findings by using
    # StartAuditMitigationActionsTask. Only certain types of mitigation
    # actions can be applied to specific check names. For more information,
    # see [Mitigation actions][1]. Each mitigation action can apply only one
    # type of change.
    #
    # Requires permission to access the [CreateMitigationAction][2] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :action_name
    #   A friendly name for the action. Choose a friendly name that accurately
    #   describes the action (for example, `EnableLoggingAction`).
    #
    # @option params [required, String] :role_arn
    #   The ARN of the IAM role that is used to apply the mitigation action.
    #
    # @option params [required, Types::MitigationActionParams] :action_params
    #   Defines the type of action and the parameters for that action.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the mitigation action.
    #
    # @return [Types::CreateMitigationActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMitigationActionResponse#action_arn #action_arn} => String
    #   * {Types::CreateMitigationActionResponse#action_id #action_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mitigation_action({
    #     action_name: "MitigationActionName", # required
    #     role_arn: "RoleArn", # required
    #     action_params: { # required
    #       update_device_certificate_params: {
    #         action: "DEACTIVATE", # required, accepts DEACTIVATE
    #       },
    #       update_ca_certificate_params: {
    #         action: "DEACTIVATE", # required, accepts DEACTIVATE
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: ["ThingGroupName"], # required
    #         override_dynamic_groups: false,
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: "BLANK_POLICY", # required, accepts BLANK_POLICY
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: "RoleArn", # required
    #         log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: "SnsTopicArn", # required
    #       },
    #     },
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
    #   resp.action_arn #=> String
    #   resp.action_id #=> String
    #
    # @overload create_mitigation_action(params = {})
    # @param [Hash] params ({})
    def create_mitigation_action(params = {}, options = {})
      req = build_request(:create_mitigation_action, params)
      req.send_request(options)
    end

    # Creates an IoT OTA update on a target group of things or groups.
    #
    # Requires permission to access the [CreateOTAUpdate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :ota_update_id
    #   The ID of the OTA update to be created.
    #
    # @option params [String] :description
    #   The description of the OTA update.
    #
    # @option params [required, Array<String>] :targets
    #   The devices targeted to receive OTA updates.
    #
    # @option params [Array<String>] :protocols
    #   The protocol used to transfer the OTA update image. Valid values are
    #   \[HTTP\], \[MQTT\], \[HTTP, MQTT\]. When both HTTP and MQTT are
    #   specified, the target device can choose the protocol.
    #
    # @option params [String] :target_selection
    #   Specifies whether the update will continue to run (CONTINUOUS), or
    #   will be complete after all the things specified as targets have
    #   completed the update (SNAPSHOT). If continuous, the update may also be
    #   run on a thing when a change is detected in a target. For example, an
    #   update will run on a thing when the thing is added to a target group,
    #   even after the update was completed by all things originally in the
    #   group. Valid values: CONTINUOUS \| SNAPSHOT.
    #
    # @option params [Types::AwsJobExecutionsRolloutConfig] :aws_job_executions_rollout_config
    #   Configuration for the rollout of OTA updates.
    #
    # @option params [Types::AwsJobPresignedUrlConfig] :aws_job_presigned_url_config
    #   Configuration information for pre-signed URLs.
    #
    # @option params [Types::AwsJobAbortConfig] :aws_job_abort_config
    #   The criteria that determine when and how a job abort takes place.
    #
    # @option params [Types::AwsJobTimeoutConfig] :aws_job_timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. A timer is started when the job execution status is set to
    #   `IN_PROGRESS`. If the job execution status is not set to another
    #   terminal state before the timer expires, it will be automatically set
    #   to `TIMED_OUT`.
    #
    # @option params [required, Array<Types::OTAUpdateFile>] :files
    #   The files to be streamed by the OTA update.
    #
    # @option params [required, String] :role_arn
    #   The IAM role that grants Amazon Web Services IoT Core access to the
    #   Amazon S3, IoT jobs and Amazon Web Services Code Signing resources to
    #   create an OTA update job.
    #
    # @option params [Hash<String,String>] :additional_parameters
    #   A list of additional OTA update parameters which are name-value pairs.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage updates.
    #
    # @return [Types::CreateOTAUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOTAUpdateResponse#ota_update_id #ota_update_id} => String
    #   * {Types::CreateOTAUpdateResponse#aws_iot_job_id #aws_iot_job_id} => String
    #   * {Types::CreateOTAUpdateResponse#ota_update_arn #ota_update_arn} => String
    #   * {Types::CreateOTAUpdateResponse#aws_iot_job_arn #aws_iot_job_arn} => String
    #   * {Types::CreateOTAUpdateResponse#ota_update_status #ota_update_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ota_update({
    #     ota_update_id: "OTAUpdateId", # required
    #     description: "OTAUpdateDescription",
    #     targets: ["Target"], # required
    #     protocols: ["MQTT"], # accepts MQTT, HTTP
    #     target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #     aws_job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1,
    #         },
    #       },
    #     },
    #     aws_job_presigned_url_config: {
    #       expires_in_sec: 1,
    #     },
    #     aws_job_abort_config: {
    #       abort_criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #           action: "CANCEL", # required, accepts CANCEL
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         },
    #       ],
    #     },
    #     aws_job_timeout_config: {
    #       in_progress_timeout_in_minutes: 1,
    #     },
    #     files: [ # required
    #       {
    #         file_name: "FileName",
    #         file_type: 1,
    #         file_version: "OTAUpdateFileVersion",
    #         file_location: {
    #           stream: {
    #             stream_id: "StreamId",
    #             file_id: 1,
    #           },
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             version: "S3Version",
    #           },
    #         },
    #         code_signing: {
    #           aws_signer_job_id: "SigningJobId",
    #           start_signing_job_parameter: {
    #             signing_profile_parameter: {
    #               certificate_arn: "CertificateArn",
    #               platform: "Platform",
    #               certificate_path_on_device: "CertificatePathOnDevice",
    #             },
    #             signing_profile_name: "SigningProfileName",
    #             destination: {
    #               s3_destination: {
    #                 bucket: "S3Bucket",
    #                 prefix: "Prefix",
    #               },
    #             },
    #           },
    #           custom_code_signing: {
    #             signature: {
    #               inline_document: "data",
    #             },
    #             certificate_chain: {
    #               certificate_name: "CertificateName",
    #               inline_document: "InlineDocument",
    #             },
    #             hash_algorithm: "HashAlgorithm",
    #             signature_algorithm: "SignatureAlgorithm",
    #           },
    #         },
    #         attributes: {
    #           "AttributeKey" => "Value",
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn", # required
    #     additional_parameters: {
    #       "AttributeKey" => "Value",
    #     },
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
    #   resp.ota_update_id #=> String
    #   resp.aws_iot_job_id #=> String
    #   resp.ota_update_arn #=> String
    #   resp.aws_iot_job_arn #=> String
    #   resp.ota_update_status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #
    # @overload create_ota_update(params = {})
    # @param [Hash] params ({})
    def create_ota_update(params = {}, options = {})
      req = build_request(:create_ota_update, params)
      req.send_request(options)
    end

    # Creates an IoT software package that can be deployed to your fleet.
    #
    # Requires permission to access the [CreatePackage][1] and
    # [GetIndexingConfiguration][1] actions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the new package.
    #
    # @option params [String] :description
    #   A summary of the package being created. This can be used to outline
    #   the package's contents or purpose.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that can be used to manage the package.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageResponse#package_name #package_name} => String
    #   * {Types::CreatePackageResponse#package_arn #package_arn} => String
    #   * {Types::CreatePackageResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package({
    #     package_name: "PackageName", # required
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_name #=> String
    #   resp.package_arn #=> String
    #   resp.description #=> String
    #
    # @overload create_package(params = {})
    # @param [Hash] params ({})
    def create_package(params = {}, options = {})
      req = build_request(:create_package, params)
      req.send_request(options)
    end

    # Creates a new version for an existing IoT software package.
    #
    # Requires permission to access the [CreatePackageVersion][1] and
    # [GetIndexingConfiguration][1] actions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the associated package.
    #
    # @option params [required, String] :version_name
    #   The name of the new package version.
    #
    # @option params [String] :description
    #   A summary of the package version being created. This can be used to
    #   outline the package's contents or purpose.
    #
    # @option params [Hash<String,String>] :attributes
    #   Metadata that can be used to define a package version’s configuration.
    #   For example, the S3 file location, configuration options that are
    #   being sent to the device or fleet.
    #
    #   The combined size of all the attributes on a package version is
    #   limited to 3KB.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that can be used to manage the package version.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePackageVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageVersionResponse#package_version_arn #package_version_arn} => String
    #   * {Types::CreatePackageVersionResponse#package_name #package_name} => String
    #   * {Types::CreatePackageVersionResponse#version_name #version_name} => String
    #   * {Types::CreatePackageVersionResponse#description #description} => String
    #   * {Types::CreatePackageVersionResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #   * {Types::CreatePackageVersionResponse#status #status} => String
    #   * {Types::CreatePackageVersionResponse#error_reason #error_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package_version({
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     description: "ResourceDescription",
    #     attributes: {
    #       "ResourceAttributeKey" => "ResourceAttributeValue",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_version_arn #=> String
    #   resp.package_name #=> String
    #   resp.version_name #=> String
    #   resp.description #=> String
    #   resp.attributes #=> Hash
    #   resp.attributes["ResourceAttributeKey"] #=> String
    #   resp.status #=> String, one of "DRAFT", "PUBLISHED", "DEPRECATED"
    #   resp.error_reason #=> String
    #
    # @overload create_package_version(params = {})
    # @param [Hash] params ({})
    def create_package_version(params = {}, options = {})
      req = build_request(:create_package_version, params)
      req.send_request(options)
    end

    # Creates an IoT policy.
    #
    # The created policy is the default version for the policy. This
    # operation creates a policy version with a version identifier of **1**
    # and sets **1** as the policy's default version.
    #
    # Requires permission to access the [CreatePolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :policy_document
    #   The JSON document that describes the policy. **policyDocument** must
    #   have a minimum length of 1, with a maximum length of 2048, excluding
    #   whitespace.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the policy.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @return [Types::CreatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyResponse#policy_name #policy_name} => String
    #   * {Types::CreatePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyResponse#policy_document #policy_document} => String
    #   * {Types::CreatePolicyResponse#policy_version_id #policy_version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
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
    #   resp.policy_name #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_document #=> String
    #   resp.policy_version_id #=> String
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a new version of the specified IoT policy. To update a policy,
    # create a new policy version. A managed policy can have up to five
    # versions. If the policy has five versions, you must use
    # DeletePolicyVersion to delete an existing version before you create a
    # new one.
    #
    # Optionally, you can set the new version as the policy's default
    # version. The default version is the operative version (that is, the
    # version that is in effect for the certificates to which the policy is
    # attached).
    #
    # Requires permission to access the [CreatePolicyVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :policy_document
    #   The JSON document that describes the policy. Minimum length of 1.
    #   Maximum length of 2048, excluding whitespace.
    #
    # @option params [Boolean] :set_as_default
    #   Specifies whether the policy version is set as the default. When this
    #   parameter is true, the new policy version becomes the operative
    #   version (that is, the version that is in effect for the certificates
    #   to which the policy is attached).
    #
    # @return [Types::CreatePolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyVersionResponse#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyVersionResponse#policy_document #policy_document} => String
    #   * {Types::CreatePolicyVersionResponse#policy_version_id #policy_version_id} => String
    #   * {Types::CreatePolicyVersionResponse#is_default_version #is_default_version} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #     set_as_default: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #   resp.policy_document #=> String
    #   resp.policy_version_id #=> String
    #   resp.is_default_version #=> Boolean
    #
    # @overload create_policy_version(params = {})
    # @param [Hash] params ({})
    def create_policy_version(params = {}, options = {})
      req = build_request(:create_policy_version, params)
      req.send_request(options)
    end

    # Creates a provisioning claim.
    #
    # Requires permission to access the [CreateProvisioningClaim][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template to use.
    #
    # @return [Types::CreateProvisioningClaimResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisioningClaimResponse#certificate_id #certificate_id} => String
    #   * {Types::CreateProvisioningClaimResponse#certificate_pem #certificate_pem} => String
    #   * {Types::CreateProvisioningClaimResponse#key_pair #key_pair} => Types::KeyPair
    #   * {Types::CreateProvisioningClaimResponse#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_claim({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_id #=> String
    #   resp.certificate_pem #=> String
    #   resp.key_pair.public_key #=> String
    #   resp.key_pair.private_key #=> String
    #   resp.expiration #=> Time
    #
    # @overload create_provisioning_claim(params = {})
    # @param [Hash] params ({})
    def create_provisioning_claim(params = {}, options = {})
      req = build_request(:create_provisioning_claim, params)
      req.send_request(options)
    end

    # Creates a provisioning template.
    #
    # Requires permission to access the [CreateProvisioningTemplate][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template.
    #
    # @option params [String] :description
    #   The description of the provisioning template.
    #
    # @option params [required, String] :template_body
    #   The JSON formatted contents of the provisioning template.
    #
    # @option params [Boolean] :enabled
    #   True to enable the provisioning template, otherwise false.
    #
    # @option params [required, String] :provisioning_role_arn
    #   The role ARN for the role associated with the provisioning template.
    #   This IoT role grants permission to provision a device.
    #
    # @option params [Types::ProvisioningHook] :pre_provisioning_hook
    #   Creates a pre-provisioning hook template. Only supports template of
    #   type `FLEET_PROVISIONING`. For more information about provisioning
    #   template types, see [type][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the provisioning template.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @option params [String] :type
    #   The type you define in a provisioning template. You can create a
    #   template with only one type. You can't change the template type after
    #   its creation. The default value is `FLEET_PROVISIONING`. For more
    #   information about provisioning template, see: [Provisioning
    #   template][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html
    #
    # @return [Types::CreateProvisioningTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisioningTemplateResponse#template_arn #template_arn} => String
    #   * {Types::CreateProvisioningTemplateResponse#template_name #template_name} => String
    #   * {Types::CreateProvisioningTemplateResponse#default_version_id #default_version_id} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_template({
    #     template_name: "TemplateName", # required
    #     description: "TemplateDescription",
    #     template_body: "TemplateBody", # required
    #     enabled: false,
    #     provisioning_role_arn: "RoleArn", # required
    #     pre_provisioning_hook: {
    #       payload_version: "PayloadVersion",
    #       target_arn: "TargetArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     type: "FLEET_PROVISIONING", # accepts FLEET_PROVISIONING, JITP
    #   })
    #
    # @example Response structure
    #
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.default_version_id #=> Integer
    #
    # @overload create_provisioning_template(params = {})
    # @param [Hash] params ({})
    def create_provisioning_template(params = {}, options = {})
      req = build_request(:create_provisioning_template, params)
      req.send_request(options)
    end

    # Creates a new version of a provisioning template.
    #
    # Requires permission to access the
    # [CreateProvisioningTemplateVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template.
    #
    # @option params [required, String] :template_body
    #   The JSON formatted contents of the provisioning template.
    #
    # @option params [Boolean] :set_as_default
    #   Sets a fleet provision template version as the default version.
    #
    # @return [Types::CreateProvisioningTemplateVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisioningTemplateVersionResponse#template_arn #template_arn} => String
    #   * {Types::CreateProvisioningTemplateVersionResponse#template_name #template_name} => String
    #   * {Types::CreateProvisioningTemplateVersionResponse#version_id #version_id} => Integer
    #   * {Types::CreateProvisioningTemplateVersionResponse#is_default_version #is_default_version} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_template_version({
    #     template_name: "TemplateName", # required
    #     template_body: "TemplateBody", # required
    #     set_as_default: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.version_id #=> Integer
    #   resp.is_default_version #=> Boolean
    #
    # @overload create_provisioning_template_version(params = {})
    # @param [Hash] params ({})
    def create_provisioning_template_version(params = {}, options = {})
      req = build_request(:create_provisioning_template_version, params)
      req.send_request(options)
    end

    # Creates a role alias.
    #
    # Requires permission to access the [CreateRoleAlias][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :role_alias
    #   The role alias that points to a role ARN. This allows you to change
    #   the role without having to update the device.
    #
    # @option params [required, String] :role_arn
    #   The role ARN.
    #
    # @option params [Integer] :credential_duration_seconds
    #   How long (in seconds) the credentials will be valid. The default value
    #   is 3,600 seconds.
    #
    #   This value must be less than or equal to the maximum session duration
    #   of the IAM role that the role alias references.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the role alias.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @return [Types::CreateRoleAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoleAliasResponse#role_alias #role_alias} => String
    #   * {Types::CreateRoleAliasResponse#role_alias_arn #role_alias_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_role_alias({
    #     role_alias: "RoleAlias", # required
    #     role_arn: "RoleArn", # required
    #     credential_duration_seconds: 1,
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
    #   resp.role_alias #=> String
    #   resp.role_alias_arn #=> String
    #
    # @overload create_role_alias(params = {})
    # @param [Hash] params ({})
    def create_role_alias(params = {}, options = {})
      req = build_request(:create_role_alias, params)
      req.send_request(options)
    end

    # Creates a scheduled audit that is run at a specified time interval.
    #
    # Requires permission to access the [CreateScheduledAudit][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :frequency
    #   How often the scheduled audit takes place, either `DAILY`, `WEEKLY`,
    #   `BIWEEKLY` or `MONTHLY`. The start time of each audit is determined by
    #   the system.
    #
    # @option params [String] :day_of_month
    #   The day of the month on which the scheduled audit takes place. This
    #   can be "1" through "31" or "LAST". This field is required if the
    #   "frequency" parameter is set to `MONTHLY`. If days 29 to 31 are
    #   specified, and the month doesn't have that many days, the audit takes
    #   place on the `LAST` day of the month.
    #
    # @option params [String] :day_of_week
    #   The day of the week on which the scheduled audit takes place, either
    #   `SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, or `SAT`. This field is
    #   required if the `frequency` parameter is set to `WEEKLY` or
    #   `BIWEEKLY`.
    #
    # @option params [required, Array<String>] :target_check_names
    #   Which checks are performed during the scheduled audit. Checks must be
    #   enabled for your account. (Use `DescribeAccountAuditConfiguration` to
    #   see the list of all checks, including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [required, String] :scheduled_audit_name
    #   The name you want to give to the scheduled audit. (Max. 128 chars)
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the scheduled audit.
    #
    # @return [Types::CreateScheduledAuditResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScheduledAuditResponse#scheduled_audit_arn #scheduled_audit_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduled_audit({
    #     frequency: "DAILY", # required, accepts DAILY, WEEKLY, BIWEEKLY, MONTHLY
    #     day_of_month: "DayOfMonth",
    #     day_of_week: "SUN", # accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #     target_check_names: ["AuditCheckName"], # required
    #     scheduled_audit_name: "ScheduledAuditName", # required
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
    #   resp.scheduled_audit_arn #=> String
    #
    # @overload create_scheduled_audit(params = {})
    # @param [Hash] params ({})
    def create_scheduled_audit(params = {}, options = {})
      req = build_request(:create_scheduled_audit, params)
      req.send_request(options)
    end

    # Creates a Device Defender security profile.
    #
    # Requires permission to access the [CreateSecurityProfile][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The name you are giving to the security profile.
    #
    # @option params [String] :security_profile_description
    #   A description of the security profile.
    #
    # @option params [Array<Types::Behavior>] :behaviors
    #   Specifies the behaviors that, when violated by a device (thing), cause
    #   an alert.
    #
    # @option params [Hash<String,Types::AlertTarget>] :alert_targets
    #   Specifies the destinations to which alerts are sent. (Alerts are
    #   always sent to the console.) Alerts are generated when a device
    #   (thing) violates a behavior.
    #
    # @option params [Array<String>] :additional_metrics_to_retain
    #   *Please use CreateSecurityProfileRequest$additionalMetricsToRetainV2
    #   instead.*
    #
    #   A list of metrics whose data is retained (stored). By default, data is
    #   retained for any metric used in the profile's `behaviors`, but it is
    #   also retained for any metric specified here. Can be used with custom
    #   metrics; cannot be used with dimensions.
    #
    # @option params [Array<Types::MetricToRetain>] :additional_metrics_to_retain_v2
    #   A list of metrics whose data is retained (stored). By default, data is
    #   retained for any metric used in the profile's `behaviors`, but it is
    #   also retained for any metric specified here. Can be used with custom
    #   metrics; cannot be used with dimensions.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata that can be used to manage the security profile.
    #
    # @return [Types::CreateSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityProfileResponse#security_profile_name #security_profile_name} => String
    #   * {Types::CreateSecurityProfileResponse#security_profile_arn #security_profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_description: "SecurityProfileDescription",
    #     behaviors: [
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
    #         },
    #         criteria: {
    #           comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set, in-set, not-in-set
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"],
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic",
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW", # required, accepts LOW, MEDIUM, HIGH
    #           },
    #         },
    #         suppress_alerts: false,
    #       },
    #     ],
    #     alert_targets: {
    #       "SNS" => {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #     },
    #     additional_metrics_to_retain: ["BehaviorMetric"],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
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
    #   resp.security_profile_name #=> String
    #   resp.security_profile_arn #=> String
    #
    # @overload create_security_profile(params = {})
    # @param [Hash] params ({})
    def create_security_profile(params = {}, options = {})
      req = build_request(:create_security_profile, params)
      req.send_request(options)
    end

    # Creates a stream for delivering one or more large files in chunks over
    # MQTT. A stream transports data bytes in chunks or blocks packaged as
    # MQTT messages from a source like S3. You can have one or more files
    # associated with a stream.
    #
    # Requires permission to access the [CreateStream][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @option params [String] :description
    #   A description of the stream.
    #
    # @option params [required, Array<Types::StreamFile>] :files
    #   The files to stream.
    #
    # @option params [required, String] :role_arn
    #   An IAM role that allows the IoT service principal to access your S3
    #   files.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage streams.
    #
    # @return [Types::CreateStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamResponse#stream_id #stream_id} => String
    #   * {Types::CreateStreamResponse#stream_arn #stream_arn} => String
    #   * {Types::CreateStreamResponse#description #description} => String
    #   * {Types::CreateStreamResponse#stream_version #stream_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream({
    #     stream_id: "StreamId", # required
    #     description: "StreamDescription",
    #     files: [ # required
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version: "S3Version",
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn", # required
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
    #   resp.stream_id #=> String
    #   resp.stream_arn #=> String
    #   resp.description #=> String
    #   resp.stream_version #=> Integer
    #
    # @overload create_stream(params = {})
    # @param [Hash] params ({})
    def create_stream(params = {}, options = {})
      req = build_request(:create_stream, params)
      req.send_request(options)
    end

    # Creates a thing record in the registry. If this call is made multiple
    # times using the same thing name and configuration, the call will
    # succeed. If this call is made with the same thing name but different
    # configuration a `ResourceAlreadyExistsException` is thrown.
    #
    # <note markdown="1"> This is a control plane operation. See [Authorization][1] for
    # information about authorizing control plane actions.
    #
    #  </note>
    #
    # Requires permission to access the [CreateThing][2] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to create.
    #
    #   You can't change a thing's name after you create it. To change a
    #   thing's name, you must create a new thing, give it the new name, and
    #   then delete the old thing.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type associated with the new thing.
    #
    # @option params [Types::AttributePayload] :attribute_payload
    #   The attribute payload, which consists of up to three name/value pairs
    #   in a JSON document. For example:
    #
    #   `\{"attributes":\{"string1":"string2"\}\}`
    #
    # @option params [String] :billing_group_name
    #   The name of the billing group the thing will be added to.
    #
    # @return [Types::CreateThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThingResponse#thing_name #thing_name} => String
    #   * {Types::CreateThingResponse#thing_arn #thing_arn} => String
    #   * {Types::CreateThingResponse#thing_id #thing_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing({
    #     thing_name: "ThingName", # required
    #     thing_type_name: "ThingTypeName",
    #     attribute_payload: {
    #       attributes: {
    #         "AttributeName" => "AttributeValue",
    #       },
    #       merge: false,
    #     },
    #     billing_group_name: "BillingGroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_name #=> String
    #   resp.thing_arn #=> String
    #   resp.thing_id #=> String
    #
    # @overload create_thing(params = {})
    # @param [Hash] params ({})
    def create_thing(params = {}, options = {})
      req = build_request(:create_thing, params)
      req.send_request(options)
    end

    # Create a thing group.
    #
    # <note markdown="1"> This is a control plane operation. See [Authorization][1] for
    # information about authorizing control plane actions.
    #
    #  </note>
    #
    # Requires permission to access the [CreateThingGroup][2] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The thing group name to create.
    #
    # @option params [String] :parent_group_name
    #   The name of the parent thing group.
    #
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   The thing group properties.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the thing group.
    #
    # @return [Types::CreateThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThingGroupResponse#thing_group_name #thing_group_name} => String
    #   * {Types::CreateThingGroupResponse#thing_group_arn #thing_group_arn} => String
    #   * {Types::CreateThingGroupResponse#thing_group_id #thing_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     parent_group_name: "ThingGroupName",
    #     thing_group_properties: {
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       },
    #     },
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
    #   resp.thing_group_name #=> String
    #   resp.thing_group_arn #=> String
    #   resp.thing_group_id #=> String
    #
    # @overload create_thing_group(params = {})
    # @param [Hash] params ({})
    def create_thing_group(params = {}, options = {})
      req = build_request(:create_thing_group, params)
      req.send_request(options)
    end

    # Creates a new thing type.
    #
    # Requires permission to access the [CreateThingType][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type.
    #
    # @option params [Types::ThingTypeProperties] :thing_type_properties
    #   The ThingTypeProperties for the thing type to create. It contains
    #   information about the new thing type including a description, and a
    #   list of searchable thing attribute names.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the thing type.
    #
    # @return [Types::CreateThingTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThingTypeResponse#thing_type_name #thing_type_name} => String
    #   * {Types::CreateThingTypeResponse#thing_type_arn #thing_type_arn} => String
    #   * {Types::CreateThingTypeResponse#thing_type_id #thing_type_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #     thing_type_properties: {
    #       thing_type_description: "ThingTypeDescription",
    #       searchable_attributes: ["AttributeName"],
    #     },
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
    #   resp.thing_type_name #=> String
    #   resp.thing_type_arn #=> String
    #   resp.thing_type_id #=> String
    #
    # @overload create_thing_type(params = {})
    # @param [Hash] params ({})
    def create_thing_type(params = {}, options = {})
      req = build_request(:create_thing_type, params)
      req.send_request(options)
    end

    # Creates a rule. Creating rules is an administrator-level action. Any
    # user who has permission to create rules will be able to access data
    # processed by the rule.
    #
    # Requires permission to access the [CreateTopicRule][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @option params [required, Types::TopicRulePayload] :topic_rule_payload
    #   The rule payload.
    #
    # @option params [String] :tags
    #   Metadata which can be used to manage the topic rule.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: --tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_rule({
    #     rule_name: "RuleName", # required
    #     topic_rule_payload: { # required
    #       sql: "SQL", # required
    #       description: "Description",
    #       actions: [ # required
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING", # accepts STRING, NUMBER
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING", # accepts STRING, NUMBER
    #             payload_field: "PayloadField",
    #           },
    #           dynamo_d_bv_2: {
    #             role_arn: "AwsArn", # required
    #             put_item: { # required
    #               table_name: "TableName", # required
    #             },
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW", # accepts RAW, JSON
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base_64: false,
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey",
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #             qos: 1,
    #             headers: {
    #               payload_format_indicator: "PayloadFormatIndicator",
    #               content_type: "ContentType",
    #               response_topic: "ResponseTopic",
    #               correlation_data: "CorrelationData",
    #               message_expiry: "MessageExpiry",
    #               user_properties: [
    #                 {
    #                   key: "UserPropertyKey", # required
    #                   value: "UserPropertyValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             batch_mode: false,
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "String", # required
    #             metric_name: "String", # required
    #             metric_value: "String", # required
    #             metric_unit: "String", # required
    #             metric_timestamp: "String",
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: "AwsArn", # required
    #             log_group_name: "LogGroupName", # required
    #             batch_mode: false,
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #           iot_analytics: {
    #             channel_arn: "AwsArn",
    #             channel_name: "ChannelName",
    #             batch_mode: false,
    #             role_arn: "AwsArn",
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             message_id: "MessageId",
    #             batch_mode: false,
    #             role_arn: "AwsArn", # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [ # required
    #               {
    #                 entry_id: "AssetPropertyEntryId",
    #                 asset_id: "AssetId",
    #                 property_id: "AssetPropertyId",
    #                 property_alias: "AssetPropertyAlias",
    #                 property_values: [ # required
    #                   {
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: { # required
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
    #                 ],
    #               },
    #             ],
    #             role_arn: "AwsArn", # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #           timestream: {
    #             role_arn: "AwsArn", # required
    #             database_name: "TimestreamDatabaseName", # required
    #             table_name: "TimestreamTableName", # required
    #             dimensions: [ # required
    #               {
    #                 name: "TimestreamDimensionName", # required
    #                 value: "TimestreamDimensionValue", # required
    #               },
    #             ],
    #             timestamp: {
    #               value: "TimestreamTimestampValue", # required
    #               unit: "TimestreamTimestampUnit", # required
    #             },
    #           },
    #           http: {
    #             url: "Url", # required
    #             confirmation_url: "Url",
    #             headers: [
    #               {
    #                 key: "HeaderKey", # required
    #                 value: "HeaderValue", # required
    #               },
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: "SigningRegion", # required
    #                 service_name: "ServiceName", # required
    #                 role_arn: "AwsArn", # required
    #               },
    #             },
    #           },
    #           kafka: {
    #             destination_arn: "AwsArn", # required
    #             topic: "String", # required
    #             key: "String",
    #             partition: "String",
    #             client_properties: { # required
    #               "String" => "String",
    #             },
    #           },
    #           open_search: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           location: {
    #             role_arn: "AwsArn", # required
    #             tracker_name: "String", # required
    #             device_id: "String", # required
    #             timestamp: {
    #               value: "String", # required
    #               unit: "String",
    #             },
    #             latitude: "String", # required
    #             longitude: "String", # required
    #           },
    #         },
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING", # accepts STRING, NUMBER
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING", # accepts STRING, NUMBER
    #           payload_field: "PayloadField",
    #         },
    #         dynamo_d_bv_2: {
    #           role_arn: "AwsArn", # required
    #           put_item: { # required
    #             table_name: "TableName", # required
    #           },
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW", # accepts RAW, JSON
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base_64: false,
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey",
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #           qos: 1,
    #           headers: {
    #             payload_format_indicator: "PayloadFormatIndicator",
    #             content_type: "ContentType",
    #             response_topic: "ResponseTopic",
    #             correlation_data: "CorrelationData",
    #             message_expiry: "MessageExpiry",
    #             user_properties: [
    #               {
    #                 key: "UserPropertyKey", # required
    #                 value: "UserPropertyValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #           batch_mode: false,
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "String", # required
    #           metric_name: "String", # required
    #           metric_value: "String", # required
    #           metric_unit: "String", # required
    #           metric_timestamp: "String",
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         cloudwatch_logs: {
    #           role_arn: "AwsArn", # required
    #           log_group_name: "LogGroupName", # required
    #           batch_mode: false,
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #         iot_analytics: {
    #           channel_arn: "AwsArn",
    #           channel_name: "ChannelName",
    #           batch_mode: false,
    #           role_arn: "AwsArn",
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           message_id: "MessageId",
    #           batch_mode: false,
    #           role_arn: "AwsArn", # required
    #         },
    #         iot_site_wise: {
    #           put_asset_property_value_entries: [ # required
    #             {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_values: [ # required
    #                 {
    #                   value: { # required
    #                     string_value: "AssetPropertyStringValue",
    #                     integer_value: "AssetPropertyIntegerValue",
    #                     double_value: "AssetPropertyDoubleValue",
    #                     boolean_value: "AssetPropertyBooleanValue",
    #                   },
    #                   timestamp: { # required
    #                     time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                     offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                   },
    #                   quality: "AssetPropertyQuality",
    #                 },
    #               ],
    #             },
    #           ],
    #           role_arn: "AwsArn", # required
    #         },
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #         timestream: {
    #           role_arn: "AwsArn", # required
    #           database_name: "TimestreamDatabaseName", # required
    #           table_name: "TimestreamTableName", # required
    #           dimensions: [ # required
    #             {
    #               name: "TimestreamDimensionName", # required
    #               value: "TimestreamDimensionValue", # required
    #             },
    #           ],
    #           timestamp: {
    #             value: "TimestreamTimestampValue", # required
    #             unit: "TimestreamTimestampUnit", # required
    #           },
    #         },
    #         http: {
    #           url: "Url", # required
    #           confirmation_url: "Url",
    #           headers: [
    #             {
    #               key: "HeaderKey", # required
    #               value: "HeaderValue", # required
    #             },
    #           ],
    #           auth: {
    #             sigv4: {
    #               signing_region: "SigningRegion", # required
    #               service_name: "ServiceName", # required
    #               role_arn: "AwsArn", # required
    #             },
    #           },
    #         },
    #         kafka: {
    #           destination_arn: "AwsArn", # required
    #           topic: "String", # required
    #           key: "String",
    #           partition: "String",
    #           client_properties: { # required
    #             "String" => "String",
    #           },
    #         },
    #         open_search: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         location: {
    #           role_arn: "AwsArn", # required
    #           tracker_name: "String", # required
    #           device_id: "String", # required
    #           timestamp: {
    #             value: "String", # required
    #             unit: "String",
    #           },
    #           latitude: "String", # required
    #           longitude: "String", # required
    #         },
    #       },
    #     },
    #     tags: "String",
    #   })
    #
    # @overload create_topic_rule(params = {})
    # @param [Hash] params ({})
    def create_topic_rule(params = {}, options = {})
      req = build_request(:create_topic_rule, params)
      req.send_request(options)
    end

    # Creates a topic rule destination. The destination must be confirmed
    # prior to use.
    #
    # Requires permission to access the [CreateTopicRuleDestination][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Types::TopicRuleDestinationConfiguration] :destination_configuration
    #   The topic rule destination configuration.
    #
    # @return [Types::CreateTopicRuleDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTopicRuleDestinationResponse#topic_rule_destination #topic_rule_destination} => Types::TopicRuleDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_rule_destination({
    #     destination_configuration: { # required
    #       http_url_configuration: {
    #         confirmation_url: "Url", # required
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["SubnetId"], # required
    #         security_groups: ["SecurityGroupId"],
    #         vpc_id: "VpcId", # required
    #         role_arn: "AwsArn", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_rule_destination.arn #=> String
    #   resp.topic_rule_destination.status #=> String, one of "ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"
    #   resp.topic_rule_destination.created_at #=> Time
    #   resp.topic_rule_destination.last_updated_at #=> Time
    #   resp.topic_rule_destination.status_reason #=> String
    #   resp.topic_rule_destination.http_url_properties.confirmation_url #=> String
    #   resp.topic_rule_destination.vpc_properties.subnet_ids #=> Array
    #   resp.topic_rule_destination.vpc_properties.subnet_ids[0] #=> String
    #   resp.topic_rule_destination.vpc_properties.security_groups #=> Array
    #   resp.topic_rule_destination.vpc_properties.security_groups[0] #=> String
    #   resp.topic_rule_destination.vpc_properties.vpc_id #=> String
    #   resp.topic_rule_destination.vpc_properties.role_arn #=> String
    #
    # @overload create_topic_rule_destination(params = {})
    # @param [Hash] params ({})
    def create_topic_rule_destination(params = {}, options = {})
      req = build_request(:create_topic_rule_destination, params)
      req.send_request(options)
    end

    # Restores the default settings for Device Defender audits for this
    # account. Any configuration data you entered is deleted and all audit
    # checks are reset to disabled.
    #
    # Requires permission to access the [DeleteAccountAuditConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Boolean] :delete_scheduled_audits
    #   If true, all scheduled audits are deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_audit_configuration({
    #     delete_scheduled_audits: false,
    #   })
    #
    # @overload delete_account_audit_configuration(params = {})
    # @param [Hash] params ({})
    def delete_account_audit_configuration(params = {}, options = {})
      req = build_request(:delete_account_audit_configuration, params)
      req.send_request(options)
    end

    # Deletes a Device Defender audit suppression.
    #
    # Requires permission to access the [DeleteAuditSuppression][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [required, Types::ResourceIdentifier] :resource_identifier
    #   Information that identifies the noncompliant resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_audit_suppression({
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber",
    #       },
    #       device_certificate_arn: "CertificateArn",
    #     },
    #   })
    #
    # @overload delete_audit_suppression(params = {})
    # @param [Hash] params ({})
    def delete_audit_suppression(params = {}, options = {})
      req = build_request(:delete_audit_suppression, params)
      req.send_request(options)
    end

    # Deletes an authorizer.
    #
    # Requires permission to access the [DeleteAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :authorizer_name
    #   The name of the authorizer to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #   })
    #
    # @overload delete_authorizer(params = {})
    # @param [Hash] params ({})
    def delete_authorizer(params = {}, options = {})
      req = build_request(:delete_authorizer, params)
      req.send_request(options)
    end

    # Deletes the billing group.
    #
    # Requires permission to access the [DeleteBillingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :billing_group_name
    #   The name of the billing group.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the billing group. If the version of the
    #   billing group does not match the expected version specified in the
    #   request, the `DeleteBillingGroup` request is rejected with a
    #   `VersionConflictException`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_billing_group({
    #     billing_group_name: "BillingGroupName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_billing_group(params = {})
    # @param [Hash] params ({})
    def delete_billing_group(params = {}, options = {})
      req = build_request(:delete_billing_group, params)
      req.send_request(options)
    end

    # Deletes a registered CA certificate.
    #
    # Requires permission to access the [DeleteCACertificate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate to delete. (The last part of the certificate
    #   ARN contains the certificate ID.)
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @overload delete_ca_certificate(params = {})
    # @param [Hash] params ({})
    def delete_ca_certificate(params = {}, options = {})
      req = build_request(:delete_ca_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified certificate.
    #
    # A certificate cannot be deleted if it has a policy or IoT thing
    # attached to it or if its status is set to ACTIVE. To delete a
    # certificate, first use the DetachPolicy action to detach all policies.
    # Next, use the UpdateCertificate action to set the certificate to the
    # INACTIVE status.
    #
    # Requires permission to access the [DeleteCertificate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @option params [Boolean] :force_delete
    #   Forces the deletion of a certificate if it is inactive and is not
    #   attached to an IoT thing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_id: "CertificateId", # required
    #     force_delete: false,
    #   })
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Deletes a Device Defender detect custom metric.
    #
    # Requires permission to access the [DeleteCustomMetric][1] action.
    #
    # <note markdown="1"> Before you can delete a custom metric, you must first remove the
    # custom metric from all security profiles it's a part of. The security
    # profile associated with the custom metric can be found using the
    # [ListSecurityProfiles][2] API with `metricName` set to your custom
    # metric name.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html
    #
    # @option params [required, String] :metric_name
    #   The name of the custom metric.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_metric({
    #     metric_name: "MetricName", # required
    #   })
    #
    # @overload delete_custom_metric(params = {})
    # @param [Hash] params ({})
    def delete_custom_metric(params = {}, options = {})
      req = build_request(:delete_custom_metric, params)
      req.send_request(options)
    end

    # Removes the specified dimension from your Amazon Web Services
    # accounts.
    #
    # Requires permission to access the [DeleteDimension][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :name
    #   The unique identifier for the dimension that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dimension({
    #     name: "DimensionName", # required
    #   })
    #
    # @overload delete_dimension(params = {})
    # @param [Hash] params ({})
    def delete_dimension(params = {}, options = {})
      req = build_request(:delete_dimension, params)
      req.send_request(options)
    end

    # Deletes the specified domain configuration.
    #
    # Requires permission to access the [DeleteDomainConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :domain_configuration_name
    #   The name of the domain configuration to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_configuration({
    #     domain_configuration_name: "DomainConfigurationName", # required
    #   })
    #
    # @overload delete_domain_configuration(params = {})
    # @param [Hash] params ({})
    def delete_domain_configuration(params = {}, options = {})
      req = build_request(:delete_domain_configuration, params)
      req.send_request(options)
    end

    # Deletes a dynamic thing group.
    #
    # Requires permission to access the [DeleteDynamicThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The name of the dynamic thing group to delete.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the dynamic thing group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dynamic_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_dynamic_thing_group(params = {})
    # @param [Hash] params ({})
    def delete_dynamic_thing_group(params = {}, options = {})
      req = build_request(:delete_dynamic_thing_group, params)
      req.send_request(options)
    end

    # Deletes the specified fleet metric. Returns successfully with no error
    # if the deletion is successful or you specify a fleet metric that
    # doesn't exist.
    #
    # Requires permission to access the [DeleteFleetMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the fleet metric to delete.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the fleet metric to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_metric({
    #     metric_name: "FleetMetricName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_fleet_metric(params = {})
    # @param [Hash] params ({})
    def delete_fleet_metric(params = {}, options = {})
      req = build_request(:delete_fleet_metric, params)
      req.send_request(options)
    end

    # Deletes a job and its related job executions.
    #
    # Deleting a job may take time, depending on the number of job
    # executions created for the job and various other factors. While the
    # job is being deleted, the status of the job will be shown as
    # "DELETION\_IN\_PROGRESS". Attempting to delete or cancel a job whose
    # status is already "DELETION\_IN\_PROGRESS" will result in an error.
    #
    # Only 10 jobs may have status "DELETION\_IN\_PROGRESS" at the same
    # time, or a LimitExceededException will occur.
    #
    # Requires permission to access the [DeleteJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The ID of the job to be deleted.
    #
    #   After a job deletion is completed, you may reuse this jobId when you
    #   create a new job. However, this is not recommended, and you must
    #   ensure that your devices are not using the jobId to refer to the
    #   deleted job.
    #
    # @option params [Boolean] :force
    #   (Optional) When true, you can delete a job which is "IN\_PROGRESS".
    #   Otherwise, you can only delete a job which is in a terminal state
    #   ("COMPLETED" or "CANCELED") or an exception will occur. The
    #   default is false.
    #
    #   <note markdown="1"> Deleting a job which is "IN\_PROGRESS", will cause a device which is
    #   executing the job to be unable to access job information or update the
    #   job execution status. Use caution and ensure that each device
    #   executing a job which is deleted is able to recover to a valid state.
    #
    #    </note>
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     job_id: "JobId", # required
    #     force: false,
    #     namespace_id: "NamespaceId",
    #   })
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Deletes a job execution.
    #
    # Requires permission to access the [DeleteJobExecution][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The ID of the job whose execution on a particular device will be
    #   deleted.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing whose job execution will be deleted.
    #
    # @option params [required, Integer] :execution_number
    #   The ID of the job execution to be deleted. The `executionNumber`
    #   refers to the execution of a particular job on a particular device.
    #
    #   Note that once a job execution is deleted, the `executionNumber` may
    #   be reused by IoT, so be sure you get and use the correct value here.
    #
    # @option params [Boolean] :force
    #   (Optional) When true, you can delete a job execution which is
    #   "IN\_PROGRESS". Otherwise, you can only delete a job execution which
    #   is in a terminal state ("SUCCEEDED", "FAILED", "REJECTED",
    #   "REMOVED" or "CANCELED") or an exception will occur. The default
    #   is false.
    #
    #   <note markdown="1"> Deleting a job execution which is "IN\_PROGRESS", will cause the
    #   device to be unable to access job information or update the job
    #   execution status. Use caution and ensure that the device is able to
    #   recover to a valid state.
    #
    #    </note>
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_execution({
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     execution_number: 1, # required
    #     force: false,
    #     namespace_id: "NamespaceId",
    #   })
    #
    # @overload delete_job_execution(params = {})
    # @param [Hash] params ({})
    def delete_job_execution(params = {}, options = {})
      req = build_request(:delete_job_execution, params)
      req.send_request(options)
    end

    # Deletes the specified job template.
    #
    # @option params [required, String] :job_template_id
    #   The unique identifier of the job template to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_template({
    #     job_template_id: "JobTemplateId", # required
    #   })
    #
    # @overload delete_job_template(params = {})
    # @param [Hash] params ({})
    def delete_job_template(params = {}, options = {})
      req = build_request(:delete_job_template, params)
      req.send_request(options)
    end

    # Deletes a defined mitigation action from your Amazon Web Services
    # accounts.
    #
    # Requires permission to access the [DeleteMitigationAction][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :action_name
    #   The name of the mitigation action that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mitigation_action({
    #     action_name: "MitigationActionName", # required
    #   })
    #
    # @overload delete_mitigation_action(params = {})
    # @param [Hash] params ({})
    def delete_mitigation_action(params = {}, options = {})
      req = build_request(:delete_mitigation_action, params)
      req.send_request(options)
    end

    # Delete an OTA update.
    #
    # Requires permission to access the [DeleteOTAUpdate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :ota_update_id
    #   The ID of the OTA update to delete.
    #
    # @option params [Boolean] :delete_stream
    #   When true, the stream created by the OTAUpdate process is deleted when
    #   the OTA update is deleted. Ignored if the stream specified in the
    #   OTAUpdate is supplied by the user.
    #
    # @option params [Boolean] :force_delete_aws_job
    #   When true, deletes the IoT job created by the OTAUpdate process even
    #   if it is "IN\_PROGRESS". Otherwise, if the job is not in a terminal
    #   state ("COMPLETED" or "CANCELED") an exception will occur. The
    #   default is false.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ota_update({
    #     ota_update_id: "OTAUpdateId", # required
    #     delete_stream: false,
    #     force_delete_aws_job: false,
    #   })
    #
    # @overload delete_ota_update(params = {})
    # @param [Hash] params ({})
    def delete_ota_update(params = {}, options = {})
      req = build_request(:delete_ota_update, params)
      req.send_request(options)
    end

    # Deletes a specific version from a software package.
    #
    # **Note:** All package versions must be deleted before deleting the
    # software package.
    #
    # Requires permission to access the [DeletePackageVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the target package.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package({
    #     package_name: "PackageName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_package(params = {})
    # @param [Hash] params ({})
    def delete_package(params = {}, options = {})
      req = build_request(:delete_package, params)
      req.send_request(options)
    end

    # Deletes a specific version from a software package.
    #
    # **Note:** If a package version is designated as default, you must
    # remove the designation from the package using the UpdatePackage
    # action.
    #
    # @option params [required, String] :package_name
    #   The name of the associated package.
    #
    # @option params [required, String] :version_name
    #   The name of the target package version.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package_version({
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_package_version(params = {})
    # @param [Hash] params ({})
    def delete_package_version(params = {}, options = {})
      req = build_request(:delete_package_version, params)
      req.send_request(options)
    end

    # Deletes the specified policy.
    #
    # A policy cannot be deleted if it has non-default versions or it is
    # attached to any certificate.
    #
    # To delete a policy, use the DeletePolicyVersion action to delete all
    # non-default versions of the policy; use the DetachPolicy action to
    # detach the policy from any certificate; and then use the DeletePolicy
    # action to delete the policy.
    #
    # When a policy is deleted using DeletePolicy, its default version is
    # deleted with it.
    #
    # <note markdown="1"> Because of the distributed nature of Amazon Web Services, it can take
    # up to five minutes after a policy is detached before it's ready to be
    # deleted.
    #
    #  </note>
    #
    # Requires permission to access the [DeletePolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified version of the specified policy. You cannot
    # delete the default version of a policy using this action. To delete
    # the default version of a policy, use DeletePolicy. To find out which
    # version of a policy is marked as the default version, use
    # ListPolicyVersions.
    #
    # Requires permission to access the [DeletePolicyVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version_id
    #   The policy version ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   })
    #
    # @overload delete_policy_version(params = {})
    # @param [Hash] params ({})
    def delete_policy_version(params = {}, options = {})
      req = build_request(:delete_policy_version, params)
      req.send_request(options)
    end

    # Deletes a provisioning template.
    #
    # Requires permission to access the [DeleteProvisioningTemplate][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the fleet provision template to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_template({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @overload delete_provisioning_template(params = {})
    # @param [Hash] params ({})
    def delete_provisioning_template(params = {}, options = {})
      req = build_request(:delete_provisioning_template, params)
      req.send_request(options)
    end

    # Deletes a provisioning template version.
    #
    # Requires permission to access the
    # [DeleteProvisioningTemplateVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template version to delete.
    #
    # @option params [required, Integer] :version_id
    #   The provisioning template version ID to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_template_version({
    #     template_name: "TemplateName", # required
    #     version_id: 1, # required
    #   })
    #
    # @overload delete_provisioning_template_version(params = {})
    # @param [Hash] params ({})
    def delete_provisioning_template_version(params = {}, options = {})
      req = build_request(:delete_provisioning_template_version, params)
      req.send_request(options)
    end

    # Deletes a CA certificate registration code.
    #
    # Requires permission to access the [DeleteRegistrationCode][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @overload delete_registration_code(params = {})
    # @param [Hash] params ({})
    def delete_registration_code(params = {}, options = {})
      req = build_request(:delete_registration_code, params)
      req.send_request(options)
    end

    # Deletes a role alias
    #
    # Requires permission to access the [DeleteRoleAlias][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :role_alias
    #   The role alias to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_alias({
    #     role_alias: "RoleAlias", # required
    #   })
    #
    # @overload delete_role_alias(params = {})
    # @param [Hash] params ({})
    def delete_role_alias(params = {}, options = {})
      req = build_request(:delete_role_alias, params)
      req.send_request(options)
    end

    # Deletes a scheduled audit.
    #
    # Requires permission to access the [DeleteScheduledAudit][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :scheduled_audit_name
    #   The name of the scheduled audit you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_audit({
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #   })
    #
    # @overload delete_scheduled_audit(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_audit(params = {}, options = {})
      req = build_request(:delete_scheduled_audit, params)
      req.send_request(options)
    end

    # Deletes a Device Defender security profile.
    #
    # Requires permission to access the [DeleteSecurityProfile][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The name of the security profile to be deleted.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the security profile. A new version is
    #   generated whenever the security profile is updated. If you specify a
    #   value that is different from the actual version, a
    #   `VersionConflictException` is thrown.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_security_profile(params = {})
    # @param [Hash] params ({})
    def delete_security_profile(params = {}, options = {})
      req = build_request(:delete_security_profile, params)
      req.send_request(options)
    end

    # Deletes a stream.
    #
    # Requires permission to access the [DeleteStream][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream({
    #     stream_id: "StreamId", # required
    #   })
    #
    # @overload delete_stream(params = {})
    # @param [Hash] params ({})
    def delete_stream(params = {}, options = {})
      req = build_request(:delete_stream, params)
      req.send_request(options)
    end

    # Deletes the specified thing. Returns successfully with no error if the
    # deletion is successful or you specify a thing that doesn't exist.
    #
    # Requires permission to access the [DeleteThing][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to delete.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing record in the registry. If the
    #   version of the record in the registry does not match the expected
    #   version specified in the request, the `DeleteThing` request is
    #   rejected with a `VersionConflictException`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing({
    #     thing_name: "ThingName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_thing(params = {})
    # @param [Hash] params ({})
    def delete_thing(params = {}, options = {})
      req = build_request(:delete_thing, params)
      req.send_request(options)
    end

    # Deletes a thing group.
    #
    # Requires permission to access the [DeleteThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The name of the thing group to delete.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_thing_group(params = {})
    # @param [Hash] params ({})
    def delete_thing_group(params = {}, options = {})
      req = build_request(:delete_thing_group, params)
      req.send_request(options)
    end

    # Deletes the specified thing type. You cannot delete a thing type if it
    # has things associated with it. To delete a thing type, first mark it
    # as deprecated by calling DeprecateThingType, then remove any
    # associated things by calling UpdateThing to change the thing type on
    # any associated thing, and finally use DeleteThingType to delete the
    # thing type.
    #
    # Requires permission to access the [DeleteThingType][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #   })
    #
    # @overload delete_thing_type(params = {})
    # @param [Hash] params ({})
    def delete_thing_type(params = {}, options = {})
      req = build_request(:delete_thing_type, params)
      req.send_request(options)
    end

    # Deletes the rule.
    #
    # Requires permission to access the [DeleteTopicRule][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @overload delete_topic_rule(params = {})
    # @param [Hash] params ({})
    def delete_topic_rule(params = {}, options = {})
      req = build_request(:delete_topic_rule, params)
      req.send_request(options)
    end

    # Deletes a topic rule destination.
    #
    # Requires permission to access the [DeleteTopicRuleDestination][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :arn
    #   The ARN of the topic rule destination to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_rule_destination({
    #     arn: "AwsArn", # required
    #   })
    #
    # @overload delete_topic_rule_destination(params = {})
    # @param [Hash] params ({})
    def delete_topic_rule_destination(params = {}, options = {})
      req = build_request(:delete_topic_rule_destination, params)
      req.send_request(options)
    end

    # Deletes a logging level.
    #
    # Requires permission to access the [DeleteV2LoggingLevel][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :target_type
    #   The type of resource for which you are configuring logging. Must be
    #   `THING_Group`.
    #
    # @option params [required, String] :target_name
    #   The name of the resource for which you are configuring logging.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_v2_logging_level({
    #     target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP, CLIENT_ID, SOURCE_IP, PRINCIPAL_ID
    #     target_name: "LogTargetName", # required
    #   })
    #
    # @overload delete_v2_logging_level(params = {})
    # @param [Hash] params ({})
    def delete_v2_logging_level(params = {}, options = {})
      req = build_request(:delete_v2_logging_level, params)
      req.send_request(options)
    end

    # Deprecates a thing type. You can not associate new things with
    # deprecated thing type.
    #
    # Requires permission to access the [DeprecateThingType][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type to deprecate.
    #
    # @option params [Boolean] :undo_deprecate
    #   Whether to undeprecate a deprecated thing type. If **true**, the thing
    #   type will not be deprecated anymore and you can associate it with
    #   things.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #     undo_deprecate: false,
    #   })
    #
    # @overload deprecate_thing_type(params = {})
    # @param [Hash] params ({})
    def deprecate_thing_type(params = {}, options = {})
      req = build_request(:deprecate_thing_type, params)
      req.send_request(options)
    end

    # Gets information about the Device Defender audit settings for this
    # account. Settings include how audit notifications are sent and which
    # audit checks are enabled or disabled.
    #
    # Requires permission to access the
    # [DescribeAccountAuditConfiguration][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::DescribeAccountAuditConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAuditConfigurationResponse#role_arn #role_arn} => String
    #   * {Types::DescribeAccountAuditConfigurationResponse#audit_notification_target_configurations #audit_notification_target_configurations} => Hash&lt;String,Types::AuditNotificationTarget&gt;
    #   * {Types::DescribeAccountAuditConfigurationResponse#audit_check_configurations #audit_check_configurations} => Hash&lt;String,Types::AuditCheckConfiguration&gt;
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.audit_notification_target_configurations #=> Hash
    #   resp.audit_notification_target_configurations["AuditNotificationType"].target_arn #=> String
    #   resp.audit_notification_target_configurations["AuditNotificationType"].role_arn #=> String
    #   resp.audit_notification_target_configurations["AuditNotificationType"].enabled #=> Boolean
    #   resp.audit_check_configurations #=> Hash
    #   resp.audit_check_configurations["AuditCheckName"].enabled #=> Boolean
    #
    # @overload describe_account_audit_configuration(params = {})
    # @param [Hash] params ({})
    def describe_account_audit_configuration(params = {}, options = {})
      req = build_request(:describe_account_audit_configuration, params)
      req.send_request(options)
    end

    # Gets information about a single audit finding. Properties include the
    # reason for noncompliance, the severity of the issue, and the start
    # time when the audit that returned the finding.
    #
    # Requires permission to access the [DescribeAuditFinding][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :finding_id
    #   A unique identifier for a single audit finding. You can use this
    #   identifier to apply mitigation actions to the finding.
    #
    # @return [Types::DescribeAuditFindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuditFindingResponse#finding #finding} => Types::AuditFinding
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_finding({
    #     finding_id: "FindingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding.finding_id #=> String
    #   resp.finding.task_id #=> String
    #   resp.finding.check_name #=> String
    #   resp.finding.task_start_time #=> Time
    #   resp.finding.finding_time #=> Time
    #   resp.finding.severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW"
    #   resp.finding.non_compliant_resource.resource_type #=> String, one of "DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"
    #   resp.finding.non_compliant_resource.resource_identifier.device_certificate_id #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.ca_certificate_id #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.cognito_identity_pool_id #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.client_id #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.account #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.iam_role_arn #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.role_alias_arn #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.finding.non_compliant_resource.resource_identifier.device_certificate_arn #=> String
    #   resp.finding.non_compliant_resource.additional_info #=> Hash
    #   resp.finding.non_compliant_resource.additional_info["String"] #=> String
    #   resp.finding.related_resources #=> Array
    #   resp.finding.related_resources[0].resource_type #=> String, one of "DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"
    #   resp.finding.related_resources[0].resource_identifier.device_certificate_id #=> String
    #   resp.finding.related_resources[0].resource_identifier.ca_certificate_id #=> String
    #   resp.finding.related_resources[0].resource_identifier.cognito_identity_pool_id #=> String
    #   resp.finding.related_resources[0].resource_identifier.client_id #=> String
    #   resp.finding.related_resources[0].resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.finding.related_resources[0].resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.finding.related_resources[0].resource_identifier.account #=> String
    #   resp.finding.related_resources[0].resource_identifier.iam_role_arn #=> String
    #   resp.finding.related_resources[0].resource_identifier.role_alias_arn #=> String
    #   resp.finding.related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.finding.related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.finding.related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.finding.related_resources[0].resource_identifier.device_certificate_arn #=> String
    #   resp.finding.related_resources[0].additional_info #=> Hash
    #   resp.finding.related_resources[0].additional_info["String"] #=> String
    #   resp.finding.reason_for_non_compliance #=> String
    #   resp.finding.reason_for_non_compliance_code #=> String
    #   resp.finding.is_suppressed #=> Boolean
    #
    # @overload describe_audit_finding(params = {})
    # @param [Hash] params ({})
    def describe_audit_finding(params = {}, options = {})
      req = build_request(:describe_audit_finding, params)
      req.send_request(options)
    end

    # Gets information about an audit mitigation task that is used to apply
    # mitigation actions to a set of audit findings. Properties include the
    # actions being applied, the audit checks to which they're being
    # applied, the task status, and aggregated task statistics.
    #
    # @option params [required, String] :task_id
    #   The unique identifier for the audit mitigation task.
    #
    # @return [Types::DescribeAuditMitigationActionsTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#task_status #task_status} => String
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#start_time #start_time} => Time
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#end_time #end_time} => Time
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#task_statistics #task_statistics} => Hash&lt;String,Types::TaskStatisticsForAuditCheck&gt;
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#target #target} => Types::AuditMitigationActionsTaskTarget
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#audit_check_to_actions_mapping #audit_check_to_actions_mapping} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::DescribeAuditMitigationActionsTaskResponse#actions_definition #actions_definition} => Array&lt;Types::MitigationAction&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_mitigation_actions_task({
    #     task_id: "MitigationActionsTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.task_statistics #=> Hash
    #   resp.task_statistics["AuditCheckName"].total_findings_count #=> Integer
    #   resp.task_statistics["AuditCheckName"].failed_findings_count #=> Integer
    #   resp.task_statistics["AuditCheckName"].succeeded_findings_count #=> Integer
    #   resp.task_statistics["AuditCheckName"].skipped_findings_count #=> Integer
    #   resp.task_statistics["AuditCheckName"].canceled_findings_count #=> Integer
    #   resp.target.audit_task_id #=> String
    #   resp.target.finding_ids #=> Array
    #   resp.target.finding_ids[0] #=> String
    #   resp.target.audit_check_to_reason_code_filter #=> Hash
    #   resp.target.audit_check_to_reason_code_filter["AuditCheckName"] #=> Array
    #   resp.target.audit_check_to_reason_code_filter["AuditCheckName"][0] #=> String
    #   resp.audit_check_to_actions_mapping #=> Hash
    #   resp.audit_check_to_actions_mapping["AuditCheckName"] #=> Array
    #   resp.audit_check_to_actions_mapping["AuditCheckName"][0] #=> String
    #   resp.actions_definition #=> Array
    #   resp.actions_definition[0].name #=> String
    #   resp.actions_definition[0].id #=> String
    #   resp.actions_definition[0].role_arn #=> String
    #   resp.actions_definition[0].action_params.update_device_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.actions_definition[0].action_params.update_ca_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names #=> Array
    #   resp.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.actions_definition[0].action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.actions_definition[0].action_params.replace_default_policy_version_params.template_name #=> String, one of "BLANK_POLICY"
    #   resp.actions_definition[0].action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.actions_definition[0].action_params.enable_io_t_logging_params.log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.actions_definition[0].action_params.publish_finding_to_sns_params.topic_arn #=> String
    #
    # @overload describe_audit_mitigation_actions_task(params = {})
    # @param [Hash] params ({})
    def describe_audit_mitigation_actions_task(params = {}, options = {})
      req = build_request(:describe_audit_mitigation_actions_task, params)
      req.send_request(options)
    end

    # Gets information about a Device Defender audit suppression.
    #
    # @option params [required, String] :check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [required, Types::ResourceIdentifier] :resource_identifier
    #   Information that identifies the noncompliant resource.
    #
    # @return [Types::DescribeAuditSuppressionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuditSuppressionResponse#check_name #check_name} => String
    #   * {Types::DescribeAuditSuppressionResponse#resource_identifier #resource_identifier} => Types::ResourceIdentifier
    #   * {Types::DescribeAuditSuppressionResponse#expiration_date #expiration_date} => Time
    #   * {Types::DescribeAuditSuppressionResponse#suppress_indefinitely #suppress_indefinitely} => Boolean
    #   * {Types::DescribeAuditSuppressionResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_suppression({
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber",
    #       },
    #       device_certificate_arn: "CertificateArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.check_name #=> String
    #   resp.resource_identifier.device_certificate_id #=> String
    #   resp.resource_identifier.ca_certificate_id #=> String
    #   resp.resource_identifier.cognito_identity_pool_id #=> String
    #   resp.resource_identifier.client_id #=> String
    #   resp.resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.resource_identifier.account #=> String
    #   resp.resource_identifier.iam_role_arn #=> String
    #   resp.resource_identifier.role_alias_arn #=> String
    #   resp.resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.resource_identifier.device_certificate_arn #=> String
    #   resp.expiration_date #=> Time
    #   resp.suppress_indefinitely #=> Boolean
    #   resp.description #=> String
    #
    # @overload describe_audit_suppression(params = {})
    # @param [Hash] params ({})
    def describe_audit_suppression(params = {}, options = {})
      req = build_request(:describe_audit_suppression, params)
      req.send_request(options)
    end

    # Gets information about a Device Defender audit.
    #
    # Requires permission to access the [DescribeAuditTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The ID of the audit whose information you want to get.
    #
    # @return [Types::DescribeAuditTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuditTaskResponse#task_status #task_status} => String
    #   * {Types::DescribeAuditTaskResponse#task_type #task_type} => String
    #   * {Types::DescribeAuditTaskResponse#task_start_time #task_start_time} => Time
    #   * {Types::DescribeAuditTaskResponse#task_statistics #task_statistics} => Types::TaskStatistics
    #   * {Types::DescribeAuditTaskResponse#scheduled_audit_name #scheduled_audit_name} => String
    #   * {Types::DescribeAuditTaskResponse#audit_details #audit_details} => Hash&lt;String,Types::AuditCheckDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_task({
    #     task_id: "AuditTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"
    #   resp.task_type #=> String, one of "ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"
    #   resp.task_start_time #=> Time
    #   resp.task_statistics.total_checks #=> Integer
    #   resp.task_statistics.in_progress_checks #=> Integer
    #   resp.task_statistics.waiting_for_data_collection_checks #=> Integer
    #   resp.task_statistics.compliant_checks #=> Integer
    #   resp.task_statistics.non_compliant_checks #=> Integer
    #   resp.task_statistics.failed_checks #=> Integer
    #   resp.task_statistics.canceled_checks #=> Integer
    #   resp.scheduled_audit_name #=> String
    #   resp.audit_details #=> Hash
    #   resp.audit_details["AuditCheckName"].check_run_status #=> String, one of "IN_PROGRESS", "WAITING_FOR_DATA_COLLECTION", "CANCELED", "COMPLETED_COMPLIANT", "COMPLETED_NON_COMPLIANT", "FAILED"
    #   resp.audit_details["AuditCheckName"].check_compliant #=> Boolean
    #   resp.audit_details["AuditCheckName"].total_resources_count #=> Integer
    #   resp.audit_details["AuditCheckName"].non_compliant_resources_count #=> Integer
    #   resp.audit_details["AuditCheckName"].suppressed_non_compliant_resources_count #=> Integer
    #   resp.audit_details["AuditCheckName"].error_code #=> String
    #   resp.audit_details["AuditCheckName"].message #=> String
    #
    # @overload describe_audit_task(params = {})
    # @param [Hash] params ({})
    def describe_audit_task(params = {}, options = {})
      req = build_request(:describe_audit_task, params)
      req.send_request(options)
    end

    # Describes an authorizer.
    #
    # Requires permission to access the [DescribeAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :authorizer_name
    #   The name of the authorizer to describe.
    #
    # @return [Types::DescribeAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuthorizerResponse#authorizer_description #authorizer_description} => Types::AuthorizerDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_description.authorizer_name #=> String
    #   resp.authorizer_description.authorizer_arn #=> String
    #   resp.authorizer_description.authorizer_function_arn #=> String
    #   resp.authorizer_description.token_key_name #=> String
    #   resp.authorizer_description.token_signing_public_keys #=> Hash
    #   resp.authorizer_description.token_signing_public_keys["KeyName"] #=> String
    #   resp.authorizer_description.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.authorizer_description.creation_date #=> Time
    #   resp.authorizer_description.last_modified_date #=> Time
    #   resp.authorizer_description.signing_disabled #=> Boolean
    #   resp.authorizer_description.enable_caching_for_http #=> Boolean
    #
    # @overload describe_authorizer(params = {})
    # @param [Hash] params ({})
    def describe_authorizer(params = {}, options = {})
      req = build_request(:describe_authorizer, params)
      req.send_request(options)
    end

    # Returns information about a billing group.
    #
    # Requires permission to access the [DescribeBillingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :billing_group_name
    #   The name of the billing group.
    #
    # @return [Types::DescribeBillingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBillingGroupResponse#billing_group_name #billing_group_name} => String
    #   * {Types::DescribeBillingGroupResponse#billing_group_id #billing_group_id} => String
    #   * {Types::DescribeBillingGroupResponse#billing_group_arn #billing_group_arn} => String
    #   * {Types::DescribeBillingGroupResponse#version #version} => Integer
    #   * {Types::DescribeBillingGroupResponse#billing_group_properties #billing_group_properties} => Types::BillingGroupProperties
    #   * {Types::DescribeBillingGroupResponse#billing_group_metadata #billing_group_metadata} => Types::BillingGroupMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_billing_group({
    #     billing_group_name: "BillingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_group_name #=> String
    #   resp.billing_group_id #=> String
    #   resp.billing_group_arn #=> String
    #   resp.version #=> Integer
    #   resp.billing_group_properties.billing_group_description #=> String
    #   resp.billing_group_metadata.creation_date #=> Time
    #
    # @overload describe_billing_group(params = {})
    # @param [Hash] params ({})
    def describe_billing_group(params = {}, options = {})
      req = build_request(:describe_billing_group, params)
      req.send_request(options)
    end

    # Describes a registered CA certificate.
    #
    # Requires permission to access the [DescribeCACertificate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The CA certificate identifier.
    #
    # @return [Types::DescribeCACertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCACertificateResponse#certificate_description #certificate_description} => Types::CACertificateDescription
    #   * {Types::DescribeCACertificateResponse#registration_config #registration_config} => Types::RegistrationConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_description.certificate_arn #=> String
    #   resp.certificate_description.certificate_id #=> String
    #   resp.certificate_description.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.certificate_description.certificate_pem #=> String
    #   resp.certificate_description.owned_by #=> String
    #   resp.certificate_description.creation_date #=> Time
    #   resp.certificate_description.auto_registration_status #=> String, one of "ENABLE", "DISABLE"
    #   resp.certificate_description.last_modified_date #=> Time
    #   resp.certificate_description.customer_version #=> Integer
    #   resp.certificate_description.generation_id #=> String
    #   resp.certificate_description.validity.not_before #=> Time
    #   resp.certificate_description.validity.not_after #=> Time
    #   resp.certificate_description.certificate_mode #=> String, one of "DEFAULT", "SNI_ONLY"
    #   resp.registration_config.template_body #=> String
    #   resp.registration_config.role_arn #=> String
    #   resp.registration_config.template_name #=> String
    #
    # @overload describe_ca_certificate(params = {})
    # @param [Hash] params ({})
    def describe_ca_certificate(params = {}, options = {})
      req = build_request(:describe_ca_certificate, params)
      req.send_request(options)
    end

    # Gets information about the specified certificate.
    #
    # Requires permission to access the [DescribeCertificate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @return [Types::DescribeCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateResponse#certificate_description #certificate_description} => Types::CertificateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_description.certificate_arn #=> String
    #   resp.certificate_description.certificate_id #=> String
    #   resp.certificate_description.ca_certificate_id #=> String
    #   resp.certificate_description.status #=> String, one of "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"
    #   resp.certificate_description.certificate_pem #=> String
    #   resp.certificate_description.owned_by #=> String
    #   resp.certificate_description.previous_owned_by #=> String
    #   resp.certificate_description.creation_date #=> Time
    #   resp.certificate_description.last_modified_date #=> Time
    #   resp.certificate_description.customer_version #=> Integer
    #   resp.certificate_description.transfer_data.transfer_message #=> String
    #   resp.certificate_description.transfer_data.reject_reason #=> String
    #   resp.certificate_description.transfer_data.transfer_date #=> Time
    #   resp.certificate_description.transfer_data.accept_date #=> Time
    #   resp.certificate_description.transfer_data.reject_date #=> Time
    #   resp.certificate_description.generation_id #=> String
    #   resp.certificate_description.validity.not_before #=> Time
    #   resp.certificate_description.validity.not_after #=> Time
    #   resp.certificate_description.certificate_mode #=> String, one of "DEFAULT", "SNI_ONLY"
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Gets information about a Device Defender detect custom metric.
    #
    # Requires permission to access the [DescribeCustomMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the custom metric.
    #
    # @return [Types::DescribeCustomMetricResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomMetricResponse#metric_name #metric_name} => String
    #   * {Types::DescribeCustomMetricResponse#metric_arn #metric_arn} => String
    #   * {Types::DescribeCustomMetricResponse#metric_type #metric_type} => String
    #   * {Types::DescribeCustomMetricResponse#display_name #display_name} => String
    #   * {Types::DescribeCustomMetricResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeCustomMetricResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_metric({
    #     metric_name: "MetricName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String
    #   resp.metric_arn #=> String
    #   resp.metric_type #=> String, one of "string-list", "ip-address-list", "number-list", "number"
    #   resp.display_name #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload describe_custom_metric(params = {})
    # @param [Hash] params ({})
    def describe_custom_metric(params = {}, options = {})
      req = build_request(:describe_custom_metric, params)
      req.send_request(options)
    end

    # Describes the default authorizer.
    #
    # Requires permission to access the [DescribeDefaultAuthorizer][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::DescribeDefaultAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDefaultAuthorizerResponse#authorizer_description #authorizer_description} => Types::AuthorizerDescription
    #
    # @example Response structure
    #
    #   resp.authorizer_description.authorizer_name #=> String
    #   resp.authorizer_description.authorizer_arn #=> String
    #   resp.authorizer_description.authorizer_function_arn #=> String
    #   resp.authorizer_description.token_key_name #=> String
    #   resp.authorizer_description.token_signing_public_keys #=> Hash
    #   resp.authorizer_description.token_signing_public_keys["KeyName"] #=> String
    #   resp.authorizer_description.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.authorizer_description.creation_date #=> Time
    #   resp.authorizer_description.last_modified_date #=> Time
    #   resp.authorizer_description.signing_disabled #=> Boolean
    #   resp.authorizer_description.enable_caching_for_http #=> Boolean
    #
    # @overload describe_default_authorizer(params = {})
    # @param [Hash] params ({})
    def describe_default_authorizer(params = {}, options = {})
      req = build_request(:describe_default_authorizer, params)
      req.send_request(options)
    end

    # Gets information about a Device Defender ML Detect mitigation action.
    #
    # Requires permission to access the
    # [DescribeDetectMitigationActionsTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the task.
    #
    # @return [Types::DescribeDetectMitigationActionsTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDetectMitigationActionsTaskResponse#task_summary #task_summary} => Types::DetectMitigationActionsTaskSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detect_mitigation_actions_task({
    #     task_id: "MitigationActionsTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_summary.task_id #=> String
    #   resp.task_summary.task_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "CANCELED"
    #   resp.task_summary.task_start_time #=> Time
    #   resp.task_summary.task_end_time #=> Time
    #   resp.task_summary.target.violation_ids #=> Array
    #   resp.task_summary.target.violation_ids[0] #=> String
    #   resp.task_summary.target.security_profile_name #=> String
    #   resp.task_summary.target.behavior_name #=> String
    #   resp.task_summary.violation_event_occurrence_range.start_time #=> Time
    #   resp.task_summary.violation_event_occurrence_range.end_time #=> Time
    #   resp.task_summary.only_active_violations_included #=> Boolean
    #   resp.task_summary.suppressed_alerts_included #=> Boolean
    #   resp.task_summary.actions_definition #=> Array
    #   resp.task_summary.actions_definition[0].name #=> String
    #   resp.task_summary.actions_definition[0].id #=> String
    #   resp.task_summary.actions_definition[0].role_arn #=> String
    #   resp.task_summary.actions_definition[0].action_params.update_device_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.task_summary.actions_definition[0].action_params.update_ca_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names #=> Array
    #   resp.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.task_summary.actions_definition[0].action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.task_summary.actions_definition[0].action_params.replace_default_policy_version_params.template_name #=> String, one of "BLANK_POLICY"
    #   resp.task_summary.actions_definition[0].action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.task_summary.actions_definition[0].action_params.enable_io_t_logging_params.log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.task_summary.actions_definition[0].action_params.publish_finding_to_sns_params.topic_arn #=> String
    #   resp.task_summary.task_statistics.actions_executed #=> Integer
    #   resp.task_summary.task_statistics.actions_skipped #=> Integer
    #   resp.task_summary.task_statistics.actions_failed #=> Integer
    #
    # @overload describe_detect_mitigation_actions_task(params = {})
    # @param [Hash] params ({})
    def describe_detect_mitigation_actions_task(params = {}, options = {})
      req = build_request(:describe_detect_mitigation_actions_task, params)
      req.send_request(options)
    end

    # Provides details about a dimension that is defined in your Amazon Web
    # Services accounts.
    #
    # Requires permission to access the [DescribeDimension][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :name
    #   The unique identifier for the dimension.
    #
    # @return [Types::DescribeDimensionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDimensionResponse#name #name} => String
    #   * {Types::DescribeDimensionResponse#arn #arn} => String
    #   * {Types::DescribeDimensionResponse#type #type} => String
    #   * {Types::DescribeDimensionResponse#string_values #string_values} => Array&lt;String&gt;
    #   * {Types::DescribeDimensionResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeDimensionResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dimension({
    #     name: "DimensionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.type #=> String, one of "TOPIC_FILTER"
    #   resp.string_values #=> Array
    #   resp.string_values[0] #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload describe_dimension(params = {})
    # @param [Hash] params ({})
    def describe_dimension(params = {}, options = {})
      req = build_request(:describe_dimension, params)
      req.send_request(options)
    end

    # Gets summary information about a domain configuration.
    #
    # Requires permission to access the [DescribeDomainConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :domain_configuration_name
    #   The name of the domain configuration.
    #
    # @return [Types::DescribeDomainConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainConfigurationResponse#domain_configuration_name #domain_configuration_name} => String
    #   * {Types::DescribeDomainConfigurationResponse#domain_configuration_arn #domain_configuration_arn} => String
    #   * {Types::DescribeDomainConfigurationResponse#domain_name #domain_name} => String
    #   * {Types::DescribeDomainConfigurationResponse#server_certificates #server_certificates} => Array&lt;Types::ServerCertificateSummary&gt;
    #   * {Types::DescribeDomainConfigurationResponse#authorizer_config #authorizer_config} => Types::AuthorizerConfig
    #   * {Types::DescribeDomainConfigurationResponse#domain_configuration_status #domain_configuration_status} => String
    #   * {Types::DescribeDomainConfigurationResponse#service_type #service_type} => String
    #   * {Types::DescribeDomainConfigurationResponse#domain_type #domain_type} => String
    #   * {Types::DescribeDomainConfigurationResponse#last_status_change_date #last_status_change_date} => Time
    #   * {Types::DescribeDomainConfigurationResponse#tls_config #tls_config} => Types::TlsConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_configuration({
    #     domain_configuration_name: "ReservedDomainConfigurationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_configuration_name #=> String
    #   resp.domain_configuration_arn #=> String
    #   resp.domain_name #=> String
    #   resp.server_certificates #=> Array
    #   resp.server_certificates[0].server_certificate_arn #=> String
    #   resp.server_certificates[0].server_certificate_status #=> String, one of "INVALID", "VALID"
    #   resp.server_certificates[0].server_certificate_status_detail #=> String
    #   resp.authorizer_config.default_authorizer_name #=> String
    #   resp.authorizer_config.allow_authorizer_override #=> Boolean
    #   resp.domain_configuration_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.service_type #=> String, one of "DATA", "CREDENTIAL_PROVIDER", "JOBS"
    #   resp.domain_type #=> String, one of "ENDPOINT", "AWS_MANAGED", "CUSTOMER_MANAGED"
    #   resp.last_status_change_date #=> Time
    #   resp.tls_config.security_policy #=> String
    #
    # @overload describe_domain_configuration(params = {})
    # @param [Hash] params ({})
    def describe_domain_configuration(params = {}, options = {})
      req = build_request(:describe_domain_configuration, params)
      req.send_request(options)
    end

    # Returns a unique endpoint specific to the Amazon Web Services account
    # making the call.
    #
    # Requires permission to access the [DescribeEndpoint][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :endpoint_type
    #   The endpoint type. Valid endpoint types include:
    #
    #   * `iot:Data` - Returns a VeriSign signed data endpoint.
    #
    #   ^
    #   ^
    #
    #   * `iot:Data-ATS` - Returns an ATS signed data endpoint.
    #
    #   ^
    #   ^
    #
    #   * `iot:CredentialProvider` - Returns an IoT credentials provider API
    #     endpoint.
    #
    #   ^
    #   ^
    #
    #   * `iot:Jobs` - Returns an IoT device management Jobs API endpoint.
    #
    #   ^
    #
    #   We strongly recommend that customers use the newer `iot:Data-ATS`
    #   endpoint type to avoid issues related to the widespread distrust of
    #   Symantec certificate authorities.
    #
    # @return [Types::DescribeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointResponse#endpoint_address #endpoint_address} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint({
    #     endpoint_type: "EndpointType",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_address #=> String
    #
    # @overload describe_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_endpoint(params = {}, options = {})
      req = build_request(:describe_endpoint, params)
      req.send_request(options)
    end

    # Describes event configurations.
    #
    # Requires permission to access the [DescribeEventConfigurations][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::DescribeEventConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventConfigurationsResponse#event_configurations #event_configurations} => Hash&lt;String,Types::Configuration&gt;
    #   * {Types::DescribeEventConfigurationsResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeEventConfigurationsResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Response structure
    #
    #   resp.event_configurations #=> Hash
    #   resp.event_configurations["EventType"].enabled #=> Boolean
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload describe_event_configurations(params = {})
    # @param [Hash] params ({})
    def describe_event_configurations(params = {}, options = {})
      req = build_request(:describe_event_configurations, params)
      req.send_request(options)
    end

    # Gets information about the specified fleet metric.
    #
    # Requires permission to access the [DescribeFleetMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the fleet metric to describe.
    #
    # @return [Types::DescribeFleetMetricResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetMetricResponse#metric_name #metric_name} => String
    #   * {Types::DescribeFleetMetricResponse#query_string #query_string} => String
    #   * {Types::DescribeFleetMetricResponse#aggregation_type #aggregation_type} => Types::AggregationType
    #   * {Types::DescribeFleetMetricResponse#period #period} => Integer
    #   * {Types::DescribeFleetMetricResponse#aggregation_field #aggregation_field} => String
    #   * {Types::DescribeFleetMetricResponse#description #description} => String
    #   * {Types::DescribeFleetMetricResponse#query_version #query_version} => String
    #   * {Types::DescribeFleetMetricResponse#index_name #index_name} => String
    #   * {Types::DescribeFleetMetricResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeFleetMetricResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeFleetMetricResponse#unit #unit} => String
    #   * {Types::DescribeFleetMetricResponse#version #version} => Integer
    #   * {Types::DescribeFleetMetricResponse#metric_arn #metric_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_metric({
    #     metric_name: "FleetMetricName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String
    #   resp.query_string #=> String
    #   resp.aggregation_type.name #=> String, one of "Statistics", "Percentiles", "Cardinality"
    #   resp.aggregation_type.values #=> Array
    #   resp.aggregation_type.values[0] #=> String
    #   resp.period #=> Integer
    #   resp.aggregation_field #=> String
    #   resp.description #=> String
    #   resp.query_version #=> String
    #   resp.index_name #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
    #   resp.version #=> Integer
    #   resp.metric_arn #=> String
    #
    # @overload describe_fleet_metric(params = {})
    # @param [Hash] params ({})
    def describe_fleet_metric(params = {}, options = {})
      req = build_request(:describe_fleet_metric, params)
      req.send_request(options)
    end

    # Describes a search index.
    #
    # Requires permission to access the [DescribeIndex][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :index_name
    #   The index name.
    #
    # @return [Types::DescribeIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIndexResponse#index_name #index_name} => String
    #   * {Types::DescribeIndexResponse#index_status #index_status} => String
    #   * {Types::DescribeIndexResponse#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index({
    #     index_name: "IndexName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_name #=> String
    #   resp.index_status #=> String, one of "ACTIVE", "BUILDING", "REBUILDING"
    #   resp.schema #=> String
    #
    # @overload describe_index(params = {})
    # @param [Hash] params ({})
    def describe_index(params = {}, options = {})
      req = build_request(:describe_index, params)
      req.send_request(options)
    end

    # Describes a job.
    #
    # Requires permission to access the [DescribeJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @return [Types::DescribeJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResponse#document_source #document_source} => String
    #   * {Types::DescribeJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_source #=> String
    #   resp.job.job_arn #=> String
    #   resp.job.job_id #=> String
    #   resp.job.target_selection #=> String, one of "CONTINUOUS", "SNAPSHOT"
    #   resp.job.status #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"
    #   resp.job.force_canceled #=> Boolean
    #   resp.job.reason_code #=> String
    #   resp.job.comment #=> String
    #   resp.job.targets #=> Array
    #   resp.job.targets[0] #=> String
    #   resp.job.description #=> String
    #   resp.job.presigned_url_config.role_arn #=> String
    #   resp.job.presigned_url_config.expires_in_sec #=> Integer
    #   resp.job.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.job.job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.job.job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.job.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.job.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.job.abort_config.criteria_list #=> Array
    #   resp.job.abort_config.criteria_list[0].failure_type #=> String, one of "FAILED", "REJECTED", "TIMED_OUT", "ALL"
    #   resp.job.abort_config.criteria_list[0].action #=> String, one of "CANCEL"
    #   resp.job.abort_config.criteria_list[0].threshold_percentage #=> Float
    #   resp.job.abort_config.criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.job.created_at #=> Time
    #   resp.job.last_updated_at #=> Time
    #   resp.job.completed_at #=> Time
    #   resp.job.job_process_details.processing_targets #=> Array
    #   resp.job.job_process_details.processing_targets[0] #=> String
    #   resp.job.job_process_details.number_of_canceled_things #=> Integer
    #   resp.job.job_process_details.number_of_succeeded_things #=> Integer
    #   resp.job.job_process_details.number_of_failed_things #=> Integer
    #   resp.job.job_process_details.number_of_rejected_things #=> Integer
    #   resp.job.job_process_details.number_of_queued_things #=> Integer
    #   resp.job.job_process_details.number_of_in_progress_things #=> Integer
    #   resp.job.job_process_details.number_of_removed_things #=> Integer
    #   resp.job.job_process_details.number_of_timed_out_things #=> Integer
    #   resp.job.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.job.namespace_id #=> String
    #   resp.job.job_template_arn #=> String
    #   resp.job.job_executions_retry_config.criteria_list #=> Array
    #   resp.job.job_executions_retry_config.criteria_list[0].failure_type #=> String, one of "FAILED", "TIMED_OUT", "ALL"
    #   resp.job.job_executions_retry_config.criteria_list[0].number_of_retries #=> Integer
    #   resp.job.document_parameters #=> Hash
    #   resp.job.document_parameters["ParameterKey"] #=> String
    #   resp.job.is_concurrent #=> Boolean
    #   resp.job.scheduling_config.start_time #=> String
    #   resp.job.scheduling_config.end_time #=> String
    #   resp.job.scheduling_config.end_behavior #=> String, one of "STOP_ROLLOUT", "CANCEL", "FORCE_CANCEL"
    #   resp.job.scheduling_config.maintenance_windows #=> Array
    #   resp.job.scheduling_config.maintenance_windows[0].start_time #=> String
    #   resp.job.scheduling_config.maintenance_windows[0].duration_in_minutes #=> Integer
    #   resp.job.scheduled_job_rollouts #=> Array
    #   resp.job.scheduled_job_rollouts[0].start_time #=> String
    #   resp.job.destination_package_versions #=> Array
    #   resp.job.destination_package_versions[0] #=> String
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # Describes a job execution.
    #
    # Requires permission to access the [DescribeJobExecution][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing on which the job execution is running.
    #
    # @option params [Integer] :execution_number
    #   A string (consisting of the digits "0" through "9" which is used
    #   to specify a particular job execution on a particular device.
    #
    # @return [Types::DescribeJobExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobExecutionResponse#execution #execution} => Types::JobExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_execution({
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     execution_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.execution.job_id #=> String
    #   resp.execution.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution.force_canceled #=> Boolean
    #   resp.execution.status_details.details_map #=> Hash
    #   resp.execution.status_details.details_map["DetailsKey"] #=> String
    #   resp.execution.thing_arn #=> String
    #   resp.execution.queued_at #=> Time
    #   resp.execution.started_at #=> Time
    #   resp.execution.last_updated_at #=> Time
    #   resp.execution.execution_number #=> Integer
    #   resp.execution.version_number #=> Integer
    #   resp.execution.approximate_seconds_before_timed_out #=> Integer
    #
    # @overload describe_job_execution(params = {})
    # @param [Hash] params ({})
    def describe_job_execution(params = {}, options = {})
      req = build_request(:describe_job_execution, params)
      req.send_request(options)
    end

    # Returns information about a job template.
    #
    # @option params [required, String] :job_template_id
    #   The unique identifier of the job template.
    #
    # @return [Types::DescribeJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobTemplateResponse#job_template_arn #job_template_arn} => String
    #   * {Types::DescribeJobTemplateResponse#job_template_id #job_template_id} => String
    #   * {Types::DescribeJobTemplateResponse#description #description} => String
    #   * {Types::DescribeJobTemplateResponse#document_source #document_source} => String
    #   * {Types::DescribeJobTemplateResponse#document #document} => String
    #   * {Types::DescribeJobTemplateResponse#created_at #created_at} => Time
    #   * {Types::DescribeJobTemplateResponse#presigned_url_config #presigned_url_config} => Types::PresignedUrlConfig
    #   * {Types::DescribeJobTemplateResponse#job_executions_rollout_config #job_executions_rollout_config} => Types::JobExecutionsRolloutConfig
    #   * {Types::DescribeJobTemplateResponse#abort_config #abort_config} => Types::AbortConfig
    #   * {Types::DescribeJobTemplateResponse#timeout_config #timeout_config} => Types::TimeoutConfig
    #   * {Types::DescribeJobTemplateResponse#job_executions_retry_config #job_executions_retry_config} => Types::JobExecutionsRetryConfig
    #   * {Types::DescribeJobTemplateResponse#maintenance_windows #maintenance_windows} => Array&lt;Types::MaintenanceWindow&gt;
    #   * {Types::DescribeJobTemplateResponse#destination_package_versions #destination_package_versions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_template({
    #     job_template_id: "JobTemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_template_arn #=> String
    #   resp.job_template_id #=> String
    #   resp.description #=> String
    #   resp.document_source #=> String
    #   resp.document #=> String
    #   resp.created_at #=> Time
    #   resp.presigned_url_config.role_arn #=> String
    #   resp.presigned_url_config.expires_in_sec #=> Integer
    #   resp.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.abort_config.criteria_list #=> Array
    #   resp.abort_config.criteria_list[0].failure_type #=> String, one of "FAILED", "REJECTED", "TIMED_OUT", "ALL"
    #   resp.abort_config.criteria_list[0].action #=> String, one of "CANCEL"
    #   resp.abort_config.criteria_list[0].threshold_percentage #=> Float
    #   resp.abort_config.criteria_list[0].min_number_of_executed_things #=> Integer
    #   resp.timeout_config.in_progress_timeout_in_minutes #=> Integer
    #   resp.job_executions_retry_config.criteria_list #=> Array
    #   resp.job_executions_retry_config.criteria_list[0].failure_type #=> String, one of "FAILED", "TIMED_OUT", "ALL"
    #   resp.job_executions_retry_config.criteria_list[0].number_of_retries #=> Integer
    #   resp.maintenance_windows #=> Array
    #   resp.maintenance_windows[0].start_time #=> String
    #   resp.maintenance_windows[0].duration_in_minutes #=> Integer
    #   resp.destination_package_versions #=> Array
    #   resp.destination_package_versions[0] #=> String
    #
    # @overload describe_job_template(params = {})
    # @param [Hash] params ({})
    def describe_job_template(params = {}, options = {})
      req = build_request(:describe_job_template, params)
      req.send_request(options)
    end

    # View details of a managed job template.
    #
    # @option params [required, String] :template_name
    #   The unique name of a managed job template, which is required.
    #
    # @option params [String] :template_version
    #   An optional parameter to specify version of a managed template. If not
    #   specified, the pre-defined default version is returned.
    #
    # @return [Types::DescribeManagedJobTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeManagedJobTemplateResponse#template_name #template_name} => String
    #   * {Types::DescribeManagedJobTemplateResponse#template_arn #template_arn} => String
    #   * {Types::DescribeManagedJobTemplateResponse#description #description} => String
    #   * {Types::DescribeManagedJobTemplateResponse#template_version #template_version} => String
    #   * {Types::DescribeManagedJobTemplateResponse#environments #environments} => Array&lt;String&gt;
    #   * {Types::DescribeManagedJobTemplateResponse#document_parameters #document_parameters} => Array&lt;Types::DocumentParameter&gt;
    #   * {Types::DescribeManagedJobTemplateResponse#document #document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_job_template({
    #     template_name: "ManagedJobTemplateName", # required
    #     template_version: "ManagedTemplateVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.template_name #=> String
    #   resp.template_arn #=> String
    #   resp.description #=> String
    #   resp.template_version #=> String
    #   resp.environments #=> Array
    #   resp.environments[0] #=> String
    #   resp.document_parameters #=> Array
    #   resp.document_parameters[0].key #=> String
    #   resp.document_parameters[0].description #=> String
    #   resp.document_parameters[0].regex #=> String
    #   resp.document_parameters[0].example #=> String
    #   resp.document_parameters[0].optional #=> Boolean
    #   resp.document #=> String
    #
    # @overload describe_managed_job_template(params = {})
    # @param [Hash] params ({})
    def describe_managed_job_template(params = {}, options = {})
      req = build_request(:describe_managed_job_template, params)
      req.send_request(options)
    end

    # Gets information about a mitigation action.
    #
    # Requires permission to access the [DescribeMitigationAction][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :action_name
    #   The friendly name that uniquely identifies the mitigation action.
    #
    # @return [Types::DescribeMitigationActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMitigationActionResponse#action_name #action_name} => String
    #   * {Types::DescribeMitigationActionResponse#action_type #action_type} => String
    #   * {Types::DescribeMitigationActionResponse#action_arn #action_arn} => String
    #   * {Types::DescribeMitigationActionResponse#action_id #action_id} => String
    #   * {Types::DescribeMitigationActionResponse#role_arn #role_arn} => String
    #   * {Types::DescribeMitigationActionResponse#action_params #action_params} => Types::MitigationActionParams
    #   * {Types::DescribeMitigationActionResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeMitigationActionResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mitigation_action({
    #     action_name: "MitigationActionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_name #=> String
    #   resp.action_type #=> String, one of "UPDATE_DEVICE_CERTIFICATE", "UPDATE_CA_CERTIFICATE", "ADD_THINGS_TO_THING_GROUP", "REPLACE_DEFAULT_POLICY_VERSION", "ENABLE_IOT_LOGGING", "PUBLISH_FINDING_TO_SNS"
    #   resp.action_arn #=> String
    #   resp.action_id #=> String
    #   resp.role_arn #=> String
    #   resp.action_params.update_device_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.action_params.update_ca_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.action_params.add_things_to_thing_group_params.thing_group_names #=> Array
    #   resp.action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.action_params.replace_default_policy_version_params.template_name #=> String, one of "BLANK_POLICY"
    #   resp.action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.action_params.enable_io_t_logging_params.log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.action_params.publish_finding_to_sns_params.topic_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload describe_mitigation_action(params = {})
    # @param [Hash] params ({})
    def describe_mitigation_action(params = {}, options = {})
      req = build_request(:describe_mitigation_action, params)
      req.send_request(options)
    end

    # Returns information about a provisioning template.
    #
    # Requires permission to access the [DescribeProvisioningTemplate][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template.
    #
    # @return [Types::DescribeProvisioningTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningTemplateResponse#template_arn #template_arn} => String
    #   * {Types::DescribeProvisioningTemplateResponse#template_name #template_name} => String
    #   * {Types::DescribeProvisioningTemplateResponse#description #description} => String
    #   * {Types::DescribeProvisioningTemplateResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeProvisioningTemplateResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeProvisioningTemplateResponse#default_version_id #default_version_id} => Integer
    #   * {Types::DescribeProvisioningTemplateResponse#template_body #template_body} => String
    #   * {Types::DescribeProvisioningTemplateResponse#enabled #enabled} => Boolean
    #   * {Types::DescribeProvisioningTemplateResponse#provisioning_role_arn #provisioning_role_arn} => String
    #   * {Types::DescribeProvisioningTemplateResponse#pre_provisioning_hook #pre_provisioning_hook} => Types::ProvisioningHook
    #   * {Types::DescribeProvisioningTemplateResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_template({
    #     template_name: "TemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_arn #=> String
    #   resp.template_name #=> String
    #   resp.description #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.default_version_id #=> Integer
    #   resp.template_body #=> String
    #   resp.enabled #=> Boolean
    #   resp.provisioning_role_arn #=> String
    #   resp.pre_provisioning_hook.payload_version #=> String
    #   resp.pre_provisioning_hook.target_arn #=> String
    #   resp.type #=> String, one of "FLEET_PROVISIONING", "JITP"
    #
    # @overload describe_provisioning_template(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_template(params = {}, options = {})
      req = build_request(:describe_provisioning_template, params)
      req.send_request(options)
    end

    # Returns information about a provisioning template version.
    #
    # Requires permission to access the
    # [DescribeProvisioningTemplateVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The template name.
    #
    # @option params [required, Integer] :version_id
    #   The provisioning template version ID.
    #
    # @return [Types::DescribeProvisioningTemplateVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningTemplateVersionResponse#version_id #version_id} => Integer
    #   * {Types::DescribeProvisioningTemplateVersionResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeProvisioningTemplateVersionResponse#template_body #template_body} => String
    #   * {Types::DescribeProvisioningTemplateVersionResponse#is_default_version #is_default_version} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_template_version({
    #     template_name: "TemplateName", # required
    #     version_id: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.version_id #=> Integer
    #   resp.creation_date #=> Time
    #   resp.template_body #=> String
    #   resp.is_default_version #=> Boolean
    #
    # @overload describe_provisioning_template_version(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_template_version(params = {}, options = {})
      req = build_request(:describe_provisioning_template_version, params)
      req.send_request(options)
    end

    # Describes a role alias.
    #
    # Requires permission to access the [DescribeRoleAlias][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :role_alias
    #   The role alias to describe.
    #
    # @return [Types::DescribeRoleAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoleAliasResponse#role_alias_description #role_alias_description} => Types::RoleAliasDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_role_alias({
    #     role_alias: "RoleAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.role_alias_description.role_alias #=> String
    #   resp.role_alias_description.role_alias_arn #=> String
    #   resp.role_alias_description.role_arn #=> String
    #   resp.role_alias_description.owner #=> String
    #   resp.role_alias_description.credential_duration_seconds #=> Integer
    #   resp.role_alias_description.creation_date #=> Time
    #   resp.role_alias_description.last_modified_date #=> Time
    #
    # @overload describe_role_alias(params = {})
    # @param [Hash] params ({})
    def describe_role_alias(params = {}, options = {})
      req = build_request(:describe_role_alias, params)
      req.send_request(options)
    end

    # Gets information about a scheduled audit.
    #
    # Requires permission to access the [DescribeScheduledAudit][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :scheduled_audit_name
    #   The name of the scheduled audit whose information you want to get.
    #
    # @return [Types::DescribeScheduledAuditResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduledAuditResponse#frequency #frequency} => String
    #   * {Types::DescribeScheduledAuditResponse#day_of_month #day_of_month} => String
    #   * {Types::DescribeScheduledAuditResponse#day_of_week #day_of_week} => String
    #   * {Types::DescribeScheduledAuditResponse#target_check_names #target_check_names} => Array&lt;String&gt;
    #   * {Types::DescribeScheduledAuditResponse#scheduled_audit_name #scheduled_audit_name} => String
    #   * {Types::DescribeScheduledAuditResponse#scheduled_audit_arn #scheduled_audit_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_audit({
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.frequency #=> String, one of "DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"
    #   resp.day_of_month #=> String
    #   resp.day_of_week #=> String, one of "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"
    #   resp.target_check_names #=> Array
    #   resp.target_check_names[0] #=> String
    #   resp.scheduled_audit_name #=> String
    #   resp.scheduled_audit_arn #=> String
    #
    # @overload describe_scheduled_audit(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_audit(params = {}, options = {})
      req = build_request(:describe_scheduled_audit, params)
      req.send_request(options)
    end

    # Gets information about a Device Defender security profile.
    #
    # Requires permission to access the [DescribeSecurityProfile][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The name of the security profile whose information you want to get.
    #
    # @return [Types::DescribeSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityProfileResponse#security_profile_name #security_profile_name} => String
    #   * {Types::DescribeSecurityProfileResponse#security_profile_arn #security_profile_arn} => String
    #   * {Types::DescribeSecurityProfileResponse#security_profile_description #security_profile_description} => String
    #   * {Types::DescribeSecurityProfileResponse#behaviors #behaviors} => Array&lt;Types::Behavior&gt;
    #   * {Types::DescribeSecurityProfileResponse#alert_targets #alert_targets} => Hash&lt;String,Types::AlertTarget&gt;
    #   * {Types::DescribeSecurityProfileResponse#additional_metrics_to_retain #additional_metrics_to_retain} => Array&lt;String&gt;
    #   * {Types::DescribeSecurityProfileResponse#additional_metrics_to_retain_v2 #additional_metrics_to_retain_v2} => Array&lt;Types::MetricToRetain&gt;
    #   * {Types::DescribeSecurityProfileResponse#version #version} => Integer
    #   * {Types::DescribeSecurityProfileResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeSecurityProfileResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_name #=> String
    #   resp.security_profile_arn #=> String
    #   resp.security_profile_description #=> String
    #   resp.behaviors #=> Array
    #   resp.behaviors[0].name #=> String
    #   resp.behaviors[0].metric #=> String
    #   resp.behaviors[0].metric_dimension.dimension_name #=> String
    #   resp.behaviors[0].metric_dimension.operator #=> String, one of "IN", "NOT_IN"
    #   resp.behaviors[0].criteria.comparison_operator #=> String, one of "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"
    #   resp.behaviors[0].criteria.value.count #=> Integer
    #   resp.behaviors[0].criteria.value.cidrs #=> Array
    #   resp.behaviors[0].criteria.value.cidrs[0] #=> String
    #   resp.behaviors[0].criteria.value.ports #=> Array
    #   resp.behaviors[0].criteria.value.ports[0] #=> Integer
    #   resp.behaviors[0].criteria.value.number #=> Float
    #   resp.behaviors[0].criteria.value.numbers #=> Array
    #   resp.behaviors[0].criteria.value.numbers[0] #=> Float
    #   resp.behaviors[0].criteria.value.strings #=> Array
    #   resp.behaviors[0].criteria.value.strings[0] #=> String
    #   resp.behaviors[0].criteria.duration_seconds #=> Integer
    #   resp.behaviors[0].criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.behaviors[0].criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.behaviors[0].criteria.statistical_threshold.statistic #=> String
    #   resp.behaviors[0].criteria.ml_detection_config.confidence_level #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.behaviors[0].suppress_alerts #=> Boolean
    #   resp.alert_targets #=> Hash
    #   resp.alert_targets["AlertTargetType"].alert_target_arn #=> String
    #   resp.alert_targets["AlertTargetType"].role_arn #=> String
    #   resp.additional_metrics_to_retain #=> Array
    #   resp.additional_metrics_to_retain[0] #=> String
    #   resp.additional_metrics_to_retain_v2 #=> Array
    #   resp.additional_metrics_to_retain_v2[0].metric #=> String
    #   resp.additional_metrics_to_retain_v2[0].metric_dimension.dimension_name #=> String
    #   resp.additional_metrics_to_retain_v2[0].metric_dimension.operator #=> String, one of "IN", "NOT_IN"
    #   resp.version #=> Integer
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload describe_security_profile(params = {})
    # @param [Hash] params ({})
    def describe_security_profile(params = {}, options = {})
      req = build_request(:describe_security_profile, params)
      req.send_request(options)
    end

    # Gets information about a stream.
    #
    # Requires permission to access the [DescribeStream][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @return [Types::DescribeStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamResponse#stream_info #stream_info} => Types::StreamInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream({
    #     stream_id: "StreamId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_info.stream_id #=> String
    #   resp.stream_info.stream_arn #=> String
    #   resp.stream_info.stream_version #=> Integer
    #   resp.stream_info.description #=> String
    #   resp.stream_info.files #=> Array
    #   resp.stream_info.files[0].file_id #=> Integer
    #   resp.stream_info.files[0].s3_location.bucket #=> String
    #   resp.stream_info.files[0].s3_location.key #=> String
    #   resp.stream_info.files[0].s3_location.version #=> String
    #   resp.stream_info.created_at #=> Time
    #   resp.stream_info.last_updated_at #=> Time
    #   resp.stream_info.role_arn #=> String
    #
    # @overload describe_stream(params = {})
    # @param [Hash] params ({})
    def describe_stream(params = {}, options = {})
      req = build_request(:describe_stream, params)
      req.send_request(options)
    end

    # Gets information about the specified thing.
    #
    # Requires permission to access the [DescribeThing][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @return [Types::DescribeThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingResponse#default_client_id #default_client_id} => String
    #   * {Types::DescribeThingResponse#thing_name #thing_name} => String
    #   * {Types::DescribeThingResponse#thing_id #thing_id} => String
    #   * {Types::DescribeThingResponse#thing_arn #thing_arn} => String
    #   * {Types::DescribeThingResponse#thing_type_name #thing_type_name} => String
    #   * {Types::DescribeThingResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #   * {Types::DescribeThingResponse#version #version} => Integer
    #   * {Types::DescribeThingResponse#billing_group_name #billing_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing({
    #     thing_name: "ThingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.default_client_id #=> String
    #   resp.thing_name #=> String
    #   resp.thing_id #=> String
    #   resp.thing_arn #=> String
    #   resp.thing_type_name #=> String
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.version #=> Integer
    #   resp.billing_group_name #=> String
    #
    # @overload describe_thing(params = {})
    # @param [Hash] params ({})
    def describe_thing(params = {}, options = {})
      req = build_request(:describe_thing, params)
      req.send_request(options)
    end

    # Describe a thing group.
    #
    # Requires permission to access the [DescribeThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The name of the thing group.
    #
    # @return [Types::DescribeThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingGroupResponse#thing_group_name #thing_group_name} => String
    #   * {Types::DescribeThingGroupResponse#thing_group_id #thing_group_id} => String
    #   * {Types::DescribeThingGroupResponse#thing_group_arn #thing_group_arn} => String
    #   * {Types::DescribeThingGroupResponse#version #version} => Integer
    #   * {Types::DescribeThingGroupResponse#thing_group_properties #thing_group_properties} => Types::ThingGroupProperties
    #   * {Types::DescribeThingGroupResponse#thing_group_metadata #thing_group_metadata} => Types::ThingGroupMetadata
    #   * {Types::DescribeThingGroupResponse#index_name #index_name} => String
    #   * {Types::DescribeThingGroupResponse#query_string #query_string} => String
    #   * {Types::DescribeThingGroupResponse#query_version #query_version} => String
    #   * {Types::DescribeThingGroupResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_group_name #=> String
    #   resp.thing_group_id #=> String
    #   resp.thing_group_arn #=> String
    #   resp.version #=> Integer
    #   resp.thing_group_properties.thing_group_description #=> String
    #   resp.thing_group_properties.attribute_payload.attributes #=> Hash
    #   resp.thing_group_properties.attribute_payload.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.thing_group_properties.attribute_payload.merge #=> Boolean
    #   resp.thing_group_metadata.parent_group_name #=> String
    #   resp.thing_group_metadata.root_to_parent_thing_groups #=> Array
    #   resp.thing_group_metadata.root_to_parent_thing_groups[0].group_name #=> String
    #   resp.thing_group_metadata.root_to_parent_thing_groups[0].group_arn #=> String
    #   resp.thing_group_metadata.creation_date #=> Time
    #   resp.index_name #=> String
    #   resp.query_string #=> String
    #   resp.query_version #=> String
    #   resp.status #=> String, one of "ACTIVE", "BUILDING", "REBUILDING"
    #
    # @overload describe_thing_group(params = {})
    # @param [Hash] params ({})
    def describe_thing_group(params = {}, options = {})
      req = build_request(:describe_thing_group, params)
      req.send_request(options)
    end

    # Describes a bulk thing provisioning task.
    #
    # Requires permission to access the [DescribeThingRegistrationTask][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The task ID.
    #
    # @return [Types::DescribeThingRegistrationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingRegistrationTaskResponse#task_id #task_id} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeThingRegistrationTaskResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeThingRegistrationTaskResponse#template_body #template_body} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#input_file_bucket #input_file_bucket} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#input_file_key #input_file_key} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#role_arn #role_arn} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#status #status} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#message #message} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#success_count #success_count} => Integer
    #   * {Types::DescribeThingRegistrationTaskResponse#failure_count #failure_count} => Integer
    #   * {Types::DescribeThingRegistrationTaskResponse#percentage_progress #percentage_progress} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_registration_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.template_body #=> String
    #   resp.input_file_bucket #=> String
    #   resp.input_file_key #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed", "Cancelled", "Cancelling"
    #   resp.message #=> String
    #   resp.success_count #=> Integer
    #   resp.failure_count #=> Integer
    #   resp.percentage_progress #=> Integer
    #
    # @overload describe_thing_registration_task(params = {})
    # @param [Hash] params ({})
    def describe_thing_registration_task(params = {}, options = {})
      req = build_request(:describe_thing_registration_task, params)
      req.send_request(options)
    end

    # Gets information about the specified thing type.
    #
    # Requires permission to access the [DescribeThingType][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type.
    #
    # @return [Types::DescribeThingTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingTypeResponse#thing_type_name #thing_type_name} => String
    #   * {Types::DescribeThingTypeResponse#thing_type_id #thing_type_id} => String
    #   * {Types::DescribeThingTypeResponse#thing_type_arn #thing_type_arn} => String
    #   * {Types::DescribeThingTypeResponse#thing_type_properties #thing_type_properties} => Types::ThingTypeProperties
    #   * {Types::DescribeThingTypeResponse#thing_type_metadata #thing_type_metadata} => Types::ThingTypeMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_type_name #=> String
    #   resp.thing_type_id #=> String
    #   resp.thing_type_arn #=> String
    #   resp.thing_type_properties.thing_type_description #=> String
    #   resp.thing_type_properties.searchable_attributes #=> Array
    #   resp.thing_type_properties.searchable_attributes[0] #=> String
    #   resp.thing_type_metadata.deprecated #=> Boolean
    #   resp.thing_type_metadata.deprecation_date #=> Time
    #   resp.thing_type_metadata.creation_date #=> Time
    #
    # @overload describe_thing_type(params = {})
    # @param [Hash] params ({})
    def describe_thing_type(params = {}, options = {})
      req = build_request(:describe_thing_type, params)
      req.send_request(options)
    end

    # Detaches a policy from the specified target.
    #
    # <note markdown="1"> Because of the distributed nature of Amazon Web Services, it can take
    # up to five minutes after a policy is detached before it's ready to be
    # deleted.
    #
    #  </note>
    #
    # Requires permission to access the [DetachPolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy to detach.
    #
    # @option params [required, String] :target
    #   The target from which the policy will be detached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy({
    #     policy_name: "PolicyName", # required
    #     target: "PolicyTarget", # required
    #   })
    #
    # @overload detach_policy(params = {})
    # @param [Hash] params ({})
    def detach_policy(params = {}, options = {})
      req = build_request(:detach_policy, params)
      req.send_request(options)
    end

    # Removes the specified policy from the specified certificate.
    #
    # **Note:** This action is deprecated and works as expected for backward
    # compatibility, but we won't add enhancements. Use DetachPolicy
    # instead.
    #
    # Requires permission to access the [DetachPrincipalPolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to detach.
    #
    # @option params [required, String] :principal
    #   The principal.
    #
    #   Valid principals are CertificateArn
    #   (arn:aws:iot:*region*:*accountId*:cert/*certificateId*), thingGroupArn
    #   (arn:aws:iot:*region*:*accountId*:thinggroup/*groupName*) and
    #   CognitoId (*region*:*id*).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_principal_policy({
    #     policy_name: "PolicyName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload detach_principal_policy(params = {})
    # @param [Hash] params ({})
    def detach_principal_policy(params = {}, options = {})
      req = build_request(:detach_principal_policy, params)
      req.send_request(options)
    end

    # Disassociates a Device Defender security profile from a thing group or
    # from this account.
    #
    # Requires permission to access the [DetachSecurityProfile][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The security profile that is detached.
    #
    # @option params [required, String] :security_profile_target_arn
    #   The ARN of the thing group from which the security profile is
    #   detached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_target_arn: "SecurityProfileTargetArn", # required
    #   })
    #
    # @overload detach_security_profile(params = {})
    # @param [Hash] params ({})
    def detach_security_profile(params = {}, options = {})
      req = build_request(:detach_security_profile, params)
      req.send_request(options)
    end

    # Detaches the specified principal from the specified thing. A principal
    # can be X.509 certificates, IAM users, groups, and roles, Amazon
    # Cognito identities or federated identities.
    #
    # <note markdown="1"> This call is asynchronous. It might take several seconds for the
    # detachment to propagate.
    #
    #  </note>
    #
    # Requires permission to access the [DetachThingPrincipal][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [required, String] :principal
    #   If the principal is a certificate, this value must be ARN of the
    #   certificate. If the principal is an Amazon Cognito identity, this
    #   value must be the ID of the Amazon Cognito identity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_thing_principal({
    #     thing_name: "ThingName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload detach_thing_principal(params = {})
    # @param [Hash] params ({})
    def detach_thing_principal(params = {}, options = {})
      req = build_request(:detach_thing_principal, params)
      req.send_request(options)
    end

    # Disables the rule.
    #
    # Requires permission to access the [DisableTopicRule][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to disable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @overload disable_topic_rule(params = {})
    # @param [Hash] params ({})
    def disable_topic_rule(params = {}, options = {})
      req = build_request(:disable_topic_rule, params)
      req.send_request(options)
    end

    # Enables the rule.
    #
    # Requires permission to access the [EnableTopicRule][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :rule_name
    #   The name of the topic rule to enable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @overload enable_topic_rule(params = {})
    # @param [Hash] params ({})
    def enable_topic_rule(params = {}, options = {})
      req = build_request(:enable_topic_rule, params)
      req.send_request(options)
    end

    # Returns a Device Defender's ML Detect Security Profile training
    # model's status.
    #
    # Requires permission to access the
    # [GetBehaviorModelTrainingSummaries][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :security_profile_name
    #   The name of the security profile.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   10.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::GetBehaviorModelTrainingSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBehaviorModelTrainingSummariesResponse#summaries #summaries} => Array&lt;Types::BehaviorModelTrainingSummary&gt;
    #   * {Types::GetBehaviorModelTrainingSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_behavior_model_training_summaries({
    #     security_profile_name: "SecurityProfileName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.summaries #=> Array
    #   resp.summaries[0].security_profile_name #=> String
    #   resp.summaries[0].behavior_name #=> String
    #   resp.summaries[0].training_data_collection_start_date #=> Time
    #   resp.summaries[0].model_status #=> String, one of "PENDING_BUILD", "ACTIVE", "EXPIRED"
    #   resp.summaries[0].datapoints_collection_percentage #=> Float
    #   resp.summaries[0].last_model_refresh_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload get_behavior_model_training_summaries(params = {})
    # @param [Hash] params ({})
    def get_behavior_model_training_summaries(params = {}, options = {})
      req = build_request(:get_behavior_model_training_summaries, params)
      req.send_request(options)
    end

    # Aggregates on indexed data with search queries pertaining to
    # particular fields.
    #
    # Requires permission to access the [GetBucketsAggregation][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :index_name
    #   The name of the index to search.
    #
    # @option params [required, String] :query_string
    #   The search query string.
    #
    # @option params [required, String] :aggregation_field
    #   The aggregation field.
    #
    # @option params [String] :query_version
    #   The version of the query.
    #
    # @option params [required, Types::BucketsAggregationType] :buckets_aggregation_type
    #   The basic control of the response shape and the bucket aggregation
    #   type to perform.
    #
    # @return [Types::GetBucketsAggregationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketsAggregationResponse#total_count #total_count} => Integer
    #   * {Types::GetBucketsAggregationResponse#buckets #buckets} => Array&lt;Types::Bucket&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_buckets_aggregation({
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField", # required
    #     query_version: "QueryVersion",
    #     buckets_aggregation_type: { # required
    #       terms_aggregation: {
    #         max_buckets: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.total_count #=> Integer
    #   resp.buckets #=> Array
    #   resp.buckets[0].key_value #=> String
    #   resp.buckets[0].count #=> Integer
    #
    # @overload get_buckets_aggregation(params = {})
    # @param [Hash] params ({})
    def get_buckets_aggregation(params = {}, options = {})
      req = build_request(:get_buckets_aggregation, params)
      req.send_request(options)
    end

    # Returns the approximate count of unique values that match the query.
    #
    # Requires permission to access the [GetCardinality][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :index_name
    #   The name of the index to search.
    #
    # @option params [required, String] :query_string
    #   The search query string.
    #
    # @option params [String] :aggregation_field
    #   The field to aggregate.
    #
    # @option params [String] :query_version
    #   The query version.
    #
    # @return [Types::GetCardinalityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCardinalityResponse#cardinality #cardinality} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cardinality({
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField",
    #     query_version: "QueryVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.cardinality #=> Integer
    #
    # @overload get_cardinality(params = {})
    # @param [Hash] params ({})
    def get_cardinality(params = {}, options = {})
      req = build_request(:get_cardinality, params)
      req.send_request(options)
    end

    # Gets a list of the policies that have an effect on the authorization
    # behavior of the specified device when it connects to the IoT device
    # gateway.
    #
    # Requires permission to access the [GetEffectivePolicies][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :principal
    #   The principal. Valid principals are CertificateArn
    #   (arn:aws:iot:*region*:*accountId*:cert/*certificateId*), thingGroupArn
    #   (arn:aws:iot:*region*:*accountId*:thinggroup/*groupName*) and
    #   CognitoId (*region*:*id*).
    #
    # @option params [String] :cognito_identity_pool_id
    #   The Cognito identity pool ID.
    #
    # @option params [String] :thing_name
    #   The thing name.
    #
    # @return [Types::GetEffectivePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectivePoliciesResponse#effective_policies #effective_policies} => Array&lt;Types::EffectivePolicy&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_policies({
    #     principal: "Principal",
    #     cognito_identity_pool_id: "CognitoIdentityPoolId",
    #     thing_name: "ThingName",
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_policies #=> Array
    #   resp.effective_policies[0].policy_name #=> String
    #   resp.effective_policies[0].policy_arn #=> String
    #   resp.effective_policies[0].policy_document #=> String
    #
    # @overload get_effective_policies(params = {})
    # @param [Hash] params ({})
    def get_effective_policies(params = {}, options = {})
      req = build_request(:get_effective_policies, params)
      req.send_request(options)
    end

    # Gets the indexing configuration.
    #
    # Requires permission to access the [GetIndexingConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::GetIndexingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexingConfigurationResponse#thing_indexing_configuration #thing_indexing_configuration} => Types::ThingIndexingConfiguration
    #   * {Types::GetIndexingConfigurationResponse#thing_group_indexing_configuration #thing_group_indexing_configuration} => Types::ThingGroupIndexingConfiguration
    #
    # @example Response structure
    #
    #   resp.thing_indexing_configuration.thing_indexing_mode #=> String, one of "OFF", "REGISTRY", "REGISTRY_AND_SHADOW"
    #   resp.thing_indexing_configuration.thing_connectivity_indexing_mode #=> String, one of "OFF", "STATUS"
    #   resp.thing_indexing_configuration.device_defender_indexing_mode #=> String, one of "OFF", "VIOLATIONS"
    #   resp.thing_indexing_configuration.named_shadow_indexing_mode #=> String, one of "OFF", "ON"
    #   resp.thing_indexing_configuration.managed_fields #=> Array
    #   resp.thing_indexing_configuration.managed_fields[0].name #=> String
    #   resp.thing_indexing_configuration.managed_fields[0].type #=> String, one of "Number", "String", "Boolean"
    #   resp.thing_indexing_configuration.custom_fields #=> Array
    #   resp.thing_indexing_configuration.custom_fields[0].name #=> String
    #   resp.thing_indexing_configuration.custom_fields[0].type #=> String, one of "Number", "String", "Boolean"
    #   resp.thing_indexing_configuration.filter.named_shadow_names #=> Array
    #   resp.thing_indexing_configuration.filter.named_shadow_names[0] #=> String
    #   resp.thing_group_indexing_configuration.thing_group_indexing_mode #=> String, one of "OFF", "ON"
    #   resp.thing_group_indexing_configuration.managed_fields #=> Array
    #   resp.thing_group_indexing_configuration.managed_fields[0].name #=> String
    #   resp.thing_group_indexing_configuration.managed_fields[0].type #=> String, one of "Number", "String", "Boolean"
    #   resp.thing_group_indexing_configuration.custom_fields #=> Array
    #   resp.thing_group_indexing_configuration.custom_fields[0].name #=> String
    #   resp.thing_group_indexing_configuration.custom_fields[0].type #=> String, one of "Number", "String", "Boolean"
    #
    # @overload get_indexing_configuration(params = {})
    # @param [Hash] params ({})
    def get_indexing_configuration(params = {}, options = {})
      req = build_request(:get_indexing_configuration, params)
      req.send_request(options)
    end

    # Gets a job document.
    #
    # Requires permission to access the [GetJobDocument][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @return [Types::GetJobDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobDocumentResponse#document #document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_document({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document #=> String
    #
    # @overload get_job_document(params = {})
    # @param [Hash] params ({})
    def get_job_document(params = {}, options = {})
      req = build_request(:get_job_document, params)
      req.send_request(options)
    end

    # Gets the logging options.
    #
    # NOTE: use of this command is not recommended. Use
    # `GetV2LoggingOptions` instead.
    #
    # Requires permission to access the [GetLoggingOptions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::GetLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggingOptionsResponse#role_arn #role_arn} => String
    #   * {Types::GetLoggingOptionsResponse#log_level #log_level} => String
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #
    # @overload get_logging_options(params = {})
    # @param [Hash] params ({})
    def get_logging_options(params = {}, options = {})
      req = build_request(:get_logging_options, params)
      req.send_request(options)
    end

    # Gets an OTA update.
    #
    # Requires permission to access the [GetOTAUpdate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :ota_update_id
    #   The OTA update ID.
    #
    # @return [Types::GetOTAUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOTAUpdateResponse#ota_update_info #ota_update_info} => Types::OTAUpdateInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ota_update({
    #     ota_update_id: "OTAUpdateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ota_update_info.ota_update_id #=> String
    #   resp.ota_update_info.ota_update_arn #=> String
    #   resp.ota_update_info.creation_date #=> Time
    #   resp.ota_update_info.last_modified_date #=> Time
    #   resp.ota_update_info.description #=> String
    #   resp.ota_update_info.targets #=> Array
    #   resp.ota_update_info.targets[0] #=> String
    #   resp.ota_update_info.protocols #=> Array
    #   resp.ota_update_info.protocols[0] #=> String, one of "MQTT", "HTTP"
    #   resp.ota_update_info.aws_job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.ota_update_info.aws_job_executions_rollout_config.exponential_rate.base_rate_per_minute #=> Integer
    #   resp.ota_update_info.aws_job_executions_rollout_config.exponential_rate.increment_factor #=> Float
    #   resp.ota_update_info.aws_job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_notified_things #=> Integer
    #   resp.ota_update_info.aws_job_executions_rollout_config.exponential_rate.rate_increase_criteria.number_of_succeeded_things #=> Integer
    #   resp.ota_update_info.aws_job_presigned_url_config.expires_in_sec #=> Integer
    #   resp.ota_update_info.target_selection #=> String, one of "CONTINUOUS", "SNAPSHOT"
    #   resp.ota_update_info.ota_update_files #=> Array
    #   resp.ota_update_info.ota_update_files[0].file_name #=> String
    #   resp.ota_update_info.ota_update_files[0].file_type #=> Integer
    #   resp.ota_update_info.ota_update_files[0].file_version #=> String
    #   resp.ota_update_info.ota_update_files[0].file_location.stream.stream_id #=> String
    #   resp.ota_update_info.ota_update_files[0].file_location.stream.file_id #=> Integer
    #   resp.ota_update_info.ota_update_files[0].file_location.s3_location.bucket #=> String
    #   resp.ota_update_info.ota_update_files[0].file_location.s3_location.key #=> String
    #   resp.ota_update_info.ota_update_files[0].file_location.s3_location.version #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.aws_signer_job_id #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter.certificate_arn #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter.platform #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_parameter.certificate_path_on_device #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.signing_profile_name #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.destination.s3_destination.bucket #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.start_signing_job_parameter.destination.s3_destination.prefix #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature.inline_document #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.certificate_name #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.inline_document #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.hash_algorithm #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature_algorithm #=> String
    #   resp.ota_update_info.ota_update_files[0].attributes #=> Hash
    #   resp.ota_update_info.ota_update_files[0].attributes["AttributeKey"] #=> String
    #   resp.ota_update_info.ota_update_status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"
    #   resp.ota_update_info.aws_iot_job_id #=> String
    #   resp.ota_update_info.aws_iot_job_arn #=> String
    #   resp.ota_update_info.error_info.code #=> String
    #   resp.ota_update_info.error_info.message #=> String
    #   resp.ota_update_info.additional_parameters #=> Hash
    #   resp.ota_update_info.additional_parameters["AttributeKey"] #=> String
    #
    # @overload get_ota_update(params = {})
    # @param [Hash] params ({})
    def get_ota_update(params = {}, options = {})
      req = build_request(:get_ota_update, params)
      req.send_request(options)
    end

    # Gets information about the specified software package.
    #
    # Requires permission to access the [GetPackage][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the target package.
    #
    # @return [Types::GetPackageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageResponse#package_name #package_name} => String
    #   * {Types::GetPackageResponse#package_arn #package_arn} => String
    #   * {Types::GetPackageResponse#description #description} => String
    #   * {Types::GetPackageResponse#default_version_name #default_version_name} => String
    #   * {Types::GetPackageResponse#creation_date #creation_date} => Time
    #   * {Types::GetPackageResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package({
    #     package_name: "PackageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_name #=> String
    #   resp.package_arn #=> String
    #   resp.description #=> String
    #   resp.default_version_name #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload get_package(params = {})
    # @param [Hash] params ({})
    def get_package(params = {}, options = {})
      req = build_request(:get_package, params)
      req.send_request(options)
    end

    # Gets information about the specified software package's
    # configuration.
    #
    # Requires permission to access the [GetPackageConfiguration][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::GetPackageConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageConfigurationResponse#version_update_by_jobs_config #version_update_by_jobs_config} => Types::VersionUpdateByJobsConfig
    #
    # @example Response structure
    #
    #   resp.version_update_by_jobs_config.enabled #=> Boolean
    #   resp.version_update_by_jobs_config.role_arn #=> String
    #
    # @overload get_package_configuration(params = {})
    # @param [Hash] params ({})
    def get_package_configuration(params = {}, options = {})
      req = build_request(:get_package_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified package version.
    #
    # Requires permission to access the [GetPackageVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the associated package.
    #
    # @option params [required, String] :version_name
    #   The name of the target package version.
    #
    # @return [Types::GetPackageVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageVersionResponse#package_version_arn #package_version_arn} => String
    #   * {Types::GetPackageVersionResponse#package_name #package_name} => String
    #   * {Types::GetPackageVersionResponse#version_name #version_name} => String
    #   * {Types::GetPackageVersionResponse#description #description} => String
    #   * {Types::GetPackageVersionResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #   * {Types::GetPackageVersionResponse#status #status} => String
    #   * {Types::GetPackageVersionResponse#error_reason #error_reason} => String
    #   * {Types::GetPackageVersionResponse#creation_date #creation_date} => Time
    #   * {Types::GetPackageVersionResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version({
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_version_arn #=> String
    #   resp.package_name #=> String
    #   resp.version_name #=> String
    #   resp.description #=> String
    #   resp.attributes #=> Hash
    #   resp.attributes["ResourceAttributeKey"] #=> String
    #   resp.status #=> String, one of "DRAFT", "PUBLISHED", "DEPRECATED"
    #   resp.error_reason #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload get_package_version(params = {})
    # @param [Hash] params ({})
    def get_package_version(params = {}, options = {})
      req = build_request(:get_package_version, params)
      req.send_request(options)
    end

    # Groups the aggregated values that match the query into percentile
    # groupings. The default percentile groupings are: 1,5,25,50,75,95,99,
    # although you can specify your own when you call `GetPercentiles`. This
    # function returns a value for each percentile group specified (or the
    # default percentile groupings). The percentile group "1" contains the
    # aggregated field value that occurs in approximately one percent of the
    # values that match the query. The percentile group "5" contains the
    # aggregated field value that occurs in approximately five percent of
    # the values that match the query, and so on. The result is an
    # approximation, the more values that match the query, the more accurate
    # the percentile values.
    #
    # Requires permission to access the [GetPercentiles][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :index_name
    #   The name of the index to search.
    #
    # @option params [required, String] :query_string
    #   The search query string.
    #
    # @option params [String] :aggregation_field
    #   The field to aggregate.
    #
    # @option params [String] :query_version
    #   The query version.
    #
    # @option params [Array<Float>] :percents
    #   The percentile groups returned.
    #
    # @return [Types::GetPercentilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPercentilesResponse#percentiles #percentiles} => Array&lt;Types::PercentPair&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_percentiles({
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField",
    #     query_version: "QueryVersion",
    #     percents: [1.0],
    #   })
    #
    # @example Response structure
    #
    #   resp.percentiles #=> Array
    #   resp.percentiles[0].percent #=> Float
    #   resp.percentiles[0].value #=> Float
    #
    # @overload get_percentiles(params = {})
    # @param [Hash] params ({})
    def get_percentiles(params = {}, options = {})
      req = build_request(:get_percentiles, params)
      req.send_request(options)
    end

    # Gets information about the specified policy with the policy document
    # of the default version.
    #
    # Requires permission to access the [GetPolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetPolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetPolicyResponse#default_version_id #default_version_id} => String
    #   * {Types::GetPolicyResponse#creation_date #creation_date} => Time
    #   * {Types::GetPolicyResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::GetPolicyResponse#generation_id #generation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_name #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_document #=> String
    #   resp.default_version_id #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.generation_id #=> String
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Gets information about the specified policy version.
    #
    # Requires permission to access the [GetPolicyVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version_id
    #   The policy version ID.
    #
    # @return [Types::GetPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyVersionResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyVersionResponse#policy_name #policy_name} => String
    #   * {Types::GetPolicyVersionResponse#policy_document #policy_document} => String
    #   * {Types::GetPolicyVersionResponse#policy_version_id #policy_version_id} => String
    #   * {Types::GetPolicyVersionResponse#is_default_version #is_default_version} => Boolean
    #   * {Types::GetPolicyVersionResponse#creation_date #creation_date} => Time
    #   * {Types::GetPolicyVersionResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::GetPolicyVersionResponse#generation_id #generation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_document #=> String
    #   resp.policy_version_id #=> String
    #   resp.is_default_version #=> Boolean
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.generation_id #=> String
    #
    # @overload get_policy_version(params = {})
    # @param [Hash] params ({})
    def get_policy_version(params = {}, options = {})
      req = build_request(:get_policy_version, params)
      req.send_request(options)
    end

    # Gets a registration code used to register a CA certificate with IoT.
    #
    # Requires permission to access the [GetRegistrationCode][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::GetRegistrationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistrationCodeResponse#registration_code #registration_code} => String
    #
    # @example Response structure
    #
    #   resp.registration_code #=> String
    #
    # @overload get_registration_code(params = {})
    # @param [Hash] params ({})
    def get_registration_code(params = {}, options = {})
      req = build_request(:get_registration_code, params)
      req.send_request(options)
    end

    # Returns the count, average, sum, minimum, maximum, sum of squares,
    # variance, and standard deviation for the specified aggregated field.
    # If the aggregation field is of type `String`, only the count statistic
    # is returned.
    #
    # Requires permission to access the [GetStatistics][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :index_name
    #   The name of the index to search. The default value is `AWS_Things`.
    #
    # @option params [required, String] :query_string
    #   The query used to search. You can specify "*" for the query string
    #   to get the count of all indexed things in your Amazon Web Services
    #   account.
    #
    # @option params [String] :aggregation_field
    #   The aggregation field name.
    #
    # @option params [String] :query_version
    #   The version of the query used to search.
    #
    # @return [Types::GetStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStatisticsResponse#statistics #statistics} => Types::Statistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statistics({
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField",
    #     query_version: "QueryVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.statistics.count #=> Integer
    #   resp.statistics.average #=> Float
    #   resp.statistics.sum #=> Float
    #   resp.statistics.minimum #=> Float
    #   resp.statistics.maximum #=> Float
    #   resp.statistics.sum_of_squares #=> Float
    #   resp.statistics.variance #=> Float
    #   resp.statistics.std_deviation #=> Float
    #
    # @overload get_statistics(params = {})
    # @param [Hash] params ({})
    def get_statistics(params = {}, options = {})
      req = build_request(:get_statistics, params)
      req.send_request(options)
    end

    # Gets information about the rule.
    #
    # Requires permission to access the [GetTopicRule][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @return [Types::GetTopicRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTopicRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::GetTopicRuleResponse#rule #rule} => Types::TopicRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule.rule_name #=> String
    #   resp.rule.sql #=> String
    #   resp.rule.description #=> String
    #   resp.rule.created_at #=> Time
    #   resp.rule.actions #=> Array
    #   resp.rule.actions[0].dynamo_db.table_name #=> String
    #   resp.rule.actions[0].dynamo_db.role_arn #=> String
    #   resp.rule.actions[0].dynamo_db.operation #=> String
    #   resp.rule.actions[0].dynamo_db.hash_key_field #=> String
    #   resp.rule.actions[0].dynamo_db.hash_key_value #=> String
    #   resp.rule.actions[0].dynamo_db.hash_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.actions[0].dynamo_db.range_key_field #=> String
    #   resp.rule.actions[0].dynamo_db.range_key_value #=> String
    #   resp.rule.actions[0].dynamo_db.range_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.actions[0].dynamo_db.payload_field #=> String
    #   resp.rule.actions[0].dynamo_d_bv_2.role_arn #=> String
    #   resp.rule.actions[0].dynamo_d_bv_2.put_item.table_name #=> String
    #   resp.rule.actions[0].lambda.function_arn #=> String
    #   resp.rule.actions[0].sns.target_arn #=> String
    #   resp.rule.actions[0].sns.role_arn #=> String
    #   resp.rule.actions[0].sns.message_format #=> String, one of "RAW", "JSON"
    #   resp.rule.actions[0].sqs.role_arn #=> String
    #   resp.rule.actions[0].sqs.queue_url #=> String
    #   resp.rule.actions[0].sqs.use_base_64 #=> Boolean
    #   resp.rule.actions[0].kinesis.role_arn #=> String
    #   resp.rule.actions[0].kinesis.stream_name #=> String
    #   resp.rule.actions[0].kinesis.partition_key #=> String
    #   resp.rule.actions[0].republish.role_arn #=> String
    #   resp.rule.actions[0].republish.topic #=> String
    #   resp.rule.actions[0].republish.qos #=> Integer
    #   resp.rule.actions[0].republish.headers.payload_format_indicator #=> String
    #   resp.rule.actions[0].republish.headers.content_type #=> String
    #   resp.rule.actions[0].republish.headers.response_topic #=> String
    #   resp.rule.actions[0].republish.headers.correlation_data #=> String
    #   resp.rule.actions[0].republish.headers.message_expiry #=> String
    #   resp.rule.actions[0].republish.headers.user_properties #=> Array
    #   resp.rule.actions[0].republish.headers.user_properties[0].key #=> String
    #   resp.rule.actions[0].republish.headers.user_properties[0].value #=> String
    #   resp.rule.actions[0].s3.role_arn #=> String
    #   resp.rule.actions[0].s3.bucket_name #=> String
    #   resp.rule.actions[0].s3.key #=> String
    #   resp.rule.actions[0].s3.canned_acl #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"
    #   resp.rule.actions[0].firehose.role_arn #=> String
    #   resp.rule.actions[0].firehose.delivery_stream_name #=> String
    #   resp.rule.actions[0].firehose.separator #=> String
    #   resp.rule.actions[0].firehose.batch_mode #=> Boolean
    #   resp.rule.actions[0].cloudwatch_metric.role_arn #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_namespace #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_name #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_value #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_unit #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_timestamp #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.role_arn #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.alarm_name #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.state_reason #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.state_value #=> String
    #   resp.rule.actions[0].cloudwatch_logs.role_arn #=> String
    #   resp.rule.actions[0].cloudwatch_logs.log_group_name #=> String
    #   resp.rule.actions[0].cloudwatch_logs.batch_mode #=> Boolean
    #   resp.rule.actions[0].elasticsearch.role_arn #=> String
    #   resp.rule.actions[0].elasticsearch.endpoint #=> String
    #   resp.rule.actions[0].elasticsearch.index #=> String
    #   resp.rule.actions[0].elasticsearch.type #=> String
    #   resp.rule.actions[0].elasticsearch.id #=> String
    #   resp.rule.actions[0].salesforce.token #=> String
    #   resp.rule.actions[0].salesforce.url #=> String
    #   resp.rule.actions[0].iot_analytics.channel_arn #=> String
    #   resp.rule.actions[0].iot_analytics.channel_name #=> String
    #   resp.rule.actions[0].iot_analytics.batch_mode #=> Boolean
    #   resp.rule.actions[0].iot_analytics.role_arn #=> String
    #   resp.rule.actions[0].iot_events.input_name #=> String
    #   resp.rule.actions[0].iot_events.message_id #=> String
    #   resp.rule.actions[0].iot_events.batch_mode #=> Boolean
    #   resp.rule.actions[0].iot_events.role_arn #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries #=> Array
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].entry_id #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].asset_id #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_id #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_alias #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values #=> Array
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.string_value #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.integer_value #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.double_value #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.boolean_value #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp.time_in_seconds #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp.offset_in_nanos #=> String
    #   resp.rule.actions[0].iot_site_wise.put_asset_property_value_entries[0].property_values[0].quality #=> String
    #   resp.rule.actions[0].iot_site_wise.role_arn #=> String
    #   resp.rule.actions[0].step_functions.execution_name_prefix #=> String
    #   resp.rule.actions[0].step_functions.state_machine_name #=> String
    #   resp.rule.actions[0].step_functions.role_arn #=> String
    #   resp.rule.actions[0].timestream.role_arn #=> String
    #   resp.rule.actions[0].timestream.database_name #=> String
    #   resp.rule.actions[0].timestream.table_name #=> String
    #   resp.rule.actions[0].timestream.dimensions #=> Array
    #   resp.rule.actions[0].timestream.dimensions[0].name #=> String
    #   resp.rule.actions[0].timestream.dimensions[0].value #=> String
    #   resp.rule.actions[0].timestream.timestamp.value #=> String
    #   resp.rule.actions[0].timestream.timestamp.unit #=> String
    #   resp.rule.actions[0].http.url #=> String
    #   resp.rule.actions[0].http.confirmation_url #=> String
    #   resp.rule.actions[0].http.headers #=> Array
    #   resp.rule.actions[0].http.headers[0].key #=> String
    #   resp.rule.actions[0].http.headers[0].value #=> String
    #   resp.rule.actions[0].http.auth.sigv4.signing_region #=> String
    #   resp.rule.actions[0].http.auth.sigv4.service_name #=> String
    #   resp.rule.actions[0].http.auth.sigv4.role_arn #=> String
    #   resp.rule.actions[0].kafka.destination_arn #=> String
    #   resp.rule.actions[0].kafka.topic #=> String
    #   resp.rule.actions[0].kafka.key #=> String
    #   resp.rule.actions[0].kafka.partition #=> String
    #   resp.rule.actions[0].kafka.client_properties #=> Hash
    #   resp.rule.actions[0].kafka.client_properties["String"] #=> String
    #   resp.rule.actions[0].open_search.role_arn #=> String
    #   resp.rule.actions[0].open_search.endpoint #=> String
    #   resp.rule.actions[0].open_search.index #=> String
    #   resp.rule.actions[0].open_search.type #=> String
    #   resp.rule.actions[0].open_search.id #=> String
    #   resp.rule.actions[0].location.role_arn #=> String
    #   resp.rule.actions[0].location.tracker_name #=> String
    #   resp.rule.actions[0].location.device_id #=> String
    #   resp.rule.actions[0].location.timestamp.value #=> String
    #   resp.rule.actions[0].location.timestamp.unit #=> String
    #   resp.rule.actions[0].location.latitude #=> String
    #   resp.rule.actions[0].location.longitude #=> String
    #   resp.rule.rule_disabled #=> Boolean
    #   resp.rule.aws_iot_sql_version #=> String
    #   resp.rule.error_action.dynamo_db.table_name #=> String
    #   resp.rule.error_action.dynamo_db.role_arn #=> String
    #   resp.rule.error_action.dynamo_db.operation #=> String
    #   resp.rule.error_action.dynamo_db.hash_key_field #=> String
    #   resp.rule.error_action.dynamo_db.hash_key_value #=> String
    #   resp.rule.error_action.dynamo_db.hash_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.error_action.dynamo_db.range_key_field #=> String
    #   resp.rule.error_action.dynamo_db.range_key_value #=> String
    #   resp.rule.error_action.dynamo_db.range_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.error_action.dynamo_db.payload_field #=> String
    #   resp.rule.error_action.dynamo_d_bv_2.role_arn #=> String
    #   resp.rule.error_action.dynamo_d_bv_2.put_item.table_name #=> String
    #   resp.rule.error_action.lambda.function_arn #=> String
    #   resp.rule.error_action.sns.target_arn #=> String
    #   resp.rule.error_action.sns.role_arn #=> String
    #   resp.rule.error_action.sns.message_format #=> String, one of "RAW", "JSON"
    #   resp.rule.error_action.sqs.role_arn #=> String
    #   resp.rule.error_action.sqs.queue_url #=> String
    #   resp.rule.error_action.sqs.use_base_64 #=> Boolean
    #   resp.rule.error_action.kinesis.role_arn #=> String
    #   resp.rule.error_action.kinesis.stream_name #=> String
    #   resp.rule.error_action.kinesis.partition_key #=> String
    #   resp.rule.error_action.republish.role_arn #=> String
    #   resp.rule.error_action.republish.topic #=> String
    #   resp.rule.error_action.republish.qos #=> Integer
    #   resp.rule.error_action.republish.headers.payload_format_indicator #=> String
    #   resp.rule.error_action.republish.headers.content_type #=> String
    #   resp.rule.error_action.republish.headers.response_topic #=> String
    #   resp.rule.error_action.republish.headers.correlation_data #=> String
    #   resp.rule.error_action.republish.headers.message_expiry #=> String
    #   resp.rule.error_action.republish.headers.user_properties #=> Array
    #   resp.rule.error_action.republish.headers.user_properties[0].key #=> String
    #   resp.rule.error_action.republish.headers.user_properties[0].value #=> String
    #   resp.rule.error_action.s3.role_arn #=> String
    #   resp.rule.error_action.s3.bucket_name #=> String
    #   resp.rule.error_action.s3.key #=> String
    #   resp.rule.error_action.s3.canned_acl #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"
    #   resp.rule.error_action.firehose.role_arn #=> String
    #   resp.rule.error_action.firehose.delivery_stream_name #=> String
    #   resp.rule.error_action.firehose.separator #=> String
    #   resp.rule.error_action.firehose.batch_mode #=> Boolean
    #   resp.rule.error_action.cloudwatch_metric.role_arn #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_namespace #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_name #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_value #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_unit #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_timestamp #=> String
    #   resp.rule.error_action.cloudwatch_alarm.role_arn #=> String
    #   resp.rule.error_action.cloudwatch_alarm.alarm_name #=> String
    #   resp.rule.error_action.cloudwatch_alarm.state_reason #=> String
    #   resp.rule.error_action.cloudwatch_alarm.state_value #=> String
    #   resp.rule.error_action.cloudwatch_logs.role_arn #=> String
    #   resp.rule.error_action.cloudwatch_logs.log_group_name #=> String
    #   resp.rule.error_action.cloudwatch_logs.batch_mode #=> Boolean
    #   resp.rule.error_action.elasticsearch.role_arn #=> String
    #   resp.rule.error_action.elasticsearch.endpoint #=> String
    #   resp.rule.error_action.elasticsearch.index #=> String
    #   resp.rule.error_action.elasticsearch.type #=> String
    #   resp.rule.error_action.elasticsearch.id #=> String
    #   resp.rule.error_action.salesforce.token #=> String
    #   resp.rule.error_action.salesforce.url #=> String
    #   resp.rule.error_action.iot_analytics.channel_arn #=> String
    #   resp.rule.error_action.iot_analytics.channel_name #=> String
    #   resp.rule.error_action.iot_analytics.batch_mode #=> Boolean
    #   resp.rule.error_action.iot_analytics.role_arn #=> String
    #   resp.rule.error_action.iot_events.input_name #=> String
    #   resp.rule.error_action.iot_events.message_id #=> String
    #   resp.rule.error_action.iot_events.batch_mode #=> Boolean
    #   resp.rule.error_action.iot_events.role_arn #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries #=> Array
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].entry_id #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].asset_id #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_id #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_alias #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values #=> Array
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.string_value #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.integer_value #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.double_value #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].value.boolean_value #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp.time_in_seconds #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].timestamp.offset_in_nanos #=> String
    #   resp.rule.error_action.iot_site_wise.put_asset_property_value_entries[0].property_values[0].quality #=> String
    #   resp.rule.error_action.iot_site_wise.role_arn #=> String
    #   resp.rule.error_action.step_functions.execution_name_prefix #=> String
    #   resp.rule.error_action.step_functions.state_machine_name #=> String
    #   resp.rule.error_action.step_functions.role_arn #=> String
    #   resp.rule.error_action.timestream.role_arn #=> String
    #   resp.rule.error_action.timestream.database_name #=> String
    #   resp.rule.error_action.timestream.table_name #=> String
    #   resp.rule.error_action.timestream.dimensions #=> Array
    #   resp.rule.error_action.timestream.dimensions[0].name #=> String
    #   resp.rule.error_action.timestream.dimensions[0].value #=> String
    #   resp.rule.error_action.timestream.timestamp.value #=> String
    #   resp.rule.error_action.timestream.timestamp.unit #=> String
    #   resp.rule.error_action.http.url #=> String
    #   resp.rule.error_action.http.confirmation_url #=> String
    #   resp.rule.error_action.http.headers #=> Array
    #   resp.rule.error_action.http.headers[0].key #=> String
    #   resp.rule.error_action.http.headers[0].value #=> String
    #   resp.rule.error_action.http.auth.sigv4.signing_region #=> String
    #   resp.rule.error_action.http.auth.sigv4.service_name #=> String
    #   resp.rule.error_action.http.auth.sigv4.role_arn #=> String
    #   resp.rule.error_action.kafka.destination_arn #=> String
    #   resp.rule.error_action.kafka.topic #=> String
    #   resp.rule.error_action.kafka.key #=> String
    #   resp.rule.error_action.kafka.partition #=> String
    #   resp.rule.error_action.kafka.client_properties #=> Hash
    #   resp.rule.error_action.kafka.client_properties["String"] #=> String
    #   resp.rule.error_action.open_search.role_arn #=> String
    #   resp.rule.error_action.open_search.endpoint #=> String
    #   resp.rule.error_action.open_search.index #=> String
    #   resp.rule.error_action.open_search.type #=> String
    #   resp.rule.error_action.open_search.id #=> String
    #   resp.rule.error_action.location.role_arn #=> String
    #   resp.rule.error_action.location.tracker_name #=> String
    #   resp.rule.error_action.location.device_id #=> String
    #   resp.rule.error_action.location.timestamp.value #=> String
    #   resp.rule.error_action.location.timestamp.unit #=> String
    #   resp.rule.error_action.location.latitude #=> String
    #   resp.rule.error_action.location.longitude #=> String
    #
    # @overload get_topic_rule(params = {})
    # @param [Hash] params ({})
    def get_topic_rule(params = {}, options = {})
      req = build_request(:get_topic_rule, params)
      req.send_request(options)
    end

    # Gets information about a topic rule destination.
    #
    # Requires permission to access the [GetTopicRuleDestination][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :arn
    #   The ARN of the topic rule destination.
    #
    # @return [Types::GetTopicRuleDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTopicRuleDestinationResponse#topic_rule_destination #topic_rule_destination} => Types::TopicRuleDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_topic_rule_destination({
    #     arn: "AwsArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topic_rule_destination.arn #=> String
    #   resp.topic_rule_destination.status #=> String, one of "ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"
    #   resp.topic_rule_destination.created_at #=> Time
    #   resp.topic_rule_destination.last_updated_at #=> Time
    #   resp.topic_rule_destination.status_reason #=> String
    #   resp.topic_rule_destination.http_url_properties.confirmation_url #=> String
    #   resp.topic_rule_destination.vpc_properties.subnet_ids #=> Array
    #   resp.topic_rule_destination.vpc_properties.subnet_ids[0] #=> String
    #   resp.topic_rule_destination.vpc_properties.security_groups #=> Array
    #   resp.topic_rule_destination.vpc_properties.security_groups[0] #=> String
    #   resp.topic_rule_destination.vpc_properties.vpc_id #=> String
    #   resp.topic_rule_destination.vpc_properties.role_arn #=> String
    #
    # @overload get_topic_rule_destination(params = {})
    # @param [Hash] params ({})
    def get_topic_rule_destination(params = {}, options = {})
      req = build_request(:get_topic_rule_destination, params)
      req.send_request(options)
    end

    # Gets the fine grained logging options.
    #
    # Requires permission to access the [GetV2LoggingOptions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @return [Types::GetV2LoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetV2LoggingOptionsResponse#role_arn #role_arn} => String
    #   * {Types::GetV2LoggingOptionsResponse#default_log_level #default_log_level} => String
    #   * {Types::GetV2LoggingOptionsResponse#disable_all_logs #disable_all_logs} => Boolean
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.default_log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.disable_all_logs #=> Boolean
    #
    # @overload get_v2_logging_options(params = {})
    # @param [Hash] params ({})
    def get_v2_logging_options(params = {}, options = {})
      req = build_request(:get_v2_logging_options, params)
      req.send_request(options)
    end

    # Lists the active violations for a given Device Defender security
    # profile.
    #
    # Requires permission to access the [ListActiveViolations][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :thing_name
    #   The name of the thing whose active violations are listed.
    #
    # @option params [String] :security_profile_name
    #   The name of the Device Defender security profile for which violations
    #   are listed.
    #
    # @option params [String] :behavior_criteria_type
    #   The criteria for a behavior.
    #
    # @option params [Boolean] :list_suppressed_alerts
    #   A list of all suppressed alerts.
    #
    # @option params [String] :verification_state
    #   The verification state of the violation (detect alarm).
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListActiveViolationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActiveViolationsResponse#active_violations #active_violations} => Array&lt;Types::ActiveViolation&gt;
    #   * {Types::ListActiveViolationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_active_violations({
    #     thing_name: "DeviceDefenderThingName",
    #     security_profile_name: "SecurityProfileName",
    #     behavior_criteria_type: "STATIC", # accepts STATIC, STATISTICAL, MACHINE_LEARNING
    #     list_suppressed_alerts: false,
    #     verification_state: "FALSE_POSITIVE", # accepts FALSE_POSITIVE, BENIGN_POSITIVE, TRUE_POSITIVE, UNKNOWN
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.active_violations #=> Array
    #   resp.active_violations[0].violation_id #=> String
    #   resp.active_violations[0].thing_name #=> String
    #   resp.active_violations[0].security_profile_name #=> String
    #   resp.active_violations[0].behavior.name #=> String
    #   resp.active_violations[0].behavior.metric #=> String
    #   resp.active_violations[0].behavior.metric_dimension.dimension_name #=> String
    #   resp.active_violations[0].behavior.metric_dimension.operator #=> String, one of "IN", "NOT_IN"
    #   resp.active_violations[0].behavior.criteria.comparison_operator #=> String, one of "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"
    #   resp.active_violations[0].behavior.criteria.value.count #=> Integer
    #   resp.active_violations[0].behavior.criteria.value.cidrs #=> Array
    #   resp.active_violations[0].behavior.criteria.value.cidrs[0] #=> String
    #   resp.active_violations[0].behavior.criteria.value.ports #=> Array
    #   resp.active_violations[0].behavior.criteria.value.ports[0] #=> Integer
    #   resp.active_violations[0].behavior.criteria.value.number #=> Float
    #   resp.active_violations[0].behavior.criteria.value.numbers #=> Array
    #   resp.active_violations[0].behavior.criteria.value.numbers[0] #=> Float
    #   resp.active_violations[0].behavior.criteria.value.strings #=> Array
    #   resp.active_violations[0].behavior.criteria.value.strings[0] #=> String
    #   resp.active_violations[0].behavior.criteria.duration_seconds #=> Integer
    #   resp.active_violations[0].behavior.criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.active_violations[0].behavior.criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.active_violations[0].behavior.criteria.statistical_threshold.statistic #=> String
    #   resp.active_violations[0].behavior.criteria.ml_detection_config.confidence_level #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.active_violations[0].behavior.suppress_alerts #=> Boolean
    #   resp.active_violations[0].last_violation_value.count #=> Integer
    #   resp.active_violations[0].last_violation_value.cidrs #=> Array
    #   resp.active_violations[0].last_violation_value.cidrs[0] #=> String
    #   resp.active_violations[0].last_violation_value.ports #=> Array
    #   resp.active_violations[0].last_violation_value.ports[0] #=> Integer
    #   resp.active_violations[0].last_violation_value.number #=> Float
    #   resp.active_violations[0].last_violation_value.numbers #=> Array
    #   resp.active_violations[0].last_violation_value.numbers[0] #=> Float
    #   resp.active_violations[0].last_violation_value.strings #=> Array
    #   resp.active_violations[0].last_violation_value.strings[0] #=> String
    #   resp.active_violations[0].violation_event_additional_info.confidence_level #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.active_violations[0].verification_state #=> String, one of "FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"
    #   resp.active_violations[0].verification_state_description #=> String
    #   resp.active_violations[0].last_violation_time #=> Time
    #   resp.active_violations[0].violation_start_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_active_violations(params = {})
    # @param [Hash] params ({})
    def list_active_violations(params = {}, options = {})
      req = build_request(:list_active_violations, params)
      req.send_request(options)
    end

    # Lists the policies attached to the specified thing group.
    #
    # Requires permission to access the [ListAttachedPolicies][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :target
    #   The group or principal for which the policies will be listed. Valid
    #   principals are CertificateArn
    #   (arn:aws:iot:*region*:*accountId*:cert/*certificateId*), thingGroupArn
    #   (arn:aws:iot:*region*:*accountId*:thinggroup/*groupName*) and
    #   CognitoId (*region*:*id*).
    #
    # @option params [Boolean] :recursive
    #   When true, recursively list attached policies.
    #
    # @option params [String] :marker
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAttachedPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListAttachedPoliciesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_policies({
    #     target: "PolicyTarget", # required
    #     recursive: false,
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_attached_policies(params = {})
    # @param [Hash] params ({})
    def list_attached_policies(params = {}, options = {})
      req = build_request(:list_attached_policies, params)
      req.send_request(options)
    end

    # Lists the findings (results) of a Device Defender audit or of the
    # audits performed during a specified time period. (Findings are
    # retained for 90 days.)
    #
    # Requires permission to access the [ListAuditFindings][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :task_id
    #   A filter to limit results to the audit with the specified ID. You must
    #   specify either the taskId or the startTime and endTime, but not both.
    #
    # @option params [String] :check_name
    #   A filter to limit results to the findings for the specified audit
    #   check.
    #
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   Information identifying the noncompliant resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   A filter to limit results to those found after the specified time. You
    #   must specify either the startTime and endTime or the taskId, but not
    #   both.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   A filter to limit results to those found before the specified time.
    #   You must specify either the startTime and endTime or the taskId, but
    #   not both.
    #
    # @option params [Boolean] :list_suppressed_findings
    #   Boolean flag indicating whether only the suppressed findings or the
    #   unsuppressed findings should be listed. If this parameter isn't
    #   provided, the response will list both suppressed and unsuppressed
    #   findings.
    #
    # @return [Types::ListAuditFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuditFindingsResponse#findings #findings} => Array&lt;Types::AuditFinding&gt;
    #   * {Types::ListAuditFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_findings({
    #     task_id: "AuditTaskId",
    #     check_name: "AuditCheckName",
    #     resource_identifier: {
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber",
    #       },
    #       device_certificate_arn: "CertificateArn",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     list_suppressed_findings: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].finding_id #=> String
    #   resp.findings[0].task_id #=> String
    #   resp.findings[0].check_name #=> String
    #   resp.findings[0].task_start_time #=> Time
    #   resp.findings[0].finding_time #=> Time
    #   resp.findings[0].severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW"
    #   resp.findings[0].non_compliant_resource.resource_type #=> String, one of "DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"
    #   resp.findings[0].non_compliant_resource.resource_identifier.device_certificate_id #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.ca_certificate_id #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.cognito_identity_pool_id #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.client_id #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.account #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.iam_role_arn #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.role_alias_arn #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.findings[0].non_compliant_resource.resource_identifier.device_certificate_arn #=> String
    #   resp.findings[0].non_compliant_resource.additional_info #=> Hash
    #   resp.findings[0].non_compliant_resource.additional_info["String"] #=> String
    #   resp.findings[0].related_resources #=> Array
    #   resp.findings[0].related_resources[0].resource_type #=> String, one of "DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"
    #   resp.findings[0].related_resources[0].resource_identifier.device_certificate_id #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.ca_certificate_id #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.cognito_identity_pool_id #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.client_id #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.account #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.iam_role_arn #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.role_alias_arn #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.findings[0].related_resources[0].resource_identifier.device_certificate_arn #=> String
    #   resp.findings[0].related_resources[0].additional_info #=> Hash
    #   resp.findings[0].related_resources[0].additional_info["String"] #=> String
    #   resp.findings[0].reason_for_non_compliance #=> String
    #   resp.findings[0].reason_for_non_compliance_code #=> String
    #   resp.findings[0].is_suppressed #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload list_audit_findings(params = {})
    # @param [Hash] params ({})
    def list_audit_findings(params = {}, options = {})
      req = build_request(:list_audit_findings, params)
      req.send_request(options)
    end

    # Gets the status of audit mitigation action tasks that were executed.
    #
    # Requires permission to access the
    # [ListAuditMitigationActionsExecutions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   Specify this filter to limit results to actions for a specific audit
    #   mitigation actions task.
    #
    # @option params [String] :action_status
    #   Specify this filter to limit results to those with a specific status.
    #
    # @option params [required, String] :finding_id
    #   Specify this filter to limit results to those that were applied to a
    #   specific audit finding.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListAuditMitigationActionsExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuditMitigationActionsExecutionsResponse#actions_executions #actions_executions} => Array&lt;Types::AuditMitigationActionExecutionMetadata&gt;
    #   * {Types::ListAuditMitigationActionsExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_mitigation_actions_executions({
    #     task_id: "MitigationActionsTaskId", # required
    #     action_status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED, CANCELED, SKIPPED, PENDING
    #     finding_id: "FindingId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.actions_executions #=> Array
    #   resp.actions_executions[0].task_id #=> String
    #   resp.actions_executions[0].finding_id #=> String
    #   resp.actions_executions[0].action_name #=> String
    #   resp.actions_executions[0].action_id #=> String
    #   resp.actions_executions[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED", "SKIPPED", "PENDING"
    #   resp.actions_executions[0].start_time #=> Time
    #   resp.actions_executions[0].end_time #=> Time
    #   resp.actions_executions[0].error_code #=> String
    #   resp.actions_executions[0].message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_audit_mitigation_actions_executions(params = {})
    # @param [Hash] params ({})
    def list_audit_mitigation_actions_executions(params = {}, options = {})
      req = build_request(:list_audit_mitigation_actions_executions, params)
      req.send_request(options)
    end

    # Gets a list of audit mitigation action tasks that match the specified
    # filters.
    #
    # Requires permission to access the [ListAuditMitigationActionsTasks][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :audit_task_id
    #   Specify this filter to limit results to tasks that were applied to
    #   results for a specific audit.
    #
    # @option params [String] :finding_id
    #   Specify this filter to limit results to tasks that were applied to a
    #   specific audit finding.
    #
    # @option params [String] :task_status
    #   Specify this filter to limit results to tasks that are in a specific
    #   state.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   Specify this filter to limit results to tasks that began on or after a
    #   specific date and time.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   Specify this filter to limit results to tasks that were completed or
    #   canceled on or before a specific date and time.
    #
    # @return [Types::ListAuditMitigationActionsTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuditMitigationActionsTasksResponse#tasks #tasks} => Array&lt;Types::AuditMitigationActionsTaskMetadata&gt;
    #   * {Types::ListAuditMitigationActionsTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_mitigation_actions_tasks({
    #     audit_task_id: "AuditTaskId",
    #     finding_id: "FindingId",
    #     task_status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED, CANCELED
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].start_time #=> Time
    #   resp.tasks[0].task_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"
    #   resp.next_token #=> String
    #
    # @overload list_audit_mitigation_actions_tasks(params = {})
    # @param [Hash] params ({})
    def list_audit_mitigation_actions_tasks(params = {}, options = {})
      req = build_request(:list_audit_mitigation_actions_tasks, params)
      req.send_request(options)
    end

    # Lists your Device Defender audit listings.
    #
    # Requires permission to access the [ListAuditSuppressions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   Information that identifies the noncompliant resource.
    #
    # @option params [Boolean] :ascending_order
    #   Determines whether suppressions are listed in ascending order by
    #   expiration date or not. If parameter isn't provided,
    #   `ascendingOrder=true`.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @return [Types::ListAuditSuppressionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuditSuppressionsResponse#suppressions #suppressions} => Array&lt;Types::AuditSuppression&gt;
    #   * {Types::ListAuditSuppressionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_suppressions({
    #     check_name: "AuditCheckName",
    #     resource_identifier: {
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber",
    #       },
    #       device_certificate_arn: "CertificateArn",
    #     },
    #     ascending_order: false,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.suppressions #=> Array
    #   resp.suppressions[0].check_name #=> String
    #   resp.suppressions[0].resource_identifier.device_certificate_id #=> String
    #   resp.suppressions[0].resource_identifier.ca_certificate_id #=> String
    #   resp.suppressions[0].resource_identifier.cognito_identity_pool_id #=> String
    #   resp.suppressions[0].resource_identifier.client_id #=> String
    #   resp.suppressions[0].resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.suppressions[0].resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.suppressions[0].resource_identifier.account #=> String
    #   resp.suppressions[0].resource_identifier.iam_role_arn #=> String
    #   resp.suppressions[0].resource_identifier.role_alias_arn #=> String
    #   resp.suppressions[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.suppressions[0].resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.suppressions[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.suppressions[0].resource_identifier.device_certificate_arn #=> String
    #   resp.suppressions[0].expiration_date #=> Time
    #   resp.suppressions[0].suppress_indefinitely #=> Boolean
    #   resp.suppressions[0].description #=> String
    #   resp.next_token #=> String
    #
    # @overload list_audit_suppressions(params = {})
    # @param [Hash] params ({})
    def list_audit_suppressions(params = {}, options = {})
      req = build_request(:list_audit_suppressions, params)
      req.send_request(options)
    end

    # Lists the Device Defender audits that have been performed during a
    # given time period.
    #
    # Requires permission to access the [ListAuditTasks][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time period. Audit information is retained for a
    #   limited time (90 days). Requesting a start time prior to what is
    #   retained results in an "InvalidRequestException".
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period.
    #
    # @option params [String] :task_type
    #   A filter to limit the output to the specified type of audit: can be
    #   one of "ON\_DEMAND\_AUDIT\_TASK" or "SCHEDULED\_\_AUDIT\_TASK".
    #
    # @option params [String] :task_status
    #   A filter to limit the output to audits with the specified completion
    #   status: can be one of "IN\_PROGRESS", "COMPLETED", "FAILED", or
    #   "CANCELED".
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @return [Types::ListAuditTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuditTasksResponse#tasks #tasks} => Array&lt;Types::AuditTaskMetadata&gt;
    #   * {Types::ListAuditTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_audit_tasks({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     task_type: "ON_DEMAND_AUDIT_TASK", # accepts ON_DEMAND_AUDIT_TASK, SCHEDULED_AUDIT_TASK
    #     task_status: "IN_PROGRESS", # accepts IN_PROGRESS, COMPLETED, FAILED, CANCELED
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].task_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"
    #   resp.tasks[0].task_type #=> String, one of "ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"
    #   resp.next_token #=> String
    #
    # @overload list_audit_tasks(params = {})
    # @param [Hash] params ({})
    def list_audit_tasks(params = {}, options = {})
      req = build_request(:list_audit_tasks, params)
      req.send_request(options)
    end

    # Lists the authorizers registered in your account.
    #
    # Requires permission to access the [ListAuthorizers][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :marker
    #   A marker used to get the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Return the list of authorizers in ascending alphabetical order.
    #
    # @option params [String] :status
    #   The status of the list authorizers request.
    #
    # @return [Types::ListAuthorizersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuthorizersResponse#authorizers #authorizers} => Array&lt;Types::AuthorizerSummary&gt;
    #   * {Types::ListAuthorizersResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_authorizers({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizers #=> Array
    #   resp.authorizers[0].authorizer_name #=> String
    #   resp.authorizers[0].authorizer_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_authorizers(params = {})
    # @param [Hash] params ({})
    def list_authorizers(params = {}, options = {})
      req = build_request(:list_authorizers, params)
      req.send_request(options)
    end

    # Lists the billing groups you have created.
    #
    # Requires permission to access the [ListBillingGroups][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request.
    #
    # @option params [String] :name_prefix_filter
    #   Limit the results to billing groups whose names have the given prefix.
    #
    # @return [Types::ListBillingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillingGroupsResponse#billing_groups #billing_groups} => Array&lt;Types::GroupNameAndArn&gt;
    #   * {Types::ListBillingGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_prefix_filter: "BillingGroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_groups #=> Array
    #   resp.billing_groups[0].group_name #=> String
    #   resp.billing_groups[0].group_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_billing_groups(params = {})
    # @param [Hash] params ({})
    def list_billing_groups(params = {}, options = {})
      req = build_request(:list_billing_groups, params)
      req.send_request(options)
    end

    # Lists the CA certificates registered for your Amazon Web Services
    # account.
    #
    # The results are paginated with a default page size of 25. You can use
    # the returned marker to retrieve additional results.
    #
    # Requires permission to access the [ListCACertificates][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Determines the order of the results.
    #
    # @option params [String] :template_name
    #   The name of the provisioning template.
    #
    # @return [Types::ListCACertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCACertificatesResponse#certificates #certificates} => Array&lt;Types::CACertificate&gt;
    #   * {Types::ListCACertificatesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ca_certificates({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #     template_name: "TemplateName",
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_ca_certificates(params = {})
    # @param [Hash] params ({})
    def list_ca_certificates(params = {}, options = {})
      req = build_request(:list_ca_certificates, params)
      req.send_request(options)
    end

    # Lists the certificates registered in your Amazon Web Services account.
    #
    # The results are paginated with a default page size of 25. You can use
    # the returned marker to retrieve additional results.
    #
    # Requires permission to access the [ListCertificates][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If True, the results are returned in
    #   ascending order, based on the creation date.
    #
    # @return [Types::ListCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::ListCertificatesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"
    #   resp.certificates[0].certificate_mode #=> String, one of "DEFAULT", "SNI_ONLY"
    #   resp.certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_certificates(params = {})
    # @param [Hash] params ({})
    def list_certificates(params = {}, options = {})
      req = build_request(:list_certificates, params)
      req.send_request(options)
    end

    # List the device certificates signed by the specified CA certificate.
    #
    # Requires permission to access the [ListCertificatesByCA][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :ca_certificate_id
    #   The ID of the CA certificate. This operation will list all registered
    #   device certificate that were signed by this CA certificate.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If True, the results are returned in
    #   ascending order, based on the creation date.
    #
    # @return [Types::ListCertificatesByCAResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesByCAResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::ListCertificatesByCAResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates_by_ca({
    #     ca_certificate_id: "CertificateId", # required
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"
    #   resp.certificates[0].certificate_mode #=> String, one of "DEFAULT", "SNI_ONLY"
    #   resp.certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_certificates_by_ca(params = {})
    # @param [Hash] params ({})
    def list_certificates_by_ca(params = {}, options = {})
      req = build_request(:list_certificates_by_ca, params)
      req.send_request(options)
    end

    # Lists your Device Defender detect custom metrics.
    #
    # Requires permission to access the [ListCustomMetrics][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @return [Types::ListCustomMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomMetricsResponse#metric_names #metric_names} => Array&lt;String&gt;
    #   * {Types::ListCustomMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_metrics({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_names #=> Array
    #   resp.metric_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_custom_metrics(params = {})
    # @param [Hash] params ({})
    def list_custom_metrics(params = {}, options = {})
      req = build_request(:list_custom_metrics, params)
      req.send_request(options)
    end

    # Lists mitigation actions executions for a Device Defender ML Detect
    # Security Profile.
    #
    # Requires permission to access the
    # [ListDetectMitigationActionsExecutions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :task_id
    #   The unique identifier of the task.
    #
    # @option params [String] :violation_id
    #   The unique identifier of the violation.
    #
    # @option params [String] :thing_name
    #   The name of the thing whose mitigation actions are listed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   A filter to limit results to those found after the specified time. You
    #   must specify either the startTime and endTime or the taskId, but not
    #   both.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period for which ML Detect mitigation actions
    #   executions are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListDetectMitigationActionsExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectMitigationActionsExecutionsResponse#actions_executions #actions_executions} => Array&lt;Types::DetectMitigationActionExecution&gt;
    #   * {Types::ListDetectMitigationActionsExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detect_mitigation_actions_executions({
    #     task_id: "MitigationActionsTaskId",
    #     violation_id: "ViolationId",
    #     thing_name: "DeviceDefenderThingName",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.actions_executions #=> Array
    #   resp.actions_executions[0].task_id #=> String
    #   resp.actions_executions[0].violation_id #=> String
    #   resp.actions_executions[0].action_name #=> String
    #   resp.actions_executions[0].thing_name #=> String
    #   resp.actions_executions[0].execution_start_date #=> Time
    #   resp.actions_executions[0].execution_end_date #=> Time
    #   resp.actions_executions[0].status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"
    #   resp.actions_executions[0].error_code #=> String
    #   resp.actions_executions[0].message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_detect_mitigation_actions_executions(params = {})
    # @param [Hash] params ({})
    def list_detect_mitigation_actions_executions(params = {}, options = {})
      req = build_request(:list_detect_mitigation_actions_executions, params)
      req.send_request(options)
    end

    # List of Device Defender ML Detect mitigation actions tasks.
    #
    # Requires permission to access the
    # [ListDetectMitigationActionsTasks][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   A filter to limit results to those found after the specified time. You
    #   must specify either the startTime and endTime or the taskId, but not
    #   both.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period for which ML Detect mitigation actions
    #   tasks are returned.
    #
    # @return [Types::ListDetectMitigationActionsTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectMitigationActionsTasksResponse#tasks #tasks} => Array&lt;Types::DetectMitigationActionsTaskSummary&gt;
    #   * {Types::ListDetectMitigationActionsTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detect_mitigation_actions_tasks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].task_id #=> String
    #   resp.tasks[0].task_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "CANCELED"
    #   resp.tasks[0].task_start_time #=> Time
    #   resp.tasks[0].task_end_time #=> Time
    #   resp.tasks[0].target.violation_ids #=> Array
    #   resp.tasks[0].target.violation_ids[0] #=> String
    #   resp.tasks[0].target.security_profile_name #=> String
    #   resp.tasks[0].target.behavior_name #=> String
    #   resp.tasks[0].violation_event_occurrence_range.start_time #=> Time
    #   resp.tasks[0].violation_event_occurrence_range.end_time #=> Time
    #   resp.tasks[0].only_active_violations_included #=> Boolean
    #   resp.tasks[0].suppressed_alerts_included #=> Boolean
    #   resp.tasks[0].actions_definition #=> Array
    #   resp.tasks[0].actions_definition[0].name #=> String
    #   resp.tasks[0].actions_definition[0].id #=> String
    #   resp.tasks[0].actions_definition[0].role_arn #=> String
    #   resp.tasks[0].actions_definition[0].action_params.update_device_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.tasks[0].actions_definition[0].action_params.update_ca_certificate_params.action #=> String, one of "DEACTIVATE"
    #   resp.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names #=> Array
    #   resp.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params.thing_group_names[0] #=> String
    #   resp.tasks[0].actions_definition[0].action_params.add_things_to_thing_group_params.override_dynamic_groups #=> Boolean
    #   resp.tasks[0].actions_definition[0].action_params.replace_default_policy_version_params.template_name #=> String, one of "BLANK_POLICY"
    #   resp.tasks[0].actions_definition[0].action_params.enable_io_t_logging_params.role_arn_for_logging #=> String
    #   resp.tasks[0].actions_definition[0].action_params.enable_io_t_logging_params.log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.tasks[0].actions_definition[0].action_params.publish_finding_to_sns_params.topic_arn #=> String
    #   resp.tasks[0].task_statistics.actions_executed #=> Integer
    #   resp.tasks[0].task_statistics.actions_skipped #=> Integer
    #   resp.tasks[0].task_statistics.actions_failed #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_detect_mitigation_actions_tasks(params = {})
    # @param [Hash] params ({})
    def list_detect_mitigation_actions_tasks(params = {}, options = {})
      req = build_request(:list_detect_mitigation_actions_tasks, params)
      req.send_request(options)
    end

    # List the set of dimensions that are defined for your Amazon Web
    # Services accounts.
    #
    # Requires permission to access the [ListDimensions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve at one time.
    #
    # @return [Types::ListDimensionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDimensionsResponse#dimension_names #dimension_names} => Array&lt;String&gt;
    #   * {Types::ListDimensionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dimensions({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dimension_names #=> Array
    #   resp.dimension_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_dimensions(params = {})
    # @param [Hash] params ({})
    def list_dimensions(params = {}, options = {})
      req = build_request(:list_dimensions, params)
      req.send_request(options)
    end

    # Gets a list of domain configurations for the user. This list is sorted
    # alphabetically by domain configuration name.
    #
    # Requires permission to access the [ListDomainConfigurations][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :service_type
    #   The type of service delivered by the endpoint.
    #
    # @return [Types::ListDomainConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainConfigurationsResponse#domain_configurations #domain_configurations} => Array&lt;Types::DomainConfigurationSummary&gt;
    #   * {Types::ListDomainConfigurationsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_configurations({
    #     marker: "Marker",
    #     page_size: 1,
    #     service_type: "DATA", # accepts DATA, CREDENTIAL_PROVIDER, JOBS
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_configurations #=> Array
    #   resp.domain_configurations[0].domain_configuration_name #=> String
    #   resp.domain_configurations[0].domain_configuration_arn #=> String
    #   resp.domain_configurations[0].service_type #=> String, one of "DATA", "CREDENTIAL_PROVIDER", "JOBS"
    #   resp.next_marker #=> String
    #
    # @overload list_domain_configurations(params = {})
    # @param [Hash] params ({})
    def list_domain_configurations(params = {}, options = {})
      req = build_request(:list_domain_configurations, params)
      req.send_request(options)
    end

    # Lists all your fleet metrics.
    #
    # Requires permission to access the [ListFleetMetrics][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise `null` to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @return [Types::ListFleetMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetMetricsResponse#fleet_metrics #fleet_metrics} => Array&lt;Types::FleetMetricNameAndArn&gt;
    #   * {Types::ListFleetMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleet_metrics({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_metrics #=> Array
    #   resp.fleet_metrics[0].metric_name #=> String
    #   resp.fleet_metrics[0].metric_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_fleet_metrics(params = {})
    # @param [Hash] params ({})
    def list_fleet_metrics(params = {}, options = {})
      req = build_request(:list_fleet_metrics, params)
      req.send_request(options)
    end

    # Lists the search indices.
    #
    # Requires permission to access the [ListIndices][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or `null` if there are
    #   no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListIndicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndicesResponse#index_names #index_names} => Array&lt;String&gt;
    #   * {Types::ListIndicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.index_names #=> Array
    #   resp.index_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_indices(params = {})
    # @param [Hash] params ({})
    def list_indices(params = {}, options = {})
      req = build_request(:list_indices, params)
      req.send_request(options)
    end

    # Lists the job executions for a job.
    #
    # Requires permission to access the [ListJobExecutionsForJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [String] :status
    #   The status of the job.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListJobExecutionsForJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobExecutionsForJobResponse#execution_summaries #execution_summaries} => Array&lt;Types::JobExecutionSummaryForJob&gt;
    #   * {Types::ListJobExecutionsForJobResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_executions_for_job({
    #     job_id: "JobId", # required
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, TIMED_OUT, REJECTED, REMOVED, CANCELED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_summaries #=> Array
    #   resp.execution_summaries[0].thing_arn #=> String
    #   resp.execution_summaries[0].job_execution_summary.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution_summaries[0].job_execution_summary.queued_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.started_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.last_updated_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.execution_number #=> Integer
    #   resp.execution_summaries[0].job_execution_summary.retry_attempt #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_job_executions_for_job(params = {})
    # @param [Hash] params ({})
    def list_job_executions_for_job(params = {}, options = {})
      req = build_request(:list_job_executions_for_job, params)
      req.send_request(options)
    end

    # Lists the job executions for the specified thing.
    #
    # Requires permission to access the [ListJobExecutionsForThing][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The thing name.
    #
    # @option params [String] :status
    #   An optional filter that lets you search for jobs that have the
    #   specified status.
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @return [Types::ListJobExecutionsForThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobExecutionsForThingResponse#execution_summaries #execution_summaries} => Array&lt;Types::JobExecutionSummaryForThing&gt;
    #   * {Types::ListJobExecutionsForThingResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_executions_for_thing({
    #     thing_name: "ThingName", # required
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, TIMED_OUT, REJECTED, REMOVED, CANCELED
    #     namespace_id: "NamespaceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     job_id: "JobId",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_summaries #=> Array
    #   resp.execution_summaries[0].job_id #=> String
    #   resp.execution_summaries[0].job_execution_summary.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution_summaries[0].job_execution_summary.queued_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.started_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.last_updated_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.execution_number #=> Integer
    #   resp.execution_summaries[0].job_execution_summary.retry_attempt #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_job_executions_for_thing(params = {})
    # @param [Hash] params ({})
    def list_job_executions_for_thing(params = {}, options = {})
      req = build_request(:list_job_executions_for_thing, params)
      req.send_request(options)
    end

    # Returns a list of job templates.
    #
    # Requires permission to access the [ListJobTemplates][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the list.
    #
    # @option params [String] :next_token
    #   The token to use to return the next set of results in the list.
    #
    # @return [Types::ListJobTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobTemplatesResponse#job_templates #job_templates} => Array&lt;Types::JobTemplateSummary&gt;
    #   * {Types::ListJobTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_templates #=> Array
    #   resp.job_templates[0].job_template_arn #=> String
    #   resp.job_templates[0].job_template_id #=> String
    #   resp.job_templates[0].description #=> String
    #   resp.job_templates[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_job_templates(params = {})
    # @param [Hash] params ({})
    def list_job_templates(params = {}, options = {})
      req = build_request(:list_job_templates, params)
      req.send_request(options)
    end

    # Lists jobs.
    #
    # Requires permission to access the [ListJobs][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :status
    #   An optional filter that lets you search for jobs that have the
    #   specified status.
    #
    # @option params [String] :target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have completed
    #   the job (SNAPSHOT). If continuous, the job may also be run on a thing
    #   when a change is detected in a target. For example, a job will run on
    #   a thing when the thing is added to a target group, even after the job
    #   was completed by all things originally in the group.
    #
    #   <note markdown="1"> We recommend that you use continuous jobs instead of snapshot jobs for
    #   dynamic thing group targets. By using continuous jobs, devices that
    #   join the group receive the job execution even after the job has been
    #   created.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [String] :thing_group_name
    #   A filter that limits the returned jobs to those for the specified
    #   group.
    #
    # @option params [String] :thing_group_id
    #   A filter that limits the returned jobs to those for the specified
    #   group.
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, CANCELED, COMPLETED, DELETION_IN_PROGRESS, SCHEDULED
    #     target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #     max_results: 1,
    #     next_token: "NextToken",
    #     thing_group_name: "ThingGroupName",
    #     thing_group_id: "ThingGroupId",
    #     namespace_id: "NamespaceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_arn #=> String
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].thing_group_id #=> String
    #   resp.jobs[0].target_selection #=> String, one of "CONTINUOUS", "SNAPSHOT"
    #   resp.jobs[0].status #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].last_updated_at #=> Time
    #   resp.jobs[0].completed_at #=> Time
    #   resp.jobs[0].is_concurrent #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Returns a list of managed job templates.
    #
    # @option params [String] :template_name
    #   An optional parameter for template name. If specified, only the
    #   versions of the managed job templates that have the specified template
    #   name will be returned.
    #
    # @option params [Integer] :max_results
    #   Maximum number of entries that can be returned.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListManagedJobTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedJobTemplatesResponse#managed_job_templates #managed_job_templates} => Array&lt;Types::ManagedJobTemplateSummary&gt;
    #   * {Types::ListManagedJobTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_job_templates({
    #     template_name: "ManagedJobTemplateName",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_job_templates #=> Array
    #   resp.managed_job_templates[0].template_arn #=> String
    #   resp.managed_job_templates[0].template_name #=> String
    #   resp.managed_job_templates[0].description #=> String
    #   resp.managed_job_templates[0].environments #=> Array
    #   resp.managed_job_templates[0].environments[0] #=> String
    #   resp.managed_job_templates[0].template_version #=> String
    #   resp.next_token #=> String
    #
    # @overload list_managed_job_templates(params = {})
    # @param [Hash] params ({})
    def list_managed_job_templates(params = {}, options = {})
      req = build_request(:list_managed_job_templates, params)
      req.send_request(options)
    end

    # Lists the values reported for an IoT Device Defender metric
    # (device-side metric, cloud-side metric, or custom metric) by the given
    # thing during the specified time period.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing for which security profile metric values are
    #   returned.
    #
    # @option params [required, String] :metric_name
    #   The name of the security profile metric for which values are returned.
    #
    # @option params [String] :dimension_name
    #   The dimension name.
    #
    # @option params [String] :dimension_value_operator
    #   The dimension value operator.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time period for which metric values are returned.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time period for which metric values are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListMetricValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetricValuesResponse#metric_datum_list #metric_datum_list} => Array&lt;Types::MetricDatum&gt;
    #   * {Types::ListMetricValuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metric_values({
    #     thing_name: "DeviceDefenderThingName", # required
    #     metric_name: "BehaviorMetric", # required
    #     dimension_name: "DimensionName",
    #     dimension_value_operator: "IN", # accepts IN, NOT_IN
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_datum_list #=> Array
    #   resp.metric_datum_list[0].timestamp #=> Time
    #   resp.metric_datum_list[0].value.count #=> Integer
    #   resp.metric_datum_list[0].value.cidrs #=> Array
    #   resp.metric_datum_list[0].value.cidrs[0] #=> String
    #   resp.metric_datum_list[0].value.ports #=> Array
    #   resp.metric_datum_list[0].value.ports[0] #=> Integer
    #   resp.metric_datum_list[0].value.number #=> Float
    #   resp.metric_datum_list[0].value.numbers #=> Array
    #   resp.metric_datum_list[0].value.numbers[0] #=> Float
    #   resp.metric_datum_list[0].value.strings #=> Array
    #   resp.metric_datum_list[0].value.strings[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_metric_values(params = {})
    # @param [Hash] params ({})
    def list_metric_values(params = {}, options = {})
      req = build_request(:list_metric_values, params)
      req.send_request(options)
    end

    # Gets a list of all mitigation actions that match the specified filter
    # criteria.
    #
    # Requires permission to access the [ListMitigationActions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :action_type
    #   Specify a value to limit the result to mitigation actions with a
    #   specific action type.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListMitigationActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMitigationActionsResponse#action_identifiers #action_identifiers} => Array&lt;Types::MitigationActionIdentifier&gt;
    #   * {Types::ListMitigationActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mitigation_actions({
    #     action_type: "UPDATE_DEVICE_CERTIFICATE", # accepts UPDATE_DEVICE_CERTIFICATE, UPDATE_CA_CERTIFICATE, ADD_THINGS_TO_THING_GROUP, REPLACE_DEFAULT_POLICY_VERSION, ENABLE_IOT_LOGGING, PUBLISH_FINDING_TO_SNS
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_identifiers #=> Array
    #   resp.action_identifiers[0].action_name #=> String
    #   resp.action_identifiers[0].action_arn #=> String
    #   resp.action_identifiers[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_mitigation_actions(params = {})
    # @param [Hash] params ({})
    def list_mitigation_actions(params = {}, options = {})
      req = build_request(:list_mitigation_actions, params)
      req.send_request(options)
    end

    # Lists OTA updates.
    #
    # Requires permission to access the [ListOTAUpdates][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token used to retrieve the next set of results.
    #
    # @option params [String] :ota_update_status
    #   The OTA update job status.
    #
    # @return [Types::ListOTAUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOTAUpdatesResponse#ota_updates #ota_updates} => Array&lt;Types::OTAUpdateSummary&gt;
    #   * {Types::ListOTAUpdatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ota_updates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     ota_update_status: "CREATE_PENDING", # accepts CREATE_PENDING, CREATE_IN_PROGRESS, CREATE_COMPLETE, CREATE_FAILED, DELETE_IN_PROGRESS, DELETE_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.ota_updates #=> Array
    #   resp.ota_updates[0].ota_update_id #=> String
    #   resp.ota_updates[0].ota_update_arn #=> String
    #   resp.ota_updates[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_ota_updates(params = {})
    # @param [Hash] params ({})
    def list_ota_updates(params = {}, options = {})
      req = build_request(:list_ota_updates, params)
      req.send_request(options)
    end

    # Lists certificates that are being transferred but not yet accepted.
    #
    # Requires permission to access the [ListOutgoingCertificates][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If True, the results are returned in
    #   ascending order, based on the creation date.
    #
    # @return [Types::ListOutgoingCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOutgoingCertificatesResponse#outgoing_certificates #outgoing_certificates} => Array&lt;Types::OutgoingCertificate&gt;
    #   * {Types::ListOutgoingCertificatesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outgoing_certificates({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.outgoing_certificates #=> Array
    #   resp.outgoing_certificates[0].certificate_arn #=> String
    #   resp.outgoing_certificates[0].certificate_id #=> String
    #   resp.outgoing_certificates[0].transferred_to #=> String
    #   resp.outgoing_certificates[0].transfer_date #=> Time
    #   resp.outgoing_certificates[0].transfer_message #=> String
    #   resp.outgoing_certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_outgoing_certificates(params = {})
    # @param [Hash] params ({})
    def list_outgoing_certificates(params = {}, options = {})
      req = build_request(:list_outgoing_certificates, params)
      req.send_request(options)
    end

    # Lists the software package versions associated to the account.
    #
    # Requires permission to access the [ListPackageVersions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the target package.
    #
    # @option params [String] :status
    #   The status of the package version. For more information, see [Package
    #   version lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListPackageVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackageVersionsResponse#package_version_summaries #package_version_summaries} => Array&lt;Types::PackageVersionSummary&gt;
    #   * {Types::ListPackageVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_versions({
    #     package_name: "PackageName", # required
    #     status: "DRAFT", # accepts DRAFT, PUBLISHED, DEPRECATED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_version_summaries #=> Array
    #   resp.package_version_summaries[0].package_name #=> String
    #   resp.package_version_summaries[0].version_name #=> String
    #   resp.package_version_summaries[0].status #=> String, one of "DRAFT", "PUBLISHED", "DEPRECATED"
    #   resp.package_version_summaries[0].creation_date #=> Time
    #   resp.package_version_summaries[0].last_modified_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_package_versions(params = {})
    # @param [Hash] params ({})
    def list_package_versions(params = {}, options = {})
      req = build_request(:list_package_versions, params)
      req.send_request(options)
    end

    # Lists the software packages associated to the account.
    #
    # Requires permission to access the [ListPackages][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned at one time.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @return [Types::ListPackagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagesResponse#package_summaries #package_summaries} => Array&lt;Types::PackageSummary&gt;
    #   * {Types::ListPackagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_summaries #=> Array
    #   resp.package_summaries[0].package_name #=> String
    #   resp.package_summaries[0].default_version_name #=> String
    #   resp.package_summaries[0].creation_date #=> Time
    #   resp.package_summaries[0].last_modified_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_packages(params = {})
    # @param [Hash] params ({})
    def list_packages(params = {}, options = {})
      req = build_request(:list_packages, params)
      req.send_request(options)
    end

    # Lists your policies.
    #
    # Requires permission to access the [ListPolicies][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If true, the results are returned in
    #   ascending creation order.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListPoliciesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Lists the principals associated with the specified policy.
    #
    # **Note:** This action is deprecated and works as expected for backward
    # compatibility, but we won't add enhancements. Use
    # ListTargetsForPolicy instead.
    #
    # Requires permission to access the [ListPolicyPrincipals][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If true, the results are returned in
    #   ascending creation order.
    #
    # @return [Types::ListPolicyPrincipalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyPrincipalsResponse#principals #principals} => Array&lt;String&gt;
    #   * {Types::ListPolicyPrincipalsResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_principals({
    #     policy_name: "PolicyName", # required
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0] #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_policy_principals(params = {})
    # @param [Hash] params ({})
    def list_policy_principals(params = {}, options = {})
      req = build_request(:list_policy_principals, params)
      req.send_request(options)
    end

    # Lists the versions of the specified policy and identifies the default
    # version.
    #
    # Requires permission to access the [ListPolicyVersions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @return [Types::ListPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyVersionsResponse#policy_versions #policy_versions} => Array&lt;Types::PolicyVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_versions({
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_versions #=> Array
    #   resp.policy_versions[0].version_id #=> String
    #   resp.policy_versions[0].is_default_version #=> Boolean
    #   resp.policy_versions[0].create_date #=> Time
    #
    # @overload list_policy_versions(params = {})
    # @param [Hash] params ({})
    def list_policy_versions(params = {}, options = {})
      req = build_request(:list_policy_versions, params)
      req.send_request(options)
    end

    # Lists the policies attached to the specified principal. If you use an
    # Cognito identity, the ID must be in [AmazonCognito Identity
    # format][1].
    #
    # **Note:** This action is deprecated and works as expected for backward
    # compatibility, but we won't add enhancements. Use
    # ListAttachedPolicies instead.
    #
    # Requires permission to access the [ListPrincipalPolicies][2] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :principal
    #   The principal. Valid principals are CertificateArn
    #   (arn:aws:iot:*region*:*accountId*:cert/*certificateId*), thingGroupArn
    #   (arn:aws:iot:*region*:*accountId*:thinggroup/*groupName*) and
    #   CognitoId (*region*:*id*).
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If true, results are returned in
    #   ascending creation order.
    #
    # @return [Types::ListPrincipalPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListPrincipalPoliciesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principal_policies({
    #     principal: "Principal", # required
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_principal_policies(params = {})
    # @param [Hash] params ({})
    def list_principal_policies(params = {}, options = {})
      req = build_request(:list_principal_policies, params)
      req.send_request(options)
    end

    # Lists the things associated with the specified principal. A principal
    # can be X.509 certificates, IAM users, groups, and roles, Amazon
    # Cognito identities or federated identities.
    #
    # Requires permission to access the [ListPrincipalThings][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [required, String] :principal
    #   The principal.
    #
    # @return [Types::ListPrincipalThingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalThingsResponse#things #things} => Array&lt;String&gt;
    #   * {Types::ListPrincipalThingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principal_things({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     principal: "Principal", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_principal_things(params = {})
    # @param [Hash] params ({})
    def list_principal_things(params = {}, options = {})
      req = build_request(:list_principal_things, params)
      req.send_request(options)
    end

    # A list of provisioning template versions.
    #
    # Requires permission to access the
    # [ListProvisioningTemplateVersions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next set of results.
    #
    # @return [Types::ListProvisioningTemplateVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisioningTemplateVersionsResponse#versions #versions} => Array&lt;Types::ProvisioningTemplateVersionSummary&gt;
    #   * {Types::ListProvisioningTemplateVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_template_versions({
    #     template_name: "TemplateName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].version_id #=> Integer
    #   resp.versions[0].creation_date #=> Time
    #   resp.versions[0].is_default_version #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload list_provisioning_template_versions(params = {})
    # @param [Hash] params ({})
    def list_provisioning_template_versions(params = {}, options = {})
      req = build_request(:list_provisioning_template_versions, params)
      req.send_request(options)
    end

    # Lists the provisioning templates in your Amazon Web Services account.
    #
    # Requires permission to access the [ListProvisioningTemplates][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token to retrieve the next set of results.
    #
    # @return [Types::ListProvisioningTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisioningTemplatesResponse#templates #templates} => Array&lt;Types::ProvisioningTemplateSummary&gt;
    #   * {Types::ListProvisioningTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.templates #=> Array
    #   resp.templates[0].template_arn #=> String
    #   resp.templates[0].template_name #=> String
    #   resp.templates[0].description #=> String
    #   resp.templates[0].creation_date #=> Time
    #   resp.templates[0].last_modified_date #=> Time
    #   resp.templates[0].enabled #=> Boolean
    #   resp.templates[0].type #=> String, one of "FLEET_PROVISIONING", "JITP"
    #   resp.next_token #=> String
    #
    # @overload list_provisioning_templates(params = {})
    # @param [Hash] params ({})
    def list_provisioning_templates(params = {}, options = {})
      req = build_request(:list_provisioning_templates, params)
      req.send_request(options)
    end

    # The related resources of an Audit finding. The following resources can
    # be returned from calling this API:
    #
    # * DEVICE\_CERTIFICATE
    #
    # * CA\_CERTIFICATE
    #
    # * IOT\_POLICY
    #
    # * COGNITO\_IDENTITY\_POOL
    #
    # * CLIENT\_ID
    #
    # * ACCOUNT\_SETTINGS
    #
    # * ROLE\_ALIAS
    #
    # * IAM\_ROLE
    #
    # * ISSUER\_CERTIFICATE
    #
    # <note markdown="1"> This API is similar to DescribeAuditFinding's [RelatedResources][1]
    # but provides pagination and is not limited to 10 resources. When
    # calling [DescribeAuditFinding][1] for the intermediate CA revoked for
    # active device certificates check, RelatedResources will not be
    # populated. You must use this API, ListRelatedResourcesForAuditFinding,
    # to list the certificates.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html
    #
    # @option params [required, String] :finding_id
    #   The finding Id.
    #
    # @option params [String] :next_token
    #   A token that can be used to retrieve the next set of results, or
    #   `null` if there are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListRelatedResourcesForAuditFindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRelatedResourcesForAuditFindingResponse#related_resources #related_resources} => Array&lt;Types::RelatedResource&gt;
    #   * {Types::ListRelatedResourcesForAuditFindingResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_related_resources_for_audit_finding({
    #     finding_id: "FindingId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.related_resources #=> Array
    #   resp.related_resources[0].resource_type #=> String, one of "DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"
    #   resp.related_resources[0].resource_identifier.device_certificate_id #=> String
    #   resp.related_resources[0].resource_identifier.ca_certificate_id #=> String
    #   resp.related_resources[0].resource_identifier.cognito_identity_pool_id #=> String
    #   resp.related_resources[0].resource_identifier.client_id #=> String
    #   resp.related_resources[0].resource_identifier.policy_version_identifier.policy_name #=> String
    #   resp.related_resources[0].resource_identifier.policy_version_identifier.policy_version_id #=> String
    #   resp.related_resources[0].resource_identifier.account #=> String
    #   resp.related_resources[0].resource_identifier.iam_role_arn #=> String
    #   resp.related_resources[0].resource_identifier.role_alias_arn #=> String
    #   resp.related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_subject #=> String
    #   resp.related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_id #=> String
    #   resp.related_resources[0].resource_identifier.issuer_certificate_identifier.issuer_certificate_serial_number #=> String
    #   resp.related_resources[0].resource_identifier.device_certificate_arn #=> String
    #   resp.related_resources[0].additional_info #=> Hash
    #   resp.related_resources[0].additional_info["String"] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_related_resources_for_audit_finding(params = {})
    # @param [Hash] params ({})
    def list_related_resources_for_audit_finding(params = {}, options = {})
      req = build_request(:list_related_resources_for_audit_finding, params)
      req.send_request(options)
    end

    # Lists the role aliases registered in your account.
    #
    # Requires permission to access the [ListRoleAliases][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :marker
    #   A marker used to get the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Return the list of role aliases in ascending alphabetical order.
    #
    # @return [Types::ListRoleAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoleAliasesResponse#role_aliases #role_aliases} => Array&lt;String&gt;
    #   * {Types::ListRoleAliasesResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_aliases({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.role_aliases #=> Array
    #   resp.role_aliases[0] #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_role_aliases(params = {})
    # @param [Hash] params ({})
    def list_role_aliases(params = {}, options = {})
      req = build_request(:list_role_aliases, params)
      req.send_request(options)
    end

    # Lists all of your scheduled audits.
    #
    # Requires permission to access the [ListScheduledAudits][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time. The default is
    #   25.
    #
    # @return [Types::ListScheduledAuditsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScheduledAuditsResponse#scheduled_audits #scheduled_audits} => Array&lt;Types::ScheduledAuditMetadata&gt;
    #   * {Types::ListScheduledAuditsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduled_audits({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_audits #=> Array
    #   resp.scheduled_audits[0].scheduled_audit_name #=> String
    #   resp.scheduled_audits[0].scheduled_audit_arn #=> String
    #   resp.scheduled_audits[0].frequency #=> String, one of "DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"
    #   resp.scheduled_audits[0].day_of_month #=> String
    #   resp.scheduled_audits[0].day_of_week #=> String, one of "SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"
    #   resp.next_token #=> String
    #
    # @overload list_scheduled_audits(params = {})
    # @param [Hash] params ({})
    def list_scheduled_audits(params = {}, options = {})
      req = build_request(:list_scheduled_audits, params)
      req.send_request(options)
    end

    # Lists the Device Defender security profiles you've created. You can
    # filter security profiles by dimension or custom metric.
    #
    # Requires permission to access the [ListSecurityProfiles][1] action.
    #
    # <note markdown="1"> `dimensionName` and `metricName` cannot be used in the same request.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :dimension_name
    #   A filter to limit results to the security profiles that use the
    #   defined dimension. Cannot be used with `metricName`
    #
    # @option params [String] :metric_name
    #   The name of the custom metric. Cannot be used with `dimensionName`.
    #
    # @return [Types::ListSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilesResponse#security_profile_identifiers #security_profile_identifiers} => Array&lt;Types::SecurityProfileIdentifier&gt;
    #   * {Types::ListSecurityProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     dimension_name: "DimensionName",
    #     metric_name: "MetricName",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_identifiers #=> Array
    #   resp.security_profile_identifiers[0].name #=> String
    #   resp.security_profile_identifiers[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_security_profiles(params = {})
    # @param [Hash] params ({})
    def list_security_profiles(params = {}, options = {})
      req = build_request(:list_security_profiles, params)
      req.send_request(options)
    end

    # Lists the Device Defender security profiles attached to a target
    # (thing group).
    #
    # Requires permission to access the [ListSecurityProfilesForTarget][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [Boolean] :recursive
    #   If true, return child groups too.
    #
    # @option params [required, String] :security_profile_target_arn
    #   The ARN of the target (thing group) whose attached security profiles
    #   you want to get.
    #
    # @return [Types::ListSecurityProfilesForTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilesForTargetResponse#security_profile_target_mappings #security_profile_target_mappings} => Array&lt;Types::SecurityProfileTargetMapping&gt;
    #   * {Types::ListSecurityProfilesForTargetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles_for_target({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     recursive: false,
    #     security_profile_target_arn: "SecurityProfileTargetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_target_mappings #=> Array
    #   resp.security_profile_target_mappings[0].security_profile_identifier.name #=> String
    #   resp.security_profile_target_mappings[0].security_profile_identifier.arn #=> String
    #   resp.security_profile_target_mappings[0].target.arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_security_profiles_for_target(params = {})
    # @param [Hash] params ({})
    def list_security_profiles_for_target(params = {}, options = {})
      req = build_request(:list_security_profiles_for_target, params)
      req.send_request(options)
    end

    # Lists all of the streams in your Amazon Web Services account.
    #
    # Requires permission to access the [ListStreams][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at a time.
    #
    # @option params [String] :next_token
    #   A token used to get the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Set to true to return the list of streams in ascending order.
    #
    # @return [Types::ListStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsResponse#streams #streams} => Array&lt;Types::StreamSummary&gt;
    #   * {Types::ListStreamsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.streams #=> Array
    #   resp.streams[0].stream_id #=> String
    #   resp.streams[0].stream_arn #=> String
    #   resp.streams[0].stream_version #=> Integer
    #   resp.streams[0].description #=> String
    #   resp.next_token #=> String
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # Lists the tags (metadata) you have assigned to the resource.
    #
    # Requires permission to access the [ListTagsForResource][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # List targets for the specified policy.
    #
    # Requires permission to access the [ListTargetsForPolicy][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [String] :marker
    #   A marker used to get the next set of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListTargetsForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsForPolicyResponse#targets #targets} => Array&lt;String&gt;
    #   * {Types::ListTargetsForPolicyResponse#next_marker #next_marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_policy({
    #     policy_name: "PolicyName", # required
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0] #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_targets_for_policy(params = {})
    # @param [Hash] params ({})
    def list_targets_for_policy(params = {}, options = {})
      req = build_request(:list_targets_for_policy, params)
      req.send_request(options)
    end

    # Lists the targets (thing groups) associated with a given Device
    # Defender security profile.
    #
    # Requires permission to access the [ListTargetsForSecurityProfile][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The security profile.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListTargetsForSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsForSecurityProfileResponse#security_profile_targets #security_profile_targets} => Array&lt;Types::SecurityProfileTarget&gt;
    #   * {Types::ListTargetsForSecurityProfileResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_targets #=> Array
    #   resp.security_profile_targets[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_targets_for_security_profile(params = {})
    # @param [Hash] params ({})
    def list_targets_for_security_profile(params = {}, options = {})
      req = build_request(:list_targets_for_security_profile, params)
      req.send_request(options)
    end

    # List the thing groups in your account.
    #
    # Requires permission to access the [ListThingGroups][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :parent_group
    #   A filter that limits the results to those with the specified parent
    #   group.
    #
    # @option params [String] :name_prefix_filter
    #   A filter that limits the results to those with the specified name
    #   prefix.
    #
    # @option params [Boolean] :recursive
    #   If true, return child groups as well.
    #
    # @return [Types::ListThingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingGroupsResponse#thing_groups #thing_groups} => Array&lt;Types::GroupNameAndArn&gt;
    #   * {Types::ListThingGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     parent_group: "ThingGroupName",
    #     name_prefix_filter: "ThingGroupName",
    #     recursive: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_groups #=> Array
    #   resp.thing_groups[0].group_name #=> String
    #   resp.thing_groups[0].group_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_groups(params = {})
    # @param [Hash] params ({})
    def list_thing_groups(params = {}, options = {})
      req = build_request(:list_thing_groups, params)
      req.send_request(options)
    end

    # List the thing groups to which the specified thing belongs.
    #
    # Requires permission to access the [ListThingGroupsForThing][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The thing name.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListThingGroupsForThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingGroupsForThingResponse#thing_groups #thing_groups} => Array&lt;Types::GroupNameAndArn&gt;
    #   * {Types::ListThingGroupsForThingResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_groups_for_thing({
    #     thing_name: "ThingName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_groups #=> Array
    #   resp.thing_groups[0].group_name #=> String
    #   resp.thing_groups[0].group_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_groups_for_thing(params = {})
    # @param [Hash] params ({})
    def list_thing_groups_for_thing(params = {}, options = {})
      req = build_request(:list_thing_groups_for_thing, params)
      req.send_request(options)
    end

    # Lists the principals associated with the specified thing. A principal
    # can be X.509 certificates, IAM users, groups, and roles, Amazon
    # Cognito identities or federated identities.
    #
    # Requires permission to access the [ListThingPrincipals][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @return [Types::ListThingPrincipalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingPrincipalsResponse#principals #principals} => Array&lt;String&gt;
    #   * {Types::ListThingPrincipalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_principals({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     thing_name: "ThingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_principals(params = {})
    # @param [Hash] params ({})
    def list_thing_principals(params = {}, options = {})
      req = build_request(:list_thing_principals, params)
      req.send_request(options)
    end

    # Information about the thing registration tasks.
    #
    # @option params [required, String] :task_id
    #   The id of the task.
    #
    # @option params [required, String] :report_type
    #   The type of task report.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request.
    #
    # @return [Types::ListThingRegistrationTaskReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingRegistrationTaskReportsResponse#resource_links #resource_links} => Array&lt;String&gt;
    #   * {Types::ListThingRegistrationTaskReportsResponse#report_type #report_type} => String
    #   * {Types::ListThingRegistrationTaskReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_registration_task_reports({
    #     task_id: "TaskId", # required
    #     report_type: "ERRORS", # required, accepts ERRORS, RESULTS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_links #=> Array
    #   resp.resource_links[0] #=> String
    #   resp.report_type #=> String, one of "ERRORS", "RESULTS"
    #   resp.next_token #=> String
    #
    # @overload list_thing_registration_task_reports(params = {})
    # @param [Hash] params ({})
    def list_thing_registration_task_reports(params = {}, options = {})
      req = build_request(:list_thing_registration_task_reports, params)
      req.send_request(options)
    end

    # List bulk thing provisioning tasks.
    #
    # Requires permission to access the [ListThingRegistrationTasks][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :status
    #   The status of the bulk thing provisioning task.
    #
    # @return [Types::ListThingRegistrationTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingRegistrationTasksResponse#task_ids #task_ids} => Array&lt;String&gt;
    #   * {Types::ListThingRegistrationTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_registration_tasks({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "InProgress", # accepts InProgress, Completed, Failed, Cancelled, Cancelling
    #   })
    #
    # @example Response structure
    #
    #   resp.task_ids #=> Array
    #   resp.task_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_registration_tasks(params = {})
    # @param [Hash] params ({})
    def list_thing_registration_tasks(params = {}, options = {})
      req = build_request(:list_thing_registration_tasks, params)
      req.send_request(options)
    end

    # Lists the existing thing types.
    #
    # Requires permission to access the [ListThingTypes][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type.
    #
    # @return [Types::ListThingTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingTypesResponse#thing_types #thing_types} => Array&lt;Types::ThingTypeDefinition&gt;
    #   * {Types::ListThingTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_types({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     thing_type_name: "ThingTypeName",
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_types #=> Array
    #   resp.thing_types[0].thing_type_name #=> String
    #   resp.thing_types[0].thing_type_arn #=> String
    #   resp.thing_types[0].thing_type_properties.thing_type_description #=> String
    #   resp.thing_types[0].thing_type_properties.searchable_attributes #=> Array
    #   resp.thing_types[0].thing_type_properties.searchable_attributes[0] #=> String
    #   resp.thing_types[0].thing_type_metadata.deprecated #=> Boolean
    #   resp.thing_types[0].thing_type_metadata.deprecation_date #=> Time
    #   resp.thing_types[0].thing_type_metadata.creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_thing_types(params = {})
    # @param [Hash] params ({})
    def list_thing_types(params = {}, options = {})
      req = build_request(:list_thing_types, params)
      req.send_request(options)
    end

    # Lists your things. Use the **attributeName** and **attributeValue**
    # parameters to filter your things. For example, calling `ListThings`
    # with attributeName=Color and attributeValue=Red retrieves all things
    # in the registry that contain an attribute **Color** with the value
    # **Red**. For more information, see [List Things][1] from the *Amazon
    # Web Services IoT Core Developer Guide*.
    #
    # Requires permission to access the [ListThings][2] action.
    #
    # <note markdown="1"> You will not be charged for calling this API if an `Access denied`
    # error is returned. You will also not be charged if no attributes or
    # pagination token was provided in request and no pagination token and
    # no results were returned.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/thing-registry.html#list-things
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :attribute_name
    #   The attribute name used to search for things.
    #
    # @option params [String] :attribute_value
    #   The attribute value used to search for things.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type used to search for things.
    #
    # @option params [Boolean] :use_prefix_attribute_value
    #   When `true`, the action returns the thing resources with attribute
    #   values that start with the `attributeValue` provided.
    #
    #   When `false`, or not present, the action returns only the thing
    #   resources with attribute values that match the entire `attributeValue`
    #   provided.
    #
    # @return [Types::ListThingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingsResponse#things #things} => Array&lt;Types::ThingAttribute&gt;
    #   * {Types::ListThingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     attribute_name: "AttributeName",
    #     attribute_value: "AttributeValue",
    #     thing_type_name: "ThingTypeName",
    #     use_prefix_attribute_value: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0].thing_name #=> String
    #   resp.things[0].thing_type_name #=> String
    #   resp.things[0].thing_arn #=> String
    #   resp.things[0].attributes #=> Hash
    #   resp.things[0].attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.things[0].version #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_things(params = {})
    # @param [Hash] params ({})
    def list_things(params = {}, options = {})
      req = build_request(:list_things, params)
      req.send_request(options)
    end

    # Lists the things you have added to the given billing group.
    #
    # Requires permission to access the [ListThingsInBillingGroup][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :billing_group_name
    #   The name of the billing group.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request.
    #
    # @return [Types::ListThingsInBillingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingsInBillingGroupResponse#things #things} => Array&lt;String&gt;
    #   * {Types::ListThingsInBillingGroupResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things_in_billing_group({
    #     billing_group_name: "BillingGroupName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_things_in_billing_group(params = {})
    # @param [Hash] params ({})
    def list_things_in_billing_group(params = {}, options = {})
      req = build_request(:list_things_in_billing_group, params)
      req.send_request(options)
    end

    # Lists the things in the specified group.
    #
    # Requires permission to access the [ListThingsInThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The thing group name.
    #
    # @option params [Boolean] :recursive
    #   When true, list things in this thing group and in all child groups as
    #   well.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListThingsInThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingsInThingGroupResponse#things #things} => Array&lt;String&gt;
    #   * {Types::ListThingsInThingGroupResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things_in_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     recursive: false,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_things_in_thing_group(params = {})
    # @param [Hash] params ({})
    def list_things_in_thing_group(params = {}, options = {})
      req = build_request(:list_things_in_thing_group, params)
      req.send_request(options)
    end

    # Lists all the topic rule destinations in your Amazon Web Services
    # account.
    #
    # Requires permission to access the [ListTopicRuleDestinations][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @return [Types::ListTopicRuleDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicRuleDestinationsResponse#destination_summaries #destination_summaries} => Array&lt;Types::TopicRuleDestinationSummary&gt;
    #   * {Types::ListTopicRuleDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_rule_destinations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_summaries #=> Array
    #   resp.destination_summaries[0].arn #=> String
    #   resp.destination_summaries[0].status #=> String, one of "ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"
    #   resp.destination_summaries[0].created_at #=> Time
    #   resp.destination_summaries[0].last_updated_at #=> Time
    #   resp.destination_summaries[0].status_reason #=> String
    #   resp.destination_summaries[0].http_url_summary.confirmation_url #=> String
    #   resp.destination_summaries[0].vpc_destination_summary.subnet_ids #=> Array
    #   resp.destination_summaries[0].vpc_destination_summary.subnet_ids[0] #=> String
    #   resp.destination_summaries[0].vpc_destination_summary.security_groups #=> Array
    #   resp.destination_summaries[0].vpc_destination_summary.security_groups[0] #=> String
    #   resp.destination_summaries[0].vpc_destination_summary.vpc_id #=> String
    #   resp.destination_summaries[0].vpc_destination_summary.role_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_topic_rule_destinations(params = {})
    # @param [Hash] params ({})
    def list_topic_rule_destinations(params = {}, options = {})
      req = build_request(:list_topic_rule_destinations, params)
      req.send_request(options)
    end

    # Lists the rules for the specific topic.
    #
    # Requires permission to access the [ListTopicRules][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :topic
    #   The topic.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Boolean] :rule_disabled
    #   Specifies whether the rule is disabled.
    #
    # @return [Types::ListTopicRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicRulesResponse#rules #rules} => Array&lt;Types::TopicRuleListItem&gt;
    #   * {Types::ListTopicRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_rules({
    #     topic: "Topic",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     rule_disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].rule_name #=> String
    #   resp.rules[0].topic_pattern #=> String
    #   resp.rules[0].created_at #=> Time
    #   resp.rules[0].rule_disabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload list_topic_rules(params = {})
    # @param [Hash] params ({})
    def list_topic_rules(params = {}, options = {})
      req = build_request(:list_topic_rules, params)
      req.send_request(options)
    end

    # Lists logging levels.
    #
    # Requires permission to access the [ListV2LoggingLevels][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :target_type
    #   The type of resource for which you are configuring logging. Must be
    #   `THING_Group`.
    #
    # @option params [String] :next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListV2LoggingLevelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListV2LoggingLevelsResponse#log_target_configurations #log_target_configurations} => Array&lt;Types::LogTargetConfiguration&gt;
    #   * {Types::ListV2LoggingLevelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_v2_logging_levels({
    #     target_type: "DEFAULT", # accepts DEFAULT, THING_GROUP, CLIENT_ID, SOURCE_IP, PRINCIPAL_ID
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_target_configurations #=> Array
    #   resp.log_target_configurations[0].log_target.target_type #=> String, one of "DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"
    #   resp.log_target_configurations[0].log_target.target_name #=> String
    #   resp.log_target_configurations[0].log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.next_token #=> String
    #
    # @overload list_v2_logging_levels(params = {})
    # @param [Hash] params ({})
    def list_v2_logging_levels(params = {}, options = {})
      req = build_request(:list_v2_logging_levels, params)
      req.send_request(options)
    end

    # Lists the Device Defender security profile violations discovered
    # during the given time period. You can use filters to limit the results
    # to those alerts issued for a particular security profile, behavior, or
    # thing (device).
    #
    # Requires permission to access the [ListViolationEvents][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time for the alerts to be listed.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time for the alerts to be listed.
    #
    # @option params [String] :thing_name
    #   A filter to limit results to those alerts caused by the specified
    #   thing.
    #
    # @option params [String] :security_profile_name
    #   A filter to limit results to those alerts generated by the specified
    #   security profile.
    #
    # @option params [String] :behavior_criteria_type
    #   The criteria for a behavior.
    #
    # @option params [Boolean] :list_suppressed_alerts
    #   A list of all suppressed alerts.
    #
    # @option params [String] :verification_state
    #   The verification state of the violation (detect alarm).
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListViolationEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListViolationEventsResponse#violation_events #violation_events} => Array&lt;Types::ViolationEvent&gt;
    #   * {Types::ListViolationEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_violation_events({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     thing_name: "DeviceDefenderThingName",
    #     security_profile_name: "SecurityProfileName",
    #     behavior_criteria_type: "STATIC", # accepts STATIC, STATISTICAL, MACHINE_LEARNING
    #     list_suppressed_alerts: false,
    #     verification_state: "FALSE_POSITIVE", # accepts FALSE_POSITIVE, BENIGN_POSITIVE, TRUE_POSITIVE, UNKNOWN
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.violation_events #=> Array
    #   resp.violation_events[0].violation_id #=> String
    #   resp.violation_events[0].thing_name #=> String
    #   resp.violation_events[0].security_profile_name #=> String
    #   resp.violation_events[0].behavior.name #=> String
    #   resp.violation_events[0].behavior.metric #=> String
    #   resp.violation_events[0].behavior.metric_dimension.dimension_name #=> String
    #   resp.violation_events[0].behavior.metric_dimension.operator #=> String, one of "IN", "NOT_IN"
    #   resp.violation_events[0].behavior.criteria.comparison_operator #=> String, one of "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"
    #   resp.violation_events[0].behavior.criteria.value.count #=> Integer
    #   resp.violation_events[0].behavior.criteria.value.cidrs #=> Array
    #   resp.violation_events[0].behavior.criteria.value.cidrs[0] #=> String
    #   resp.violation_events[0].behavior.criteria.value.ports #=> Array
    #   resp.violation_events[0].behavior.criteria.value.ports[0] #=> Integer
    #   resp.violation_events[0].behavior.criteria.value.number #=> Float
    #   resp.violation_events[0].behavior.criteria.value.numbers #=> Array
    #   resp.violation_events[0].behavior.criteria.value.numbers[0] #=> Float
    #   resp.violation_events[0].behavior.criteria.value.strings #=> Array
    #   resp.violation_events[0].behavior.criteria.value.strings[0] #=> String
    #   resp.violation_events[0].behavior.criteria.duration_seconds #=> Integer
    #   resp.violation_events[0].behavior.criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.violation_events[0].behavior.criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.violation_events[0].behavior.criteria.statistical_threshold.statistic #=> String
    #   resp.violation_events[0].behavior.criteria.ml_detection_config.confidence_level #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.violation_events[0].behavior.suppress_alerts #=> Boolean
    #   resp.violation_events[0].metric_value.count #=> Integer
    #   resp.violation_events[0].metric_value.cidrs #=> Array
    #   resp.violation_events[0].metric_value.cidrs[0] #=> String
    #   resp.violation_events[0].metric_value.ports #=> Array
    #   resp.violation_events[0].metric_value.ports[0] #=> Integer
    #   resp.violation_events[0].metric_value.number #=> Float
    #   resp.violation_events[0].metric_value.numbers #=> Array
    #   resp.violation_events[0].metric_value.numbers[0] #=> Float
    #   resp.violation_events[0].metric_value.strings #=> Array
    #   resp.violation_events[0].metric_value.strings[0] #=> String
    #   resp.violation_events[0].violation_event_additional_info.confidence_level #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.violation_events[0].violation_event_type #=> String, one of "in-alarm", "alarm-cleared", "alarm-invalidated"
    #   resp.violation_events[0].verification_state #=> String, one of "FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"
    #   resp.violation_events[0].verification_state_description #=> String
    #   resp.violation_events[0].violation_event_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_violation_events(params = {})
    # @param [Hash] params ({})
    def list_violation_events(params = {}, options = {})
      req = build_request(:list_violation_events, params)
      req.send_request(options)
    end

    # Set a verification state and provide a description of that
    # verification state on a violation (detect alarm).
    #
    # @option params [required, String] :violation_id
    #   The violation ID.
    #
    # @option params [required, String] :verification_state
    #   The verification state of the violation.
    #
    # @option params [String] :verification_state_description
    #   The description of the verification state of the violation (detect
    #   alarm).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_verification_state_on_violation({
    #     violation_id: "ViolationId", # required
    #     verification_state: "FALSE_POSITIVE", # required, accepts FALSE_POSITIVE, BENIGN_POSITIVE, TRUE_POSITIVE, UNKNOWN
    #     verification_state_description: "VerificationStateDescription",
    #   })
    #
    # @overload put_verification_state_on_violation(params = {})
    # @param [Hash] params ({})
    def put_verification_state_on_violation(params = {}, options = {})
      req = build_request(:put_verification_state_on_violation, params)
      req.send_request(options)
    end

    # Registers a CA certificate with Amazon Web Services IoT Core. There is
    # no limit to the number of CA certificates you can register in your
    # Amazon Web Services account. You can register up to 10 CA certificates
    # with the same `CA subject field` per Amazon Web Services account.
    #
    # Requires permission to access the [RegisterCACertificate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :ca_certificate
    #   The CA certificate.
    #
    # @option params [String] :verification_certificate
    #   The private key verification certificate. If `certificateMode` is
    #   `SNI_ONLY`, the `verificationCertificate` field must be empty. If
    #   `certificateMode` is `DEFAULT` or not provided, the
    #   `verificationCertificate` field must not be empty.
    #
    # @option params [Boolean] :set_as_active
    #   A boolean value that specifies if the CA certificate is set to active.
    #
    #   Valid values: `ACTIVE | INACTIVE`
    #
    # @option params [Boolean] :allow_auto_registration
    #   Allows this CA certificate to be used for auto registration of device
    #   certificates.
    #
    # @option params [Types::RegistrationConfig] :registration_config
    #   Information about the registration configuration.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the CA certificate.
    #
    #   <note markdown="1"> For URI Request parameters use format:
    #   ...key1=value1&amp;key2=value2...
    #
    #    For the CLI command-line parameter use format: &amp;&amp;tags
    #   "key1=value1&amp;key2=value2..."
    #
    #    For the cli-input-json file use format: "tags":
    #   "key1=value1&amp;key2=value2..."
    #
    #    </note>
    #
    # @option params [String] :certificate_mode
    #   Describes the certificate mode in which the Certificate Authority (CA)
    #   will be registered. If the `verificationCertificate` field is not
    #   provided, set `certificateMode` to be `SNI_ONLY`. If the
    #   `verificationCertificate` field is provided, set `certificateMode` to
    #   be `DEFAULT`. When `certificateMode` is not provided, it defaults to
    #   `DEFAULT`. All the device certificates that are registered using this
    #   CA will be registered in the same certificate mode as the CA. For more
    #   information about certificate mode for device certificates, see [
    #   certificate mode][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode
    #
    # @return [Types::RegisterCACertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCACertificateResponse#certificate_arn #certificate_arn} => String
    #   * {Types::RegisterCACertificateResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_ca_certificate({
    #     ca_certificate: "CertificatePem", # required
    #     verification_certificate: "CertificatePem",
    #     set_as_active: false,
    #     allow_auto_registration: false,
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #       template_name: "TemplateName",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     certificate_mode: "DEFAULT", # accepts DEFAULT, SNI_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #
    # @overload register_ca_certificate(params = {})
    # @param [Hash] params ({})
    def register_ca_certificate(params = {}, options = {})
      req = build_request(:register_ca_certificate, params)
      req.send_request(options)
    end

    # Registers a device certificate with IoT in the same [certificate
    # mode][1] as the signing CA. If you have more than one CA certificate
    # that has the same subject field, you must specify the CA certificate
    # that was used to sign the device certificate being registered.
    #
    # Requires permission to access the [RegisterCertificate][2] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode
    # [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_pem
    #   The certificate data, in PEM format.
    #
    # @option params [String] :ca_certificate_pem
    #   The CA certificate used to sign the device certificate being
    #   registered.
    #
    # @option params [Boolean] :set_as_active
    #   A boolean value that specifies if the certificate is set to active.
    #
    #   Valid values: `ACTIVE | INACTIVE`
    #
    # @option params [String] :status
    #   The status of the register certificate request. Valid values that you
    #   can use include `ACTIVE`, `INACTIVE`, and `REVOKED`.
    #
    # @return [Types::RegisterCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCertificateResponse#certificate_arn #certificate_arn} => String
    #   * {Types::RegisterCertificateResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate({
    #     certificate_pem: "CertificatePem", # required
    #     ca_certificate_pem: "CertificatePem",
    #     set_as_active: false,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #
    # @overload register_certificate(params = {})
    # @param [Hash] params ({})
    def register_certificate(params = {}, options = {})
      req = build_request(:register_certificate, params)
      req.send_request(options)
    end

    # Register a certificate that does not have a certificate authority
    # (CA). For supported certificates, consult [ Certificate signing
    # algorithms supported by IoT][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms
    #
    # @option params [required, String] :certificate_pem
    #   The certificate data, in PEM format.
    #
    # @option params [String] :status
    #   The status of the register certificate request.
    #
    # @return [Types::RegisterCertificateWithoutCAResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCertificateWithoutCAResponse#certificate_arn #certificate_arn} => String
    #   * {Types::RegisterCertificateWithoutCAResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate_without_ca({
    #     certificate_pem: "CertificatePem", # required
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #
    # @overload register_certificate_without_ca(params = {})
    # @param [Hash] params ({})
    def register_certificate_without_ca(params = {}, options = {})
      req = build_request(:register_certificate_without_ca, params)
      req.send_request(options)
    end

    # Provisions a thing in the device registry. RegisterThing calls other
    # IoT control plane APIs. These calls might exceed your account level [
    # IoT Throttling Limits][1] and cause throttle errors. Please contact
    # [Amazon Web Services Customer Support][2] to raise your throttling
    # limits if necessary.
    #
    # Requires permission to access the [RegisterThing][3] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot
    # [2]: https://console.aws.amazon.com/support/home
    # [3]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_body
    #   The provisioning template. See [Provisioning Devices That Have Device
    #   Certificates][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/provision-w-cert.html
    #
    # @option params [Hash<String,String>] :parameters
    #   The parameters for provisioning a thing. See [Provisioning
    #   Templates][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html
    #
    # @return [Types::RegisterThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterThingResponse#certificate_pem #certificate_pem} => String
    #   * {Types::RegisterThingResponse#resource_arns #resource_arns} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_thing({
    #     template_body: "TemplateBody", # required
    #     parameters: {
    #       "Parameter" => "Value",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_pem #=> String
    #   resp.resource_arns #=> Hash
    #   resp.resource_arns["ResourceLogicalId"] #=> String
    #
    # @overload register_thing(params = {})
    # @param [Hash] params ({})
    def register_thing(params = {}, options = {})
      req = build_request(:register_thing, params)
      req.send_request(options)
    end

    # Rejects a pending certificate transfer. After IoT rejects a
    # certificate transfer, the certificate status changes from
    # **PENDING\_TRANSFER** to **INACTIVE**.
    #
    # To check for pending certificate transfers, call ListCertificates to
    # enumerate your certificates.
    #
    # This operation can only be called by the transfer destination. After
    # it is called, the certificate will be returned to the source's
    # account in the INACTIVE state.
    #
    # Requires permission to access the [RejectCertificateTransfer][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @option params [String] :reject_reason
    #   The reason the certificate transfer was rejected.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_certificate_transfer({
    #     certificate_id: "CertificateId", # required
    #     reject_reason: "Message",
    #   })
    #
    # @overload reject_certificate_transfer(params = {})
    # @param [Hash] params ({})
    def reject_certificate_transfer(params = {}, options = {})
      req = build_request(:reject_certificate_transfer, params)
      req.send_request(options)
    end

    # Removes the given thing from the billing group.
    #
    # Requires permission to access the [RemoveThingFromBillingGroup][1]
    # action.
    #
    # <note markdown="1"> This call is asynchronous. It might take several seconds for the
    # detachment to propagate.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :billing_group_name
    #   The name of the billing group.
    #
    # @option params [String] :billing_group_arn
    #   The ARN of the billing group.
    #
    # @option params [String] :thing_name
    #   The name of the thing to be removed from the billing group.
    #
    # @option params [String] :thing_arn
    #   The ARN of the thing to be removed from the billing group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_thing_from_billing_group({
    #     billing_group_name: "BillingGroupName",
    #     billing_group_arn: "BillingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #   })
    #
    # @overload remove_thing_from_billing_group(params = {})
    # @param [Hash] params ({})
    def remove_thing_from_billing_group(params = {}, options = {})
      req = build_request(:remove_thing_from_billing_group, params)
      req.send_request(options)
    end

    # Remove the specified thing from the specified group.
    #
    # You must specify either a `thingGroupArn` or a `thingGroupName` to
    # identify the thing group and either a `thingArn` or a `thingName` to
    # identify the thing to remove from the thing group.
    #
    # Requires permission to access the [RemoveThingFromThingGroup][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :thing_group_name
    #   The group name.
    #
    # @option params [String] :thing_group_arn
    #   The group ARN.
    #
    # @option params [String] :thing_name
    #   The name of the thing to remove from the group.
    #
    # @option params [String] :thing_arn
    #   The ARN of the thing to remove from the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_thing_from_thing_group({
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #   })
    #
    # @overload remove_thing_from_thing_group(params = {})
    # @param [Hash] params ({})
    def remove_thing_from_thing_group(params = {}, options = {})
      req = build_request(:remove_thing_from_thing_group, params)
      req.send_request(options)
    end

    # Replaces the rule. You must specify all parameters for the new rule.
    # Creating rules is an administrator-level action. Any user who has
    # permission to create rules will be able to access data processed by
    # the rule.
    #
    # Requires permission to access the [ReplaceTopicRule][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @option params [required, Types::TopicRulePayload] :topic_rule_payload
    #   The rule payload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_topic_rule({
    #     rule_name: "RuleName", # required
    #     topic_rule_payload: { # required
    #       sql: "SQL", # required
    #       description: "Description",
    #       actions: [ # required
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING", # accepts STRING, NUMBER
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING", # accepts STRING, NUMBER
    #             payload_field: "PayloadField",
    #           },
    #           dynamo_d_bv_2: {
    #             role_arn: "AwsArn", # required
    #             put_item: { # required
    #               table_name: "TableName", # required
    #             },
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW", # accepts RAW, JSON
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base_64: false,
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey",
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #             qos: 1,
    #             headers: {
    #               payload_format_indicator: "PayloadFormatIndicator",
    #               content_type: "ContentType",
    #               response_topic: "ResponseTopic",
    #               correlation_data: "CorrelationData",
    #               message_expiry: "MessageExpiry",
    #               user_properties: [
    #                 {
    #                   key: "UserPropertyKey", # required
    #                   value: "UserPropertyValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             batch_mode: false,
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "String", # required
    #             metric_name: "String", # required
    #             metric_value: "String", # required
    #             metric_unit: "String", # required
    #             metric_timestamp: "String",
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: "AwsArn", # required
    #             log_group_name: "LogGroupName", # required
    #             batch_mode: false,
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #           iot_analytics: {
    #             channel_arn: "AwsArn",
    #             channel_name: "ChannelName",
    #             batch_mode: false,
    #             role_arn: "AwsArn",
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             message_id: "MessageId",
    #             batch_mode: false,
    #             role_arn: "AwsArn", # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [ # required
    #               {
    #                 entry_id: "AssetPropertyEntryId",
    #                 asset_id: "AssetId",
    #                 property_id: "AssetPropertyId",
    #                 property_alias: "AssetPropertyAlias",
    #                 property_values: [ # required
    #                   {
    #                     value: { # required
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue",
    #                     },
    #                     timestamp: { # required
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                     },
    #                     quality: "AssetPropertyQuality",
    #                   },
    #                 ],
    #               },
    #             ],
    #             role_arn: "AwsArn", # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #           timestream: {
    #             role_arn: "AwsArn", # required
    #             database_name: "TimestreamDatabaseName", # required
    #             table_name: "TimestreamTableName", # required
    #             dimensions: [ # required
    #               {
    #                 name: "TimestreamDimensionName", # required
    #                 value: "TimestreamDimensionValue", # required
    #               },
    #             ],
    #             timestamp: {
    #               value: "TimestreamTimestampValue", # required
    #               unit: "TimestreamTimestampUnit", # required
    #             },
    #           },
    #           http: {
    #             url: "Url", # required
    #             confirmation_url: "Url",
    #             headers: [
    #               {
    #                 key: "HeaderKey", # required
    #                 value: "HeaderValue", # required
    #               },
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: "SigningRegion", # required
    #                 service_name: "ServiceName", # required
    #                 role_arn: "AwsArn", # required
    #               },
    #             },
    #           },
    #           kafka: {
    #             destination_arn: "AwsArn", # required
    #             topic: "String", # required
    #             key: "String",
    #             partition: "String",
    #             client_properties: { # required
    #               "String" => "String",
    #             },
    #           },
    #           open_search: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           location: {
    #             role_arn: "AwsArn", # required
    #             tracker_name: "String", # required
    #             device_id: "String", # required
    #             timestamp: {
    #               value: "String", # required
    #               unit: "String",
    #             },
    #             latitude: "String", # required
    #             longitude: "String", # required
    #           },
    #         },
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING", # accepts STRING, NUMBER
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING", # accepts STRING, NUMBER
    #           payload_field: "PayloadField",
    #         },
    #         dynamo_d_bv_2: {
    #           role_arn: "AwsArn", # required
    #           put_item: { # required
    #             table_name: "TableName", # required
    #           },
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW", # accepts RAW, JSON
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base_64: false,
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey",
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #           qos: 1,
    #           headers: {
    #             payload_format_indicator: "PayloadFormatIndicator",
    #             content_type: "ContentType",
    #             response_topic: "ResponseTopic",
    #             correlation_data: "CorrelationData",
    #             message_expiry: "MessageExpiry",
    #             user_properties: [
    #               {
    #                 key: "UserPropertyKey", # required
    #                 value: "UserPropertyValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #           batch_mode: false,
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "String", # required
    #           metric_name: "String", # required
    #           metric_value: "String", # required
    #           metric_unit: "String", # required
    #           metric_timestamp: "String",
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         cloudwatch_logs: {
    #           role_arn: "AwsArn", # required
    #           log_group_name: "LogGroupName", # required
    #           batch_mode: false,
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #         iot_analytics: {
    #           channel_arn: "AwsArn",
    #           channel_name: "ChannelName",
    #           batch_mode: false,
    #           role_arn: "AwsArn",
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           message_id: "MessageId",
    #           batch_mode: false,
    #           role_arn: "AwsArn", # required
    #         },
    #         iot_site_wise: {
    #           put_asset_property_value_entries: [ # required
    #             {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_values: [ # required
    #                 {
    #                   value: { # required
    #                     string_value: "AssetPropertyStringValue",
    #                     integer_value: "AssetPropertyIntegerValue",
    #                     double_value: "AssetPropertyDoubleValue",
    #                     boolean_value: "AssetPropertyBooleanValue",
    #                   },
    #                   timestamp: { # required
    #                     time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                     offset_in_nanos: "AssetPropertyOffsetInNanos",
    #                   },
    #                   quality: "AssetPropertyQuality",
    #                 },
    #               ],
    #             },
    #           ],
    #           role_arn: "AwsArn", # required
    #         },
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #         timestream: {
    #           role_arn: "AwsArn", # required
    #           database_name: "TimestreamDatabaseName", # required
    #           table_name: "TimestreamTableName", # required
    #           dimensions: [ # required
    #             {
    #               name: "TimestreamDimensionName", # required
    #               value: "TimestreamDimensionValue", # required
    #             },
    #           ],
    #           timestamp: {
    #             value: "TimestreamTimestampValue", # required
    #             unit: "TimestreamTimestampUnit", # required
    #           },
    #         },
    #         http: {
    #           url: "Url", # required
    #           confirmation_url: "Url",
    #           headers: [
    #             {
    #               key: "HeaderKey", # required
    #               value: "HeaderValue", # required
    #             },
    #           ],
    #           auth: {
    #             sigv4: {
    #               signing_region: "SigningRegion", # required
    #               service_name: "ServiceName", # required
    #               role_arn: "AwsArn", # required
    #             },
    #           },
    #         },
    #         kafka: {
    #           destination_arn: "AwsArn", # required
    #           topic: "String", # required
    #           key: "String",
    #           partition: "String",
    #           client_properties: { # required
    #             "String" => "String",
    #           },
    #         },
    #         open_search: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         location: {
    #           role_arn: "AwsArn", # required
    #           tracker_name: "String", # required
    #           device_id: "String", # required
    #           timestamp: {
    #             value: "String", # required
    #             unit: "String",
    #           },
    #           latitude: "String", # required
    #           longitude: "String", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @overload replace_topic_rule(params = {})
    # @param [Hash] params ({})
    def replace_topic_rule(params = {}, options = {})
      req = build_request(:replace_topic_rule, params)
      req.send_request(options)
    end

    # The query search index.
    #
    # Requires permission to access the [SearchIndex][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :index_name
    #   The search index name.
    #
    # @option params [required, String] :query_string
    #   The search query string. For more information about the search query
    #   syntax, see [Query syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or `null` if there are
    #   no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :query_version
    #   The query version.
    #
    # @return [Types::SearchIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchIndexResponse#next_token #next_token} => String
    #   * {Types::SearchIndexResponse#things #things} => Array&lt;Types::ThingDocument&gt;
    #   * {Types::SearchIndexResponse#thing_groups #thing_groups} => Array&lt;Types::ThingGroupDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_index({
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     query_version: "QueryVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.things #=> Array
    #   resp.things[0].thing_name #=> String
    #   resp.things[0].thing_id #=> String
    #   resp.things[0].thing_type_name #=> String
    #   resp.things[0].thing_group_names #=> Array
    #   resp.things[0].thing_group_names[0] #=> String
    #   resp.things[0].attributes #=> Hash
    #   resp.things[0].attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.things[0].shadow #=> String
    #   resp.things[0].device_defender #=> String
    #   resp.things[0].connectivity.connected #=> Boolean
    #   resp.things[0].connectivity.timestamp #=> Integer
    #   resp.things[0].connectivity.disconnect_reason #=> String
    #   resp.thing_groups #=> Array
    #   resp.thing_groups[0].thing_group_name #=> String
    #   resp.thing_groups[0].thing_group_id #=> String
    #   resp.thing_groups[0].thing_group_description #=> String
    #   resp.thing_groups[0].attributes #=> Hash
    #   resp.thing_groups[0].attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.thing_groups[0].parent_group_names #=> Array
    #   resp.thing_groups[0].parent_group_names[0] #=> String
    #
    # @overload search_index(params = {})
    # @param [Hash] params ({})
    def search_index(params = {}, options = {})
      req = build_request(:search_index, params)
      req.send_request(options)
    end

    # Sets the default authorizer. This will be used if a websocket
    # connection is made without specifying an authorizer.
    #
    # Requires permission to access the [SetDefaultAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :authorizer_name
    #   The authorizer name.
    #
    # @return [Types::SetDefaultAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetDefaultAuthorizerResponse#authorizer_name #authorizer_name} => String
    #   * {Types::SetDefaultAuthorizerResponse#authorizer_arn #authorizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_name #=> String
    #   resp.authorizer_arn #=> String
    #
    # @overload set_default_authorizer(params = {})
    # @param [Hash] params ({})
    def set_default_authorizer(params = {}, options = {})
      req = build_request(:set_default_authorizer, params)
      req.send_request(options)
    end

    # Sets the specified version of the specified policy as the policy's
    # default (operative) version. This action affects all certificates to
    # which the policy is attached. To list the principals the policy is
    # attached to, use the ListPrincipalPolicies action.
    #
    # Requires permission to access the [SetDefaultPolicyVersion][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :policy_version_id
    #   The policy version ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   })
    #
    # @overload set_default_policy_version(params = {})
    # @param [Hash] params ({})
    def set_default_policy_version(params = {}, options = {})
      req = build_request(:set_default_policy_version, params)
      req.send_request(options)
    end

    # Sets the logging options.
    #
    # NOTE: use of this command is not recommended. Use
    # `SetV2LoggingOptions` instead.
    #
    # Requires permission to access the [SetLoggingOptions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Types::LoggingOptionsPayload] :logging_options_payload
    #   The logging options payload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_logging_options({
    #     logging_options_payload: { # required
    #       role_arn: "AwsArn", # required
    #       log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #     },
    #   })
    #
    # @overload set_logging_options(params = {})
    # @param [Hash] params ({})
    def set_logging_options(params = {}, options = {})
      req = build_request(:set_logging_options, params)
      req.send_request(options)
    end

    # Sets the logging level.
    #
    # Requires permission to access the [SetV2LoggingLevel][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Types::LogTarget] :log_target
    #   The log target.
    #
    # @option params [required, String] :log_level
    #   The log level.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_v2_logging_level({
    #     log_target: { # required
    #       target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP, CLIENT_ID, SOURCE_IP, PRINCIPAL_ID
    #       target_name: "LogTargetName",
    #     },
    #     log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #   })
    #
    # @overload set_v2_logging_level(params = {})
    # @param [Hash] params ({})
    def set_v2_logging_level(params = {}, options = {})
      req = build_request(:set_v2_logging_level, params)
      req.send_request(options)
    end

    # Sets the logging options for the V2 logging service.
    #
    # Requires permission to access the [SetV2LoggingOptions][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :role_arn
    #   The ARN of the role that allows IoT to write to Cloudwatch logs.
    #
    # @option params [String] :default_log_level
    #   The default logging level.
    #
    # @option params [Boolean] :disable_all_logs
    #   If true all logs are disabled. The default is false.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_v2_logging_options({
    #     role_arn: "AwsArn",
    #     default_log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #     disable_all_logs: false,
    #   })
    #
    # @overload set_v2_logging_options(params = {})
    # @param [Hash] params ({})
    def set_v2_logging_options(params = {}, options = {})
      req = build_request(:set_v2_logging_options, params)
      req.send_request(options)
    end

    # Starts a task that applies a set of mitigation actions to the
    # specified target.
    #
    # Requires permission to access the [StartAuditMitigationActionsTask][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   A unique identifier for the task. You can use this identifier to check
    #   the status of the task or to cancel it.
    #
    # @option params [required, Types::AuditMitigationActionsTaskTarget] :target
    #   Specifies the audit findings to which the mitigation actions are
    #   applied. You can apply them to a type of audit check, to all findings
    #   from an audit, or to a specific set of findings.
    #
    # @option params [required, Hash<String,Array>] :audit_check_to_actions_mapping
    #   For an audit check, specifies which mitigation actions to apply. Those
    #   actions must be defined in your Amazon Web Services accounts.
    #
    # @option params [required, String] :client_request_token
    #   Each audit mitigation task must have a unique client request token. If
    #   you try to start a new task with the same token as a task that already
    #   exists, an exception occurs. If you omit this value, a unique client
    #   request token is generated automatically.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartAuditMitigationActionsTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAuditMitigationActionsTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_audit_mitigation_actions_task({
    #     task_id: "MitigationActionsTaskId", # required
    #     target: { # required
    #       audit_task_id: "AuditTaskId",
    #       finding_ids: ["FindingId"],
    #       audit_check_to_reason_code_filter: {
    #         "AuditCheckName" => ["ReasonForNonComplianceCode"],
    #       },
    #     },
    #     audit_check_to_actions_mapping: { # required
    #       "AuditCheckName" => ["MitigationActionName"],
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @overload start_audit_mitigation_actions_task(params = {})
    # @param [Hash] params ({})
    def start_audit_mitigation_actions_task(params = {}, options = {})
      req = build_request(:start_audit_mitigation_actions_task, params)
      req.send_request(options)
    end

    # Starts a Device Defender ML Detect mitigation actions task.
    #
    # Requires permission to access the
    # [StartDetectMitigationActionsTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The unique identifier of the task.
    #
    # @option params [required, Types::DetectMitigationActionsTaskTarget] :target
    #   Specifies the ML Detect findings to which the mitigation actions are
    #   applied.
    #
    # @option params [required, Array<String>] :actions
    #   The actions to be performed when a device has unexpected behavior.
    #
    # @option params [Types::ViolationEventOccurrenceRange] :violation_event_occurrence_range
    #   Specifies the time period of which violation events occurred between.
    #
    # @option params [Boolean] :include_only_active_violations
    #   Specifies to list only active violations.
    #
    # @option params [Boolean] :include_suppressed_alerts
    #   Specifies to include suppressed alerts.
    #
    # @option params [required, String] :client_request_token
    #   Each mitigation action task must have a unique client request token.
    #   If you try to create a new task with the same token as a task that
    #   already exists, an exception occurs. If you omit this value, Amazon
    #   Web Services SDKs will automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartDetectMitigationActionsTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDetectMitigationActionsTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_detect_mitigation_actions_task({
    #     task_id: "MitigationActionsTaskId", # required
    #     target: { # required
    #       violation_ids: ["ViolationId"],
    #       security_profile_name: "SecurityProfileName",
    #       behavior_name: "BehaviorName",
    #     },
    #     actions: ["MitigationActionName"], # required
    #     violation_event_occurrence_range: {
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     include_only_active_violations: false,
    #     include_suppressed_alerts: false,
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @overload start_detect_mitigation_actions_task(params = {})
    # @param [Hash] params ({})
    def start_detect_mitigation_actions_task(params = {}, options = {})
      req = build_request(:start_detect_mitigation_actions_task, params)
      req.send_request(options)
    end

    # Starts an on-demand Device Defender audit.
    #
    # Requires permission to access the [StartOnDemandAuditTask][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Array<String>] :target_check_names
    #   Which checks are performed during the audit. The checks you specify
    #   must be enabled for your account or an exception occurs. Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or `UpdateAccountAuditConfiguration`
    #   to select which checks are enabled.
    #
    # @return [Types::StartOnDemandAuditTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOnDemandAuditTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_audit_task({
    #     target_check_names: ["AuditCheckName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @overload start_on_demand_audit_task(params = {})
    # @param [Hash] params ({})
    def start_on_demand_audit_task(params = {}, options = {})
      req = build_request(:start_on_demand_audit_task, params)
      req.send_request(options)
    end

    # Creates a bulk thing provisioning task.
    #
    # Requires permission to access the [StartThingRegistrationTask][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_body
    #   The provisioning template.
    #
    # @option params [required, String] :input_file_bucket
    #   The S3 bucket that contains the input file.
    #
    # @option params [required, String] :input_file_key
    #   The name of input file within the S3 bucket. This file contains a
    #   newline delimited JSON file. Each line contains the parameter values
    #   to provision one device (thing).
    #
    # @option params [required, String] :role_arn
    #   The IAM role ARN that grants permission the input file.
    #
    # @return [Types::StartThingRegistrationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartThingRegistrationTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_thing_registration_task({
    #     template_body: "TemplateBody", # required
    #     input_file_bucket: "RegistryS3BucketName", # required
    #     input_file_key: "RegistryS3KeyName", # required
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @overload start_thing_registration_task(params = {})
    # @param [Hash] params ({})
    def start_thing_registration_task(params = {}, options = {})
      req = build_request(:start_thing_registration_task, params)
      req.send_request(options)
    end

    # Cancels a bulk thing provisioning task.
    #
    # Requires permission to access the [StopThingRegistrationTask][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :task_id
    #   The bulk thing provisioning task ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_thing_registration_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @overload stop_thing_registration_task(params = {})
    # @param [Hash] params ({})
    def stop_thing_registration_task(params = {}, options = {})
      req = build_request(:stop_thing_registration_task, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # which can be used to manage a resource.
    #
    # Requires permission to access the [TagResource][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The new or modified tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
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

    # Tests if a specified principal is authorized to perform an IoT action
    # on a specified resource. Use this to test and debug the authorization
    # behavior of devices that connect to the IoT device gateway.
    #
    # Requires permission to access the [TestAuthorization][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :principal
    #   The principal. Valid principals are CertificateArn
    #   (arn:aws:iot:*region*:*accountId*:cert/*certificateId*), thingGroupArn
    #   (arn:aws:iot:*region*:*accountId*:thinggroup/*groupName*) and
    #   CognitoId (*region*:*id*).
    #
    # @option params [String] :cognito_identity_pool_id
    #   The Cognito identity pool ID.
    #
    # @option params [required, Array<Types::AuthInfo>] :auth_infos
    #   A list of authorization info objects. Simulating authorization will
    #   create a response for each `authInfo` object in the list.
    #
    # @option params [String] :client_id
    #   The MQTT client ID.
    #
    # @option params [Array<String>] :policy_names_to_add
    #   When testing custom authorization, the policies specified here are
    #   treated as if they are attached to the principal being authorized.
    #
    # @option params [Array<String>] :policy_names_to_skip
    #   When testing custom authorization, the policies specified here are
    #   treated as if they are not attached to the principal being authorized.
    #
    # @return [Types::TestAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestAuthorizationResponse#auth_results #auth_results} => Array&lt;Types::AuthResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_authorization({
    #     principal: "Principal",
    #     cognito_identity_pool_id: "CognitoIdentityPoolId",
    #     auth_infos: [ # required
    #       {
    #         action_type: "PUBLISH", # accepts PUBLISH, SUBSCRIBE, RECEIVE, CONNECT
    #         resources: ["Resource"], # required
    #       },
    #     ],
    #     client_id: "ClientId",
    #     policy_names_to_add: ["PolicyName"],
    #     policy_names_to_skip: ["PolicyName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_results #=> Array
    #   resp.auth_results[0].auth_info.action_type #=> String, one of "PUBLISH", "SUBSCRIBE", "RECEIVE", "CONNECT"
    #   resp.auth_results[0].auth_info.resources #=> Array
    #   resp.auth_results[0].auth_info.resources[0] #=> String
    #   resp.auth_results[0].allowed.policies #=> Array
    #   resp.auth_results[0].allowed.policies[0].policy_name #=> String
    #   resp.auth_results[0].allowed.policies[0].policy_arn #=> String
    #   resp.auth_results[0].denied.implicit_deny.policies #=> Array
    #   resp.auth_results[0].denied.implicit_deny.policies[0].policy_name #=> String
    #   resp.auth_results[0].denied.implicit_deny.policies[0].policy_arn #=> String
    #   resp.auth_results[0].denied.explicit_deny.policies #=> Array
    #   resp.auth_results[0].denied.explicit_deny.policies[0].policy_name #=> String
    #   resp.auth_results[0].denied.explicit_deny.policies[0].policy_arn #=> String
    #   resp.auth_results[0].auth_decision #=> String, one of "ALLOWED", "EXPLICIT_DENY", "IMPLICIT_DENY"
    #   resp.auth_results[0].missing_context_values #=> Array
    #   resp.auth_results[0].missing_context_values[0] #=> String
    #
    # @overload test_authorization(params = {})
    # @param [Hash] params ({})
    def test_authorization(params = {}, options = {})
      req = build_request(:test_authorization, params)
      req.send_request(options)
    end

    # Tests a custom authorization behavior by invoking a specified custom
    # authorizer. Use this to test and debug the custom authorization
    # behavior of devices that connect to the IoT device gateway.
    #
    # Requires permission to access the [TestInvokeAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :authorizer_name
    #   The custom authorizer name.
    #
    # @option params [String] :token
    #   The token returned by your custom authentication service.
    #
    # @option params [String] :token_signature
    #   The signature made with the token and your custom authentication
    #   service's private key. This value must be Base-64-encoded.
    #
    # @option params [Types::HttpContext] :http_context
    #   Specifies a test HTTP authorization request.
    #
    # @option params [Types::MqttContext] :mqtt_context
    #   Specifies a test MQTT authorization request.
    #
    # @option params [Types::TlsContext] :tls_context
    #   Specifies a test TLS authorization request.
    #
    # @return [Types::TestInvokeAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestInvokeAuthorizerResponse#is_authenticated #is_authenticated} => Boolean
    #   * {Types::TestInvokeAuthorizerResponse#principal_id #principal_id} => String
    #   * {Types::TestInvokeAuthorizerResponse#policy_documents #policy_documents} => Array&lt;String&gt;
    #   * {Types::TestInvokeAuthorizerResponse#refresh_after_in_seconds #refresh_after_in_seconds} => Integer
    #   * {Types::TestInvokeAuthorizerResponse#disconnect_after_in_seconds #disconnect_after_in_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #     token: "Token",
    #     token_signature: "TokenSignature",
    #     http_context: {
    #       headers: {
    #         "HttpHeaderName" => "HttpHeaderValue",
    #       },
    #       query_string: "HttpQueryString",
    #     },
    #     mqtt_context: {
    #       username: "MqttUsername",
    #       password: "data",
    #       client_id: "MqttClientId",
    #     },
    #     tls_context: {
    #       server_name: "ServerName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.is_authenticated #=> Boolean
    #   resp.principal_id #=> String
    #   resp.policy_documents #=> Array
    #   resp.policy_documents[0] #=> String
    #   resp.refresh_after_in_seconds #=> Integer
    #   resp.disconnect_after_in_seconds #=> Integer
    #
    # @overload test_invoke_authorizer(params = {})
    # @param [Hash] params ({})
    def test_invoke_authorizer(params = {}, options = {})
      req = build_request(:test_invoke_authorizer, params)
      req.send_request(options)
    end

    # Transfers the specified certificate to the specified Amazon Web
    # Services account.
    #
    # Requires permission to access the [TransferCertificate][1] action.
    #
    # You can cancel the transfer until it is acknowledged by the recipient.
    #
    # No notification is sent to the transfer destination's account. It is
    # up to the caller to notify the transfer target.
    #
    # The certificate being transferred must not be in the ACTIVE state. You
    # can use the UpdateCertificate action to deactivate it.
    #
    # The certificate must not have any policies attached to it. You can use
    # the DetachPolicy action to detach them.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @option params [required, String] :target_aws_account
    #   The Amazon Web Services account.
    #
    # @option params [String] :transfer_message
    #   The transfer message.
    #
    # @return [Types::TransferCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransferCertificateResponse#transferred_certificate_arn #transferred_certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_certificate({
    #     certificate_id: "CertificateId", # required
    #     target_aws_account: "AwsAccountId", # required
    #     transfer_message: "Message",
    #   })
    #
    # @example Response structure
    #
    #   resp.transferred_certificate_arn #=> String
    #
    # @overload transfer_certificate(params = {})
    # @param [Hash] params ({})
    def transfer_certificate(params = {}, options = {})
      req = build_request(:transfer_certificate, params)
      req.send_request(options)
    end

    # Removes the given tags (metadata) from the resource.
    #
    # Requires permission to access the [UntagResource][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys of the tags to be removed from the resource.
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
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Configures or reconfigures the Device Defender audit settings for this
    # account. Settings include how audit notifications are sent and which
    # audit checks are enabled or disabled.
    #
    # Requires permission to access the [UpdateAccountAuditConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the role that grants permission to
    #   IoT to access information about your devices, policies, certificates,
    #   and other items as required when performing an audit.
    #
    # @option params [Hash<String,Types::AuditNotificationTarget>] :audit_notification_target_configurations
    #   Information about the targets to which audit notifications are sent.
    #
    # @option params [Hash<String,Types::AuditCheckConfiguration>] :audit_check_configurations
    #   Specifies which audit checks are enabled and disabled for this
    #   account. Use `DescribeAccountAuditConfiguration` to see the list of
    #   all checks, including those that are currently enabled.
    #
    #   Some data collection might start immediately when certain checks are
    #   enabled. When a check is disabled, any data collected so far in
    #   relation to the check is deleted.
    #
    #   You cannot disable a check if it's used by any scheduled audit. You
    #   must first delete the check from the scheduled audit or delete the
    #   scheduled audit itself.
    #
    #   On the first call to `UpdateAccountAuditConfiguration`, this parameter
    #   is required and must specify at least one enabled check.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_audit_configuration({
    #     role_arn: "RoleArn",
    #     audit_notification_target_configurations: {
    #       "SNS" => {
    #         target_arn: "TargetArn",
    #         role_arn: "RoleArn",
    #         enabled: false,
    #       },
    #     },
    #     audit_check_configurations: {
    #       "AuditCheckName" => {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @overload update_account_audit_configuration(params = {})
    # @param [Hash] params ({})
    def update_account_audit_configuration(params = {}, options = {})
      req = build_request(:update_account_audit_configuration, params)
      req.send_request(options)
    end

    # Updates a Device Defender audit suppression.
    #
    # @option params [required, String] :check_name
    #   An audit check name. Checks must be enabled for your account. (Use
    #   `DescribeAccountAuditConfiguration` to see the list of all checks,
    #   including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [required, Types::ResourceIdentifier] :resource_identifier
    #   Information that identifies the noncompliant resource.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_date
    #   The expiration date (epoch timestamp in seconds) that you want the
    #   suppression to adhere to.
    #
    # @option params [Boolean] :suppress_indefinitely
    #   Indicates whether a suppression should exist indefinitely or not.
    #
    # @option params [String] :description
    #   The description of the audit suppression.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_audit_suppression({
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId",
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber",
    #       },
    #       device_certificate_arn: "CertificateArn",
    #     },
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: "AuditDescription",
    #   })
    #
    # @overload update_audit_suppression(params = {})
    # @param [Hash] params ({})
    def update_audit_suppression(params = {}, options = {})
      req = build_request(:update_audit_suppression, params)
      req.send_request(options)
    end

    # Updates an authorizer.
    #
    # Requires permission to access the [UpdateAuthorizer][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :authorizer_name
    #   The authorizer name.
    #
    # @option params [String] :authorizer_function_arn
    #   The ARN of the authorizer's Lambda function.
    #
    # @option params [String] :token_key_name
    #   The key used to extract the token from the HTTP headers.
    #
    # @option params [Hash<String,String>] :token_signing_public_keys
    #   The public keys used to verify the token signature.
    #
    # @option params [String] :status
    #   The status of the update authorizer request.
    #
    # @option params [Boolean] :enable_caching_for_http
    #   When `true`, the result from the authorizer’s Lambda function is
    #   cached for the time specified in `refreshAfterInSeconds`. The cached
    #   result is used while the device reuses the same HTTP connection.
    #
    # @return [Types::UpdateAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAuthorizerResponse#authorizer_name #authorizer_name} => String
    #   * {Types::UpdateAuthorizerResponse#authorizer_arn #authorizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #     authorizer_function_arn: "AuthorizerFunctionArn",
    #     token_key_name: "TokenKeyName",
    #     token_signing_public_keys: {
    #       "KeyName" => "KeyValue",
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     enable_caching_for_http: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_name #=> String
    #   resp.authorizer_arn #=> String
    #
    # @overload update_authorizer(params = {})
    # @param [Hash] params ({})
    def update_authorizer(params = {}, options = {})
      req = build_request(:update_authorizer, params)
      req.send_request(options)
    end

    # Updates information about the billing group.
    #
    # Requires permission to access the [UpdateBillingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :billing_group_name
    #   The name of the billing group.
    #
    # @option params [required, Types::BillingGroupProperties] :billing_group_properties
    #   The properties of the billing group.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the billing group. If the version of the
    #   billing group does not match the expected version specified in the
    #   request, the `UpdateBillingGroup` request is rejected with a
    #   `VersionConflictException`.
    #
    # @return [Types::UpdateBillingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBillingGroupResponse#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_billing_group({
    #     billing_group_name: "BillingGroupName", # required
    #     billing_group_properties: { # required
    #       billing_group_description: "BillingGroupDescription",
    #     },
    #     expected_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> Integer
    #
    # @overload update_billing_group(params = {})
    # @param [Hash] params ({})
    def update_billing_group(params = {}, options = {})
      req = build_request(:update_billing_group, params)
      req.send_request(options)
    end

    # Updates a registered CA certificate.
    #
    # Requires permission to access the [UpdateCACertificate][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The CA certificate identifier.
    #
    # @option params [String] :new_status
    #   The updated status of the CA certificate.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and should
    #   not be used.
    #
    # @option params [String] :new_auto_registration_status
    #   The new value for the auto registration status. Valid values are:
    #   "ENABLE" or "DISABLE".
    #
    # @option params [Types::RegistrationConfig] :registration_config
    #   Information about the registration configuration.
    #
    # @option params [Boolean] :remove_auto_registration
    #   If true, removes auto registration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     new_auto_registration_status: "ENABLE", # accepts ENABLE, DISABLE
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #       template_name: "TemplateName",
    #     },
    #     remove_auto_registration: false,
    #   })
    #
    # @overload update_ca_certificate(params = {})
    # @param [Hash] params ({})
    def update_ca_certificate(params = {}, options = {})
      req = build_request(:update_ca_certificate, params)
      req.send_request(options)
    end

    # Updates the status of the specified certificate. This operation is
    # idempotent.
    #
    # Requires permission to access the [UpdateCertificate][1] action.
    #
    # Certificates must be in the ACTIVE state to authenticate devices that
    # use a certificate to connect to IoT.
    #
    # Within a few minutes of updating a certificate from the ACTIVE state
    # to any other state, IoT disconnects all devices that used that
    # certificate to connect. Devices cannot use a certificate that is not
    # in the ACTIVE state to reconnect.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate. (The last part of the certificate ARN
    #   contains the certificate ID.)
    #
    # @option params [required, String] :new_status
    #   The new status.
    #
    #   **Note:** Setting the status to PENDING\_TRANSFER or
    #   PENDING\_ACTIVATION will result in an exception being thrown.
    #   PENDING\_TRANSFER and PENDING\_ACTIVATION are statuses used internally
    #   by IoT. They are not intended for developer use.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and should
    #   not be used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate({
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE", # required, accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #   })
    #
    # @overload update_certificate(params = {})
    # @param [Hash] params ({})
    def update_certificate(params = {}, options = {})
      req = build_request(:update_certificate, params)
      req.send_request(options)
    end

    # Updates a Device Defender detect custom metric.
    #
    # Requires permission to access the [UpdateCustomMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the custom metric. Cannot be updated.
    #
    # @option params [required, String] :display_name
    #   Field represents a friendly name in the console for the custom metric,
    #   it doesn't have to be unique. Don't use this name as the metric
    #   identifier in the device metric report. Can be updated.
    #
    # @return [Types::UpdateCustomMetricResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomMetricResponse#metric_name #metric_name} => String
    #   * {Types::UpdateCustomMetricResponse#metric_arn #metric_arn} => String
    #   * {Types::UpdateCustomMetricResponse#metric_type #metric_type} => String
    #   * {Types::UpdateCustomMetricResponse#display_name #display_name} => String
    #   * {Types::UpdateCustomMetricResponse#creation_date #creation_date} => Time
    #   * {Types::UpdateCustomMetricResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_metric({
    #     metric_name: "MetricName", # required
    #     display_name: "CustomMetricDisplayName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_name #=> String
    #   resp.metric_arn #=> String
    #   resp.metric_type #=> String, one of "string-list", "ip-address-list", "number-list", "number"
    #   resp.display_name #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload update_custom_metric(params = {})
    # @param [Hash] params ({})
    def update_custom_metric(params = {}, options = {})
      req = build_request(:update_custom_metric, params)
      req.send_request(options)
    end

    # Updates the definition for a dimension. You cannot change the type of
    # a dimension after it is created (you can delete it and recreate it).
    #
    # Requires permission to access the [UpdateDimension][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :name
    #   A unique identifier for the dimension. Choose something that describes
    #   the type and value to make it easy to remember what it does.
    #
    # @option params [required, Array<String>] :string_values
    #   Specifies the value or list of values for the dimension. For
    #   `TOPIC_FILTER` dimensions, this is a pattern used to match the MQTT
    #   topic (for example, "admin/#").
    #
    # @return [Types::UpdateDimensionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDimensionResponse#name #name} => String
    #   * {Types::UpdateDimensionResponse#arn #arn} => String
    #   * {Types::UpdateDimensionResponse#type #type} => String
    #   * {Types::UpdateDimensionResponse#string_values #string_values} => Array&lt;String&gt;
    #   * {Types::UpdateDimensionResponse#creation_date #creation_date} => Time
    #   * {Types::UpdateDimensionResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dimension({
    #     name: "DimensionName", # required
    #     string_values: ["DimensionStringValue"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.type #=> String, one of "TOPIC_FILTER"
    #   resp.string_values #=> Array
    #   resp.string_values[0] #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload update_dimension(params = {})
    # @param [Hash] params ({})
    def update_dimension(params = {}, options = {})
      req = build_request(:update_dimension, params)
      req.send_request(options)
    end

    # Updates values stored in the domain configuration. Domain
    # configurations for default endpoints can't be updated.
    #
    # Requires permission to access the [UpdateDomainConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :domain_configuration_name
    #   The name of the domain configuration to be updated.
    #
    # @option params [Types::AuthorizerConfig] :authorizer_config
    #   An object that specifies the authorization service for a domain.
    #
    # @option params [String] :domain_configuration_status
    #   The status to which the domain configuration should be updated.
    #
    # @option params [Boolean] :remove_authorizer_config
    #   Removes the authorization configuration from a domain.
    #
    # @option params [Types::TlsConfig] :tls_config
    #   An object that specifies the TLS configuration for a domain.
    #
    # @return [Types::UpdateDomainConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainConfigurationResponse#domain_configuration_name #domain_configuration_name} => String
    #   * {Types::UpdateDomainConfigurationResponse#domain_configuration_arn #domain_configuration_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_configuration({
    #     domain_configuration_name: "ReservedDomainConfigurationName", # required
    #     authorizer_config: {
    #       default_authorizer_name: "AuthorizerName",
    #       allow_authorizer_override: false,
    #     },
    #     domain_configuration_status: "ENABLED", # accepts ENABLED, DISABLED
    #     remove_authorizer_config: false,
    #     tls_config: {
    #       security_policy: "SecurityPolicy",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_configuration_name #=> String
    #   resp.domain_configuration_arn #=> String
    #
    # @overload update_domain_configuration(params = {})
    # @param [Hash] params ({})
    def update_domain_configuration(params = {}, options = {})
      req = build_request(:update_domain_configuration, params)
      req.send_request(options)
    end

    # Updates a dynamic thing group.
    #
    # Requires permission to access the [UpdateDynamicThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The name of the dynamic thing group to update.
    #
    # @option params [required, Types::ThingGroupProperties] :thing_group_properties
    #   The dynamic thing group properties to update.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the dynamic thing group to update.
    #
    # @option params [String] :index_name
    #   The dynamic thing group index to update.
    #
    #   <note markdown="1"> Currently one index is supported: `AWS_Things`.
    #
    #    </note>
    #
    # @option params [String] :query_string
    #   The dynamic thing group search query string to update.
    #
    # @option params [String] :query_version
    #   The dynamic thing group query version to update.
    #
    #   <note markdown="1"> Currently one query version is supported: "2017-09-30". If not
    #   specified, the query version defaults to this value.
    #
    #    </note>
    #
    # @return [Types::UpdateDynamicThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDynamicThingGroupResponse#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dynamic_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: { # required
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       },
    #     },
    #     expected_version: 1,
    #     index_name: "IndexName",
    #     query_string: "QueryString",
    #     query_version: "QueryVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> Integer
    #
    # @overload update_dynamic_thing_group(params = {})
    # @param [Hash] params ({})
    def update_dynamic_thing_group(params = {}, options = {})
      req = build_request(:update_dynamic_thing_group, params)
      req.send_request(options)
    end

    # Updates the event configurations.
    #
    # Requires permission to access the [UpdateEventConfigurations][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Hash<String,Types::Configuration>] :event_configurations
    #   The new event configuration values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_configurations({
    #     event_configurations: {
    #       "THING" => {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @overload update_event_configurations(params = {})
    # @param [Hash] params ({})
    def update_event_configurations(params = {}, options = {})
      req = build_request(:update_event_configurations, params)
      req.send_request(options)
    end

    # Updates the data for a fleet metric.
    #
    # Requires permission to access the [UpdateFleetMetric][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :metric_name
    #   The name of the fleet metric to update.
    #
    # @option params [String] :query_string
    #   The search query string.
    #
    # @option params [Types::AggregationType] :aggregation_type
    #   The type of the aggregation query.
    #
    # @option params [Integer] :period
    #   The time in seconds between fleet metric emissions. Range \[60(1 min),
    #   86400(1 day)\] and must be multiple of 60.
    #
    # @option params [String] :aggregation_field
    #   The field to aggregate.
    #
    # @option params [String] :description
    #   The description of the fleet metric.
    #
    # @option params [String] :query_version
    #   The version of the query.
    #
    # @option params [required, String] :index_name
    #   The name of the index to search.
    #
    # @option params [String] :unit
    #   Used to support unit transformation such as milliseconds to seconds.
    #   The unit must be supported by [CW metric][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #
    # @option params [Integer] :expected_version
    #   The expected version of the fleet metric record in the registry.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_metric({
    #     metric_name: "FleetMetricName", # required
    #     query_string: "QueryString",
    #     aggregation_type: {
    #       name: "Statistics", # required, accepts Statistics, Percentiles, Cardinality
    #       values: ["AggregationTypeValue"],
    #     },
    #     period: 1,
    #     aggregation_field: "AggregationField",
    #     description: "FleetMetricDescription",
    #     query_version: "QueryVersion",
    #     index_name: "IndexName", # required
    #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #     expected_version: 1,
    #   })
    #
    # @overload update_fleet_metric(params = {})
    # @param [Hash] params ({})
    def update_fleet_metric(params = {}, options = {})
      req = build_request(:update_fleet_metric, params)
      req.send_request(options)
    end

    # Updates the search configuration.
    #
    # Requires permission to access the [UpdateIndexingConfiguration][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [Types::ThingIndexingConfiguration] :thing_indexing_configuration
    #   Thing indexing configuration.
    #
    # @option params [Types::ThingGroupIndexingConfiguration] :thing_group_indexing_configuration
    #   Thing group indexing configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_indexing_configuration({
    #     thing_indexing_configuration: {
    #       thing_indexing_mode: "OFF", # required, accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #       thing_connectivity_indexing_mode: "OFF", # accepts OFF, STATUS
    #       device_defender_indexing_mode: "OFF", # accepts OFF, VIOLATIONS
    #       named_shadow_indexing_mode: "OFF", # accepts OFF, ON
    #       managed_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number", # accepts Number, String, Boolean
    #         },
    #       ],
    #       custom_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number", # accepts Number, String, Boolean
    #         },
    #       ],
    #       filter: {
    #         named_shadow_names: ["ShadowName"],
    #       },
    #     },
    #     thing_group_indexing_configuration: {
    #       thing_group_indexing_mode: "OFF", # required, accepts OFF, ON
    #       managed_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number", # accepts Number, String, Boolean
    #         },
    #       ],
    #       custom_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number", # accepts Number, String, Boolean
    #         },
    #       ],
    #     },
    #   })
    #
    # @overload update_indexing_configuration(params = {})
    # @param [Hash] params ({})
    def update_indexing_configuration(params = {}, options = {})
      req = build_request(:update_indexing_configuration, params)
      req.send_request(options)
    end

    # Updates supported fields of the specified job.
    #
    # Requires permission to access the [UpdateJob][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :job_id
    #   The ID of the job to be updated.
    #
    # @option params [String] :description
    #   A short text description of the job.
    #
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   Configuration information for pre-signed S3 URLs.
    #
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   Allows you to create a staged rollout of the job.
    #
    # @option params [Types::AbortConfig] :abort_config
    #   Allows you to create criteria to abort a job.
    #
    # @option params [Types::TimeoutConfig] :timeout_config
    #   Specifies the amount of time each device has to finish its execution
    #   of the job. The timer is started when the job execution status is set
    #   to `IN_PROGRESS`. If the job execution status is not set to another
    #   terminal state before the time expires, it will be automatically set
    #   to `TIMED_OUT`.
    #
    # @option params [String] :namespace_id
    #   The namespace used to indicate that a job is a customer-managed job.
    #
    #   When you specify a value for this parameter, Amazon Web Services IoT
    #   Core sends jobs notifications to MQTT topics that contain the value in
    #   the following format.
    #
    #   `$aws/things/THING_NAME/jobs/JOB_ID/notify-namespace-NAMESPACE_ID/`
    #
    #   <note markdown="1"> The `namespaceId` feature is in public preview.
    #
    #    </note>
    #
    # @option params [Types::JobExecutionsRetryConfig] :job_executions_retry_config
    #   Allows you to create the criteria to retry a job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job({
    #     job_id: "JobId", # required
    #     description: "JobDescription",
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1,
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1,
    #         },
    #       },
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, REJECTED, TIMED_OUT, ALL
    #           action: "CANCEL", # required, accepts CANCEL
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         },
    #       ],
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1,
    #     },
    #     namespace_id: "NamespaceId",
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED", # required, accepts FAILED, TIMED_OUT, ALL
    #           number_of_retries: 1, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
      req.send_request(options)
    end

    # Updates the definition for the specified mitigation action.
    #
    # Requires permission to access the [UpdateMitigationAction][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :action_name
    #   The friendly name for the mitigation action. You cannot change the
    #   name by using `UpdateMitigationAction`. Instead, you must delete and
    #   recreate the mitigation action with the new name.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM role that is used to apply the mitigation action.
    #
    # @option params [Types::MitigationActionParams] :action_params
    #   Defines the type of action and the parameters for that action.
    #
    # @return [Types::UpdateMitigationActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMitigationActionResponse#action_arn #action_arn} => String
    #   * {Types::UpdateMitigationActionResponse#action_id #action_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mitigation_action({
    #     action_name: "MitigationActionName", # required
    #     role_arn: "RoleArn",
    #     action_params: {
    #       update_device_certificate_params: {
    #         action: "DEACTIVATE", # required, accepts DEACTIVATE
    #       },
    #       update_ca_certificate_params: {
    #         action: "DEACTIVATE", # required, accepts DEACTIVATE
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: ["ThingGroupName"], # required
    #         override_dynamic_groups: false,
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: "BLANK_POLICY", # required, accepts BLANK_POLICY
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: "RoleArn", # required
    #         log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: "SnsTopicArn", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.action_arn #=> String
    #   resp.action_id #=> String
    #
    # @overload update_mitigation_action(params = {})
    # @param [Hash] params ({})
    def update_mitigation_action(params = {}, options = {})
      req = build_request(:update_mitigation_action, params)
      req.send_request(options)
    end

    # Updates the supported fields for a specific package.
    #
    # Requires permission to access the [UpdatePackage][1] and
    # [GetIndexingConfiguration][1] actions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the target package.
    #
    # @option params [String] :description
    #   The package description.
    #
    # @option params [String] :default_version_name
    #   The name of the default package version.
    #
    #   **Note:** You cannot name a `defaultVersion` and set
    #   `unsetDefaultVersion` equal to `true` at the same time.
    #
    # @option params [Boolean] :unset_default_version
    #   Indicates whether you want to remove the named default package version
    #   from the software package. Set as `true` to remove the default package
    #   version.
    #
    #   **Note:** You cannot name a `defaultVersion` and set
    #   `unsetDefaultVersion` equal to `true` at the same time.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package({
    #     package_name: "PackageName", # required
    #     description: "ResourceDescription",
    #     default_version_name: "VersionName",
    #     unset_default_version: false,
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_package(params = {})
    # @param [Hash] params ({})
    def update_package(params = {}, options = {})
      req = build_request(:update_package, params)
      req.send_request(options)
    end

    # Updates the package configuration.
    #
    # Requires permission to access the [UpdatePackageConfiguration][1] and
    # [iam:PassRole][2] actions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    #
    # @option params [Types::VersionUpdateByJobsConfig] :version_update_by_jobs_config
    #   Configuration to manage job's package version reporting. This updates
    #   the thing's reserved named shadow that the job targets.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_configuration({
    #     version_update_by_jobs_config: {
    #       enabled: false,
    #       role_arn: "RoleArn",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_package_configuration(params = {})
    # @param [Hash] params ({})
    def update_package_configuration(params = {}, options = {})
      req = build_request(:update_package_configuration, params)
      req.send_request(options)
    end

    # Updates the supported fields for a specific package version.
    #
    # Requires permission to access the [UpdatePackageVersion][1] and
    # [GetIndexingConfiguration][1] actions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :package_name
    #   The name of the associated software package.
    #
    # @option params [required, String] :version_name
    #   The name of the target package version.
    #
    # @option params [String] :description
    #   The package version description.
    #
    # @option params [Hash<String,String>] :attributes
    #   Metadata that can be used to define a package version’s configuration.
    #   For example, the S3 file location, configuration options that are
    #   being sent to the device or fleet.
    #
    #   **Note:** Attributes can be updated only when the package version is
    #   in a draft state.
    #
    #   The combined size of all the attributes on a package version is
    #   limited to 3KB.
    #
    # @option params [String] :action
    #   The status that the package version should be assigned. For more
    #   information, see [Package version lifecycle][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_version({
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     description: "ResourceDescription",
    #     attributes: {
    #       "ResourceAttributeKey" => "ResourceAttributeValue",
    #     },
    #     action: "PUBLISH", # accepts PUBLISH, DEPRECATE
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_package_version(params = {})
    # @param [Hash] params ({})
    def update_package_version(params = {}, options = {})
      req = build_request(:update_package_version, params)
      req.send_request(options)
    end

    # Updates a provisioning template.
    #
    # Requires permission to access the [UpdateProvisioningTemplate][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :template_name
    #   The name of the provisioning template.
    #
    # @option params [String] :description
    #   The description of the provisioning template.
    #
    # @option params [Boolean] :enabled
    #   True to enable the provisioning template, otherwise false.
    #
    # @option params [Integer] :default_version_id
    #   The ID of the default provisioning template version.
    #
    # @option params [String] :provisioning_role_arn
    #   The ARN of the role associated with the provisioning template. This
    #   IoT role grants permission to provision a device.
    #
    # @option params [Types::ProvisioningHook] :pre_provisioning_hook
    #   Updates the pre-provisioning hook template. Only supports template of
    #   type `FLEET_PROVISIONING`. For more information about provisioning
    #   template types, see [type][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type
    #
    # @option params [Boolean] :remove_pre_provisioning_hook
    #   Removes pre-provisioning hook template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioning_template({
    #     template_name: "TemplateName", # required
    #     description: "TemplateDescription",
    #     enabled: false,
    #     default_version_id: 1,
    #     provisioning_role_arn: "RoleArn",
    #     pre_provisioning_hook: {
    #       payload_version: "PayloadVersion",
    #       target_arn: "TargetArn", # required
    #     },
    #     remove_pre_provisioning_hook: false,
    #   })
    #
    # @overload update_provisioning_template(params = {})
    # @param [Hash] params ({})
    def update_provisioning_template(params = {}, options = {})
      req = build_request(:update_provisioning_template, params)
      req.send_request(options)
    end

    # Updates a role alias.
    #
    # Requires permission to access the [UpdateRoleAlias][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :role_alias
    #   The role alias to update.
    #
    # @option params [String] :role_arn
    #   The role ARN.
    #
    # @option params [Integer] :credential_duration_seconds
    #   The number of seconds the credential will be valid.
    #
    #   This value must be less than or equal to the maximum session duration
    #   of the IAM role that the role alias references.
    #
    # @return [Types::UpdateRoleAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoleAliasResponse#role_alias #role_alias} => String
    #   * {Types::UpdateRoleAliasResponse#role_alias_arn #role_alias_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_role_alias({
    #     role_alias: "RoleAlias", # required
    #     role_arn: "RoleArn",
    #     credential_duration_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.role_alias #=> String
    #   resp.role_alias_arn #=> String
    #
    # @overload update_role_alias(params = {})
    # @param [Hash] params ({})
    def update_role_alias(params = {}, options = {})
      req = build_request(:update_role_alias, params)
      req.send_request(options)
    end

    # Updates a scheduled audit, including which checks are performed and
    # how often the audit takes place.
    #
    # Requires permission to access the [UpdateScheduledAudit][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :frequency
    #   How often the scheduled audit takes place, either `DAILY`, `WEEKLY`,
    #   `BIWEEKLY`, or `MONTHLY`. The start time of each audit is determined
    #   by the system.
    #
    # @option params [String] :day_of_month
    #   The day of the month on which the scheduled audit takes place. This
    #   can be `1` through `31` or `LAST`. This field is required if the
    #   `frequency` parameter is set to `MONTHLY`. If days 29-31 are
    #   specified, and the month does not have that many days, the audit takes
    #   place on the "LAST" day of the month.
    #
    # @option params [String] :day_of_week
    #   The day of the week on which the scheduled audit takes place. This can
    #   be one of `SUN`, `MON`, `TUE`, `WED`, `THU`, `FRI`, or `SAT`. This
    #   field is required if the "frequency" parameter is set to `WEEKLY` or
    #   `BIWEEKLY`.
    #
    # @option params [Array<String>] :target_check_names
    #   Which checks are performed during the scheduled audit. Checks must be
    #   enabled for your account. (Use `DescribeAccountAuditConfiguration` to
    #   see the list of all checks, including those that are enabled or use
    #   `UpdateAccountAuditConfiguration` to select which checks are enabled.)
    #
    # @option params [required, String] :scheduled_audit_name
    #   The name of the scheduled audit. (Max. 128 chars)
    #
    # @return [Types::UpdateScheduledAuditResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScheduledAuditResponse#scheduled_audit_arn #scheduled_audit_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduled_audit({
    #     frequency: "DAILY", # accepts DAILY, WEEKLY, BIWEEKLY, MONTHLY
    #     day_of_month: "DayOfMonth",
    #     day_of_week: "SUN", # accepts SUN, MON, TUE, WED, THU, FRI, SAT
    #     target_check_names: ["AuditCheckName"],
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_audit_arn #=> String
    #
    # @overload update_scheduled_audit(params = {})
    # @param [Hash] params ({})
    def update_scheduled_audit(params = {}, options = {})
      req = build_request(:update_scheduled_audit, params)
      req.send_request(options)
    end

    # Updates a Device Defender security profile.
    #
    # Requires permission to access the [UpdateSecurityProfile][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :security_profile_name
    #   The name of the security profile you want to update.
    #
    # @option params [String] :security_profile_description
    #   A description of the security profile.
    #
    # @option params [Array<Types::Behavior>] :behaviors
    #   Specifies the behaviors that, when violated by a device (thing), cause
    #   an alert.
    #
    # @option params [Hash<String,Types::AlertTarget>] :alert_targets
    #   Where the alerts are sent. (Alerts are always sent to the console.)
    #
    # @option params [Array<String>] :additional_metrics_to_retain
    #   *Please use UpdateSecurityProfileRequest$additionalMetricsToRetainV2
    #   instead.*
    #
    #   A list of metrics whose data is retained (stored). By default, data is
    #   retained for any metric used in the profile's `behaviors`, but it is
    #   also retained for any metric specified here. Can be used with custom
    #   metrics; cannot be used with dimensions.
    #
    # @option params [Array<Types::MetricToRetain>] :additional_metrics_to_retain_v2
    #   A list of metrics whose data is retained (stored). By default, data is
    #   retained for any metric used in the profile's behaviors, but it is
    #   also retained for any metric specified here. Can be used with custom
    #   metrics; cannot be used with dimensions.
    #
    # @option params [Boolean] :delete_behaviors
    #   If true, delete all `behaviors` defined for this security profile. If
    #   any `behaviors` are defined in the current invocation, an exception
    #   occurs.
    #
    # @option params [Boolean] :delete_alert_targets
    #   If true, delete all `alertTargets` defined for this security profile.
    #   If any `alertTargets` are defined in the current invocation, an
    #   exception occurs.
    #
    # @option params [Boolean] :delete_additional_metrics_to_retain
    #   If true, delete all `additionalMetricsToRetain` defined for this
    #   security profile. If any `additionalMetricsToRetain` are defined in
    #   the current invocation, an exception occurs.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the security profile. A new version is
    #   generated whenever the security profile is updated. If you specify a
    #   value that is different from the actual version, a
    #   `VersionConflictException` is thrown.
    #
    # @return [Types::UpdateSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecurityProfileResponse#security_profile_name #security_profile_name} => String
    #   * {Types::UpdateSecurityProfileResponse#security_profile_arn #security_profile_arn} => String
    #   * {Types::UpdateSecurityProfileResponse#security_profile_description #security_profile_description} => String
    #   * {Types::UpdateSecurityProfileResponse#behaviors #behaviors} => Array&lt;Types::Behavior&gt;
    #   * {Types::UpdateSecurityProfileResponse#alert_targets #alert_targets} => Hash&lt;String,Types::AlertTarget&gt;
    #   * {Types::UpdateSecurityProfileResponse#additional_metrics_to_retain #additional_metrics_to_retain} => Array&lt;String&gt;
    #   * {Types::UpdateSecurityProfileResponse#additional_metrics_to_retain_v2 #additional_metrics_to_retain_v2} => Array&lt;Types::MetricToRetain&gt;
    #   * {Types::UpdateSecurityProfileResponse#version #version} => Integer
    #   * {Types::UpdateSecurityProfileResponse#creation_date #creation_date} => Time
    #   * {Types::UpdateSecurityProfileResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_profile({
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_description: "SecurityProfileDescription",
    #     behaviors: [
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
    #         },
    #         criteria: {
    #           comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set, in-set, not-in-set
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"],
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic",
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW", # required, accepts LOW, MEDIUM, HIGH
    #           },
    #         },
    #         suppress_alerts: false,
    #       },
    #     ],
    #     alert_targets: {
    #       "SNS" => {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       },
    #     },
    #     additional_metrics_to_retain: ["BehaviorMetric"],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
    #         },
    #       },
    #     ],
    #     delete_behaviors: false,
    #     delete_alert_targets: false,
    #     delete_additional_metrics_to_retain: false,
    #     expected_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_name #=> String
    #   resp.security_profile_arn #=> String
    #   resp.security_profile_description #=> String
    #   resp.behaviors #=> Array
    #   resp.behaviors[0].name #=> String
    #   resp.behaviors[0].metric #=> String
    #   resp.behaviors[0].metric_dimension.dimension_name #=> String
    #   resp.behaviors[0].metric_dimension.operator #=> String, one of "IN", "NOT_IN"
    #   resp.behaviors[0].criteria.comparison_operator #=> String, one of "less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"
    #   resp.behaviors[0].criteria.value.count #=> Integer
    #   resp.behaviors[0].criteria.value.cidrs #=> Array
    #   resp.behaviors[0].criteria.value.cidrs[0] #=> String
    #   resp.behaviors[0].criteria.value.ports #=> Array
    #   resp.behaviors[0].criteria.value.ports[0] #=> Integer
    #   resp.behaviors[0].criteria.value.number #=> Float
    #   resp.behaviors[0].criteria.value.numbers #=> Array
    #   resp.behaviors[0].criteria.value.numbers[0] #=> Float
    #   resp.behaviors[0].criteria.value.strings #=> Array
    #   resp.behaviors[0].criteria.value.strings[0] #=> String
    #   resp.behaviors[0].criteria.duration_seconds #=> Integer
    #   resp.behaviors[0].criteria.consecutive_datapoints_to_alarm #=> Integer
    #   resp.behaviors[0].criteria.consecutive_datapoints_to_clear #=> Integer
    #   resp.behaviors[0].criteria.statistical_threshold.statistic #=> String
    #   resp.behaviors[0].criteria.ml_detection_config.confidence_level #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.behaviors[0].suppress_alerts #=> Boolean
    #   resp.alert_targets #=> Hash
    #   resp.alert_targets["AlertTargetType"].alert_target_arn #=> String
    #   resp.alert_targets["AlertTargetType"].role_arn #=> String
    #   resp.additional_metrics_to_retain #=> Array
    #   resp.additional_metrics_to_retain[0] #=> String
    #   resp.additional_metrics_to_retain_v2 #=> Array
    #   resp.additional_metrics_to_retain_v2[0].metric #=> String
    #   resp.additional_metrics_to_retain_v2[0].metric_dimension.dimension_name #=> String
    #   resp.additional_metrics_to_retain_v2[0].metric_dimension.operator #=> String, one of "IN", "NOT_IN"
    #   resp.version #=> Integer
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload update_security_profile(params = {})
    # @param [Hash] params ({})
    def update_security_profile(params = {}, options = {})
      req = build_request(:update_security_profile, params)
      req.send_request(options)
    end

    # Updates an existing stream. The stream version will be incremented by
    # one.
    #
    # Requires permission to access the [UpdateStream][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @option params [String] :description
    #   The description of the stream.
    #
    # @option params [Array<Types::StreamFile>] :files
    #   The files associated with the stream.
    #
    # @option params [String] :role_arn
    #   An IAM role that allows the IoT service principal assumes to access
    #   your S3 files.
    #
    # @return [Types::UpdateStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStreamResponse#stream_id #stream_id} => String
    #   * {Types::UpdateStreamResponse#stream_arn #stream_arn} => String
    #   * {Types::UpdateStreamResponse#description #description} => String
    #   * {Types::UpdateStreamResponse#stream_version #stream_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream({
    #     stream_id: "StreamId", # required
    #     description: "StreamDescription",
    #     files: [
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version: "S3Version",
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_id #=> String
    #   resp.stream_arn #=> String
    #   resp.description #=> String
    #   resp.stream_version #=> Integer
    #
    # @overload update_stream(params = {})
    # @param [Hash] params ({})
    def update_stream(params = {}, options = {})
      req = build_request(:update_stream, params)
      req.send_request(options)
    end

    # Updates the data for a thing.
    #
    # Requires permission to access the [UpdateThing][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to update.
    #
    #   You can't change a thing's name. To change a thing's name, you must
    #   create a new thing, give it the new name, and then delete the old
    #   thing.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type.
    #
    # @option params [Types::AttributePayload] :attribute_payload
    #   A list of thing attributes, a JSON string containing name-value pairs.
    #   For example:
    #
    #   `\{"attributes":\{"name1":"value2"\}\}`
    #
    #   This data is used to add new attributes or update existing attributes.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing record in the registry. If the
    #   version of the record in the registry does not match the expected
    #   version specified in the request, the `UpdateThing` request is
    #   rejected with a `VersionConflictException`.
    #
    # @option params [Boolean] :remove_thing_type
    #   Remove a thing type association. If **true**, the association is
    #   removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing({
    #     thing_name: "ThingName", # required
    #     thing_type_name: "ThingTypeName",
    #     attribute_payload: {
    #       attributes: {
    #         "AttributeName" => "AttributeValue",
    #       },
    #       merge: false,
    #     },
    #     expected_version: 1,
    #     remove_thing_type: false,
    #   })
    #
    # @overload update_thing(params = {})
    # @param [Hash] params ({})
    def update_thing(params = {}, options = {})
      req = build_request(:update_thing, params)
      req.send_request(options)
    end

    # Update a thing group.
    #
    # Requires permission to access the [UpdateThingGroup][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :thing_group_name
    #   The thing group to update.
    #
    # @option params [required, Types::ThingGroupProperties] :thing_group_properties
    #   The thing group properties.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing group. If this does not match the
    #   version of the thing group being updated, the update will fail.
    #
    # @return [Types::UpdateThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThingGroupResponse#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: { # required
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       },
    #     },
    #     expected_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> Integer
    #
    # @overload update_thing_group(params = {})
    # @param [Hash] params ({})
    def update_thing_group(params = {}, options = {})
      req = build_request(:update_thing_group, params)
      req.send_request(options)
    end

    # Updates the groups to which the thing belongs.
    #
    # Requires permission to access the [UpdateThingGroupsForThing][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [String] :thing_name
    #   The thing whose group memberships will be updated.
    #
    # @option params [Array<String>] :thing_groups_to_add
    #   The groups to which the thing will be added.
    #
    # @option params [Array<String>] :thing_groups_to_remove
    #   The groups from which the thing will be removed.
    #
    # @option params [Boolean] :override_dynamic_groups
    #   Override dynamic thing groups with static thing groups when 10-group
    #   limit is reached. If a thing belongs to 10 thing groups, and one or
    #   more of those groups are dynamic thing groups, adding a thing to a
    #   static group removes the thing from the last dynamic group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_groups_for_thing({
    #     thing_name: "ThingName",
    #     thing_groups_to_add: ["ThingGroupName"],
    #     thing_groups_to_remove: ["ThingGroupName"],
    #     override_dynamic_groups: false,
    #   })
    #
    # @overload update_thing_groups_for_thing(params = {})
    # @param [Hash] params ({})
    def update_thing_groups_for_thing(params = {}, options = {})
      req = build_request(:update_thing_groups_for_thing, params)
      req.send_request(options)
    end

    # Updates a topic rule destination. You use this to change the status,
    # endpoint URL, or confirmation URL of the destination.
    #
    # Requires permission to access the [UpdateTopicRuleDestination][1]
    # action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, String] :arn
    #   The ARN of the topic rule destination.
    #
    # @option params [required, String] :status
    #   The status of the topic rule destination. Valid values are:
    #
    #   IN\_PROGRESS
    #
    #   : A topic rule destination was created but has not been confirmed. You
    #     can set `status` to `IN_PROGRESS` by calling
    #     `UpdateTopicRuleDestination`. Calling `UpdateTopicRuleDestination`
    #     causes a new confirmation challenge to be sent to your confirmation
    #     endpoint.
    #
    #   ENABLED
    #
    #   : Confirmation was completed, and traffic to this destination is
    #     allowed. You can set `status` to `DISABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   DISABLED
    #
    #   : Confirmation was completed, and traffic to this destination is not
    #     allowed. You can set `status` to `ENABLED` by calling
    #     `UpdateTopicRuleDestination`.
    #
    #   ERROR
    #
    #   : Confirmation could not be completed, for example if the confirmation
    #     timed out. You can call `GetTopicRuleDestination` for details about
    #     the error. You can set `status` to `IN_PROGRESS` by calling
    #     `UpdateTopicRuleDestination`. Calling `UpdateTopicRuleDestination`
    #     causes a new confirmation challenge to be sent to your confirmation
    #     endpoint.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_topic_rule_destination({
    #     arn: "AwsArn", # required
    #     status: "ENABLED", # required, accepts ENABLED, IN_PROGRESS, DISABLED, ERROR, DELETING
    #   })
    #
    # @overload update_topic_rule_destination(params = {})
    # @param [Hash] params ({})
    def update_topic_rule_destination(params = {}, options = {})
      req = build_request(:update_topic_rule_destination, params)
      req.send_request(options)
    end

    # Validates a Device Defender security profile behaviors specification.
    #
    # Requires permission to access the
    # [ValidateSecurityProfileBehaviors][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @option params [required, Array<Types::Behavior>] :behaviors
    #   Specifies the behaviors that, when violated by a device (thing), cause
    #   an alert.
    #
    # @return [Types::ValidateSecurityProfileBehaviorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateSecurityProfileBehaviorsResponse#valid #valid} => Boolean
    #   * {Types::ValidateSecurityProfileBehaviorsResponse#validation_errors #validation_errors} => Array&lt;Types::ValidationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_security_profile_behaviors({
    #     behaviors: [ # required
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN", # accepts IN, NOT_IN
    #         },
    #         criteria: {
    #           comparison_operator: "less-than", # accepts less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set, in-set, not-in-set
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"],
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic",
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW", # required, accepts LOW, MEDIUM, HIGH
    #           },
    #         },
    #         suppress_alerts: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.valid #=> Boolean
    #   resp.validation_errors #=> Array
    #   resp.validation_errors[0].error_message #=> String
    #
    # @overload validate_security_profile_behaviors(params = {})
    # @param [Hash] params ({})
    def validate_security_profile_behaviors(params = {}, options = {})
      req = build_request(:validate_security_profile_behaviors, params)
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
      context[:gem_name] = 'aws-sdk-iot'
      context[:gem_version] = '1.110.0'
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

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

Aws::Plugins::GlobalConfiguration.add_identifier(:wellarchitected)

module Aws::WellArchitected
  # An API client for WellArchitected.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WellArchitected::Client.new(
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

    @identifier = :wellarchitected

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

    # Associate a lens to a workload.
    #
    # Up to 10 lenses can be associated with a workload in a single API
    # operation. A maximum of 20 lenses can be associated with a workload.
    #
    # <note markdown="1"> **Disclaimer**
    #
    #  By accessing and/or applying custom lenses created by another Amazon
    # Web Services user or account, you acknowledge that custom lenses
    # created by other users and shared with you are Third Party Content as
    # defined in the Amazon Web Services Customer Agreement.
    #
    #  </note>
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, Array<String>] :lens_aliases
    #   List of lens aliases to associate or disassociate with a workload. Up
    #   to 10 lenses can be specified.
    #
    #   Identify a lens using its LensSummary$LensAlias.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lenses({
    #     workload_id: "WorkloadId", # required
    #     lens_aliases: ["LensAlias"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/AssociateLenses AWS API Documentation
    #
    # @overload associate_lenses(params = {})
    # @param [Hash] params ({})
    def associate_lenses(params = {}, options = {})
      req = build_request(:associate_lenses, params)
      req.send_request(options)
    end

    # Create a lens share.
    #
    # The owner of a lens can share it with other Amazon Web Services
    # accounts and IAM users in the same Amazon Web Services Region. Shared
    # access to a lens is not removed until the lens invitation is deleted.
    #
    # <note markdown="1"> **Disclaimer**
    #
    #  By sharing your custom lenses with other Amazon Web Services accounts,
    # you acknowledge that Amazon Web Services will make your custom lenses
    # available to those other accounts. Those other accounts may continue
    # to access and use your shared custom lenses even if you delete the
    # custom lenses from your own Amazon Web Services account or terminate
    # your Amazon Web Services account.
    #
    #  </note>
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :shared_with
    #   The Amazon Web Services account ID or IAM role with which the workload
    #   is shared.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateLensShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLensShareOutput#share_id #share_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lens_share({
    #     lens_alias: "LensAlias", # required
    #     shared_with: "SharedWith", # required
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.share_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateLensShare AWS API Documentation
    #
    # @overload create_lens_share(params = {})
    # @param [Hash] params ({})
    def create_lens_share(params = {}, options = {})
      req = build_request(:create_lens_share, params)
      req.send_request(options)
    end

    # Create a new lens version.
    #
    # A lens can have up to 100 versions.
    #
    # After a lens has been imported, create a new lens version to publish
    # it. The owner of a lens can share the lens with other Amazon Web
    # Services accounts and IAM users in the same Amazon Web Services
    # Region. Only the owner of a lens can delete it.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :lens_version
    #   The version of the lens being created.
    #
    # @option params [Boolean] :is_major_version
    #   Set to true if this new major lens version.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateLensVersionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLensVersionOutput#lens_arn #lens_arn} => String
    #   * {Types::CreateLensVersionOutput#lens_version #lens_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lens_version({
    #     lens_alias: "LensAlias", # required
    #     lens_version: "LensVersion", # required
    #     is_major_version: false,
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lens_arn #=> String
    #   resp.lens_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateLensVersion AWS API Documentation
    #
    # @overload create_lens_version(params = {})
    # @param [Hash] params ({})
    def create_lens_version(params = {}, options = {})
      req = build_request(:create_lens_version, params)
      req.send_request(options)
    end

    # Create a milestone for an existing workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMilestoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMilestoneOutput#workload_id #workload_id} => String
    #   * {Types::CreateMilestoneOutput#milestone_number #milestone_number} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_milestone({
    #     workload_id: "WorkloadId", # required
    #     milestone_name: "MilestoneName", # required
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateMilestone AWS API Documentation
    #
    # @overload create_milestone(params = {})
    # @param [Hash] params ({})
    def create_milestone(params = {}, options = {})
      req = build_request(:create_milestone, params)
      req.send_request(options)
    end

    # Create a new workload.
    #
    # The owner of a workload can share the workload with other Amazon Web
    # Services accounts and IAM users in the same Amazon Web Services
    # Region. Only the owner of a workload can delete it.
    #
    # For more information, see [Defining a Workload][1] in the
    # *Well-Architected Tool User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html
    #
    # @option params [required, String] :workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #
    # @option params [required, String] :description
    #   The description for the workload.
    #
    # @option params [required, String] :environment
    #   The environment for the workload.
    #
    # @option params [Array<String>] :account_ids
    #   The list of Amazon Web Services account IDs associated with the
    #   workload.
    #
    # @option params [Array<String>] :aws_regions
    #   The list of Amazon Web Services Regions associated with the workload,
    #   for example, `us-east-2`, or `ca-central-1`.
    #
    # @option params [Array<String>] :non_aws_regions
    #   The list of non-Amazon Web Services Regions associated with the
    #   workload.
    #
    # @option params [Array<String>] :pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #
    # @option params [String] :architectural_design
    #   The URL of the architectural design for the workload.
    #
    # @option params [required, String] :review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the workload
    #   review process.
    #
    # @option params [String] :industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #
    # @option params [String] :industry
    #   The industry for the workload.
    #
    # @option params [required, Array<String>] :lenses
    #   The list of lenses associated with the workload. Each lens is
    #   identified by its LensSummary$LensAlias.
    #
    # @option params [String] :notes
    #   The notes associated with the workload.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be associated with the workload.
    #
    # @return [Types::CreateWorkloadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkloadOutput#workload_id #workload_id} => String
    #   * {Types::CreateWorkloadOutput#workload_arn #workload_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workload({
    #     workload_name: "WorkloadName", # required
    #     description: "WorkloadDescription", # required
    #     environment: "PRODUCTION", # required, accepts PRODUCTION, PREPRODUCTION
    #     account_ids: ["AwsAccountId"],
    #     aws_regions: ["AwsRegion"],
    #     non_aws_regions: ["WorkloadNonAwsRegion"],
    #     pillar_priorities: ["PillarId"],
    #     architectural_design: "WorkloadArchitecturalDesign",
    #     review_owner: "WorkloadReviewOwner", # required
    #     industry_type: "WorkloadIndustryType",
    #     industry: "WorkloadIndustry",
    #     lenses: ["LensAlias"], # required
    #     notes: "Notes",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.workload_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkload AWS API Documentation
    #
    # @overload create_workload(params = {})
    # @param [Hash] params ({})
    def create_workload(params = {}, options = {})
      req = build_request(:create_workload, params)
      req.send_request(options)
    end

    # Create a workload share.
    #
    # The owner of a workload can share it with other Amazon Web Services
    # accounts and IAM users in the same Amazon Web Services Region. Shared
    # access to a workload is not removed until the workload invitation is
    # deleted.
    #
    # For more information, see [Sharing a Workload][1] in the
    # *Well-Architected Tool User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :shared_with
    #   The Amazon Web Services account ID or IAM role with which the workload
    #   is shared.
    #
    # @option params [required, String] :permission_type
    #   Permission granted on a workload share.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateWorkloadShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkloadShareOutput#workload_id #workload_id} => String
    #   * {Types::CreateWorkloadShareOutput#share_id #share_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workload_share({
    #     workload_id: "WorkloadId", # required
    #     shared_with: "SharedWith", # required
    #     permission_type: "READONLY", # required, accepts READONLY, CONTRIBUTOR
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.share_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/CreateWorkloadShare AWS API Documentation
    #
    # @overload create_workload_share(params = {})
    # @param [Hash] params ({})
    def create_workload_share(params = {}, options = {})
      req = build_request(:create_workload_share, params)
      req.send_request(options)
    end

    # Delete an existing lens.
    #
    # Only the owner of a lens can delete it. After the lens is deleted,
    # Amazon Web Services accounts and IAM users that you shared the lens
    # with can continue to use it, but they will no longer be able to apply
    # it to new workloads.
    #
    # <note markdown="1"> **Disclaimer**
    #
    #  By sharing your custom lenses with other Amazon Web Services accounts,
    # you acknowledge that Amazon Web Services will make your custom lenses
    # available to those other accounts. Those other accounts may continue
    # to access and use your shared custom lenses even if you delete the
    # custom lenses from your own Amazon Web Services account or terminate
    # your Amazon Web Services account.
    #
    #  </note>
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :lens_status
    #   The status of the lens to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lens({
    #     lens_alias: "LensAlias", # required
    #     client_request_token: "ClientRequestToken", # required
    #     lens_status: "ALL", # required, accepts ALL, DRAFT, PUBLISHED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteLens AWS API Documentation
    #
    # @overload delete_lens(params = {})
    # @param [Hash] params ({})
    def delete_lens(params = {}, options = {})
      req = build_request(:delete_lens, params)
      req.send_request(options)
    end

    # Delete a lens share.
    #
    # After the lens share is deleted, Amazon Web Services accounts and IAM
    # users that you shared the lens with can continue to use it, but they
    # will no longer be able to apply it to new workloads.
    #
    # <note markdown="1"> **Disclaimer**
    #
    #  By sharing your custom lenses with other Amazon Web Services accounts,
    # you acknowledge that Amazon Web Services will make your custom lenses
    # available to those other accounts. Those other accounts may continue
    # to access and use your shared custom lenses even if you delete the
    # custom lenses from your own Amazon Web Services account or terminate
    # your Amazon Web Services account.
    #
    #  </note>
    #
    # @option params [required, String] :share_id
    #   The ID associated with the workload share.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lens_share({
    #     share_id: "ShareId", # required
    #     lens_alias: "LensAlias", # required
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteLensShare AWS API Documentation
    #
    # @overload delete_lens_share(params = {})
    # @param [Hash] params ({})
    def delete_lens_share(params = {}, options = {})
      req = build_request(:delete_lens_share, params)
      req.send_request(options)
    end

    # Delete an existing workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workload({
    #     workload_id: "WorkloadId", # required
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteWorkload AWS API Documentation
    #
    # @overload delete_workload(params = {})
    # @param [Hash] params ({})
    def delete_workload(params = {}, options = {})
      req = build_request(:delete_workload, params)
      req.send_request(options)
    end

    # Delete a workload share.
    #
    # @option params [required, String] :share_id
    #   The ID associated with the workload share.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workload_share({
    #     share_id: "ShareId", # required
    #     workload_id: "WorkloadId", # required
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DeleteWorkloadShare AWS API Documentation
    #
    # @overload delete_workload_share(params = {})
    # @param [Hash] params ({})
    def delete_workload_share(params = {}, options = {})
      req = build_request(:delete_workload_share, params)
      req.send_request(options)
    end

    # Disassociate a lens from a workload.
    #
    # Up to 10 lenses can be disassociated from a workload in a single API
    # operation.
    #
    # <note markdown="1"> The Amazon Web Services Well-Architected Framework lens
    # (`wellarchitected`) cannot be removed from a workload.
    #
    #  </note>
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, Array<String>] :lens_aliases
    #   List of lens aliases to associate or disassociate with a workload. Up
    #   to 10 lenses can be specified.
    #
    #   Identify a lens using its LensSummary$LensAlias.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lenses({
    #     workload_id: "WorkloadId", # required
    #     lens_aliases: ["LensAlias"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/DisassociateLenses AWS API Documentation
    #
    # @overload disassociate_lenses(params = {})
    # @param [Hash] params ({})
    def disassociate_lenses(params = {}, options = {})
      req = build_request(:disassociate_lenses, params)
      req.send_request(options)
    end

    # Export an existing lens.
    #
    # Lenses are defined in JSON. For more information, see [JSON format
    # specification][1] in the *Well-Architected Tool User Guide*. Only the
    # owner of a lens can export it.
    #
    # <note markdown="1"> **Disclaimer**
    #
    #  Do not include or gather personal identifiable information (PII) of
    # end users or other identifiable individuals in or via your custom
    # lenses. If your custom lens or those shared with you and used in your
    # account do include or collect PII you are responsible for: ensuring
    # that the included PII is processed in accordance with applicable law,
    # providing adequate privacy notices, and obtaining necessary consents
    # for processing such data.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :lens_version
    #   The lens version to be exported.
    #
    # @return [Types::ExportLensOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportLensOutput#lens_json #lens_json} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_lens({
    #     lens_alias: "LensAlias", # required
    #     lens_version: "LensVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.lens_json #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ExportLens AWS API Documentation
    #
    # @overload export_lens(params = {})
    # @param [Hash] params ({})
    def export_lens(params = {}, options = {})
      req = build_request(:export_lens, params)
      req.send_request(options)
    end

    # Get the answer to a specific question in a workload review.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :question_id
    #   The ID of the question.
    #
    # @option params [Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @return [Types::GetAnswerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnswerOutput#workload_id #workload_id} => String
    #   * {Types::GetAnswerOutput#milestone_number #milestone_number} => Integer
    #   * {Types::GetAnswerOutput#lens_alias #lens_alias} => String
    #   * {Types::GetAnswerOutput#lens_arn #lens_arn} => String
    #   * {Types::GetAnswerOutput#answer #answer} => Types::Answer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_answer({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     question_id: "QuestionId", # required
    #     milestone_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #   resp.lens_alias #=> String
    #   resp.lens_arn #=> String
    #   resp.answer.question_id #=> String
    #   resp.answer.pillar_id #=> String
    #   resp.answer.question_title #=> String
    #   resp.answer.question_description #=> String
    #   resp.answer.improvement_plan_url #=> String
    #   resp.answer.helpful_resource_url #=> String
    #   resp.answer.helpful_resource_display_text #=> String
    #   resp.answer.choices #=> Array
    #   resp.answer.choices[0].choice_id #=> String
    #   resp.answer.choices[0].title #=> String
    #   resp.answer.choices[0].description #=> String
    #   resp.answer.choices[0].helpful_resource.display_text #=> String
    #   resp.answer.choices[0].helpful_resource.url #=> String
    #   resp.answer.choices[0].improvement_plan.display_text #=> String
    #   resp.answer.choices[0].improvement_plan.url #=> String
    #   resp.answer.selected_choices #=> Array
    #   resp.answer.selected_choices[0] #=> String
    #   resp.answer.choice_answers #=> Array
    #   resp.answer.choice_answers[0].choice_id #=> String
    #   resp.answer.choice_answers[0].status #=> String, one of "SELECTED", "NOT_APPLICABLE", "UNSELECTED"
    #   resp.answer.choice_answers[0].reason #=> String, one of "OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"
    #   resp.answer.choice_answers[0].notes #=> String
    #   resp.answer.is_applicable #=> Boolean
    #   resp.answer.risk #=> String, one of "UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"
    #   resp.answer.notes #=> String
    #   resp.answer.reason #=> String, one of "OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetAnswer AWS API Documentation
    #
    # @overload get_answer(params = {})
    # @param [Hash] params ({})
    def get_answer(params = {}, options = {})
      req = build_request(:get_answer, params)
      req.send_request(options)
    end

    # Get an existing lens.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :lens_version
    #   The lens version to be retrieved.
    #
    # @return [Types::GetLensOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLensOutput#lens #lens} => Types::Lens
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens({
    #     lens_alias: "LensAlias", # required
    #     lens_version: "LensVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.lens.lens_arn #=> String
    #   resp.lens.lens_version #=> String
    #   resp.lens.name #=> String
    #   resp.lens.description #=> String
    #   resp.lens.owner #=> String
    #   resp.lens.share_invitation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLens AWS API Documentation
    #
    # @overload get_lens(params = {})
    # @param [Hash] params ({})
    def get_lens(params = {}, options = {})
      req = build_request(:get_lens, params)
      req.send_request(options)
    end

    # Get lens review.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @return [Types::GetLensReviewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLensReviewOutput#workload_id #workload_id} => String
    #   * {Types::GetLensReviewOutput#milestone_number #milestone_number} => Integer
    #   * {Types::GetLensReviewOutput#lens_review #lens_review} => Types::LensReview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens_review({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     milestone_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #   resp.lens_review.lens_alias #=> String
    #   resp.lens_review.lens_arn #=> String
    #   resp.lens_review.lens_version #=> String
    #   resp.lens_review.lens_name #=> String
    #   resp.lens_review.lens_status #=> String, one of "CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"
    #   resp.lens_review.pillar_review_summaries #=> Array
    #   resp.lens_review.pillar_review_summaries[0].pillar_id #=> String
    #   resp.lens_review.pillar_review_summaries[0].pillar_name #=> String
    #   resp.lens_review.pillar_review_summaries[0].notes #=> String
    #   resp.lens_review.pillar_review_summaries[0].risk_counts #=> Hash
    #   resp.lens_review.pillar_review_summaries[0].risk_counts["Risk"] #=> Integer
    #   resp.lens_review.updated_at #=> Time
    #   resp.lens_review.notes #=> String
    #   resp.lens_review.risk_counts #=> Hash
    #   resp.lens_review.risk_counts["Risk"] #=> Integer
    #   resp.lens_review.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReview AWS API Documentation
    #
    # @overload get_lens_review(params = {})
    # @param [Hash] params ({})
    def get_lens_review(params = {}, options = {})
      req = build_request(:get_lens_review, params)
      req.send_request(options)
    end

    # Get lens review report.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @return [Types::GetLensReviewReportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLensReviewReportOutput#workload_id #workload_id} => String
    #   * {Types::GetLensReviewReportOutput#milestone_number #milestone_number} => Integer
    #   * {Types::GetLensReviewReportOutput#lens_review_report #lens_review_report} => Types::LensReviewReport
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens_review_report({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     milestone_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #   resp.lens_review_report.lens_alias #=> String
    #   resp.lens_review_report.lens_arn #=> String
    #   resp.lens_review_report.base_64_string #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensReviewReport AWS API Documentation
    #
    # @overload get_lens_review_report(params = {})
    # @param [Hash] params ({})
    def get_lens_review_report(params = {}, options = {})
      req = build_request(:get_lens_review_report, params)
      req.send_request(options)
    end

    # Get lens version differences.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :base_lens_version
    #   The base version of the lens.
    #
    # @option params [String] :target_lens_version
    #   The lens version to target a difference for.
    #
    # @return [Types::GetLensVersionDifferenceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLensVersionDifferenceOutput#lens_alias #lens_alias} => String
    #   * {Types::GetLensVersionDifferenceOutput#lens_arn #lens_arn} => String
    #   * {Types::GetLensVersionDifferenceOutput#base_lens_version #base_lens_version} => String
    #   * {Types::GetLensVersionDifferenceOutput#target_lens_version #target_lens_version} => String
    #   * {Types::GetLensVersionDifferenceOutput#latest_lens_version #latest_lens_version} => String
    #   * {Types::GetLensVersionDifferenceOutput#version_differences #version_differences} => Types::VersionDifferences
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lens_version_difference({
    #     lens_alias: "LensAlias", # required
    #     base_lens_version: "LensVersion",
    #     target_lens_version: "LensVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.lens_alias #=> String
    #   resp.lens_arn #=> String
    #   resp.base_lens_version #=> String
    #   resp.target_lens_version #=> String
    #   resp.latest_lens_version #=> String
    #   resp.version_differences.pillar_differences #=> Array
    #   resp.version_differences.pillar_differences[0].pillar_id #=> String
    #   resp.version_differences.pillar_differences[0].pillar_name #=> String
    #   resp.version_differences.pillar_differences[0].difference_status #=> String, one of "UPDATED", "NEW", "DELETED"
    #   resp.version_differences.pillar_differences[0].question_differences #=> Array
    #   resp.version_differences.pillar_differences[0].question_differences[0].question_id #=> String
    #   resp.version_differences.pillar_differences[0].question_differences[0].question_title #=> String
    #   resp.version_differences.pillar_differences[0].question_differences[0].difference_status #=> String, one of "UPDATED", "NEW", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetLensVersionDifference AWS API Documentation
    #
    # @overload get_lens_version_difference(params = {})
    # @param [Hash] params ({})
    def get_lens_version_difference(params = {}, options = {})
      req = build_request(:get_lens_version_difference, params)
      req.send_request(options)
    end

    # Get a milestone for an existing workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @return [Types::GetMilestoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMilestoneOutput#workload_id #workload_id} => String
    #   * {Types::GetMilestoneOutput#milestone #milestone} => Types::Milestone
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_milestone({
    #     workload_id: "WorkloadId", # required
    #     milestone_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone.milestone_number #=> Integer
    #   resp.milestone.milestone_name #=> String
    #   resp.milestone.recorded_at #=> Time
    #   resp.milestone.workload.workload_id #=> String
    #   resp.milestone.workload.workload_arn #=> String
    #   resp.milestone.workload.workload_name #=> String
    #   resp.milestone.workload.description #=> String
    #   resp.milestone.workload.environment #=> String, one of "PRODUCTION", "PREPRODUCTION"
    #   resp.milestone.workload.updated_at #=> Time
    #   resp.milestone.workload.account_ids #=> Array
    #   resp.milestone.workload.account_ids[0] #=> String
    #   resp.milestone.workload.aws_regions #=> Array
    #   resp.milestone.workload.aws_regions[0] #=> String
    #   resp.milestone.workload.non_aws_regions #=> Array
    #   resp.milestone.workload.non_aws_regions[0] #=> String
    #   resp.milestone.workload.architectural_design #=> String
    #   resp.milestone.workload.review_owner #=> String
    #   resp.milestone.workload.review_restriction_date #=> Time
    #   resp.milestone.workload.is_review_owner_update_acknowledged #=> Boolean
    #   resp.milestone.workload.industry_type #=> String
    #   resp.milestone.workload.industry #=> String
    #   resp.milestone.workload.notes #=> String
    #   resp.milestone.workload.improvement_status #=> String, one of "NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"
    #   resp.milestone.workload.risk_counts #=> Hash
    #   resp.milestone.workload.risk_counts["Risk"] #=> Integer
    #   resp.milestone.workload.pillar_priorities #=> Array
    #   resp.milestone.workload.pillar_priorities[0] #=> String
    #   resp.milestone.workload.lenses #=> Array
    #   resp.milestone.workload.lenses[0] #=> String
    #   resp.milestone.workload.owner #=> String
    #   resp.milestone.workload.share_invitation_id #=> String
    #   resp.milestone.workload.tags #=> Hash
    #   resp.milestone.workload.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetMilestone AWS API Documentation
    #
    # @overload get_milestone(params = {})
    # @param [Hash] params ({})
    def get_milestone(params = {}, options = {})
      req = build_request(:get_milestone, params)
      req.send_request(options)
    end

    # Get an existing workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @return [Types::GetWorkloadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkloadOutput#workload #workload} => Types::Workload
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload({
    #     workload_id: "WorkloadId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload.workload_id #=> String
    #   resp.workload.workload_arn #=> String
    #   resp.workload.workload_name #=> String
    #   resp.workload.description #=> String
    #   resp.workload.environment #=> String, one of "PRODUCTION", "PREPRODUCTION"
    #   resp.workload.updated_at #=> Time
    #   resp.workload.account_ids #=> Array
    #   resp.workload.account_ids[0] #=> String
    #   resp.workload.aws_regions #=> Array
    #   resp.workload.aws_regions[0] #=> String
    #   resp.workload.non_aws_regions #=> Array
    #   resp.workload.non_aws_regions[0] #=> String
    #   resp.workload.architectural_design #=> String
    #   resp.workload.review_owner #=> String
    #   resp.workload.review_restriction_date #=> Time
    #   resp.workload.is_review_owner_update_acknowledged #=> Boolean
    #   resp.workload.industry_type #=> String
    #   resp.workload.industry #=> String
    #   resp.workload.notes #=> String
    #   resp.workload.improvement_status #=> String, one of "NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"
    #   resp.workload.risk_counts #=> Hash
    #   resp.workload.risk_counts["Risk"] #=> Integer
    #   resp.workload.pillar_priorities #=> Array
    #   resp.workload.pillar_priorities[0] #=> String
    #   resp.workload.lenses #=> Array
    #   resp.workload.lenses[0] #=> String
    #   resp.workload.owner #=> String
    #   resp.workload.share_invitation_id #=> String
    #   resp.workload.tags #=> Hash
    #   resp.workload.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/GetWorkload AWS API Documentation
    #
    # @overload get_workload(params = {})
    # @param [Hash] params ({})
    def get_workload(params = {}, options = {})
      req = build_request(:get_workload, params)
      req.send_request(options)
    end

    # Import a new lens.
    #
    # The lens cannot be applied to workloads or shared with other Amazon
    # Web Services accounts until it's published with CreateLensVersion
    #
    # Lenses are defined in JSON. For more information, see [JSON format
    # specification][1] in the *Well-Architected Tool User Guide*.
    #
    # A custom lens cannot exceed 500 KB in size.
    #
    # <note markdown="1"> **Disclaimer**
    #
    #  Do not include or gather personal identifiable information (PII) of
    # end users or other identifiable individuals in or via your custom
    # lenses. If your custom lens or those shared with you and used in your
    # account do include or collect PII you are responsible for: ensuring
    # that the included PII is processed in accordance with applicable law,
    # providing adequate privacy notices, and obtaining necessary consents
    # for processing such data.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html
    #
    # @option params [String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :json_string
    #   The JSON representation of a lens.
    #
    # @option params [required, String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to associate to a lens.
    #
    # @return [Types::ImportLensOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportLensOutput#lens_arn #lens_arn} => String
    #   * {Types::ImportLensOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_lens({
    #     lens_alias: "LensAlias",
    #     json_string: "LensJSON", # required
    #     client_request_token: "ClientRequestToken", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.lens_arn #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ImportLens AWS API Documentation
    #
    # @overload import_lens(params = {})
    # @param [Hash] params ({})
    def import_lens(params = {}, options = {})
      req = build_request(:import_lens, params)
      req.send_request(options)
    end

    # List of answers.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #
    # @option params [Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListAnswersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnswersOutput#workload_id #workload_id} => String
    #   * {Types::ListAnswersOutput#milestone_number #milestone_number} => Integer
    #   * {Types::ListAnswersOutput#lens_alias #lens_alias} => String
    #   * {Types::ListAnswersOutput#lens_arn #lens_arn} => String
    #   * {Types::ListAnswersOutput#answer_summaries #answer_summaries} => Array&lt;Types::AnswerSummary&gt;
    #   * {Types::ListAnswersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_answers({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     pillar_id: "PillarId",
    #     milestone_number: 1,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #   resp.lens_alias #=> String
    #   resp.lens_arn #=> String
    #   resp.answer_summaries #=> Array
    #   resp.answer_summaries[0].question_id #=> String
    #   resp.answer_summaries[0].pillar_id #=> String
    #   resp.answer_summaries[0].question_title #=> String
    #   resp.answer_summaries[0].choices #=> Array
    #   resp.answer_summaries[0].choices[0].choice_id #=> String
    #   resp.answer_summaries[0].choices[0].title #=> String
    #   resp.answer_summaries[0].choices[0].description #=> String
    #   resp.answer_summaries[0].choices[0].helpful_resource.display_text #=> String
    #   resp.answer_summaries[0].choices[0].helpful_resource.url #=> String
    #   resp.answer_summaries[0].choices[0].improvement_plan.display_text #=> String
    #   resp.answer_summaries[0].choices[0].improvement_plan.url #=> String
    #   resp.answer_summaries[0].selected_choices #=> Array
    #   resp.answer_summaries[0].selected_choices[0] #=> String
    #   resp.answer_summaries[0].choice_answer_summaries #=> Array
    #   resp.answer_summaries[0].choice_answer_summaries[0].choice_id #=> String
    #   resp.answer_summaries[0].choice_answer_summaries[0].status #=> String, one of "SELECTED", "NOT_APPLICABLE", "UNSELECTED"
    #   resp.answer_summaries[0].choice_answer_summaries[0].reason #=> String, one of "OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"
    #   resp.answer_summaries[0].is_applicable #=> Boolean
    #   resp.answer_summaries[0].risk #=> String, one of "UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"
    #   resp.answer_summaries[0].reason #=> String, one of "OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListAnswers AWS API Documentation
    #
    # @overload list_answers(params = {})
    # @param [Hash] params ({})
    def list_answers(params = {}, options = {})
      req = build_request(:list_answers, params)
      req.send_request(options)
    end

    # List lens review improvements.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :pillar_id
    #   The ID used to identify a pillar, for example, `security`.
    #
    #   A pillar is identified by its PillarReviewSummary$PillarId.
    #
    # @option params [Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListLensReviewImprovementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLensReviewImprovementsOutput#workload_id #workload_id} => String
    #   * {Types::ListLensReviewImprovementsOutput#milestone_number #milestone_number} => Integer
    #   * {Types::ListLensReviewImprovementsOutput#lens_alias #lens_alias} => String
    #   * {Types::ListLensReviewImprovementsOutput#lens_arn #lens_arn} => String
    #   * {Types::ListLensReviewImprovementsOutput#improvement_summaries #improvement_summaries} => Array&lt;Types::ImprovementSummary&gt;
    #   * {Types::ListLensReviewImprovementsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lens_review_improvements({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     pillar_id: "PillarId",
    #     milestone_number: 1,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #   resp.lens_alias #=> String
    #   resp.lens_arn #=> String
    #   resp.improvement_summaries #=> Array
    #   resp.improvement_summaries[0].question_id #=> String
    #   resp.improvement_summaries[0].pillar_id #=> String
    #   resp.improvement_summaries[0].question_title #=> String
    #   resp.improvement_summaries[0].risk #=> String, one of "UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"
    #   resp.improvement_summaries[0].improvement_plan_url #=> String
    #   resp.improvement_summaries[0].improvement_plans #=> Array
    #   resp.improvement_summaries[0].improvement_plans[0].choice_id #=> String
    #   resp.improvement_summaries[0].improvement_plans[0].display_text #=> String
    #   resp.improvement_summaries[0].improvement_plans[0].improvement_plan_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviewImprovements AWS API Documentation
    #
    # @overload list_lens_review_improvements(params = {})
    # @param [Hash] params ({})
    def list_lens_review_improvements(params = {}, options = {})
      req = build_request(:list_lens_review_improvements, params)
      req.send_request(options)
    end

    # List lens reviews.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [Integer] :milestone_number
    #   The milestone number.
    #
    #   A workload can have a maximum of 100 milestones.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListLensReviewsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLensReviewsOutput#workload_id #workload_id} => String
    #   * {Types::ListLensReviewsOutput#milestone_number #milestone_number} => Integer
    #   * {Types::ListLensReviewsOutput#lens_review_summaries #lens_review_summaries} => Array&lt;Types::LensReviewSummary&gt;
    #   * {Types::ListLensReviewsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lens_reviews({
    #     workload_id: "WorkloadId", # required
    #     milestone_number: 1,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_number #=> Integer
    #   resp.lens_review_summaries #=> Array
    #   resp.lens_review_summaries[0].lens_alias #=> String
    #   resp.lens_review_summaries[0].lens_arn #=> String
    #   resp.lens_review_summaries[0].lens_version #=> String
    #   resp.lens_review_summaries[0].lens_name #=> String
    #   resp.lens_review_summaries[0].lens_status #=> String, one of "CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"
    #   resp.lens_review_summaries[0].updated_at #=> Time
    #   resp.lens_review_summaries[0].risk_counts #=> Hash
    #   resp.lens_review_summaries[0].risk_counts["Risk"] #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensReviews AWS API Documentation
    #
    # @overload list_lens_reviews(params = {})
    # @param [Hash] params ({})
    def list_lens_reviews(params = {}, options = {})
      req = build_request(:list_lens_reviews, params)
      req.send_request(options)
    end

    # List the lens shares associated with the lens.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :shared_with_prefix
    #   The Amazon Web Services account ID or IAM role with which the lens is
    #   shared.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListLensSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLensSharesOutput#lens_share_summaries #lens_share_summaries} => Array&lt;Types::LensShareSummary&gt;
    #   * {Types::ListLensSharesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lens_shares({
    #     lens_alias: "LensAlias", # required
    #     shared_with_prefix: "SharedWithPrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.lens_share_summaries #=> Array
    #   resp.lens_share_summaries[0].share_id #=> String
    #   resp.lens_share_summaries[0].shared_with #=> String
    #   resp.lens_share_summaries[0].status #=> String, one of "ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLensShares AWS API Documentation
    #
    # @overload list_lens_shares(params = {})
    # @param [Hash] params ({})
    def list_lens_shares(params = {}, options = {})
      req = build_request(:list_lens_shares, params)
      req.send_request(options)
    end

    # List the available lenses.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @option params [String] :lens_type
    #   The type of lenses to be returned.
    #
    # @option params [String] :lens_status
    #   The status of lenses to be returned.
    #
    # @option params [String] :lens_name
    #   The full name of the lens.
    #
    # @return [Types::ListLensesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLensesOutput#lens_summaries #lens_summaries} => Array&lt;Types::LensSummary&gt;
    #   * {Types::ListLensesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lenses({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lens_type: "AWS_OFFICIAL", # accepts AWS_OFFICIAL, CUSTOM_SHARED, CUSTOM_SELF
    #     lens_status: "ALL", # accepts ALL, DRAFT, PUBLISHED
    #     lens_name: "LensName",
    #   })
    #
    # @example Response structure
    #
    #   resp.lens_summaries #=> Array
    #   resp.lens_summaries[0].lens_arn #=> String
    #   resp.lens_summaries[0].lens_alias #=> String
    #   resp.lens_summaries[0].lens_name #=> String
    #   resp.lens_summaries[0].lens_type #=> String, one of "AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"
    #   resp.lens_summaries[0].description #=> String
    #   resp.lens_summaries[0].created_at #=> Time
    #   resp.lens_summaries[0].updated_at #=> Time
    #   resp.lens_summaries[0].lens_version #=> String
    #   resp.lens_summaries[0].owner #=> String
    #   resp.lens_summaries[0].lens_status #=> String, one of "CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListLenses AWS API Documentation
    #
    # @overload list_lenses(params = {})
    # @param [Hash] params ({})
    def list_lenses(params = {}, options = {})
      req = build_request(:list_lenses, params)
      req.send_request(options)
    end

    # List all milestones for an existing workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListMilestonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMilestonesOutput#workload_id #workload_id} => String
    #   * {Types::ListMilestonesOutput#milestone_summaries #milestone_summaries} => Array&lt;Types::MilestoneSummary&gt;
    #   * {Types::ListMilestonesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_milestones({
    #     workload_id: "WorkloadId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.milestone_summaries #=> Array
    #   resp.milestone_summaries[0].milestone_number #=> Integer
    #   resp.milestone_summaries[0].milestone_name #=> String
    #   resp.milestone_summaries[0].recorded_at #=> Time
    #   resp.milestone_summaries[0].workload_summary.workload_id #=> String
    #   resp.milestone_summaries[0].workload_summary.workload_arn #=> String
    #   resp.milestone_summaries[0].workload_summary.workload_name #=> String
    #   resp.milestone_summaries[0].workload_summary.owner #=> String
    #   resp.milestone_summaries[0].workload_summary.updated_at #=> Time
    #   resp.milestone_summaries[0].workload_summary.lenses #=> Array
    #   resp.milestone_summaries[0].workload_summary.lenses[0] #=> String
    #   resp.milestone_summaries[0].workload_summary.risk_counts #=> Hash
    #   resp.milestone_summaries[0].workload_summary.risk_counts["Risk"] #=> Integer
    #   resp.milestone_summaries[0].workload_summary.improvement_status #=> String, one of "NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListMilestones AWS API Documentation
    #
    # @overload list_milestones(params = {})
    # @param [Hash] params ({})
    def list_milestones(params = {}, options = {})
      req = build_request(:list_milestones, params)
      req.send_request(options)
    end

    # List lens notifications.
    #
    # @option params [String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListNotificationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationsOutput#notification_summaries #notification_summaries} => Array&lt;Types::NotificationSummary&gt;
    #   * {Types::ListNotificationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notifications({
    #     workload_id: "WorkloadId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_summaries #=> Array
    #   resp.notification_summaries[0].type #=> String, one of "LENS_VERSION_UPGRADED", "LENS_VERSION_DEPRECATED"
    #   resp.notification_summaries[0].lens_upgrade_summary.workload_id #=> String
    #   resp.notification_summaries[0].lens_upgrade_summary.workload_name #=> String
    #   resp.notification_summaries[0].lens_upgrade_summary.lens_alias #=> String
    #   resp.notification_summaries[0].lens_upgrade_summary.lens_arn #=> String
    #   resp.notification_summaries[0].lens_upgrade_summary.current_lens_version #=> String
    #   resp.notification_summaries[0].lens_upgrade_summary.latest_lens_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListNotifications AWS API Documentation
    #
    # @overload list_notifications(params = {})
    # @param [Hash] params ({})
    def list_notifications(params = {}, options = {})
      req = build_request(:list_notifications, params)
      req.send_request(options)
    end

    # List the workload invitations.
    #
    # @option params [String] :workload_name_prefix
    #   An optional string added to the beginning of each workload name
    #   returned in the results.
    #
    # @option params [String] :lens_name_prefix
    #   An optional string added to the beginning of each lens name returned
    #   in the results.
    #
    # @option params [String] :share_resource_type
    #   The type of share invitations to be returned.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListShareInvitationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListShareInvitationsOutput#share_invitation_summaries #share_invitation_summaries} => Array&lt;Types::ShareInvitationSummary&gt;
    #   * {Types::ListShareInvitationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_share_invitations({
    #     workload_name_prefix: "WorkloadNamePrefix",
    #     lens_name_prefix: "LensNamePrefix",
    #     share_resource_type: "WORKLOAD", # accepts WORKLOAD, LENS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.share_invitation_summaries #=> Array
    #   resp.share_invitation_summaries[0].share_invitation_id #=> String
    #   resp.share_invitation_summaries[0].shared_by #=> String
    #   resp.share_invitation_summaries[0].shared_with #=> String
    #   resp.share_invitation_summaries[0].permission_type #=> String, one of "READONLY", "CONTRIBUTOR"
    #   resp.share_invitation_summaries[0].share_resource_type #=> String, one of "WORKLOAD", "LENS"
    #   resp.share_invitation_summaries[0].workload_name #=> String
    #   resp.share_invitation_summaries[0].workload_id #=> String
    #   resp.share_invitation_summaries[0].lens_name #=> String
    #   resp.share_invitation_summaries[0].lens_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListShareInvitations AWS API Documentation
    #
    # @overload list_share_invitations(params = {})
    # @param [Hash] params ({})
    def list_share_invitations(params = {}, options = {})
      req = build_request(:list_share_invitations, params)
      req.send_request(options)
    end

    # List the tags for a resource.
    #
    # @option params [required, String] :workload_arn
    #   The ARN for the workload.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     workload_arn: "WorkloadArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # List the workload shares associated with the workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [String] :shared_with_prefix
    #   The Amazon Web Services account ID or IAM role with which the workload
    #   is shared.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListWorkloadSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkloadSharesOutput#workload_id #workload_id} => String
    #   * {Types::ListWorkloadSharesOutput#workload_share_summaries #workload_share_summaries} => Array&lt;Types::WorkloadShareSummary&gt;
    #   * {Types::ListWorkloadSharesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workload_shares({
    #     workload_id: "WorkloadId", # required
    #     shared_with_prefix: "SharedWithPrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.workload_share_summaries #=> Array
    #   resp.workload_share_summaries[0].share_id #=> String
    #   resp.workload_share_summaries[0].shared_with #=> String
    #   resp.workload_share_summaries[0].permission_type #=> String, one of "READONLY", "CONTRIBUTOR"
    #   resp.workload_share_summaries[0].status #=> String, one of "ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloadShares AWS API Documentation
    #
    # @overload list_workload_shares(params = {})
    # @param [Hash] params ({})
    def list_workload_shares(params = {}, options = {})
      req = build_request(:list_workload_shares, params)
      req.send_request(options)
    end

    # List workloads. Paginated.
    #
    # @option params [String] :workload_name_prefix
    #   An optional string added to the beginning of each workload name
    #   returned in the results.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for this request.
    #
    # @return [Types::ListWorkloadsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkloadsOutput#workload_summaries #workload_summaries} => Array&lt;Types::WorkloadSummary&gt;
    #   * {Types::ListWorkloadsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workloads({
    #     workload_name_prefix: "WorkloadNamePrefix",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_summaries #=> Array
    #   resp.workload_summaries[0].workload_id #=> String
    #   resp.workload_summaries[0].workload_arn #=> String
    #   resp.workload_summaries[0].workload_name #=> String
    #   resp.workload_summaries[0].owner #=> String
    #   resp.workload_summaries[0].updated_at #=> Time
    #   resp.workload_summaries[0].lenses #=> Array
    #   resp.workload_summaries[0].lenses[0] #=> String
    #   resp.workload_summaries[0].risk_counts #=> Hash
    #   resp.workload_summaries[0].risk_counts["Risk"] #=> Integer
    #   resp.workload_summaries[0].improvement_status #=> String, one of "NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/ListWorkloads AWS API Documentation
    #
    # @overload list_workloads(params = {})
    # @param [Hash] params ({})
    def list_workloads(params = {}, options = {})
      req = build_request(:list_workloads, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified resource.
    #
    # @option params [required, String] :workload_arn
    #   The ARN for the workload.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     workload_arn: "WorkloadArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # To specify multiple tags, use separate **tagKeys** parameters, for
    # example:
    #
    # `DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2`
    #
    # @option params [required, String] :workload_arn
    #   The ARN for the workload.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Existing tags of the resource whose keys are
    #   members of this list are removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     workload_arn: "WorkloadArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the answer to a specific question in a workload review.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :question_id
    #   The ID of the question.
    #
    # @option params [Array<String>] :selected_choices
    #   List of selected choice IDs in a question answer.
    #
    #   The values entered replace the previously selected choices.
    #
    # @option params [Hash<String,Types::ChoiceUpdate>] :choice_updates
    #   A list of choices to update on a question in your workload. The String
    #   key corresponds to the choice ID to be updated.
    #
    # @option params [String] :notes
    #   The notes associated with the workload.
    #
    # @option params [Boolean] :is_applicable
    #   Defines whether this question is applicable to a lens review.
    #
    # @option params [String] :reason
    #   The reason why a question is not applicable to your workload.
    #
    # @return [Types::UpdateAnswerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnswerOutput#workload_id #workload_id} => String
    #   * {Types::UpdateAnswerOutput#lens_alias #lens_alias} => String
    #   * {Types::UpdateAnswerOutput#lens_arn #lens_arn} => String
    #   * {Types::UpdateAnswerOutput#answer #answer} => Types::Answer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_answer({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     question_id: "QuestionId", # required
    #     selected_choices: ["ChoiceId"],
    #     choice_updates: {
    #       "ChoiceId" => {
    #         status: "SELECTED", # required, accepts SELECTED, NOT_APPLICABLE, UNSELECTED
    #         reason: "OUT_OF_SCOPE", # accepts OUT_OF_SCOPE, BUSINESS_PRIORITIES, ARCHITECTURE_CONSTRAINTS, OTHER, NONE
    #         notes: "ChoiceNotes",
    #       },
    #     },
    #     notes: "Notes",
    #     is_applicable: false,
    #     reason: "OUT_OF_SCOPE", # accepts OUT_OF_SCOPE, BUSINESS_PRIORITIES, ARCHITECTURE_CONSTRAINTS, OTHER, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.lens_alias #=> String
    #   resp.lens_arn #=> String
    #   resp.answer.question_id #=> String
    #   resp.answer.pillar_id #=> String
    #   resp.answer.question_title #=> String
    #   resp.answer.question_description #=> String
    #   resp.answer.improvement_plan_url #=> String
    #   resp.answer.helpful_resource_url #=> String
    #   resp.answer.helpful_resource_display_text #=> String
    #   resp.answer.choices #=> Array
    #   resp.answer.choices[0].choice_id #=> String
    #   resp.answer.choices[0].title #=> String
    #   resp.answer.choices[0].description #=> String
    #   resp.answer.choices[0].helpful_resource.display_text #=> String
    #   resp.answer.choices[0].helpful_resource.url #=> String
    #   resp.answer.choices[0].improvement_plan.display_text #=> String
    #   resp.answer.choices[0].improvement_plan.url #=> String
    #   resp.answer.selected_choices #=> Array
    #   resp.answer.selected_choices[0] #=> String
    #   resp.answer.choice_answers #=> Array
    #   resp.answer.choice_answers[0].choice_id #=> String
    #   resp.answer.choice_answers[0].status #=> String, one of "SELECTED", "NOT_APPLICABLE", "UNSELECTED"
    #   resp.answer.choice_answers[0].reason #=> String, one of "OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"
    #   resp.answer.choice_answers[0].notes #=> String
    #   resp.answer.is_applicable #=> Boolean
    #   resp.answer.risk #=> String, one of "UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"
    #   resp.answer.notes #=> String
    #   resp.answer.reason #=> String, one of "OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateAnswer AWS API Documentation
    #
    # @overload update_answer(params = {})
    # @param [Hash] params ({})
    def update_answer(params = {}, options = {})
      req = build_request(:update_answer, params)
      req.send_request(options)
    end

    # Update lens review.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [String] :lens_notes
    #   The notes associated with the workload.
    #
    # @option params [Hash<String,String>] :pillar_notes
    #   List of pillar notes of a lens review in a workload.
    #
    # @return [Types::UpdateLensReviewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLensReviewOutput#workload_id #workload_id} => String
    #   * {Types::UpdateLensReviewOutput#lens_review #lens_review} => Types::LensReview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lens_review({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     lens_notes: "Notes",
    #     pillar_notes: {
    #       "PillarId" => "Notes",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.lens_review.lens_alias #=> String
    #   resp.lens_review.lens_arn #=> String
    #   resp.lens_review.lens_version #=> String
    #   resp.lens_review.lens_name #=> String
    #   resp.lens_review.lens_status #=> String, one of "CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"
    #   resp.lens_review.pillar_review_summaries #=> Array
    #   resp.lens_review.pillar_review_summaries[0].pillar_id #=> String
    #   resp.lens_review.pillar_review_summaries[0].pillar_name #=> String
    #   resp.lens_review.pillar_review_summaries[0].notes #=> String
    #   resp.lens_review.pillar_review_summaries[0].risk_counts #=> Hash
    #   resp.lens_review.pillar_review_summaries[0].risk_counts["Risk"] #=> Integer
    #   resp.lens_review.updated_at #=> Time
    #   resp.lens_review.notes #=> String
    #   resp.lens_review.risk_counts #=> Hash
    #   resp.lens_review.risk_counts["Risk"] #=> Integer
    #   resp.lens_review.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateLensReview AWS API Documentation
    #
    # @overload update_lens_review(params = {})
    # @param [Hash] params ({})
    def update_lens_review(params = {}, options = {})
      req = build_request(:update_lens_review, params)
      req.send_request(options)
    end

    # Update a workload invitation.
    #
    # @option params [required, String] :share_invitation_id
    #   The ID assigned to the share invitation.
    #
    # @option params [required, String] :share_invitation_action
    #   Share invitation action taken by contributor.
    #
    # @return [Types::UpdateShareInvitationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateShareInvitationOutput#share_invitation #share_invitation} => Types::ShareInvitation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_share_invitation({
    #     share_invitation_id: "ShareInvitationId", # required
    #     share_invitation_action: "ACCEPT", # required, accepts ACCEPT, REJECT
    #   })
    #
    # @example Response structure
    #
    #   resp.share_invitation.share_invitation_id #=> String
    #   resp.share_invitation.share_resource_type #=> String, one of "WORKLOAD", "LENS"
    #   resp.share_invitation.workload_id #=> String
    #   resp.share_invitation.lens_alias #=> String
    #   resp.share_invitation.lens_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateShareInvitation AWS API Documentation
    #
    # @overload update_share_invitation(params = {})
    # @param [Hash] params ({})
    def update_share_invitation(params = {}, options = {})
      req = build_request(:update_share_invitation, params)
      req.send_request(options)
    end

    # Update an existing workload.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [String] :workload_name
    #   The name of the workload.
    #
    #   The name must be unique within an account within an Amazon Web
    #   Services Region. Spaces and capitalization are ignored when checking
    #   for uniqueness.
    #
    # @option params [String] :description
    #   The description for the workload.
    #
    # @option params [String] :environment
    #   The environment for the workload.
    #
    # @option params [Array<String>] :account_ids
    #   The list of Amazon Web Services account IDs associated with the
    #   workload.
    #
    # @option params [Array<String>] :aws_regions
    #   The list of Amazon Web Services Regions associated with the workload,
    #   for example, `us-east-2`, or `ca-central-1`.
    #
    # @option params [Array<String>] :non_aws_regions
    #   The list of non-Amazon Web Services Regions associated with the
    #   workload.
    #
    # @option params [Array<String>] :pillar_priorities
    #   The priorities of the pillars, which are used to order items in the
    #   improvement plan. Each pillar is represented by its
    #   PillarReviewSummary$PillarId.
    #
    # @option params [String] :architectural_design
    #   The URL of the architectural design for the workload.
    #
    # @option params [String] :review_owner
    #   The review owner of the workload. The name, email address, or
    #   identifier for the primary group or individual that owns the workload
    #   review process.
    #
    # @option params [Boolean] :is_review_owner_update_acknowledged
    #   Flag indicating whether the workload owner has acknowledged that the
    #   *Review owner* field is required.
    #
    #   If a **Review owner** is not added to the workload within 60 days of
    #   acknowledgement, access to the workload is restricted until an owner
    #   is added.
    #
    # @option params [String] :industry_type
    #   The industry type for the workload.
    #
    #   If specified, must be one of the following:
    #
    #   * `Agriculture`
    #
    #   * `Automobile`
    #
    #   * `Defense`
    #
    #   * `Design and Engineering`
    #
    #   * `Digital Advertising`
    #
    #   * `Education`
    #
    #   * `Environmental Protection`
    #
    #   * `Financial Services`
    #
    #   * `Gaming`
    #
    #   * `General Public Services`
    #
    #   * `Healthcare`
    #
    #   * `Hospitality`
    #
    #   * `InfoTech`
    #
    #   * `Justice and Public Safety`
    #
    #   * `Life Sciences`
    #
    #   * `Manufacturing`
    #
    #   * `Media & Entertainment`
    #
    #   * `Mining & Resources`
    #
    #   * `Oil & Gas`
    #
    #   * `Power & Utilities`
    #
    #   * `Professional Services`
    #
    #   * `Real Estate & Construction`
    #
    #   * `Retail & Wholesale`
    #
    #   * `Social Protection`
    #
    #   * `Telecommunications`
    #
    #   * `Travel, Transportation & Logistics`
    #
    #   * `Other`
    #
    # @option params [String] :industry
    #   The industry for the workload.
    #
    # @option params [String] :notes
    #   The notes associated with the workload.
    #
    # @option params [String] :improvement_status
    #   The improvement status for a workload.
    #
    # @return [Types::UpdateWorkloadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkloadOutput#workload #workload} => Types::Workload
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload({
    #     workload_id: "WorkloadId", # required
    #     workload_name: "WorkloadName",
    #     description: "WorkloadDescription",
    #     environment: "PRODUCTION", # accepts PRODUCTION, PREPRODUCTION
    #     account_ids: ["AwsAccountId"],
    #     aws_regions: ["AwsRegion"],
    #     non_aws_regions: ["WorkloadNonAwsRegion"],
    #     pillar_priorities: ["PillarId"],
    #     architectural_design: "WorkloadArchitecturalDesign",
    #     review_owner: "WorkloadReviewOwner",
    #     is_review_owner_update_acknowledged: false,
    #     industry_type: "WorkloadIndustryType",
    #     industry: "WorkloadIndustry",
    #     notes: "Notes",
    #     improvement_status: "NOT_APPLICABLE", # accepts NOT_APPLICABLE, NOT_STARTED, IN_PROGRESS, COMPLETE, RISK_ACKNOWLEDGED
    #   })
    #
    # @example Response structure
    #
    #   resp.workload.workload_id #=> String
    #   resp.workload.workload_arn #=> String
    #   resp.workload.workload_name #=> String
    #   resp.workload.description #=> String
    #   resp.workload.environment #=> String, one of "PRODUCTION", "PREPRODUCTION"
    #   resp.workload.updated_at #=> Time
    #   resp.workload.account_ids #=> Array
    #   resp.workload.account_ids[0] #=> String
    #   resp.workload.aws_regions #=> Array
    #   resp.workload.aws_regions[0] #=> String
    #   resp.workload.non_aws_regions #=> Array
    #   resp.workload.non_aws_regions[0] #=> String
    #   resp.workload.architectural_design #=> String
    #   resp.workload.review_owner #=> String
    #   resp.workload.review_restriction_date #=> Time
    #   resp.workload.is_review_owner_update_acknowledged #=> Boolean
    #   resp.workload.industry_type #=> String
    #   resp.workload.industry #=> String
    #   resp.workload.notes #=> String
    #   resp.workload.improvement_status #=> String, one of "NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"
    #   resp.workload.risk_counts #=> Hash
    #   resp.workload.risk_counts["Risk"] #=> Integer
    #   resp.workload.pillar_priorities #=> Array
    #   resp.workload.pillar_priorities[0] #=> String
    #   resp.workload.lenses #=> Array
    #   resp.workload.lenses[0] #=> String
    #   resp.workload.owner #=> String
    #   resp.workload.share_invitation_id #=> String
    #   resp.workload.tags #=> Hash
    #   resp.workload.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkload AWS API Documentation
    #
    # @overload update_workload(params = {})
    # @param [Hash] params ({})
    def update_workload(params = {}, options = {})
      req = build_request(:update_workload, params)
      req.send_request(options)
    end

    # Update a workload share.
    #
    # @option params [required, String] :share_id
    #   The ID associated with the workload share.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :permission_type
    #   Permission granted on a workload share.
    #
    # @return [Types::UpdateWorkloadShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkloadShareOutput#workload_id #workload_id} => String
    #   * {Types::UpdateWorkloadShareOutput#workload_share #workload_share} => Types::WorkloadShare
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload_share({
    #     share_id: "ShareId", # required
    #     workload_id: "WorkloadId", # required
    #     permission_type: "READONLY", # required, accepts READONLY, CONTRIBUTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.workload_share.share_id #=> String
    #   resp.workload_share.shared_by #=> String
    #   resp.workload_share.shared_with #=> String
    #   resp.workload_share.permission_type #=> String, one of "READONLY", "CONTRIBUTOR"
    #   resp.workload_share.status #=> String, one of "ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"
    #   resp.workload_share.workload_name #=> String
    #   resp.workload_share.workload_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpdateWorkloadShare AWS API Documentation
    #
    # @overload update_workload_share(params = {})
    # @param [Hash] params ({})
    def update_workload_share(params = {}, options = {})
      req = build_request(:update_workload_share, params)
      req.send_request(options)
    end

    # Upgrade lens review.
    #
    # @option params [required, String] :workload_id
    #   The ID assigned to the workload. This ID is unique within an Amazon
    #   Web Services Region.
    #
    # @option params [required, String] :lens_alias
    #   The alias of the lens, for example, `serverless`.
    #
    #   Each lens is identified by its LensSummary$LensAlias.
    #
    # @option params [required, String] :milestone_name
    #   The name of the milestone in a workload.
    #
    #   Milestone names must be unique within a workload.
    #
    # @option params [String] :client_request_token
    #   A unique case-sensitive string used to ensure that this request is
    #   idempotent (executes only once).
    #
    #   You should not reuse the same token for other requests. If you retry a
    #   request with the same client request token and the same parameters
    #   after it has completed successfully, the result of the original
    #   request is returned.
    #
    #   This token is listed as required, however, if you do not specify it,
    #   the Amazon Web Services SDKs automatically generate one for you. If
    #   you are not using the Amazon Web Services SDK or the CLI, you must
    #   provide this token or the request will fail.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upgrade_lens_review({
    #     workload_id: "WorkloadId", # required
    #     lens_alias: "LensAlias", # required
    #     milestone_name: "MilestoneName", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wellarchitected-2020-03-31/UpgradeLensReview AWS API Documentation
    #
    # @overload upgrade_lens_review(params = {})
    # @param [Hash] params ({})
    def upgrade_lens_review(params = {}, options = {})
      req = build_request(:upgrade_lens_review, params)
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
      context[:gem_name] = 'aws-sdk-wellarchitected'
      context[:gem_version] = '1.14.0'
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

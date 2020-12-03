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

Aws::Plugins::GlobalConfiguration.add_identifier(:mediapackage)

module Aws::MediaPackage
  # An API client for MediaPackage.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaPackage::Client.new(
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

    @identifier = :mediapackage

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

    # Changes the Channel's properities to configure log subscription
    #
    # @option params [Types::EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    #
    # @option params [required, String] :id
    #
    # @option params [Types::IngressAccessLogs] :ingress_access_logs
    #   Configure ingress access logging.
    #
    # @return [Types::ConfigureLogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureLogsResponse#arn #arn} => String
    #   * {Types::ConfigureLogsResponse#description #description} => String
    #   * {Types::ConfigureLogsResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::ConfigureLogsResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::ConfigureLogsResponse#id #id} => String
    #   * {Types::ConfigureLogsResponse#ingress_access_logs #ingress_access_logs} => Types::IngressAccessLogs
    #   * {Types::ConfigureLogsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs({
    #     egress_access_logs: {
    #       log_group_name: "__string",
    #     },
    #     id: "__string", # required
    #     ingress_access_logs: {
    #       log_group_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #   resp.ingress_access_logs.log_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ConfigureLogs AWS API Documentation
    #
    # @overload configure_logs(params = {})
    # @param [Hash] params ({})
    def configure_logs(params = {}, options = {})
      req = build_request(:configure_logs, params)
      req.send_request(options)
    end

    # Creates a new Channel.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :id
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#arn #arn} => String
    #   * {Types::CreateChannelResponse#description #description} => String
    #   * {Types::CreateChannelResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::CreateChannelResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::CreateChannelResponse#id #id} => String
    #   * {Types::CreateChannelResponse#ingress_access_logs #ingress_access_logs} => Types::IngressAccessLogs
    #   * {Types::CreateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     description: "__string",
    #     id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #   resp.ingress_access_logs.log_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Creates a new HarvestJob record.
    #
    # @option params [required, String] :end_time
    #
    # @option params [required, String] :id
    #
    # @option params [required, String] :origin_endpoint_id
    #
    # @option params [required, Types::S3Destination] :s3_destination
    #   Configuration parameters for where in an S3 bucket to place the
    #   harvested content
    #
    # @option params [required, String] :start_time
    #
    # @return [Types::CreateHarvestJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHarvestJobResponse#arn #arn} => String
    #   * {Types::CreateHarvestJobResponse#channel_id #channel_id} => String
    #   * {Types::CreateHarvestJobResponse#created_at #created_at} => String
    #   * {Types::CreateHarvestJobResponse#end_time #end_time} => String
    #   * {Types::CreateHarvestJobResponse#id #id} => String
    #   * {Types::CreateHarvestJobResponse#origin_endpoint_id #origin_endpoint_id} => String
    #   * {Types::CreateHarvestJobResponse#s3_destination #s3_destination} => Types::S3Destination
    #   * {Types::CreateHarvestJobResponse#start_time #start_time} => String
    #   * {Types::CreateHarvestJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_harvest_job({
    #     end_time: "__string", # required
    #     id: "__string", # required
    #     origin_endpoint_id: "__string", # required
    #     s3_destination: { # required
    #       bucket_name: "__string", # required
    #       manifest_key: "__string", # required
    #       role_arn: "__string", # required
    #     },
    #     start_time: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_id #=> String
    #   resp.created_at #=> String
    #   resp.end_time #=> String
    #   resp.id #=> String
    #   resp.origin_endpoint_id #=> String
    #   resp.s3_destination.bucket_name #=> String
    #   resp.s3_destination.manifest_key #=> String
    #   resp.s3_destination.role_arn #=> String
    #   resp.start_time #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateHarvestJob AWS API Documentation
    #
    # @overload create_harvest_job(params = {})
    # @param [Hash] params ({})
    def create_harvest_job(params = {}, options = {})
      req = build_request(:create_harvest_job, params)
      req.send_request(options)
    end

    # Creates a new OriginEndpoint record.
    #
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Types::CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [String] :description
    #
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [required, String] :id
    #
    # @option params [String] :manifest_name
    #
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @option params [String] :origination
    #
    # @option params [Integer] :startover_window_seconds
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource
    #
    # @option params [Integer] :time_delay_seconds
    #
    # @option params [Array<String>] :whitelist
    #
    # @return [Types::CreateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOriginEndpointResponse#arn #arn} => String
    #   * {Types::CreateOriginEndpointResponse#authorization #authorization} => Types::Authorization
    #   * {Types::CreateOriginEndpointResponse#channel_id #channel_id} => String
    #   * {Types::CreateOriginEndpointResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::CreateOriginEndpointResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::CreateOriginEndpointResponse#description #description} => String
    #   * {Types::CreateOriginEndpointResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::CreateOriginEndpointResponse#id #id} => String
    #   * {Types::CreateOriginEndpointResponse#manifest_name #manifest_name} => String
    #   * {Types::CreateOriginEndpointResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::CreateOriginEndpointResponse#origination #origination} => String
    #   * {Types::CreateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::CreateOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateOriginEndpointResponse#time_delay_seconds #time_delay_seconds} => Integer
    #   * {Types::CreateOriginEndpointResponse#url #url} => String
    #   * {Types::CreateOriginEndpointResponse#whitelist #whitelist} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_endpoint({
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     channel_id: "__string", # required
    #     cmaf_package: {
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH, DATERANGE
    #           ad_triggers: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
    #           ads_on_delivery_restrictions: "NONE", # accepts NONE, RESTRICTED, UNRESTRICTED, BOTH
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
    #       ads_on_delivery_restrictions: "NONE", # accepts NONE, RESTRICTED, UNRESTRICTED, BOTH
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_layout: "FULL", # accepts FULL, COMPACT
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS"], # accepts ADS
    #       profile: "NONE", # accepts NONE, HBBTV_1_5
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE", # accepts NUMBER_WITH_TIMELINE, TIME_WITH_TIMELINE, NUMBER_WITH_DURATION
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE", # accepts NONE, HTTP-HEAD, HTTP-ISO
    #       utc_timing_uri: "__string",
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH, DATERANGE
    #       ad_triggers: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
    #       ads_on_delivery_restrictions: "NONE", # accepts NONE, RESTRICTED, UNRESTRICTED, BOTH
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       use_audio_rendition_group: false,
    #     },
    #     id: "__string", # required
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     origination: "ALLOW", # accepts ALLOW, DENY
    #     startover_window_seconds: 1,
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     time_delay_seconds: 1,
    #     whitelist: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.channel_id #=> String
    #   resp.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.cmaf_package.hls_manifests[0].id #=> String
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].url #=> String
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.cmaf_package.segment_prefix #=> String
    #   resp.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.ad_triggers #=> Array
    #   resp.dash_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.dash_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.dash_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.dash_package.manifest_window_seconds #=> Integer
    #   resp.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.dash_package.min_update_period_seconds #=> Integer
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.dash_package.utc_timing #=> String, one of "NONE", "HTTP-HEAD", "HTTP-ISO"
    #   resp.dash_package.utc_timing_uri #=> String
    #   resp.description #=> String
    #   resp.hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.hls_package.ad_triggers #=> Array
    #   resp.hls_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.hls_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.hls_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.hls_package.playlist_window_seconds #=> Integer
    #   resp.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.manifest_name #=> String
    #   resp.mss_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.manifest_window_seconds #=> Integer
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origination #=> String, one of "ALLOW", "DENY"
    #   resp.startover_window_seconds #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.time_delay_seconds #=> Integer
    #   resp.url #=> String
    #   resp.whitelist #=> Array
    #   resp.whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/CreateOriginEndpoint AWS API Documentation
    #
    # @overload create_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def create_origin_endpoint(params = {}, options = {})
      req = build_request(:create_origin_endpoint, params)
      req.send_request(options)
    end

    # Deletes an existing Channel.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes an existing OriginEndpoint.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DeleteOriginEndpoint AWS API Documentation
    #
    # @overload delete_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_origin_endpoint(params = {}, options = {})
      req = build_request(:delete_origin_endpoint, params)
      req.send_request(options)
    end

    # Gets details about a Channel.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#arn #arn} => String
    #   * {Types::DescribeChannelResponse#description #description} => String
    #   * {Types::DescribeChannelResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::DescribeChannelResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::DescribeChannelResponse#id #id} => String
    #   * {Types::DescribeChannelResponse#ingress_access_logs #ingress_access_logs} => Types::IngressAccessLogs
    #   * {Types::DescribeChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #   resp.ingress_access_logs.log_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Gets details about an existing HarvestJob.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeHarvestJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHarvestJobResponse#arn #arn} => String
    #   * {Types::DescribeHarvestJobResponse#channel_id #channel_id} => String
    #   * {Types::DescribeHarvestJobResponse#created_at #created_at} => String
    #   * {Types::DescribeHarvestJobResponse#end_time #end_time} => String
    #   * {Types::DescribeHarvestJobResponse#id #id} => String
    #   * {Types::DescribeHarvestJobResponse#origin_endpoint_id #origin_endpoint_id} => String
    #   * {Types::DescribeHarvestJobResponse#s3_destination #s3_destination} => Types::S3Destination
    #   * {Types::DescribeHarvestJobResponse#start_time #start_time} => String
    #   * {Types::DescribeHarvestJobResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_harvest_job({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_id #=> String
    #   resp.created_at #=> String
    #   resp.end_time #=> String
    #   resp.id #=> String
    #   resp.origin_endpoint_id #=> String
    #   resp.s3_destination.bucket_name #=> String
    #   resp.s3_destination.manifest_key #=> String
    #   resp.s3_destination.role_arn #=> String
    #   resp.start_time #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeHarvestJob AWS API Documentation
    #
    # @overload describe_harvest_job(params = {})
    # @param [Hash] params ({})
    def describe_harvest_job(params = {}, options = {})
      req = build_request(:describe_harvest_job, params)
      req.send_request(options)
    end

    # Gets details about an existing OriginEndpoint.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOriginEndpointResponse#arn #arn} => String
    #   * {Types::DescribeOriginEndpointResponse#authorization #authorization} => Types::Authorization
    #   * {Types::DescribeOriginEndpointResponse#channel_id #channel_id} => String
    #   * {Types::DescribeOriginEndpointResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::DescribeOriginEndpointResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::DescribeOriginEndpointResponse#description #description} => String
    #   * {Types::DescribeOriginEndpointResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::DescribeOriginEndpointResponse#id #id} => String
    #   * {Types::DescribeOriginEndpointResponse#manifest_name #manifest_name} => String
    #   * {Types::DescribeOriginEndpointResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::DescribeOriginEndpointResponse#origination #origination} => String
    #   * {Types::DescribeOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::DescribeOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeOriginEndpointResponse#time_delay_seconds #time_delay_seconds} => Integer
    #   * {Types::DescribeOriginEndpointResponse#url #url} => String
    #   * {Types::DescribeOriginEndpointResponse#whitelist #whitelist} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_origin_endpoint({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.channel_id #=> String
    #   resp.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.cmaf_package.hls_manifests[0].id #=> String
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].url #=> String
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.cmaf_package.segment_prefix #=> String
    #   resp.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.ad_triggers #=> Array
    #   resp.dash_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.dash_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.dash_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.dash_package.manifest_window_seconds #=> Integer
    #   resp.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.dash_package.min_update_period_seconds #=> Integer
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.dash_package.utc_timing #=> String, one of "NONE", "HTTP-HEAD", "HTTP-ISO"
    #   resp.dash_package.utc_timing_uri #=> String
    #   resp.description #=> String
    #   resp.hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.hls_package.ad_triggers #=> Array
    #   resp.hls_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.hls_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.hls_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.hls_package.playlist_window_seconds #=> Integer
    #   resp.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.manifest_name #=> String
    #   resp.mss_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.manifest_window_seconds #=> Integer
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origination #=> String, one of "ALLOW", "DENY"
    #   resp.startover_window_seconds #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.time_delay_seconds #=> Integer
    #   resp.url #=> String
    #   resp.whitelist #=> Array
    #   resp.whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/DescribeOriginEndpoint AWS API Documentation
    #
    # @overload describe_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_origin_endpoint(params = {}, options = {})
      req = build_request(:describe_origin_endpoint, params)
      req.send_request(options)
    end

    # Returns a collection of Channels.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::Channel&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].arn #=> String
    #   resp.channels[0].description #=> String
    #   resp.channels[0].egress_access_logs.log_group_name #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints #=> Array
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.channels[0].hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.channels[0].id #=> String
    #   resp.channels[0].ingress_access_logs.log_group_name #=> String
    #   resp.channels[0].tags #=> Hash
    #   resp.channels[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Returns a collection of HarvestJob records.
    #
    # @option params [String] :include_channel_id
    #
    # @option params [String] :include_status
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListHarvestJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHarvestJobsResponse#harvest_jobs #harvest_jobs} => Array&lt;Types::HarvestJob&gt;
    #   * {Types::ListHarvestJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_harvest_jobs({
    #     include_channel_id: "__string",
    #     include_status: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.harvest_jobs #=> Array
    #   resp.harvest_jobs[0].arn #=> String
    #   resp.harvest_jobs[0].channel_id #=> String
    #   resp.harvest_jobs[0].created_at #=> String
    #   resp.harvest_jobs[0].end_time #=> String
    #   resp.harvest_jobs[0].id #=> String
    #   resp.harvest_jobs[0].origin_endpoint_id #=> String
    #   resp.harvest_jobs[0].s3_destination.bucket_name #=> String
    #   resp.harvest_jobs[0].s3_destination.manifest_key #=> String
    #   resp.harvest_jobs[0].s3_destination.role_arn #=> String
    #   resp.harvest_jobs[0].start_time #=> String
    #   resp.harvest_jobs[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListHarvestJobs AWS API Documentation
    #
    # @overload list_harvest_jobs(params = {})
    # @param [Hash] params ({})
    def list_harvest_jobs(params = {}, options = {})
      req = build_request(:list_harvest_jobs, params)
      req.send_request(options)
    end

    # Returns a collection of OriginEndpoint records.
    #
    # @option params [String] :channel_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListOriginEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOriginEndpointsResponse#next_token #next_token} => String
    #   * {Types::ListOriginEndpointsResponse#origin_endpoints #origin_endpoints} => Array&lt;Types::OriginEndpoint&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_endpoints({
    #     channel_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.origin_endpoints #=> Array
    #   resp.origin_endpoints[0].arn #=> String
    #   resp.origin_endpoints[0].authorization.cdn_identifier_secret #=> String
    #   resp.origin_endpoints[0].authorization.secrets_role_arn #=> String
    #   resp.origin_endpoints[0].channel_id #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests #=> Array
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].id #=> String
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.hls_manifests[0].url #=> String
    #   resp.origin_endpoints[0].cmaf_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.segment_prefix #=> String
    #   resp.origin_endpoints[0].cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].dash_package.ad_triggers #=> Array
    #   resp.origin_endpoints[0].dash_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.origin_endpoints[0].dash_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.origin_endpoints[0].dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].dash_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].dash_package.manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.origin_endpoints[0].dash_package.manifest_window_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.min_buffer_time_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.min_update_period_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.period_triggers #=> Array
    #   resp.origin_endpoints[0].dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.origin_endpoints[0].dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.origin_endpoints[0].dash_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.origin_endpoints[0].dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.origin_endpoints[0].dash_package.utc_timing #=> String, one of "NONE", "HTTP-HEAD", "HTTP-ISO"
    #   resp.origin_endpoints[0].dash_package.utc_timing_uri #=> String
    #   resp.origin_endpoints[0].description #=> String
    #   resp.origin_endpoints[0].hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.origin_endpoints[0].hls_package.ad_triggers #=> Array
    #   resp.origin_endpoints[0].hls_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.origin_endpoints[0].hls_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.origin_endpoints[0].hls_package.encryption.constant_initialization_vector #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.origin_endpoints[0].hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].hls_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].hls_package.include_iframe_only_stream #=> Boolean
    #   resp.origin_endpoints[0].hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.origin_endpoints[0].hls_package.playlist_window_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].hls_package.use_audio_rendition_group #=> Boolean
    #   resp.origin_endpoints[0].id #=> String
    #   resp.origin_endpoints[0].manifest_name #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.origin_endpoints[0].mss_package.encryption.speke_key_provider.url #=> String
    #   resp.origin_endpoints[0].mss_package.manifest_window_seconds #=> Integer
    #   resp.origin_endpoints[0].mss_package.segment_duration_seconds #=> Integer
    #   resp.origin_endpoints[0].mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.origin_endpoints[0].mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origin_endpoints[0].origination #=> String, one of "ALLOW", "DENY"
    #   resp.origin_endpoints[0].startover_window_seconds #=> Integer
    #   resp.origin_endpoints[0].tags #=> Hash
    #   resp.origin_endpoints[0].tags["__string"] #=> String
    #   resp.origin_endpoints[0].time_delay_seconds #=> Integer
    #   resp.origin_endpoints[0].url #=> String
    #   resp.origin_endpoints[0].whitelist #=> Array
    #   resp.origin_endpoints[0].whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListOriginEndpoints AWS API Documentation
    #
    # @overload list_origin_endpoints(params = {})
    # @param [Hash] params ({})
    def list_origin_endpoints(params = {}, options = {})
      req = build_request(:list_origin_endpoints, params)
      req.send_request(options)
    end

    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Changes the Channel's first IngestEndpoint's username and password.
    # WARNING - This API is deprecated. Please use
    # RotateIngestEndpointCredentials instead
    #
    # @option params [required, String] :id
    #
    # @return [Types::RotateChannelCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateChannelCredentialsResponse#arn #arn} => String
    #   * {Types::RotateChannelCredentialsResponse#description #description} => String
    #   * {Types::RotateChannelCredentialsResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::RotateChannelCredentialsResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::RotateChannelCredentialsResponse#id #id} => String
    #   * {Types::RotateChannelCredentialsResponse#ingress_access_logs #ingress_access_logs} => Types::IngressAccessLogs
    #   * {Types::RotateChannelCredentialsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_channel_credentials({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #   resp.ingress_access_logs.log_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateChannelCredentials AWS API Documentation
    #
    # @overload rotate_channel_credentials(params = {})
    # @param [Hash] params ({})
    def rotate_channel_credentials(params = {}, options = {})
      req = build_request(:rotate_channel_credentials, params)
      req.send_request(options)
    end

    # Rotate the IngestEndpoint's username and password, as specified by
    # the IngestEndpoint's id.
    #
    # @option params [required, String] :id
    #
    # @option params [required, String] :ingest_endpoint_id
    #
    # @return [Types::RotateIngestEndpointCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateIngestEndpointCredentialsResponse#arn #arn} => String
    #   * {Types::RotateIngestEndpointCredentialsResponse#description #description} => String
    #   * {Types::RotateIngestEndpointCredentialsResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::RotateIngestEndpointCredentialsResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::RotateIngestEndpointCredentialsResponse#id #id} => String
    #   * {Types::RotateIngestEndpointCredentialsResponse#ingress_access_logs #ingress_access_logs} => Types::IngressAccessLogs
    #   * {Types::RotateIngestEndpointCredentialsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_ingest_endpoint_credentials({
    #     id: "__string", # required
    #     ingest_endpoint_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #   resp.ingress_access_logs.log_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/RotateIngestEndpointCredentials AWS API Documentation
    #
    # @overload rotate_ingest_endpoint_credentials(params = {})
    # @param [Hash] params ({})
    def rotate_ingest_endpoint_credentials(params = {}, options = {})
      req = build_request(:rotate_ingest_endpoint_credentials, params)
      req.send_request(options)
    end

    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Channel.
    #
    # @option params [String] :description
    #
    # @option params [required, String] :id
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#arn #arn} => String
    #   * {Types::UpdateChannelResponse#description #description} => String
    #   * {Types::UpdateChannelResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::UpdateChannelResponse#hls_ingest #hls_ingest} => Types::HlsIngest
    #   * {Types::UpdateChannelResponse#id #id} => String
    #   * {Types::UpdateChannelResponse#ingress_access_logs #ingress_access_logs} => Types::IngressAccessLogs
    #   * {Types::UpdateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     description: "__string",
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.hls_ingest.ingest_endpoints #=> Array
    #   resp.hls_ingest.ingest_endpoints[0].id #=> String
    #   resp.hls_ingest.ingest_endpoints[0].password #=> String
    #   resp.hls_ingest.ingest_endpoints[0].url #=> String
    #   resp.hls_ingest.ingest_endpoints[0].username #=> String
    #   resp.id #=> String
    #   resp.ingress_access_logs.log_group_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates an existing OriginEndpoint.
    #
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [Types::CmafPackageCreateOrUpdateParameters] :cmaf_package
    #   A Common Media Application Format (CMAF) packaging configuration.
    #
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [String] :description
    #
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [required, String] :id
    #
    # @option params [String] :manifest_name
    #
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) packaging configuration.
    #
    # @option params [String] :origination
    #
    # @option params [Integer] :startover_window_seconds
    #
    # @option params [Integer] :time_delay_seconds
    #
    # @option params [Array<String>] :whitelist
    #
    # @return [Types::UpdateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOriginEndpointResponse#arn #arn} => String
    #   * {Types::UpdateOriginEndpointResponse#authorization #authorization} => Types::Authorization
    #   * {Types::UpdateOriginEndpointResponse#channel_id #channel_id} => String
    #   * {Types::UpdateOriginEndpointResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::UpdateOriginEndpointResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::UpdateOriginEndpointResponse#description #description} => String
    #   * {Types::UpdateOriginEndpointResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::UpdateOriginEndpointResponse#id #id} => String
    #   * {Types::UpdateOriginEndpointResponse#manifest_name #manifest_name} => String
    #   * {Types::UpdateOriginEndpointResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::UpdateOriginEndpointResponse#origination #origination} => String
    #   * {Types::UpdateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::UpdateOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateOriginEndpointResponse#time_delay_seconds #time_delay_seconds} => Integer
    #   * {Types::UpdateOriginEndpointResponse#url #url} => String
    #   * {Types::UpdateOriginEndpointResponse#whitelist #whitelist} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_endpoint({
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     cmaf_package: {
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH, DATERANGE
    #           ad_triggers: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
    #           ads_on_delivery_restrictions: "NONE", # accepts NONE, RESTRICTED, UNRESTRICTED, BOTH
    #           id: "__string", # required
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #           playlist_window_seconds: 1,
    #           program_date_time_interval_seconds: 1,
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #       segment_prefix: "__string",
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     dash_package: {
    #       ad_triggers: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
    #       ads_on_delivery_restrictions: "NONE", # accepts NONE, RESTRICTED, UNRESTRICTED, BOTH
    #       encryption: {
    #         key_rotation_interval_seconds: 1,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_layout: "FULL", # accepts FULL, COMPACT
    #       manifest_window_seconds: 1,
    #       min_buffer_time_seconds: 1,
    #       min_update_period_seconds: 1,
    #       period_triggers: ["ADS"], # accepts ADS
    #       profile: "NONE", # accepts NONE, HBBTV_1_5
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE", # accepts NUMBER_WITH_TIMELINE, TIME_WITH_TIMELINE, NUMBER_WITH_DURATION
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       suggested_presentation_delay_seconds: 1,
    #       utc_timing: "NONE", # accepts NONE, HTTP-HEAD, HTTP-ISO
    #       utc_timing_uri: "__string",
    #     },
    #     description: "__string",
    #     hls_package: {
    #       ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH, DATERANGE
    #       ad_triggers: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY
    #       ads_on_delivery_restrictions: "NONE", # accepts NONE, RESTRICTED, UNRESTRICTED, BOTH
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #         key_rotation_interval_seconds: 1,
    #         repeat_ext_x_key: false,
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       include_iframe_only_stream: false,
    #       playlist_type: "NONE", # accepts NONE, EVENT, VOD
    #       playlist_window_seconds: 1,
    #       program_date_time_interval_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #       use_audio_rendition_group: false,
    #     },
    #     id: "__string", # required
    #     manifest_name: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           certificate_arn: "__string",
    #           resource_id: "__string", # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       manifest_window_seconds: 1,
    #       segment_duration_seconds: 1,
    #       stream_selection: {
    #         max_video_bits_per_second: 1,
    #         min_video_bits_per_second: 1,
    #         stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #       },
    #     },
    #     origination: "ALLOW", # accepts ALLOW, DENY
    #     startover_window_seconds: 1,
    #     time_delay_seconds: 1,
    #     whitelist: ["__string"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.channel_id #=> String
    #   resp.cmaf_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.cmaf_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.cmaf_package.hls_manifests[0].id #=> String
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.cmaf_package.hls_manifests[0].playlist_window_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].url #=> String
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.cmaf_package.segment_prefix #=> String
    #   resp.cmaf_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.ad_triggers #=> Array
    #   resp.dash_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.dash_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.dash_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.dash_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.dash_package.manifest_window_seconds #=> Integer
    #   resp.dash_package.min_buffer_time_seconds #=> Integer
    #   resp.dash_package.min_update_period_seconds #=> Integer
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.dash_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.suggested_presentation_delay_seconds #=> Integer
    #   resp.dash_package.utc_timing #=> String, one of "NONE", "HTTP-HEAD", "HTTP-ISO"
    #   resp.dash_package.utc_timing_uri #=> String
    #   resp.description #=> String
    #   resp.hls_package.ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH", "DATERANGE"
    #   resp.hls_package.ad_triggers #=> Array
    #   resp.hls_package.ad_triggers[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
    #   resp.hls_package.ads_on_delivery_restrictions #=> String, one of "NONE", "RESTRICTED", "UNRESTRICTED", "BOTH"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.hls_package.encryption.repeat_ext_x_key #=> Boolean
    #   resp.hls_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.include_iframe_only_stream #=> Boolean
    #   resp.hls_package.playlist_type #=> String, one of "NONE", "EVENT", "VOD"
    #   resp.hls_package.playlist_window_seconds #=> Integer
    #   resp.hls_package.program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.manifest_name #=> String
    #   resp.mss_package.encryption.speke_key_provider.certificate_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.resource_id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.manifest_window_seconds #=> Integer
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.mss_package.stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.origination #=> String, one of "ALLOW", "DENY"
    #   resp.startover_window_seconds #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.time_delay_seconds #=> Integer
    #   resp.url #=> String
    #   resp.whitelist #=> Array
    #   resp.whitelist[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-2017-10-12/UpdateOriginEndpoint AWS API Documentation
    #
    # @overload update_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def update_origin_endpoint(params = {}, options = {})
      req = build_request(:update_origin_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-mediapackage'
      context[:gem_version] = '1.36.0'
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

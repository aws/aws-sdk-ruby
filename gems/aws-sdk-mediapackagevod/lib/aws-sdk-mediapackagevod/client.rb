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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediapackagevod)

module Aws::MediaPackageVod
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mediapackagevod

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
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Creates a new MediaPackage VOD Asset resource.
    #
    # @option params [required, String] :id
    #
    # @option params [required, String] :packaging_group_id
    #
    # @option params [String] :resource_id
    #
    # @option params [required, String] :source_arn
    #
    # @option params [required, String] :source_role_arn
    #
    # @return [Types::CreateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetResponse#arn #arn} => String
    #   * {Types::CreateAssetResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::EgressEndpoint&gt;
    #   * {Types::CreateAssetResponse#id #id} => String
    #   * {Types::CreateAssetResponse#packaging_group_id #packaging_group_id} => String
    #   * {Types::CreateAssetResponse#resource_id #resource_id} => String
    #   * {Types::CreateAssetResponse#source_arn #source_arn} => String
    #   * {Types::CreateAssetResponse#source_role_arn #source_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset({
    #     id: "__string", # required
    #     packaging_group_id: "__string", # required
    #     resource_id: "__string",
    #     source_arn: "__string", # required
    #     source_role_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].packaging_configuration_id #=> String
    #   resp.egress_endpoints[0].url #=> String
    #   resp.id #=> String
    #   resp.packaging_group_id #=> String
    #   resp.resource_id #=> String
    #   resp.source_arn #=> String
    #   resp.source_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreateAsset AWS API Documentation
    #
    # @overload create_asset(params = {})
    # @param [Hash] params ({})
    def create_asset(params = {}, options = {})
      req = build_request(:create_asset, params)
      req.send_request(options)
    end

    # Creates a new MediaPackage VOD PackagingConfiguration resource.
    #
    # @option params [Types::CmafPackage] :cmaf_package
    #   A CMAF packaging configuration.
    #
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [required, String] :id
    #
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #
    # @option params [required, String] :packaging_group_id
    #
    # @return [Types::CreatePackagingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackagingConfigurationResponse#arn #arn} => String
    #   * {Types::CreatePackagingConfigurationResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::CreatePackagingConfigurationResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::CreatePackagingConfigurationResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::CreatePackagingConfigurationResponse#id #id} => String
    #   * {Types::CreatePackagingConfigurationResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::CreatePackagingConfigurationResponse#packaging_group_id #packaging_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_packaging_configuration({
    #     cmaf_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #     },
    #     dash_package: {
    #       dash_manifests: [ # required
    #         {
    #           manifest_name: "__string",
    #           min_buffer_time_seconds: 1,
    #           profile: "NONE", # accepts NONE, HBBTV_1_5
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       encryption: {
    #         speke_key_provider: { # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       segment_duration_seconds: 1,
    #     },
    #     hls_package: {
    #       encryption: {
    #         encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #         speke_key_provider: { # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false,
    #     },
    #     id: "__string", # required
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       mss_manifests: [ # required
    #         {
    #           manifest_name: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #     },
    #     packaging_group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.dash_manifests #=> Array
    #   resp.dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_package.dash_manifests[0].profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.dash_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.hls_manifests #=> Array
    #   resp.hls_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.hls_package.hls_manifests[0].manifest_name #=> String
    #   resp.hls_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.hls_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.mss_manifests #=> Array
    #   resp.mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.mss_package.mss_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.packaging_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingConfiguration AWS API Documentation
    #
    # @overload create_packaging_configuration(params = {})
    # @param [Hash] params ({})
    def create_packaging_configuration(params = {}, options = {})
      req = build_request(:create_packaging_configuration, params)
      req.send_request(options)
    end

    # Creates a new MediaPackage VOD PackagingGroup resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::CreatePackagingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackagingGroupResponse#arn #arn} => String
    #   * {Types::CreatePackagingGroupResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_packaging_group({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingGroup AWS API Documentation
    #
    # @overload create_packaging_group(params = {})
    # @param [Hash] params ({})
    def create_packaging_group(params = {}, options = {})
      req = build_request(:create_packaging_group, params)
      req.send_request(options)
    end

    # Deletes an existing MediaPackage VOD Asset resource.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeleteAsset AWS API Documentation
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # Deletes a MediaPackage VOD PackagingConfiguration resource.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_packaging_configuration({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingConfiguration AWS API Documentation
    #
    # @overload delete_packaging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_packaging_configuration(params = {}, options = {})
      req = build_request(:delete_packaging_configuration, params)
      req.send_request(options)
    end

    # Deletes a MediaPackage VOD PackagingGroup resource.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_packaging_group({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingGroup AWS API Documentation
    #
    # @overload delete_packaging_group(params = {})
    # @param [Hash] params ({})
    def delete_packaging_group(params = {}, options = {})
      req = build_request(:delete_packaging_group, params)
      req.send_request(options)
    end

    # Returns a description of a MediaPackage VOD Asset resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetResponse#arn #arn} => String
    #   * {Types::DescribeAssetResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::EgressEndpoint&gt;
    #   * {Types::DescribeAssetResponse#id #id} => String
    #   * {Types::DescribeAssetResponse#packaging_group_id #packaging_group_id} => String
    #   * {Types::DescribeAssetResponse#resource_id #resource_id} => String
    #   * {Types::DescribeAssetResponse#source_arn #source_arn} => String
    #   * {Types::DescribeAssetResponse#source_role_arn #source_role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].packaging_configuration_id #=> String
    #   resp.egress_endpoints[0].url #=> String
    #   resp.id #=> String
    #   resp.packaging_group_id #=> String
    #   resp.resource_id #=> String
    #   resp.source_arn #=> String
    #   resp.source_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribeAsset AWS API Documentation
    #
    # @overload describe_asset(params = {})
    # @param [Hash] params ({})
    def describe_asset(params = {}, options = {})
      req = build_request(:describe_asset, params)
      req.send_request(options)
    end

    # Returns a description of a MediaPackage VOD PackagingConfiguration
    # resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribePackagingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackagingConfigurationResponse#arn #arn} => String
    #   * {Types::DescribePackagingConfigurationResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::DescribePackagingConfigurationResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::DescribePackagingConfigurationResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::DescribePackagingConfigurationResponse#id #id} => String
    #   * {Types::DescribePackagingConfigurationResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::DescribePackagingConfigurationResponse#packaging_group_id #packaging_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packaging_configuration({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.dash_manifests #=> Array
    #   resp.dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_package.dash_manifests[0].profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.dash_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.hls_manifests #=> Array
    #   resp.hls_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.hls_package.hls_manifests[0].manifest_name #=> String
    #   resp.hls_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.hls_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.mss_manifests #=> Array
    #   resp.mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.mss_package.mss_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.packaging_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingConfiguration AWS API Documentation
    #
    # @overload describe_packaging_configuration(params = {})
    # @param [Hash] params ({})
    def describe_packaging_configuration(params = {}, options = {})
      req = build_request(:describe_packaging_configuration, params)
      req.send_request(options)
    end

    # Returns a description of a MediaPackage VOD PackagingGroup resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribePackagingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackagingGroupResponse#arn #arn} => String
    #   * {Types::DescribePackagingGroupResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packaging_group({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingGroup AWS API Documentation
    #
    # @overload describe_packaging_group(params = {})
    # @param [Hash] params ({})
    def describe_packaging_group(params = {}, options = {})
      req = build_request(:describe_packaging_group, params)
      req.send_request(options)
    end

    # Returns a collection of MediaPackage VOD Asset resources.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :packaging_group_id
    #
    # @return [Types::ListAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetsResponse#assets #assets} => Array&lt;Types::AssetShallow&gt;
    #   * {Types::ListAssetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets({
    #     max_results: 1,
    #     next_token: "__string",
    #     packaging_group_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].arn #=> String
    #   resp.assets[0].id #=> String
    #   resp.assets[0].packaging_group_id #=> String
    #   resp.assets[0].resource_id #=> String
    #   resp.assets[0].source_arn #=> String
    #   resp.assets[0].source_role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListAssets AWS API Documentation
    #
    # @overload list_assets(params = {})
    # @param [Hash] params ({})
    def list_assets(params = {}, options = {})
      req = build_request(:list_assets, params)
      req.send_request(options)
    end

    # Returns a collection of MediaPackage VOD PackagingConfiguration
    # resources.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :packaging_group_id
    #
    # @return [Types::ListPackagingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagingConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListPackagingConfigurationsResponse#packaging_configurations #packaging_configurations} => Array&lt;Types::PackagingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packaging_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #     packaging_group_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.packaging_configurations #=> Array
    #   resp.packaging_configurations[0].arn #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests #=> Array
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].cmaf_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests #=> Array
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].dash_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].hls_package.hls_manifests #=> Array
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].hls_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].hls_package.use_audio_rendition_group #=> Boolean
    #   resp.packaging_configurations[0].id #=> String
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].mss_package.mss_manifests #=> Array
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].mss_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].packaging_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingConfigurations AWS API Documentation
    #
    # @overload list_packaging_configurations(params = {})
    # @param [Hash] params ({})
    def list_packaging_configurations(params = {}, options = {})
      req = build_request(:list_packaging_configurations, params)
      req.send_request(options)
    end

    # Returns a collection of MediaPackage VOD PackagingGroup resources.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListPackagingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagingGroupsResponse#next_token #next_token} => String
    #   * {Types::ListPackagingGroupsResponse#packaging_groups #packaging_groups} => Array&lt;Types::PackagingGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packaging_groups({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.packaging_groups #=> Array
    #   resp.packaging_groups[0].arn #=> String
    #   resp.packaging_groups[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingGroups AWS API Documentation
    #
    # @overload list_packaging_groups(params = {})
    # @param [Hash] params ({})
    def list_packaging_groups(params = {}, options = {})
      req = build_request(:list_packaging_groups, params)
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
      context[:gem_name] = 'aws-sdk-mediapackagevod'
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

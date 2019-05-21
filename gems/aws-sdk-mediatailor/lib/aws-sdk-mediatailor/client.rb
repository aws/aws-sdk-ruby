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

Aws::Plugins::GlobalConfiguration.add_identifier(:mediatailor)

module Aws::MediaTailor
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mediatailor

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

    # Deletes the playback configuration for the specified name.
    #
    # @option params [required, String] :name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_playback_configuration({
    #     name: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/DeletePlaybackConfiguration AWS API Documentation
    #
    # @overload delete_playback_configuration(params = {})
    # @param [Hash] params ({})
    def delete_playback_configuration(params = {}, options = {})
      req = build_request(:delete_playback_configuration, params)
      req.send_request(options)
    end

    # Returns the playback configuration for the specified name.
    #
    # @option params [required, String] :name
    #
    # @return [Types::GetPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPlaybackConfigurationResponse#ad_decision_server_url #ad_decision_server_url} => String
    #   * {Types::GetPlaybackConfigurationResponse#cdn_configuration #cdn_configuration} => Types::CdnConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#dash_configuration #dash_configuration} => Types::DashConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#hls_configuration #hls_configuration} => Types::HlsConfiguration
    #   * {Types::GetPlaybackConfigurationResponse#name #name} => String
    #   * {Types::GetPlaybackConfigurationResponse#playback_configuration_arn #playback_configuration_arn} => String
    #   * {Types::GetPlaybackConfigurationResponse#playback_endpoint_prefix #playback_endpoint_prefix} => String
    #   * {Types::GetPlaybackConfigurationResponse#session_initialization_endpoint_prefix #session_initialization_endpoint_prefix} => String
    #   * {Types::GetPlaybackConfigurationResponse#slate_ad_url #slate_ad_url} => String
    #   * {Types::GetPlaybackConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetPlaybackConfigurationResponse#transcode_profile_name #transcode_profile_name} => String
    #   * {Types::GetPlaybackConfigurationResponse#video_content_source_url #video_content_source_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_playback_configuration({
    #     name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_decision_server_url #=> String
    #   resp.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.dash_configuration.mpd_location #=> String
    #   resp.dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.name #=> String
    #   resp.playback_configuration_arn #=> String
    #   resp.playback_endpoint_prefix #=> String
    #   resp.session_initialization_endpoint_prefix #=> String
    #   resp.slate_ad_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.transcode_profile_name #=> String
    #   resp.video_content_source_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/GetPlaybackConfiguration AWS API Documentation
    #
    # @overload get_playback_configuration(params = {})
    # @param [Hash] params ({})
    def get_playback_configuration(params = {}, options = {})
      req = build_request(:get_playback_configuration, params)
      req.send_request(options)
    end

    # Returns a list of the playback configurations defined in AWS Elemental
    # MediaTailor. You can specify a maximum number of configurations to
    # return at a time. The default maximum is 50. Results are returned in
    # pagefuls. If MediaTailor has more configurations than the specified
    # maximum, it provides parameters in the response that you can use to
    # retrieve the next pageful.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListPlaybackConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlaybackConfigurationsResponse#items #items} => Array&lt;Types::PlaybackConfiguration&gt;
    #   * {Types::ListPlaybackConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_playback_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].ad_decision_server_url #=> String
    #   resp.items[0].cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.items[0].cdn_configuration.content_segment_url_prefix #=> String
    #   resp.items[0].dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.items[0].dash_configuration.mpd_location #=> String
    #   resp.items[0].dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.items[0].hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].playback_configuration_arn #=> String
    #   resp.items[0].playback_endpoint_prefix #=> String
    #   resp.items[0].session_initialization_endpoint_prefix #=> String
    #   resp.items[0].slate_ad_url #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.items[0].transcode_profile_name #=> String
    #   resp.items[0].video_content_source_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListPlaybackConfigurations AWS API Documentation
    #
    # @overload list_playback_configurations(params = {})
    # @param [Hash] params ({})
    def list_playback_configurations(params = {}, options = {})
      req = build_request(:list_playback_configurations, params)
      req.send_request(options)
    end

    # Returns a list of the tags assigned to the specified playback
    # configuration resource.
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds a new playback configuration to AWS Elemental MediaTailor.
    #
    # @option params [String] :ad_decision_server_url
    #   The URL for the ad decision server (ADS). This includes the
    #   specification of static parameters and placeholders for dynamic
    #   parameters. AWS Elemental MediaTailor substitutes player-specific and
    #   session-specific parameters as needed when calling the ADS.
    #   Alternately, for testing you can provide a static VAST URL. The
    #   maximum length is 25,000 characters.
    #
    # @option params [Types::CdnConfiguration] :cdn_configuration
    #   The configuration for using a content delivery network (CDN), like
    #   Amazon CloudFront, for content and ad segment management.
    #
    # @option params [Types::DashConfigurationForPut] :dash_configuration
    #   The configuration for DASH content.
    #
    # @option params [String] :name
    #   The identifier for the playback configuration.
    #
    # @option params [String] :slate_ad_url
    #   The URL for a high-quality video asset to transcode and use to fill in
    #   time that's not used by ads. AWS Elemental MediaTailor shows the
    #   slate to fill in gaps in media content. Configuring the slate is
    #   optional for non-VPAID configurations. For VPAID, the slate is
    #   required because MediaTailor provides it in the slots that are
    #   designated for dynamic ad content. The slate must be a high-quality
    #   asset that contains both audio and video.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to assign to the playback configuration.
    #
    # @option params [String] :transcode_profile_name
    #   The name that is used to associate this playback configuration with a
    #   custom transcode profile. This overrides the dynamic transcoding
    #   defaults of MediaTailor. Use this only if you have already set up
    #   custom profiles with the help of AWS Support.
    #
    # @option params [String] :video_content_source_url
    #   The URL prefix for the master playlist for the stream, minus the asset
    #   ID. The maximum length is 512 characters.
    #
    # @return [Types::PutPlaybackConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPlaybackConfigurationResponse#ad_decision_server_url #ad_decision_server_url} => String
    #   * {Types::PutPlaybackConfigurationResponse#cdn_configuration #cdn_configuration} => Types::CdnConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#dash_configuration #dash_configuration} => Types::DashConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#hls_configuration #hls_configuration} => Types::HlsConfiguration
    #   * {Types::PutPlaybackConfigurationResponse#name #name} => String
    #   * {Types::PutPlaybackConfigurationResponse#playback_configuration_arn #playback_configuration_arn} => String
    #   * {Types::PutPlaybackConfigurationResponse#playback_endpoint_prefix #playback_endpoint_prefix} => String
    #   * {Types::PutPlaybackConfigurationResponse#session_initialization_endpoint_prefix #session_initialization_endpoint_prefix} => String
    #   * {Types::PutPlaybackConfigurationResponse#slate_ad_url #slate_ad_url} => String
    #   * {Types::PutPlaybackConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::PutPlaybackConfigurationResponse#transcode_profile_name #transcode_profile_name} => String
    #   * {Types::PutPlaybackConfigurationResponse#video_content_source_url #video_content_source_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_playback_configuration({
    #     ad_decision_server_url: "__string",
    #     cdn_configuration: {
    #       ad_segment_url_prefix: "__string",
    #       content_segment_url_prefix: "__string",
    #     },
    #     dash_configuration: {
    #       mpd_location: "__string",
    #       origin_manifest_type: "SINGLE_PERIOD", # accepts SINGLE_PERIOD, MULTI_PERIOD
    #     },
    #     name: "__string",
    #     slate_ad_url: "__string",
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     transcode_profile_name: "__string",
    #     video_content_source_url: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.ad_decision_server_url #=> String
    #   resp.cdn_configuration.ad_segment_url_prefix #=> String
    #   resp.cdn_configuration.content_segment_url_prefix #=> String
    #   resp.dash_configuration.manifest_endpoint_prefix #=> String
    #   resp.dash_configuration.mpd_location #=> String
    #   resp.dash_configuration.origin_manifest_type #=> String, one of "SINGLE_PERIOD", "MULTI_PERIOD"
    #   resp.hls_configuration.manifest_endpoint_prefix #=> String
    #   resp.name #=> String
    #   resp.playback_configuration_arn #=> String
    #   resp.playback_endpoint_prefix #=> String
    #   resp.session_initialization_endpoint_prefix #=> String
    #   resp.slate_ad_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.transcode_profile_name #=> String
    #   resp.video_content_source_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/PutPlaybackConfiguration AWS API Documentation
    #
    # @overload put_playback_configuration(params = {})
    # @param [Hash] params ({})
    def put_playback_configuration(params = {}, options = {})
      req = build_request(:put_playback_configuration, params)
      req.send_request(options)
    end

    # Adds tags to the specified playback configuration resource. You can
    # specify one or more tags to add.
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified playback configuration resource. You
    # can specify one or more tags to remove.
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediatailor-2018-04-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-mediatailor'
      context[:gem_version] = '1.17.0'
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

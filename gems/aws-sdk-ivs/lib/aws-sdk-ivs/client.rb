# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ivs)

module Aws::Ivs
  # An API client for Aws::Ivs.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonInteractiveVideoService
    @identifier = :ivs

    add_plugin(::Aws::Ivs::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Ivs::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Performs <a>GetChannel</a> on multiple ARNs simultaneously.</p>
    # @param [Hash, Types::BatchGetChannelInput] params
    # @option params [Array<String>] :arns
    #   <p>Array of ARNs, one per channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["ChannelArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         arn: "ChannelArn",
    #         name: "ChannelName",
    #         latency_mode: "ChannelLatencyMode",
    #         type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #         recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #         ingest_endpoint: "IngestEndpoint",
    #         playback_url: "PlaybackURL",
    #         authorized: false,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         insecure_ingest: false,
    #         preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #         srt: {
    #           endpoint: "SrtEndpoint",
    #           passphrase: "SrtPassphrase"
    #         },
    #         playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #         multitrack_input_configuration: {
    #           enabled: false,
    #           policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #           maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #         },
    #         container_format: "ContainerFormat"
    #       }
    #     ],
    #     errors: [
    #       {
    #         arn: "ResourceArn",
    #         code: "errorCode",
    #         message: "errorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetChannelOutput]
    def batch_get_channel(params = {}, options = {})
      request = build_request(:batch_get_channel, params)
      request.send_request(options)
    end

    # <p>Performs <a>GetStreamKey</a> on multiple ARNs simultaneously.</p>
    # @param [Hash, Types::BatchGetStreamKeyInput] params
    # @option params [Array<String>] :arns
    #   <p>Array of ARNs, one per stream key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arns: ["StreamKeyArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_stream_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_keys: [
    #       {
    #         arn: "StreamKeyArn",
    #         value: "StreamKeyValue",
    #         channel_arn: "ChannelArn",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         arn: "ResourceArn",
    #         code: "errorCode",
    #         message: "errorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetStreamKeyOutput]
    def batch_get_stream_key(params = {}, options = {})
      request = build_request(:batch_get_stream_key, params)
      request.send_request(options)
    end

    # <p>Performs <a>StartViewerSessionRevocation</a> on multiple channel ARN and viewer
    #       ID pairs simultaneously.</p>
    # @param [Hash, Types::BatchStartViewerSessionRevocationInput] params
    # @option params [Array<Types::BatchStartViewerSessionRevocationViewerSession>] :viewer_sessions
    #   <p>Array of viewer sessions, one per channel-ARN and viewer-ID pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     viewer_sessions: [ # required
    #       {
    #         channel_arn: "ChannelArn", # required
    #         viewer_id: "ViewerId", # required
    #         viewer_session_versions_less_than_or_equal_to: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_start_viewer_session_revocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         channel_arn: "ChannelArn", # required
    #         viewer_id: "ViewerId", # required
    #         code: "errorCode",
    #         message: "errorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchStartViewerSessionRevocationOutput]
    def batch_start_viewer_session_revocation(params = {}, options = {})
      request = build_request(:batch_start_viewer_session_revocation, params)
      request.send_request(options)
    end

    # <p>Creates a new channel and an associated stream key to start streaming.</p>
    # @param [Hash, Types::CreateChannelInput] params
    # @option params [String] :name
    #   <p>Channel name.</p>
    # @option params [String] :latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers. Default: <code>LOW</code>.</p>
    # @option params [String] :type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable input resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html">Channel
    #           Types</a>.</p>
    # @option params [Boolean] :authorized
    #   <p>Whether the channel is private (enabled for playback authorization). Default:
    #           <code>false</code>.</p>
    # @option params [String] :recording_configuration_arn
    #   <p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables recording.
    #        Default: "" (empty string, recording is disabled).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    # @option params [Boolean] :insecure_ingest
    #   <p>Whether the channel allows insecure RTMP and SRT ingest. Default: <code>false</code>.</p>
    # @option params [String] :preset
    #   <p>Optional transcode preset for the channel. This is selectable only for
    #           <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel
    #         types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other
    #         channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty
    #         string (<code>""</code>).</p>
    # @option params [String] :playback_restriction_policy_arn
    #   <p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables playback restriction.
    #       Default: "" (empty string, no playback restriction policy is applied).</p>
    # @option params [Types::MultitrackInputConfiguration] :multitrack_input_configuration
    #   <p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>
    # @option params [String] :container_format
    #   <p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ChannelName",
    #     latency_mode: "ChannelLatencyMode",
    #     type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #     authorized: false,
    #     recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     insecure_ingest: false,
    #     preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #     playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #     multitrack_input_configuration: {
    #       enabled: false,
    #       policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #       maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #     },
    #     container_format: "ContainerFormat"
    #   }
    #   options = {}
    #   response = client.create_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: {
    #       arn: "ChannelArn",
    #       name: "ChannelName",
    #       latency_mode: "ChannelLatencyMode",
    #       type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #       recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #       ingest_endpoint: "IngestEndpoint",
    #       playback_url: "PlaybackURL",
    #       authorized: false,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       insecure_ingest: false,
    #       preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #       srt: {
    #         endpoint: "SrtEndpoint",
    #         passphrase: "SrtPassphrase"
    #       },
    #       playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #       multitrack_input_configuration: {
    #         enabled: false,
    #         policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #         maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #       },
    #       container_format: "ContainerFormat"
    #     },
    #     stream_key: {
    #       arn: "StreamKeyArn",
    #       value: "StreamKeyValue",
    #       channel_arn: "ChannelArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateChannelOutput]
    def create_channel(params = {}, options = {})
      request = build_request(:create_channel, params)
      request.send_request(options)
    end

    # <p>Creates a new playback restriction policy, for constraining playback by countries and/or
    #       origins.</p>
    # @param [Hash, Types::CreatePlaybackRestrictionPolicyRequest] params
    # @option params [Array<String>] :allowed_countries
    #   <p>A list of country codes that control geoblocking restriction. Allowed values are the
    #         officially assigned <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #           alpha-2</a> codes. Default: All countries (an empty array).</p>
    # @option params [Array<String>] :allowed_origins
    #   <p>A list of origin sites that control CORS restriction. Allowed values are the same as valid
    #         values of the Origin header defined at <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All
    #         origins (an empty array).</p>
    # @option params [Boolean] :enable_strict_origin_enforcement
    #   <p>Whether channel playback is constrained by origin site. Default:
    #         <code>false</code>.</p>
    # @option params [String] :name
    #   <p>Playback-restriction-policy name. The value does not need to be unique.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     allowed_countries: ["PlaybackRestrictionPolicyAllowedCountry"],
    #     allowed_origins: ["PlaybackRestrictionPolicyAllowedOrigin"],
    #     enable_strict_origin_enforcement: false,
    #     name: "PlaybackRestrictionPolicyName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_playback_restriction_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     playback_restriction_policy: {
    #       arn: "PlaybackRestrictionPolicyArn", # required
    #       allowed_countries: ["PlaybackRestrictionPolicyAllowedCountry"], # required
    #       allowed_origins: ["PlaybackRestrictionPolicyAllowedOrigin"], # required
    #       enable_strict_origin_enforcement: false,
    #       name: "PlaybackRestrictionPolicyName",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreatePlaybackRestrictionPolicyResponse]
    def create_playback_restriction_policy(params = {}, options = {})
      request = build_request(:create_playback_restriction_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new recording configuration, used to enable recording to Amazon S3.</p>
    #          <p>
    #             <b>Known issue:</b> In the us-east-1 region, if you use the
    #         Amazon Web Services CLI to create a recording configuration, it returns success even if the
    #       S3 bucket is in a different region. In this case, the <code>state</code> of the recording
    #       configuration is <code>CREATE_FAILED</code> (instead of <code>ACTIVE</code>). (In other
    #       regions, the CLI correctly returns failure if the bucket is in a different region.)</p>
    #          <p>
    #             <b>Workaround:</b> Ensure that your S3 bucket is in the same
    #       region as the recording configuration. If you create a recording configuration in a different
    #       region as your S3 bucket, delete that recording configuration and create a new one with an S3
    #       bucket from the correct region.</p>
    # @param [Hash, Types::CreateRecordingConfigurationInput] params
    # @option params [String] :name
    #   <p>Recording-configuration name. The value does not need to be unique.</p>
    # @option params [Types::DestinationConfiguration] :destination_configuration
    #   <p>A complex type that contains a destination configuration for where recorded video will be
    #         stored.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    # @option params [Types::ThumbnailConfiguration] :thumbnail_configuration
    #   <p>A complex type that allows you to enable/disable the recording of thumbnails for a live
    #         session and modify the interval at which thumbnails are generated for the live session.</p>
    # @option params [Integer] :recording_reconnect_window_seconds
    #   <p>If a broadcast disconnects and then reconnects within the specified interval, the multiple
    #         streams will be considered a single broadcast and merged together. Default: 0.</p>
    # @option params [Types::RenditionConfiguration] :rendition_configuration
    #   <p>Object that describes which renditions should be recorded for a stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RecordingConfigurationName",
    #     destination_configuration: { # required
    #       s3: {
    #         bucket_name: "S3DestinationBucketName", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     thumbnail_configuration: {
    #       recording_mode: "RecordingMode",
    #       target_interval_seconds: 1,
    #       resolution: "SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"],
    #       storage: ["ThumbnailConfigurationStorage"]
    #     },
    #     recording_reconnect_window_seconds: 1,
    #     rendition_configuration: {
    #       rendition_selection: "RenditionConfigurationRenditionSelection",
    #       renditions: ["SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"]]
    #     }
    #   }
    #   options = {}
    #   response = client.create_recording_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recording_configuration: {
    #       arn: "RecordingConfigurationArn", # required
    #       name: "RecordingConfigurationName",
    #       destination_configuration: { # required
    #         s3: {
    #           bucket_name: "S3DestinationBucketName", # required
    #         }
    #       },
    #       state: "RecordingConfigurationState", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       thumbnail_configuration: {
    #         recording_mode: "RecordingMode",
    #         target_interval_seconds: 1,
    #         resolution: "SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"],
    #         storage: ["ThumbnailConfigurationStorage"]
    #       },
    #       recording_reconnect_window_seconds: 1,
    #       rendition_configuration: {
    #         rendition_selection: "RenditionConfigurationRenditionSelection",
    #         renditions: ["SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"]]
    #       }
    #     }
    #   }
    # @return [Types::CreateRecordingConfigurationOutput]
    def create_recording_configuration(params = {}, options = {})
      request = build_request(:create_recording_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a stream key, used to initiate a stream, for the specified channel ARN.</p>
    #          <p>Note that <a>CreateChannel</a> creates a stream key. If you subsequently use
    #       CreateStreamKey on the same channel, it will fail because a stream key already exists and
    #       there is a limit of 1 stream key per channel. To reset the stream key on a channel, use <a>DeleteStreamKey</a> and then CreateStreamKey.</p>
    # @param [Hash, Types::CreateStreamKeyInput] params
    # @option params [String] :channel_arn
    #   <p>ARN of the channel for which to create the stream key.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_stream_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_key: {
    #       arn: "StreamKeyArn",
    #       value: "StreamKeyValue",
    #       channel_arn: "ChannelArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateStreamKeyOutput]
    def create_stream_key(params = {}, options = {})
      request = build_request(:create_stream_key, params)
      request.send_request(options)
    end

    # <p>Deletes the specified channel and its associated stream keys.</p>
    #          <p>If you try to delete a live channel, you will get an error (409 ConflictException). To
    #       delete a channel that is live, call <a>StopStream</a>, wait for the Amazon
    #       EventBridge "Stream End" event (to verify that the stream's state is no longer Live), then
    #       call DeleteChannel. (See <a href="https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html"> Using EventBridge with Amazon IVS</a>.)
    #     </p>
    # @param [Hash, Types::DeleteChannelInput] params
    # @option params [String] :arn
    #   <p>ARN of the channel to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ChannelArn", # required
    #   }
    #   options = {}
    #   response = client.delete_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_channel(params = {}, options = {})
      request = build_request(:delete_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a specified authorization key pair. This invalidates future viewer tokens
    #       generated using the key pair’s <code>privateKey</code>. For more information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private
    #         Channels</a> in the <i>Amazon IVS User Guide</i>.</p>
    # @param [Hash, Types::DeletePlaybackKeyPairInput] params
    # @option params [String] :arn
    #   <p>ARN of the key pair to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlaybackKeyPairArn", # required
    #   }
    #   options = {}
    #   response = client.delete_playback_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePlaybackKeyPairOutput]
    def delete_playback_key_pair(params = {}, options = {})
      request = build_request(:delete_playback_key_pair, params)
      request.send_request(options)
    end

    # <p>Deletes the specified playback restriction policy.</p>
    # @param [Hash, Types::DeletePlaybackRestrictionPolicyRequest] params
    # @option params [String] :arn
    #   <p>ARN of the playback restriction policy to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlaybackRestrictionPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.delete_playback_restriction_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_playback_restriction_policy(params = {}, options = {})
      request = build_request(:delete_playback_restriction_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the recording configuration for the specified ARN.</p>
    #          <p>If you try to delete a recording configuration that is associated with a channel, you will
    #       get an error (409 ConflictException). To avoid this, for all channels that reference the
    #       recording configuration, first use <a>UpdateChannel</a> to set the
    #         <code>recordingConfigurationArn</code> field to an empty string, then use
    #       DeleteRecordingConfiguration.</p>
    # @param [Hash, Types::DeleteRecordingConfigurationInput] params
    # @option params [String] :arn
    #   <p>ARN of the recording configuration to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RecordingConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_recording_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_recording_configuration(params = {}, options = {})
      request = build_request(:delete_recording_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the stream key for the specified ARN, so it can no longer be used to
    #       stream.</p>
    # @param [Hash, Types::DeleteStreamKeyInput] params
    # @option params [String] :arn
    #   <p>ARN of the stream key to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StreamKeyArn", # required
    #   }
    #   options = {}
    #   response = client.delete_stream_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_stream_key(params = {}, options = {})
      request = build_request(:delete_stream_key, params)
      request.send_request(options)
    end

    # <p>Gets the channel configuration for the specified channel ARN. See also <a>BatchGetChannel</a>.</p>
    # @param [Hash, Types::GetChannelInput] params
    # @option params [String] :arn
    #   <p>ARN of the channel for which the configuration is to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ChannelArn", # required
    #   }
    #   options = {}
    #   response = client.get_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: {
    #       arn: "ChannelArn",
    #       name: "ChannelName",
    #       latency_mode: "ChannelLatencyMode",
    #       type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #       recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #       ingest_endpoint: "IngestEndpoint",
    #       playback_url: "PlaybackURL",
    #       authorized: false,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       insecure_ingest: false,
    #       preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #       srt: {
    #         endpoint: "SrtEndpoint",
    #         passphrase: "SrtPassphrase"
    #       },
    #       playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #       multitrack_input_configuration: {
    #         enabled: false,
    #         policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #         maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #       },
    #       container_format: "ContainerFormat"
    #     }
    #   }
    # @return [Types::GetChannelOutput]
    def get_channel(params = {}, options = {})
      request = build_request(:get_channel, params)
      request.send_request(options)
    end

    # <p>Gets a specified playback authorization key pair and returns the <code>arn</code> and
    #         <code>fingerprint</code>. The <code>privateKey</code> held by the caller can be used to
    #       generate viewer authorization tokens, to grant viewers access to private channels. For more
    #       information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private Channels</a> in the <i>Amazon IVS User
    #       Guide</i>.</p>
    # @param [Hash, Types::GetPlaybackKeyPairInput] params
    # @option params [String] :arn
    #   <p>ARN of the key pair to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlaybackKeyPairArn", # required
    #   }
    #   options = {}
    #   response = client.get_playback_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_pair: {
    #       arn: "PlaybackKeyPairArn",
    #       name: "PlaybackKeyPairName",
    #       fingerprint: "PlaybackKeyPairFingerprint",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetPlaybackKeyPairOutput]
    def get_playback_key_pair(params = {}, options = {})
      request = build_request(:get_playback_key_pair, params)
      request.send_request(options)
    end

    # <p>Gets the specified playback restriction policy.</p>
    # @param [Hash, Types::GetPlaybackRestrictionPolicyRequest] params
    # @option params [String] :arn
    #   <p>ARN of the playback restriction policy to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlaybackRestrictionPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.get_playback_restriction_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     playback_restriction_policy: {
    #       arn: "PlaybackRestrictionPolicyArn", # required
    #       allowed_countries: ["PlaybackRestrictionPolicyAllowedCountry"], # required
    #       allowed_origins: ["PlaybackRestrictionPolicyAllowedOrigin"], # required
    #       enable_strict_origin_enforcement: false,
    #       name: "PlaybackRestrictionPolicyName",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetPlaybackRestrictionPolicyResponse]
    def get_playback_restriction_policy(params = {}, options = {})
      request = build_request(:get_playback_restriction_policy, params)
      request.send_request(options)
    end

    # <p>Gets the recording configuration for the specified ARN.</p>
    # @param [Hash, Types::GetRecordingConfigurationInput] params
    # @option params [String] :arn
    #   <p>ARN of the recording configuration to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RecordingConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_recording_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recording_configuration: {
    #       arn: "RecordingConfigurationArn", # required
    #       name: "RecordingConfigurationName",
    #       destination_configuration: { # required
    #         s3: {
    #           bucket_name: "S3DestinationBucketName", # required
    #         }
    #       },
    #       state: "RecordingConfigurationState", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       thumbnail_configuration: {
    #         recording_mode: "RecordingMode",
    #         target_interval_seconds: 1,
    #         resolution: "SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"],
    #         storage: ["ThumbnailConfigurationStorage"]
    #       },
    #       recording_reconnect_window_seconds: 1,
    #       rendition_configuration: {
    #         rendition_selection: "RenditionConfigurationRenditionSelection",
    #         renditions: ["SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"]]
    #       }
    #     }
    #   }
    # @return [Types::GetRecordingConfigurationOutput]
    def get_recording_configuration(params = {}, options = {})
      request = build_request(:get_recording_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the active (live) stream on a specified channel.</p>
    # @param [Hash, Types::GetStreamInput] params
    # @option params [String] :channel_arn
    #   <p>Channel ARN for stream to be accessed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #   }
    #   options = {}
    #   response = client.get_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream: {
    #       channel_arn: "ChannelArn",
    #       stream_id: "StreamId",
    #       playback_url: "PlaybackURL",
    #       start_time: Time.now,
    #       state: "StreamState",
    #       health: "StreamHealth",
    #       viewer_count: 1
    #     }
    #   }
    # @return [Types::GetStreamOutput]
    def get_stream(params = {}, options = {})
      request = build_request(:get_stream, params)
      request.send_request(options)
    end

    # <p>Gets stream-key information for a specified ARN.</p>
    # @param [Hash, Types::GetStreamKeyInput] params
    # @option params [String] :arn
    #   <p>ARN for the stream key to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StreamKeyArn", # required
    #   }
    #   options = {}
    #   response = client.get_stream_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_key: {
    #       arn: "StreamKeyArn",
    #       value: "StreamKeyValue",
    #       channel_arn: "ChannelArn",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetStreamKeyOutput]
    def get_stream_key(params = {}, options = {})
      request = build_request(:get_stream_key, params)
      request.send_request(options)
    end

    # <p>Gets metadata on a specified stream.</p>
    # @param [Hash, Types::GetStreamSessionInput] params
    # @option params [String] :channel_arn
    #   <p>ARN of the channel resource</p>
    # @option params [String] :stream_id
    #   <p>Unique identifier for a live or previously live stream in the specified channel. If no
    #           <code>streamId</code> is provided, this returns the most recent stream session for the
    #         channel, if it exists.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     stream_id: "StreamId"
    #   }
    #   options = {}
    #   response = client.get_stream_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_session: {
    #       stream_id: "StreamId",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       channel: {
    #         arn: "ChannelArn",
    #         name: "ChannelName",
    #         latency_mode: "ChannelLatencyMode",
    #         type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #         recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #         ingest_endpoint: "IngestEndpoint",
    #         playback_url: "PlaybackURL",
    #         authorized: false,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         insecure_ingest: false,
    #         preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #         srt: {
    #           endpoint: "SrtEndpoint",
    #           passphrase: "SrtPassphrase"
    #         },
    #         playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #         multitrack_input_configuration: {
    #           enabled: false,
    #           policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #           maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #         },
    #         container_format: "ContainerFormat"
    #       },
    #       ingest_configuration: {
    #         video: {
    #           avc_profile: "String",
    #           avc_level: "String",
    #           codec: "String",
    #           encoder: "String",
    #           target_bitrate: 1,
    #           target_framerate: 1,
    #           video_height: 1,
    #           video_width: 1,
    #           level: "String",
    #           track: "String",
    #           profile: "String"
    #         },
    #         audio: {
    #           codec: "String",
    #           target_bitrate: 1,
    #           sample_rate: 1,
    #           channels: 1,
    #           track: "String"
    #         }
    #       },
    #       ingest_configurations: {
    #         video_configurations: [ # required
    #           {
    #             avc_profile: "String",
    #             avc_level: "String",
    #             codec: "String",
    #             encoder: "String",
    #             target_bitrate: 1,
    #             target_framerate: 1,
    #             video_height: 1,
    #             video_width: 1,
    #             level: "String",
    #             track: "String",
    #             profile: "String"
    #           }
    #         ],
    #         audio_configurations: [ # required
    #           {
    #             codec: "String",
    #             target_bitrate: 1,
    #             sample_rate: 1,
    #             channels: 1,
    #             track: "String"
    #           }
    #         ]
    #       },
    #       recording_configuration: {
    #         arn: "RecordingConfigurationArn", # required
    #         name: "RecordingConfigurationName",
    #         destination_configuration: { # required
    #           s3: {
    #             bucket_name: "S3DestinationBucketName", # required
    #           }
    #         },
    #         state: "RecordingConfigurationState", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         thumbnail_configuration: {
    #           recording_mode: "RecordingMode",
    #           target_interval_seconds: 1,
    #           resolution: "SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"],
    #           storage: ["ThumbnailConfigurationStorage"]
    #         },
    #         recording_reconnect_window_seconds: 1,
    #         rendition_configuration: {
    #           rendition_selection: "RenditionConfigurationRenditionSelection",
    #           renditions: ["SD" # One of: ["SD", "HD", "FULL_HD", "LOWEST_RESOLUTION"]]
    #         }
    #       },
    #       truncated_events: [
    #         {
    #           name: "String",
    #           type: "String",
    #           event_time: Time.now,
    #           code: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetStreamSessionOutput]
    def get_stream_session(params = {}, options = {})
      request = build_request(:get_stream_session, params)
      request.send_request(options)
    end

    # <p>Imports the public portion of a new key pair and returns its <code>arn</code> and
    #         <code>fingerprint</code>. The <code>privateKey</code> can then be used to generate viewer
    #       authorization tokens, to grant viewers access to private channels. For more information, see
    #         <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up
    #         Private Channels</a> in the <i>Amazon IVS User Guide</i>.</p>
    # @param [Hash, Types::ImportPlaybackKeyPairInput] params
    # @option params [String] :public_key_material
    #   <p>The public portion of a customer-generated key pair.</p>
    # @option params [String] :name
    #   <p>Playback-key-pair name. The value does not need to be unique.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags provided with the request are added to the playback key pair tags. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no service-specific constraints beyond what is
    #         documented there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     public_key_material: "PlaybackPublicKeyMaterial", # required
    #     name: "PlaybackKeyPairName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.import_playback_key_pair(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_pair: {
    #       arn: "PlaybackKeyPairArn",
    #       name: "PlaybackKeyPairName",
    #       fingerprint: "PlaybackKeyPairFingerprint",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::ImportPlaybackKeyPairOutput]
    def import_playback_key_pair(params = {}, options = {})
      request = build_request(:import_playback_key_pair, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all channels in your account, in the Amazon Web Services
    #       region where the API request is processed. This list can be filtered to match a specified name
    #       or recording-configuration ARN. Filters are mutually exclusive and cannot be used together. If
    #       you try to use both filters, you will get an error (409 ConflictException).</p>
    # @param [Hash, Types::ListChannelsInput] params
    # @option params [String] :filter_by_name
    #   <p>Filters the channel list to match the specified name.</p>
    # @option params [String] :filter_by_recording_configuration_arn
    #   <p>Filters the channel list to match the specified recording-configuration ARN.</p>
    # @option params [String] :filter_by_playback_restriction_policy_arn
    #   <p>Filters the channel list to match the specified policy.</p>
    # @option params [String] :next_token
    #   <p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of channels to return. Default: 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_by_name: "ChannelName",
    #     filter_by_recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #     filter_by_playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [ # required
    #       {
    #         arn: "ChannelArn",
    #         name: "ChannelName",
    #         latency_mode: "ChannelLatencyMode",
    #         authorized: false,
    #         recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         insecure_ingest: false,
    #         type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #         preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #         playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListChannelsOutput]
    def list_channels(params = {}, options = {})
      request = build_request(:list_channels, params)
      request.send_request(options)
    end

    # <p>Gets summary information about playback key pairs. For more information, see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up Private
    #         Channels</a> in the <i>Amazon IVS User Guide</i>.</p>
    # @param [Hash, Types::ListPlaybackKeyPairsInput] params
    # @option params [String] :next_token
    #   <p>The first key pair to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of key pairs to return. Default: your service quota or 100, whichever is
    #         smaller.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_playback_key_pairs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_pairs: [ # required
    #       {
    #         arn: "PlaybackKeyPairArn",
    #         name: "PlaybackKeyPairName",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPlaybackKeyPairsOutput]
    def list_playback_key_pairs(params = {}, options = {})
      request = build_request(:list_playback_key_pairs, params)
      request.send_request(options)
    end

    # <p>Gets summary information about playback restriction policies.</p>
    # @param [Hash, Types::ListPlaybackRestrictionPoliciesRequest] params
    # @option params [String] :next_token
    #   <p>The first policy to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of policies to return. Default: 1.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_playback_restriction_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     playback_restriction_policies: [ # required
    #       {
    #         arn: "PlaybackRestrictionPolicyArn", # required
    #         allowed_countries: ["PlaybackRestrictionPolicyAllowedCountry"], # required
    #         allowed_origins: ["PlaybackRestrictionPolicyAllowedOrigin"], # required
    #         enable_strict_origin_enforcement: false,
    #         name: "PlaybackRestrictionPolicyName",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPlaybackRestrictionPoliciesResponse]
    def list_playback_restriction_policies(params = {}, options = {})
      request = build_request(:list_playback_restriction_policies, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all recording configurations in your account, in the
    #         Amazon Web Services region where the API request is processed.</p>
    # @param [Hash, Types::ListRecordingConfigurationsInput] params
    # @option params [String] :next_token
    #   <p>The first recording configuration to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of recording configurations to return. Default: your service quota or 100,
    #         whichever is smaller. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_recording_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recording_configurations: [ # required
    #       {
    #         arn: "RecordingConfigurationArn", # required
    #         name: "RecordingConfigurationName",
    #         destination_configuration: { # required
    #           s3: {
    #             bucket_name: "S3DestinationBucketName", # required
    #           }
    #         },
    #         state: "RecordingConfigurationState", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRecordingConfigurationsOutput]
    def list_recording_configurations(params = {}, options = {})
      request = build_request(:list_recording_configurations, params)
      request.send_request(options)
    end

    # <p>Gets summary information about stream keys for the specified channel.</p>
    # @param [Hash, Types::ListStreamKeysInput] params
    # @option params [String] :channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    # @option params [String] :next_token
    #   <p>The first stream key to retrieve. This is used for pagination; see the
    #           <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of streamKeys to return. Default: 1.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stream_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_keys: [ # required
    #       {
    #         arn: "StreamKeyArn",
    #         channel_arn: "ChannelArn",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStreamKeysOutput]
    def list_stream_keys(params = {}, options = {})
      request = build_request(:list_stream_keys, params)
      request.send_request(options)
    end

    # <p>Gets a summary of current and previous streams for a specified channel in your account, in
    #       the AWS region where the API request is processed.</p>
    # @param [Hash, Types::ListStreamSessionsInput] params
    # @option params [String] :channel_arn
    #   <p>Channel ARN used to filter the list.</p>
    # @option params [String] :next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of streams to return. Default: 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stream_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_sessions: [ # required
    #       {
    #         stream_id: "StreamId",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         has_error_event: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStreamSessionsOutput]
    def list_stream_sessions(params = {}, options = {})
      request = build_request(:list_stream_sessions, params)
      request.send_request(options)
    end

    # <p>Gets summary information about live streams in your account, in the Amazon Web Services
    #       region where the API request is processed.</p>
    # @param [Hash, Types::ListStreamsInput] params
    # @option params [Types::StreamFilters] :filter_by
    #   <p>Filters the stream list to match the specified criterion.</p>
    # @option params [String] :next_token
    #   <p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code>
    #         response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of streams to return. Default: 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_by: {
    #       health: "StreamHealth"
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streams: [ # required
    #       {
    #         channel_arn: "ChannelArn",
    #         stream_id: "StreamId",
    #         state: "StreamState",
    #         health: "StreamHealth",
    #         viewer_count: 1,
    #         start_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStreamsOutput]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
      request.send_request(options)
    end

    # <p>Gets information about Amazon Web Services tags for the specified ARN.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Inserts metadata into the active stream of the specified channel. At most 5 requests per
    #       second per channel are allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient
    #       for your needs, we recommend batching your data into a single PutMetadata call.) At most 155
    #       requests per second per account are allowed. Also see <a href="https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html">Embedding Metadata within a Video Stream</a> in
    #       the <i>Amazon IVS User Guide</i>.</p>
    # @param [Hash, Types::PutMetadataInput] params
    # @option params [String] :channel_arn
    #   <p>ARN of the channel into which metadata is inserted. This channel must have an active
    #         stream.</p>
    # @option params [String] :metadata
    #   <p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     metadata: "StreamMetadata", # required
    #   }
    #   options = {}
    #   response = client.put_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_metadata(params = {}, options = {})
      request = build_request(:put_metadata, params)
      request.send_request(options)
    end

    # <p>Starts the process of revoking the viewer session associated with a specified channel ARN
    #       and viewer ID. Optionally, you can provide a version to revoke viewer sessions less than and
    #       including that version. For instructions on associating a viewer ID with a viewer session, see
    #         <a href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting Up
    #         Private Channels</a>.</p>
    # @param [Hash, Types::StartViewerSessionRevocationInput] params
    # @option params [String] :channel_arn
    #   <p>The ARN of the channel associated with the viewer session to revoke.</p>
    # @option params [String] :viewer_id
    #   <p>The ID of the viewer associated with the viewer session to revoke. Do not use this field
    #         for personally identifying, confidential, or sensitive information.</p>
    # @option params [Integer] :viewer_session_versions_less_than_or_equal_to
    #   <p>An optional filter on which versions of the viewer session to revoke. All versions less
    #         than or equal to the specified version will be revoked. Default: 0.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #     viewer_id: "ViewerId", # required
    #     viewer_session_versions_less_than_or_equal_to: 1
    #   }
    #   options = {}
    #   response = client.start_viewer_session_revocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartViewerSessionRevocationOutput]
    def start_viewer_session_revocation(params = {}, options = {})
      request = build_request(:start_viewer_session_revocation, params)
      request.send_request(options)
    end

    # <p>Disconnects the incoming RTMPS stream for the specified channel. Can be used in
    #       conjunction with <a>DeleteStreamKey</a> to prevent further streaming to a
    #       channel.</p>
    #          <note>
    #             <p>Many streaming client-software libraries automatically reconnect a dropped RTMPS
    #         session, so to stop the stream permanently, you may want to first revoke the
    #           <code>streamKey</code> attached to the channel.</p>
    #          </note>
    # @param [Hash, Types::StopStreamInput] params
    # @option params [String] :channel_arn
    #   <p>ARN of the channel for which the stream is to be stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ChannelArn", # required
    #   }
    #   options = {}
    #   response = client.stop_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopStreamOutput]
    def stop_stream(params = {}, options = {})
      request = build_request(:stop_stream, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for the Amazon Web Services resource with the specified ARN.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated. The ARN must be
    #         URL-encoded.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated. Array of maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from the resource with the specified ARN.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be removed. The ARN must be URL-encoded.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tags to be removed. Array of maps, each of the form <code>string:string
    #           (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS has no
    #         service-specific constraints beyond what is documented there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a channel's configuration. Live channels cannot be updated. You must stop the
    #       ongoing stream, update the channel, and restart the stream for the changes to take
    #       effect.</p>
    # @param [Hash, Types::UpdateChannelInput] params
    # @option params [String] :arn
    #   <p>ARN of the channel to be updated.</p>
    # @option params [String] :name
    #   <p>Channel name.</p>
    # @option params [String] :latency_mode
    #   <p>Channel latency mode. Use <code>NORMAL</code> to broadcast and deliver live video up to
    #         Full HD. Use <code>LOW</code> for near-real-time interaction with viewers.</p>
    # @option params [String] :type
    #   <p>Channel type, which determines the allowable resolution and bitrate. <i>If you
    #           exceed the allowable input resolution or bitrate, the stream probably will disconnect
    #           immediately.</i> Default: <code>STANDARD</code>. For details, see <a href="https://docs.aws.amazon.com/ivs/latest/LowLatencyAPIReference/channel-types.html">Channel
    #           Types</a>.</p>
    # @option params [Boolean] :authorized
    #   <p>Whether the channel is private (enabled for playback authorization).</p>
    # @option params [String] :recording_configuration_arn
    #   <p>Recording-configuration ARN. A valid ARN value here both specifies the ARN and enables recording.
    #       If this is set to an empty string, recording is disabled.</p>
    # @option params [Boolean] :insecure_ingest
    #   <p>Whether the channel allows insecure RTMP and SRT ingest. Default: <code>false</code>.</p>
    # @option params [String] :preset
    #   <p>Optional transcode preset for the channel. This is selectable only for
    #           <code>ADVANCED_HD</code> and <code>ADVANCED_SD</code> channel types. For those channel
    #         types, the default <code>preset</code> is <code>HIGHER_BANDWIDTH_DELIVERY</code>. For other
    #         channel types (<code>BASIC</code> and <code>STANDARD</code>), <code>preset</code> is the empty
    #         string (<code>""</code>).</p>
    # @option params [String] :playback_restriction_policy_arn
    #   <p>Playback-restriction-policy ARN. A valid ARN value here both specifies the ARN and enables playback restriction.
    #        If this is set to an empty string, playback restriction policy is disabled.</p>
    # @option params [Types::MultitrackInputConfiguration] :multitrack_input_configuration
    #   <p>Object specifying multitrack input configuration. Default: no multitrack input configuration is specified.</p>
    # @option params [String] :container_format
    #   <p>Indicates which content-packaging format is used (MPEG-TS or fMP4). If <code>multitrackInputConfiguration</code> is specified and <code>enabled</code> is <code>true</code>, then <code>containerFormat</code> is required and must be set to <code>FRAGMENTED_MP4</code>. Otherwise, <code>containerFormat</code> may be set to <code>TS</code> or <code>FRAGMENTED_MP4</code>. Default: <code>TS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "ChannelArn", # required
    #     name: "ChannelName",
    #     latency_mode: "ChannelLatencyMode",
    #     type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #     authorized: false,
    #     recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #     insecure_ingest: false,
    #     preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #     playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #     multitrack_input_configuration: {
    #       enabled: false,
    #       policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #       maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #     },
    #     container_format: "ContainerFormat"
    #   }
    #   options = {}
    #   response = client.update_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: {
    #       arn: "ChannelArn",
    #       name: "ChannelName",
    #       latency_mode: "ChannelLatencyMode",
    #       type: "BASIC" # One of: ["BASIC", "STANDARD", "ADVANCED_SD", "ADVANCED_HD"],
    #       recording_configuration_arn: "ChannelRecordingConfigurationArn",
    #       ingest_endpoint: "IngestEndpoint",
    #       playback_url: "PlaybackURL",
    #       authorized: false,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       insecure_ingest: false,
    #       preset: "HIGHER_BANDWIDTH_DELIVERY" # One of: ["HIGHER_BANDWIDTH_DELIVERY", "CONSTRAINED_BANDWIDTH_DELIVERY"],
    #       srt: {
    #         endpoint: "SrtEndpoint",
    #         passphrase: "SrtPassphrase"
    #       },
    #       playback_restriction_policy_arn: "ChannelPlaybackRestrictionPolicyArn",
    #       multitrack_input_configuration: {
    #         enabled: false,
    #         policy: "ALLOW" # One of: ["ALLOW", "REQUIRE"],
    #         maximum_resolution: "SD" # One of: ["SD", "HD", "FULL_HD"]
    #       },
    #       container_format: "ContainerFormat"
    #     }
    #   }
    # @return [Types::UpdateChannelOutput]
    def update_channel(params = {}, options = {})
      request = build_request(:update_channel, params)
      request.send_request(options)
    end

    # <p>Updates a specified playback restriction policy.</p>
    # @param [Hash, Types::UpdatePlaybackRestrictionPolicyRequest] params
    # @option params [String] :arn
    #   <p>ARN of the playback-restriction-policy to be updated.</p>
    # @option params [Array<String>] :allowed_countries
    #   <p>A list of country codes that control geoblocking restriction. Allowed values are the
    #         officially assigned <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1
    #           alpha-2</a> codes. Default: All countries (an empty array).</p>
    # @option params [Array<String>] :allowed_origins
    #   <p>A list of origin sites that control CORS restriction. Allowed values are the same as valid
    #         values of the Origin header defined at <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin">https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin</a>. Default: All
    #         origins (an empty array).</p>
    # @option params [Boolean] :enable_strict_origin_enforcement
    #   <p>Whether channel playback is constrained by origin site. Default:
    #         <code>false</code>.</p>
    # @option params [String] :name
    #   <p>Playback-restriction-policy name. The value does not need to be unique.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PlaybackRestrictionPolicyArn", # required
    #     allowed_countries: ["PlaybackRestrictionPolicyAllowedCountry"],
    #     allowed_origins: ["PlaybackRestrictionPolicyAllowedOrigin"],
    #     enable_strict_origin_enforcement: false,
    #     name: "PlaybackRestrictionPolicyName"
    #   }
    #   options = {}
    #   response = client.update_playback_restriction_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     playback_restriction_policy: {
    #       arn: "PlaybackRestrictionPolicyArn", # required
    #       allowed_countries: ["PlaybackRestrictionPolicyAllowedCountry"], # required
    #       allowed_origins: ["PlaybackRestrictionPolicyAllowedOrigin"], # required
    #       enable_strict_origin_enforcement: false,
    #       name: "PlaybackRestrictionPolicyName",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdatePlaybackRestrictionPolicyResponse]
    def update_playback_restriction_policy(params = {}, options = {})
      request = build_request(:update_playback_restriction_policy, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-ivs'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end

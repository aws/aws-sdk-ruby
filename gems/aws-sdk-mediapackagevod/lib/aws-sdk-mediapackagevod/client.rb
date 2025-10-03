# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::MediaPackageVod
  # An API client for Aws::MediaPackageVod.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MediaPackageVod

    add_plugin(::Aws::MediaPackageVod::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MediaPackageVod::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # Changes the packaging group's properities to configure log subscription
    # @param [Hash, Types::ConfigureLogsRequest] params
    # @option params [Types::EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.configure_logs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     created_at: "__string",
    #     domain_name: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ConfigureLogsResponse]
    def configure_logs(params = {}, options = {})
      request = build_request(:configure_logs, params)
      request.send_request(options)
    end

    # Creates a new MediaPackage VOD Asset resource.
    # @param [Hash, Types::CreateAssetRequest] params
    # @option params [String] :id
    #   The unique identifier for the Asset.
    # @option params [String] :packaging_group_id
    #   The ID of the PackagingGroup for the Asset.
    # @option params [String] :resource_id
    #   The resource ID to include in SPEKE key requests.
    # @option params [String] :source_arn
    #   ARN of the source object in S3.
    # @option params [String] :source_role_arn
    #   The IAM role ARN used to access the source S3 bucket.
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #     packaging_group_id: "__string", # required
    #     resource_id: "__string",
    #     source_arn: "__string", # required
    #     source_role_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     egress_endpoints: [
    #       {
    #         packaging_configuration_id: "__string",
    #         status: "__string",
    #         url: "__string"
    #       }
    #     ],
    #     id: "__string",
    #     packaging_group_id: "__string",
    #     resource_id: "__string",
    #     source_arn: "__string",
    #     source_role_arn: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateAssetResponse]
    def create_asset(params = {}, options = {})
      request = build_request(:create_asset, params)
      request.send_request(options)
    end

    # Creates a new MediaPackage VOD PackagingConfiguration resource.
    # @param [Hash, Types::CreatePackagingConfigurationRequest] params
    # @option params [Types::CmafPackage] :cmaf_package
    #   A CMAF packaging configuration.
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    # @option params [String] :id
    #   The ID of the PackagingConfiguration.
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    # @option params [String] :packaging_group_id
    #   The ID of a PackagingGroup.
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    # @example Request syntax with placeholder values
    #   params = {
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       include_encoder_configuration_in_segments: false,
    #       segment_duration_seconds: 1
    #     },
    #     dash_package: {
    #       dash_manifests: [ # required
    #         {
    #           manifest_layout: "FULL" # One of: ["FULL", "COMPACT"],
    #           manifest_name: "__string",
    #           min_buffer_time_seconds: 1,
    #           profile: "NONE" # One of: ["NONE", "HBBTV_1_5"],
    #           scte_markers_source: "SEGMENTS" # One of: ["SEGMENTS", "MANIFEST"],
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_encoder_configuration_in_segments: false,
    #       include_iframe_only_stream: false,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #     },
    #     hls_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       include_dvb_subtitles: false,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string", # required
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       mss_manifests: [ # required
    #         {
    #           manifest_name: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       segment_duration_seconds: 1
    #     },
    #     packaging_group_id: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_packaging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       include_encoder_configuration_in_segments: false,
    #       segment_duration_seconds: 1
    #     },
    #     created_at: "__string",
    #     dash_package: {
    #       dash_manifests: [ # required
    #         {
    #           manifest_layout: "FULL" # One of: ["FULL", "COMPACT"],
    #           manifest_name: "__string",
    #           min_buffer_time_seconds: 1,
    #           profile: "NONE" # One of: ["NONE", "HBBTV_1_5"],
    #           scte_markers_source: "SEGMENTS" # One of: ["SEGMENTS", "MANIFEST"],
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_encoder_configuration_in_segments: false,
    #       include_iframe_only_stream: false,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #     },
    #     hls_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       include_dvb_subtitles: false,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       mss_manifests: [ # required
    #         {
    #           manifest_name: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       segment_duration_seconds: 1
    #     },
    #     packaging_group_id: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreatePackagingConfigurationResponse]
    def create_packaging_configuration(params = {}, options = {})
      request = build_request(:create_packaging_configuration, params)
      request.send_request(options)
    end

    # Creates a new MediaPackage VOD PackagingGroup resource.
    # @param [Hash, Types::CreatePackagingGroupRequest] params
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    # @option params [Types::EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    # @option params [String] :id
    #   The ID of the PackagingGroup.
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    # @example Request syntax with placeholder values
    #   params = {
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_packaging_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     created_at: "__string",
    #     domain_name: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreatePackagingGroupResponse]
    def create_packaging_group(params = {}, options = {})
      request = build_request(:create_packaging_group, params)
      request.send_request(options)
    end

    # Deletes an existing MediaPackage VOD Asset resource.
    # @param [Hash, Types::DeleteAssetRequest] params
    # @option params [String] :id
    #   The ID of the MediaPackage VOD Asset resource to delete.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssetResponse]
    def delete_asset(params = {}, options = {})
      request = build_request(:delete_asset, params)
      request.send_request(options)
    end

    # Deletes a MediaPackage VOD PackagingConfiguration resource.
    # @param [Hash, Types::DeletePackagingConfigurationRequest] params
    # @option params [String] :id
    #   The ID of the MediaPackage VOD PackagingConfiguration resource to delete.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_packaging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePackagingConfigurationResponse]
    def delete_packaging_configuration(params = {}, options = {})
      request = build_request(:delete_packaging_configuration, params)
      request.send_request(options)
    end

    # Deletes a MediaPackage VOD PackagingGroup resource.
    # @param [Hash, Types::DeletePackagingGroupRequest] params
    # @option params [String] :id
    #   The ID of the MediaPackage VOD PackagingGroup resource to delete.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_packaging_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePackagingGroupResponse]
    def delete_packaging_group(params = {}, options = {})
      request = build_request(:delete_packaging_group, params)
      request.send_request(options)
    end

    # Returns a description of a MediaPackage VOD Asset resource.
    # @param [Hash, Types::DescribeAssetRequest] params
    # @option params [String] :id
    #   The ID of an MediaPackage VOD Asset resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     created_at: "__string",
    #     egress_endpoints: [
    #       {
    #         packaging_configuration_id: "__string",
    #         status: "__string",
    #         url: "__string"
    #       }
    #     ],
    #     id: "__string",
    #     packaging_group_id: "__string",
    #     resource_id: "__string",
    #     source_arn: "__string",
    #     source_role_arn: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeAssetResponse]
    def describe_asset(params = {}, options = {})
      request = build_request(:describe_asset, params)
      request.send_request(options)
    end

    # Returns a description of a MediaPackage VOD PackagingConfiguration resource.
    # @param [Hash, Types::DescribePackagingConfigurationRequest] params
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingConfiguration resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_packaging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       include_encoder_configuration_in_segments: false,
    #       segment_duration_seconds: 1
    #     },
    #     created_at: "__string",
    #     dash_package: {
    #       dash_manifests: [ # required
    #         {
    #           manifest_layout: "FULL" # One of: ["FULL", "COMPACT"],
    #           manifest_name: "__string",
    #           min_buffer_time_seconds: 1,
    #           profile: "NONE" # One of: ["NONE", "HBBTV_1_5"],
    #           scte_markers_source: "SEGMENTS" # One of: ["SEGMENTS", "MANIFEST"],
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       include_encoder_configuration_in_segments: false,
    #       include_iframe_only_stream: false,
    #       period_triggers: ["ADS" # One of: ["ADS"]],
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #     },
    #     hls_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       include_dvb_subtitles: false,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false
    #     },
    #     id: "__string",
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #             preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         }
    #       },
    #       mss_manifests: [ # required
    #         {
    #           manifest_name: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #           }
    #         }
    #       ],
    #       segment_duration_seconds: 1
    #     },
    #     packaging_group_id: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribePackagingConfigurationResponse]
    def describe_packaging_configuration(params = {}, options = {})
      request = build_request(:describe_packaging_configuration, params)
      request.send_request(options)
    end

    # Returns a description of a MediaPackage VOD PackagingGroup resource.
    # @param [Hash, Types::DescribePackagingGroupRequest] params
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_packaging_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approximate_asset_count: 1,
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     created_at: "__string",
    #     domain_name: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribePackagingGroupResponse]
    def describe_packaging_group(params = {}, options = {})
      request = build_request(:describe_packaging_group, params)
      request.send_request(options)
    end

    # Returns a collection of MediaPackage VOD Asset resources.
    # @param [Hash, Types::ListAssetsRequest] params
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    # @option params [String] :packaging_group_id
    #   Returns Assets associated with the specified PackagingGroup.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     packaging_group_id: "__string"
    #   }
    #   options = {}
    #   response = client.list_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assets: [
    #       {
    #         arn: "__string",
    #         created_at: "__string",
    #         id: "__string",
    #         packaging_group_id: "__string",
    #         resource_id: "__string",
    #         source_arn: "__string",
    #         source_role_arn: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListAssetsResponse]
    def list_assets(params = {}, options = {})
      request = build_request(:list_assets, params)
      request.send_request(options)
    end

    # Returns a collection of MediaPackage VOD PackagingConfiguration resources.
    # @param [Hash, Types::ListPackagingConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    # @option params [String] :packaging_group_id
    #   Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string",
    #     packaging_group_id: "__string"
    #   }
    #   options = {}
    #   response = client.list_packaging_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     packaging_configurations: [
    #       {
    #         arn: "__string",
    #         cmaf_package: {
    #           encryption: {
    #             constant_initialization_vector: "__string",
    #             speke_key_provider: { # required
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           hls_manifests: [ # required
    #             {
    #               ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               program_date_time_interval_seconds: 1,
    #               repeat_ext_x_key: false,
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #               }
    #             }
    #           ],
    #           include_encoder_configuration_in_segments: false,
    #           segment_duration_seconds: 1
    #         },
    #         created_at: "__string",
    #         dash_package: {
    #           dash_manifests: [ # required
    #             {
    #               manifest_layout: "FULL" # One of: ["FULL", "COMPACT"],
    #               manifest_name: "__string",
    #               min_buffer_time_seconds: 1,
    #               profile: "NONE" # One of: ["NONE", "HBBTV_1_5"],
    #               scte_markers_source: "SEGMENTS" # One of: ["SEGMENTS", "MANIFEST"],
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #               }
    #             }
    #           ],
    #           encryption: {
    #             speke_key_provider: { # required
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           include_encoder_configuration_in_segments: false,
    #           include_iframe_only_stream: false,
    #           period_triggers: ["ADS" # One of: ["ADS"]],
    #           segment_duration_seconds: 1,
    #           segment_template_format: "NUMBER_WITH_TIMELINE" # One of: ["NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"]
    #         },
    #         hls_package: {
    #           encryption: {
    #             constant_initialization_vector: "__string",
    #             encryption_method: "AES_128" # One of: ["AES_128", "SAMPLE_AES"],
    #             speke_key_provider: { # required
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           hls_manifests: [ # required
    #             {
    #               ad_markers: "NONE" # One of: ["NONE", "SCTE35_ENHANCED", "PASSTHROUGH"],
    #               include_iframe_only_stream: false,
    #               manifest_name: "__string",
    #               program_date_time_interval_seconds: 1,
    #               repeat_ext_x_key: false,
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #               }
    #             }
    #           ],
    #           include_dvb_subtitles: false,
    #           segment_duration_seconds: 1,
    #           use_audio_rendition_group: false
    #         },
    #         id: "__string",
    #         mss_package: {
    #           encryption: {
    #             speke_key_provider: { # required
    #               encryption_contract_configuration: {
    #                 preset_speke20_audio: "PRESET-AUDIO-1" # One of: ["PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"], # required
    #                 preset_speke20_video: "PRESET-VIDEO-1" # One of: ["PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"], # required
    #               },
    #               role_arn: "__string", # required
    #               system_ids: ["__string"], # required
    #               url: "__string", # required
    #             }
    #           },
    #           mss_manifests: [ # required
    #             {
    #               manifest_name: "__string",
    #               stream_selection: {
    #                 max_video_bits_per_second: 1,
    #                 min_video_bits_per_second: 1,
    #                 stream_order: "ORIGINAL" # One of: ["ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"]
    #               }
    #             }
    #           ],
    #           segment_duration_seconds: 1
    #         },
    #         packaging_group_id: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListPackagingConfigurationsResponse]
    def list_packaging_configurations(params = {}, options = {})
      request = build_request(:list_packaging_configurations, params)
      request.send_request(options)
    end

    # Returns a collection of MediaPackage VOD PackagingGroup resources.
    # @param [Hash, Types::ListPackagingGroupsRequest] params
    # @option params [Integer] :max_results
    #   Upper bound on number of records to return.
    # @option params [String] :next_token
    #   A token used to resume pagination from the end of a previous request.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_packaging_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     packaging_groups: [
    #       {
    #         approximate_asset_count: 1,
    #         arn: "__string",
    #         authorization: {
    #           cdn_identifier_secret: "__string", # required
    #           secrets_role_arn: "__string", # required
    #         },
    #         created_at: "__string",
    #         domain_name: "__string",
    #         egress_access_logs: {
    #           log_group_name: "__string"
    #         },
    #         id: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListPackagingGroupsResponse]
    def list_packaging_groups(params = {}, options = {})
      request = build_request(:list_packaging_groups, params)
      request.send_request(options)
    end

    # Returns a list of the tags assigned to the specified resource.
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # Adds tags to the specified resource. You can specify one or more tags to add.
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    # @option params [Hash<String, String>] :tags
    #   A collection of tags associated with a resource
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # Removes tags from the specified resource. You can specify one or more tags to remove.
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.
    # @option params [Array<String>] :tag_keys
    #   A comma-separated list of the tag keys to remove from the resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.
    # @param [Hash, Types::UpdatePackagingGroupRequest] params
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    # @option params [String] :id
    #   The ID of a MediaPackage VOD PackagingGroup resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_packaging_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     approximate_asset_count: 1,
    #     arn: "__string",
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     created_at: "__string",
    #     domain_name: "__string",
    #     egress_access_logs: {
    #       log_group_name: "__string"
    #     },
    #     id: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdatePackagingGroupResponse]
    def update_packaging_group(params = {}, options = {})
      request = build_request(:update_packaging_group, params)
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
      context[:gem_name] = 'aws-sdk-mediapackagevod'
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
    end
  end
end

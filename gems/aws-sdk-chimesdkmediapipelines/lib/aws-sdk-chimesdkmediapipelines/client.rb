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

module Aws::ChimeSDKMediaPipelines
  # An API client for Aws::ChimeSDKMediaPipelines.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ChimeSDKMediaPipelinesService

    add_plugin(::Aws::ChimeSDKMediaPipelines::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ChimeSDKMediaPipelines::EndpointProvider)
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

    # <p>Creates a media pipeline.</p>
    # @param [Hash, Types::CreateMediaCapturePipelineRequest] params
    # @option params [String] :source_type
    #   <p>Source type from which the media artifacts are captured. A Chime SDK Meeting is the only
    #            supported source.</p>
    # @option params [String] :source_arn
    #   <p>ARN of the source from which the media artifacts are captured.</p>
    # @option params [String] :sink_type
    #   <p>Destination type to which the media artifacts are saved. You must use an S3 bucket.</p>
    # @option params [String] :sink_arn
    #   <p>The ARN of the sink type.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. The token makes the API request idempotent. Use a unique token for each media pipeline request.</p>
    # @option params [Types::ChimeSdkMeetingConfiguration] :chime_sdk_meeting_configuration
    #   <p>The configuration for a specified media pipeline. <code>SourceType</code> must
    #            be <code>ChimeSdkMeeting</code>.</p>
    # @option params [Types::SseAwsKeyManagementParams] :sse_aws_key_management_params
    #   <p>An object that contains server side encryption parameters to be used by media capture
    #            pipeline. The parameters can also be used by media concatenation pipeline taking media
    #            capture pipeline as a media source.</p>
    # @option params [String] :sink_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the sink role to be used with <code>AwsKmsKeyId</code>
    #            in <code>SseAwsKeyManagementParams</code>. Can only interact with <code>S3Bucket</code>
    #            sink type. The role must belong to the caller’s account and be able to act on behalf of the
    #            caller during the API call. All minimum policy permissions requirements for the caller to
    #            perform sink-related actions are the same for <code>SinkIamRoleArn</code>.</p>
    #            <p>Additionally, the role must have permission to <code>kms:GenerateDataKey</code> using
    #            KMS key supplied as <code>AwsKmsKeyId</code> in <code>SseAwsKeyManagementParams</code>. If
    #            media concatenation will be required later, the role must also have permission to
    #            <code>kms:Decrypt</code> for the same KMS key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #     source_arn: "Arn", # required
    #     sink_type: "S3Bucket" # One of: ["S3Bucket"], # required
    #     sink_arn: "Arn", # required
    #     client_request_token: "ClientRequestToken",
    #     chime_sdk_meeting_configuration: {
    #       source_configuration: {
    #         selected_video_streams: {
    #           attendee_ids: ["GuidString"],
    #           external_user_ids: ["ExternalUserIdType"]
    #         }
    #       },
    #       artifacts_configuration: {
    #         audio: { # required
    #           mux_type: "AudioOnly" # One of: ["AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"], # required
    #         },
    #         video: { # required
    #           state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           mux_type: "VideoOnly" # One of: ["VideoOnly"]
    #         },
    #         content: { # required
    #           state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           mux_type: "ContentOnly" # One of: ["ContentOnly"]
    #         },
    #         composited_video: {
    #           layout: "GridView" # One of: ["GridView"],
    #           resolution: "HD" # One of: ["HD", "FHD"],
    #           grid_view_configuration: { # required
    #             content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #             presenter_only_configuration: {
    #               presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #             },
    #             active_speaker_only_configuration: {
    #               active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #             },
    #             horizontal_layout_configuration: {
    #               tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #               tile_position: "Top" # One of: ["Top", "Bottom"],
    #               tile_count: 1,
    #               tile_aspect_ratio: "TileAspectRatio"
    #             },
    #             vertical_layout_configuration: {
    #               tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #               tile_position: "Left" # One of: ["Left", "Right"],
    #               tile_count: 1,
    #               tile_aspect_ratio: "TileAspectRatio"
    #             },
    #             video_attribute: {
    #               corner_radius: 1,
    #               border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #               highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #               border_thickness: 1
    #             },
    #             canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #           }
    #         }
    #       }
    #     },
    #     sse_aws_key_management_params: {
    #       aws_kms_key_id: "String", # required
    #       aws_kms_encryption_context: "String"
    #     },
    #     sink_iam_role_arn: "Arn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_media_capture_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_capture_pipeline: {
    #       media_pipeline_id: "GuidString",
    #       media_pipeline_arn: "AmazonResourceName",
    #       source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"],
    #       source_arn: "Arn",
    #       status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #       sink_type: "S3Bucket" # One of: ["S3Bucket"],
    #       sink_arn: "Arn",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       chime_sdk_meeting_configuration: {
    #         source_configuration: {
    #           selected_video_streams: {
    #             attendee_ids: ["GuidString"],
    #             external_user_ids: ["ExternalUserIdType"]
    #           }
    #         },
    #         artifacts_configuration: {
    #           audio: { # required
    #             mux_type: "AudioOnly" # One of: ["AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"], # required
    #           },
    #           video: { # required
    #             state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             mux_type: "VideoOnly" # One of: ["VideoOnly"]
    #           },
    #           content: { # required
    #             state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             mux_type: "ContentOnly" # One of: ["ContentOnly"]
    #           },
    #           composited_video: {
    #             layout: "GridView" # One of: ["GridView"],
    #             resolution: "HD" # One of: ["HD", "FHD"],
    #             grid_view_configuration: { # required
    #               content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #               presenter_only_configuration: {
    #                 presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #               },
    #               active_speaker_only_configuration: {
    #                 active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #               },
    #               horizontal_layout_configuration: {
    #                 tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                 tile_position: "Top" # One of: ["Top", "Bottom"],
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio"
    #               },
    #               vertical_layout_configuration: {
    #                 tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                 tile_position: "Left" # One of: ["Left", "Right"],
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio"
    #               },
    #               video_attribute: {
    #                 corner_radius: 1,
    #                 border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                 highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                 border_thickness: 1
    #               },
    #               canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #             }
    #           }
    #         }
    #       },
    #       sse_aws_key_management_params: {
    #         aws_kms_key_id: "String", # required
    #         aws_kms_encryption_context: "String"
    #       },
    #       sink_iam_role_arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateMediaCapturePipelineResponse]
    def create_media_capture_pipeline(params = {}, options = {})
      request = build_request(:create_media_capture_pipeline, params)
      request.send_request(options)
    end

    # <p>Creates a media concatenation pipeline.</p>
    # @param [Hash, Types::CreateMediaConcatenationPipelineRequest] params
    # @option params [Array<Types::ConcatenationSource>] :sources
    #   <p>An object that specifies the sources for the media concatenation pipeline.</p>
    # @option params [Array<Types::ConcatenationSink>] :sinks
    #   <p>An object that specifies the data sinks for the media concatenation pipeline.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. The token makes the API request
    #            idempotent. Use a unique token for each media concatenation pipeline request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the media concatenation pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sources: [ # required
    #       {
    #         type: "MediaCapturePipeline" # One of: ["MediaCapturePipeline"], # required
    #         media_capture_pipeline_source_configuration: { # required
    #           media_pipeline_arn: "Arn", # required
    #           chime_sdk_meeting_configuration: { # required
    #             artifacts_configuration: { # required
    #               audio: { # required
    #                 state: "Enabled" # One of: ["Enabled"], # required
    #               },
    #               video: { # required
    #                 state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               },
    #               content: { # required
    #                 state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               },
    #               data_channel: { # required
    #                 state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               },
    #               transcription_messages: { # required
    #                 state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               },
    #               meeting_events: { # required
    #                 state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               },
    #               composited_video: { # required
    #                 state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     sinks: [ # required
    #       {
    #         type: "S3Bucket" # One of: ["S3Bucket"], # required
    #         s3_bucket_sink_configuration: { # required
    #           destination: "Arn", # required
    #         }
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_media_concatenation_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_concatenation_pipeline: {
    #       media_pipeline_id: "GuidString",
    #       media_pipeline_arn: "AmazonResourceName",
    #       sources: [
    #         {
    #           type: "MediaCapturePipeline" # One of: ["MediaCapturePipeline"], # required
    #           media_capture_pipeline_source_configuration: { # required
    #             media_pipeline_arn: "Arn", # required
    #             chime_sdk_meeting_configuration: { # required
    #               artifacts_configuration: { # required
    #                 audio: { # required
    #                   state: "Enabled" # One of: ["Enabled"], # required
    #                 },
    #                 video: { # required
    #                   state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                 },
    #                 content: { # required
    #                   state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                 },
    #                 data_channel: { # required
    #                   state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                 },
    #                 transcription_messages: { # required
    #                   state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                 },
    #                 meeting_events: { # required
    #                   state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                 },
    #                 composited_video: { # required
    #                   state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       sinks: [
    #         {
    #           type: "S3Bucket" # One of: ["S3Bucket"], # required
    #           s3_bucket_sink_configuration: { # required
    #             destination: "Arn", # required
    #           }
    #         }
    #       ],
    #       status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateMediaConcatenationPipelineResponse]
    def create_media_concatenation_pipeline(params = {}, options = {})
      request = build_request(:create_media_concatenation_pipeline, params)
      request.send_request(options)
    end

    # <p>Creates a media insights pipeline.</p>
    # @param [Hash, Types::CreateMediaInsightsPipelineRequest] params
    # @option params [String] :media_insights_pipeline_configuration_arn
    #   <p>The ARN of the pipeline's configuration.</p>
    # @option params [Types::KinesisVideoStreamSourceRuntimeConfiguration] :kinesis_video_stream_source_runtime_configuration
    #   <p>The runtime configuration for the Kinesis video stream source of the media insights
    #            pipeline.</p>
    # @option params [Hash<String, String>] :media_insights_runtime_metadata
    #   <p>The runtime metadata for the media insights pipeline. Consists of a key-value map of strings.</p>
    # @option params [Types::KinesisVideoStreamRecordingSourceRuntimeConfiguration] :kinesis_video_stream_recording_source_runtime_configuration
    #   <p>The runtime configuration for the Kinesis video recording stream source.</p>
    # @option params [Types::S3RecordingSinkRuntimeConfiguration] :s3_recording_sink_runtime_configuration
    #   <p>The runtime configuration for the S3 recording sink. If specified, the settings in this structure override any settings in <code>S3RecordingSinkConfiguration</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the media insights pipeline.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the media insights pipeline request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_insights_pipeline_configuration_arn: "Arn", # required
    #     kinesis_video_stream_source_runtime_configuration: {
    #       streams: [ # required
    #         {
    #           stream_arn: "KinesisVideoStreamArn", # required
    #           fragment_number: "FragmentNumberString",
    #           stream_channel_definition: { # required
    #             number_of_channels: 1, # required
    #             channel_definitions: [
    #               {
    #                 channel_id: 1, # required
    #                 participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       media_encoding: "pcm" # One of: ["pcm"], # required
    #       media_sample_rate: 1, # required
    #     },
    #     media_insights_runtime_metadata: {
    #       "NonEmptyString" => "String"
    #     },
    #     kinesis_video_stream_recording_source_runtime_configuration: {
    #       streams: [ # required
    #         {
    #           stream_arn: "KinesisVideoStreamArn"
    #         }
    #       ],
    #       fragment_selector: { # required
    #         fragment_selector_type: "ProducerTimestamp" # One of: ["ProducerTimestamp", "ServerTimestamp"], # required
    #         timestamp_range: { # required
    #           start_timestamp: Time.now, # required
    #           end_timestamp: Time.now, # required
    #         }
    #       }
    #     },
    #     s3_recording_sink_runtime_configuration: {
    #       destination: "Arn", # required
    #       recording_file_format: "Wav" # One of: ["Wav", "Opus"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_media_insights_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_insights_pipeline: { # required
    #       media_pipeline_id: "GuidString",
    #       media_pipeline_arn: "Arn",
    #       media_insights_pipeline_configuration_arn: "Arn",
    #       status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #       kinesis_video_stream_source_runtime_configuration: {
    #         streams: [ # required
    #           {
    #             stream_arn: "KinesisVideoStreamArn", # required
    #             fragment_number: "FragmentNumberString",
    #             stream_channel_definition: { # required
    #               number_of_channels: 1, # required
    #               channel_definitions: [
    #                 {
    #                   channel_id: 1, # required
    #                   participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"]
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         media_encoding: "pcm" # One of: ["pcm"], # required
    #         media_sample_rate: 1, # required
    #       },
    #       media_insights_runtime_metadata: {
    #         "NonEmptyString" => "String"
    #       },
    #       kinesis_video_stream_recording_source_runtime_configuration: {
    #         streams: [ # required
    #           {
    #             stream_arn: "KinesisVideoStreamArn"
    #           }
    #         ],
    #         fragment_selector: { # required
    #           fragment_selector_type: "ProducerTimestamp" # One of: ["ProducerTimestamp", "ServerTimestamp"], # required
    #           timestamp_range: { # required
    #             start_timestamp: Time.now, # required
    #             end_timestamp: Time.now, # required
    #           }
    #         }
    #       },
    #       s3_recording_sink_runtime_configuration: {
    #         destination: "Arn", # required
    #         recording_file_format: "Wav" # One of: ["Wav", "Opus"], # required
    #       },
    #       created_timestamp: Time.now,
    #       element_statuses: [
    #         {
    #           type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"],
    #           status: "NotStarted" # One of: ["NotStarted", "NotSupported", "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateMediaInsightsPipelineResponse]
    def create_media_insights_pipeline(params = {}, options = {})
      request = build_request(:create_media_insights_pipeline, params)
      request.send_request(options)
    end

    # <p>A structure that contains the static configurations for a media insights
    #          pipeline.</p>
    # @param [Hash, Types::CreateMediaInsightsPipelineConfigurationRequest] params
    # @option params [String] :media_insights_pipeline_configuration_name
    #   <p>The name of the media insights pipeline configuration.</p>
    # @option params [String] :resource_access_role_arn
    #   <p>The ARN of the role used by the service to access Amazon Web Services resources,
    #            including <code>Transcribe</code> and <code>Transcribe Call Analytics</code>, on the 
    #            caller’s behalf.</p>
    # @option params [Types::RealTimeAlertConfiguration] :real_time_alert_configuration
    #   <p>The configuration settings for the real-time alerts in a media insights pipeline configuration.</p>
    # @option params [Array<Types::MediaInsightsPipelineConfigurationElement>] :elements
    #   <p>The elements in the request, such as a processor for Amazon Transcribe or a sink for a Kinesis Data Stream.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the media insights pipeline configuration.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the media insights pipeline configuration request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_insights_pipeline_configuration_name: "MediaInsightsPipelineConfigurationNameString", # required
    #     resource_access_role_arn: "Arn", # required
    #     real_time_alert_configuration: {
    #       disabled: false,
    #       rules: [
    #         {
    #           type: "KeywordMatch" # One of: ["KeywordMatch", "Sentiment", "IssueDetection"], # required
    #           keyword_match_configuration: {
    #             rule_name: "RuleName", # required
    #             keywords: ["Keyword"], # required
    #             negate: false
    #           },
    #           sentiment_configuration: {
    #             rule_name: "RuleName", # required
    #             sentiment_type: "NEGATIVE" # One of: ["NEGATIVE"], # required
    #             time_period: 1, # required
    #           },
    #           issue_detection_configuration: {
    #             rule_name: "RuleName", # required
    #           }
    #         }
    #       ]
    #     },
    #     elements: [ # required
    #       {
    #         type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"], # required
    #         amazon_transcribe_call_analytics_processor_configuration: {
    #           language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"], # required
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #           language_model_name: "ModelName",
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #           content_identification_type: "PII" # One of: ["PII"],
    #           content_redaction_type: "PII" # One of: ["PII"],
    #           pii_entity_types: "PiiEntityTypes",
    #           filter_partial_results: false,
    #           post_call_analytics_settings: {
    #             output_location: "String", # required
    #             data_access_role_arn: "String", # required
    #             content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #             output_encryption_kms_key_id: "String"
    #           },
    #           call_analytics_stream_categories: ["CategoryName"]
    #         },
    #         amazon_transcribe_processor_configuration: {
    #           language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #           show_speaker_label: false,
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #           content_identification_type: "PII" # One of: ["PII"],
    #           content_redaction_type: "PII" # One of: ["PII"],
    #           pii_entity_types: "PiiEntityTypes",
    #           language_model_name: "ModelName",
    #           filter_partial_results: false,
    #           identify_language: false,
    #           identify_multiple_languages: false,
    #           language_options: "LanguageOptions",
    #           preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #           vocabulary_names: "VocabularyNames",
    #           vocabulary_filter_names: "VocabularyFilterNames"
    #         },
    #         kinesis_data_stream_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         s3_recording_sink_configuration: {
    #           destination: "Arn",
    #           recording_file_format: "Wav" # One of: ["Wav", "Opus"]
    #         },
    #         voice_analytics_processor_configuration: {
    #           speaker_search_status: "Enabled" # One of: ["Enabled", "Disabled"],
    #           voice_tone_analysis_status: "Enabled" # One of: ["Enabled", "Disabled"]
    #         },
    #         lambda_function_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         sqs_queue_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         sns_topic_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         voice_enhancement_sink_configuration: {
    #           disabled: false
    #         }
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.create_media_insights_pipeline_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_insights_pipeline_configuration: {
    #       media_insights_pipeline_configuration_name: "MediaInsightsPipelineConfigurationNameString",
    #       media_insights_pipeline_configuration_arn: "Arn",
    #       resource_access_role_arn: "Arn",
    #       real_time_alert_configuration: {
    #         disabled: false,
    #         rules: [
    #           {
    #             type: "KeywordMatch" # One of: ["KeywordMatch", "Sentiment", "IssueDetection"], # required
    #             keyword_match_configuration: {
    #               rule_name: "RuleName", # required
    #               keywords: ["Keyword"], # required
    #               negate: false
    #             },
    #             sentiment_configuration: {
    #               rule_name: "RuleName", # required
    #               sentiment_type: "NEGATIVE" # One of: ["NEGATIVE"], # required
    #               time_period: 1, # required
    #             },
    #             issue_detection_configuration: {
    #               rule_name: "RuleName", # required
    #             }
    #           }
    #         ]
    #       },
    #       elements: [
    #         {
    #           type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"], # required
    #           amazon_transcribe_call_analytics_processor_configuration: {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"], # required
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #             language_model_name: "ModelName",
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #             content_identification_type: "PII" # One of: ["PII"],
    #             content_redaction_type: "PII" # One of: ["PII"],
    #             pii_entity_types: "PiiEntityTypes",
    #             filter_partial_results: false,
    #             post_call_analytics_settings: {
    #               output_location: "String", # required
    #               data_access_role_arn: "String", # required
    #               content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #               output_encryption_kms_key_id: "String"
    #             },
    #             call_analytics_stream_categories: ["CategoryName"]
    #           },
    #           amazon_transcribe_processor_configuration: {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #             show_speaker_label: false,
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #             content_identification_type: "PII" # One of: ["PII"],
    #             content_redaction_type: "PII" # One of: ["PII"],
    #             pii_entity_types: "PiiEntityTypes",
    #             language_model_name: "ModelName",
    #             filter_partial_results: false,
    #             identify_language: false,
    #             identify_multiple_languages: false,
    #             language_options: "LanguageOptions",
    #             preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             vocabulary_names: "VocabularyNames",
    #             vocabulary_filter_names: "VocabularyFilterNames"
    #           },
    #           kinesis_data_stream_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           s3_recording_sink_configuration: {
    #             destination: "Arn",
    #             recording_file_format: "Wav" # One of: ["Wav", "Opus"]
    #           },
    #           voice_analytics_processor_configuration: {
    #             speaker_search_status: "Enabled" # One of: ["Enabled", "Disabled"],
    #             voice_tone_analysis_status: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           lambda_function_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           sqs_queue_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           sns_topic_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           voice_enhancement_sink_configuration: {
    #             disabled: false
    #           }
    #         }
    #       ],
    #       media_insights_pipeline_configuration_id: "GuidString",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateMediaInsightsPipelineConfigurationResponse]
    def create_media_insights_pipeline_configuration(params = {}, options = {})
      request = build_request(:create_media_insights_pipeline_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a media live connector pipeline in an Amazon Chime SDK meeting.</p>
    # @param [Hash, Types::CreateMediaLiveConnectorPipelineRequest] params
    # @option params [Array<Types::LiveConnectorSourceConfiguration>] :sources
    #   <p>The media live connector pipeline's data sources.</p>
    # @option params [Array<Types::LiveConnectorSinkConfiguration>] :sinks
    #   <p>The media live connector pipeline's data sinks.</p>
    # @option params [String] :client_request_token
    #   <p>The token assigned to the client making the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the media live connector pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sources: [ # required
    #       {
    #         source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #         chime_sdk_meeting_live_connector_configuration: { # required
    #           arn: "Arn", # required
    #           mux_type: "AudioWithCompositedVideo" # One of: ["AudioWithCompositedVideo", "AudioWithActiveSpeakerVideo"], # required
    #           composited_video: {
    #             layout: "GridView" # One of: ["GridView"],
    #             resolution: "HD" # One of: ["HD", "FHD"],
    #             grid_view_configuration: { # required
    #               content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #               presenter_only_configuration: {
    #                 presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #               },
    #               active_speaker_only_configuration: {
    #                 active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #               },
    #               horizontal_layout_configuration: {
    #                 tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                 tile_position: "Top" # One of: ["Top", "Bottom"],
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio"
    #               },
    #               vertical_layout_configuration: {
    #                 tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                 tile_position: "Left" # One of: ["Left", "Right"],
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio"
    #               },
    #               video_attribute: {
    #                 corner_radius: 1,
    #                 border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                 highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                 border_thickness: 1
    #               },
    #               canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #             }
    #           },
    #           source_configuration: {
    #             selected_video_streams: {
    #               attendee_ids: ["GuidString"],
    #               external_user_ids: ["ExternalUserIdType"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     sinks: [ # required
    #       {
    #         sink_type: "RTMP" # One of: ["RTMP"], # required
    #         rtmp_configuration: { # required
    #           url: "SensitiveString", # required
    #           audio_channels: "Stereo" # One of: ["Stereo", "Mono"],
    #           audio_sample_rate: "AudioSampleRateOption"
    #         }
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_media_live_connector_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_live_connector_pipeline: {
    #       sources: [
    #         {
    #           source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #           chime_sdk_meeting_live_connector_configuration: { # required
    #             arn: "Arn", # required
    #             mux_type: "AudioWithCompositedVideo" # One of: ["AudioWithCompositedVideo", "AudioWithActiveSpeakerVideo"], # required
    #             composited_video: {
    #               layout: "GridView" # One of: ["GridView"],
    #               resolution: "HD" # One of: ["HD", "FHD"],
    #               grid_view_configuration: { # required
    #                 content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #                 presenter_only_configuration: {
    #                   presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #                 },
    #                 active_speaker_only_configuration: {
    #                   active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #                 },
    #                 horizontal_layout_configuration: {
    #                   tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                   tile_position: "Top" # One of: ["Top", "Bottom"],
    #                   tile_count: 1,
    #                   tile_aspect_ratio: "TileAspectRatio"
    #                 },
    #                 vertical_layout_configuration: {
    #                   tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                   tile_position: "Left" # One of: ["Left", "Right"],
    #                   tile_count: 1,
    #                   tile_aspect_ratio: "TileAspectRatio"
    #                 },
    #                 video_attribute: {
    #                   corner_radius: 1,
    #                   border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                   highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                   border_thickness: 1
    #                 },
    #                 canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #               }
    #             },
    #             source_configuration: {
    #               selected_video_streams: {
    #                 attendee_ids: ["GuidString"],
    #                 external_user_ids: ["ExternalUserIdType"]
    #               }
    #             }
    #           }
    #         }
    #       ],
    #       sinks: [
    #         {
    #           sink_type: "RTMP" # One of: ["RTMP"], # required
    #           rtmp_configuration: { # required
    #             url: "SensitiveString", # required
    #             audio_channels: "Stereo" # One of: ["Stereo", "Mono"],
    #             audio_sample_rate: "AudioSampleRateOption"
    #           }
    #         }
    #       ],
    #       media_pipeline_id: "GuidString",
    #       media_pipeline_arn: "AmazonResourceName",
    #       status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateMediaLiveConnectorPipelineResponse]
    def create_media_live_connector_pipeline(params = {}, options = {})
      request = build_request(:create_media_live_connector_pipeline, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Kinesis Video Stream pool for use with media stream
    #          pipelines.</p>
    #          <note>
    #             <p>If a meeting uses an opt-in Region as its  
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion">MediaRegion</a>, 
    #          the KVS stream must be in that same Region. For example, if a meeting uses the <code>af-south-1</code> Region, the KVS stream must also be in <code>af-south-1</code>. However, if the meeting uses a 
    #          Region that AWS turns on by default, the KVS stream can be in any available Region, including an opt-in Region. For example, if the meeting uses <code>ca-central-1</code>, the KVS stream can be in 
    #          <code>eu-west-2</code>, <code>us-east-1</code>, <code>af-south-1</code>, or any other Region that the Amazon Chime SDK supports.</p>
    #             <p>To learn  which AWS Region a meeting uses, call the <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html">GetMeeting</a> API and 
    #             use the <a href="https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html#chimesdk-meeting-chime_CreateMeeting-request-MediaRegion">MediaRegion</a> 
    #             parameter from the response.</p>
    #             <p>For more information about opt-in Regions, refer to <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions.html">Available Regions</a> in the 
    #             <i>Amazon Chime SDK Developer Guide</i>, and 
    #             <a href="https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-regions.html#rande-manage-enable.html">Specify which AWS Regions your account can use</a>, 
    #             in the <i>AWS Account Management Reference Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateMediaPipelineKinesisVideoStreamPoolRequest] params
    # @option params [Types::KinesisVideoStreamConfiguration] :stream_configuration
    #   <p>The configuration settings for the stream.</p>
    # @option params [String] :pool_name
    #   <p>The name of the pool.</p>
    # @option params [String] :client_request_token
    #   <p>The token assigned to the client making the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the stream pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_configuration: { # required
    #       region: "AwsRegion", # required
    #       data_retention_in_hours: 1
    #     },
    #     pool_name: "KinesisVideoStreamPoolName", # required
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_media_pipeline_kinesis_video_stream_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kinesis_video_stream_pool_configuration: {
    #       pool_arn: "Arn",
    #       pool_name: "KinesisVideoStreamPoolName",
    #       pool_id: "KinesisVideoStreamPoolId",
    #       pool_status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #       pool_size: 1,
    #       stream_configuration: {
    #         region: "AwsRegion", # required
    #         data_retention_in_hours: 1
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateMediaPipelineKinesisVideoStreamPoolResponse]
    def create_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      request = build_request(:create_media_pipeline_kinesis_video_stream_pool, params)
      request.send_request(options)
    end

    # <p>Creates a streaming media pipeline.</p>
    # @param [Hash, Types::CreateMediaStreamPipelineRequest] params
    # @option params [Array<Types::MediaStreamSource>] :sources
    #   <p>The data sources for the media pipeline.</p>
    # @option params [Array<Types::MediaStreamSink>] :sinks
    #   <p>The data sink for the media pipeline.</p>
    # @option params [String] :client_request_token
    #   <p>The token assigned to the client making the request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the media pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sources: [ # required
    #       {
    #         source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #         source_arn: "Arn", # required
    #       }
    #     ],
    #     sinks: [ # required
    #       {
    #         sink_arn: "Arn", # required
    #         sink_type: "KinesisVideoStreamPool" # One of: ["KinesisVideoStreamPool"], # required
    #         reserved_stream_capacity: 1, # required
    #         media_stream_type: "MixedAudio" # One of: ["MixedAudio", "IndividualAudio"], # required
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_media_stream_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_stream_pipeline: {
    #       media_pipeline_id: "GuidString",
    #       media_pipeline_arn: "AmazonResourceName",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #       sources: [
    #         {
    #           source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #           source_arn: "Arn", # required
    #         }
    #       ],
    #       sinks: [
    #         {
    #           sink_arn: "Arn", # required
    #           sink_type: "KinesisVideoStreamPool" # One of: ["KinesisVideoStreamPool"], # required
    #           reserved_stream_capacity: 1, # required
    #           media_stream_type: "MixedAudio" # One of: ["MixedAudio", "IndividualAudio"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateMediaStreamPipelineResponse]
    def create_media_stream_pipeline(params = {}, options = {})
      request = build_request(:create_media_stream_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes the media pipeline.</p>
    # @param [Hash, Types::DeleteMediaCapturePipelineRequest] params
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the media pipeline being deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_pipeline_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.delete_media_capture_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_media_capture_pipeline(params = {}, options = {})
      request = build_request(:delete_media_capture_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes the specified configuration settings.</p>
    # @param [Hash, Types::DeleteMediaInsightsPipelineConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be deleted. Valid values include the name and ARN of the media insights pipeline configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_media_insights_pipeline_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_media_insights_pipeline_configuration(params = {}, options = {})
      request = build_request(:delete_media_insights_pipeline_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the media pipeline.</p>
    # @param [Hash, Types::DeleteMediaPipelineRequest] params
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the media pipeline to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_pipeline_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.delete_media_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_media_pipeline(params = {}, options = {})
      request = build_request(:delete_media_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Kinesis Video Stream pool.</p>
    # @param [Hash, Types::DeleteMediaPipelineKinesisVideoStreamPoolRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_media_pipeline_kinesis_video_stream_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      request = build_request(:delete_media_pipeline_kinesis_video_stream_pool, params)
      request.send_request(options)
    end

    # <p>Gets an existing media pipeline.</p>
    # @param [Hash, Types::GetMediaCapturePipelineRequest] params
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_pipeline_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_media_capture_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_capture_pipeline: {
    #       media_pipeline_id: "GuidString",
    #       media_pipeline_arn: "AmazonResourceName",
    #       source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"],
    #       source_arn: "Arn",
    #       status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #       sink_type: "S3Bucket" # One of: ["S3Bucket"],
    #       sink_arn: "Arn",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       chime_sdk_meeting_configuration: {
    #         source_configuration: {
    #           selected_video_streams: {
    #             attendee_ids: ["GuidString"],
    #             external_user_ids: ["ExternalUserIdType"]
    #           }
    #         },
    #         artifacts_configuration: {
    #           audio: { # required
    #             mux_type: "AudioOnly" # One of: ["AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"], # required
    #           },
    #           video: { # required
    #             state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             mux_type: "VideoOnly" # One of: ["VideoOnly"]
    #           },
    #           content: { # required
    #             state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             mux_type: "ContentOnly" # One of: ["ContentOnly"]
    #           },
    #           composited_video: {
    #             layout: "GridView" # One of: ["GridView"],
    #             resolution: "HD" # One of: ["HD", "FHD"],
    #             grid_view_configuration: { # required
    #               content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #               presenter_only_configuration: {
    #                 presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #               },
    #               active_speaker_only_configuration: {
    #                 active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #               },
    #               horizontal_layout_configuration: {
    #                 tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                 tile_position: "Top" # One of: ["Top", "Bottom"],
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio"
    #               },
    #               vertical_layout_configuration: {
    #                 tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                 tile_position: "Left" # One of: ["Left", "Right"],
    #                 tile_count: 1,
    #                 tile_aspect_ratio: "TileAspectRatio"
    #               },
    #               video_attribute: {
    #                 corner_radius: 1,
    #                 border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                 highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                 border_thickness: 1
    #               },
    #               canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #             }
    #           }
    #         }
    #       },
    #       sse_aws_key_management_params: {
    #         aws_kms_key_id: "String", # required
    #         aws_kms_encryption_context: "String"
    #       },
    #       sink_iam_role_arn: "Arn"
    #     }
    #   }
    # @return [Types::GetMediaCapturePipelineResponse]
    def get_media_capture_pipeline(params = {}, options = {})
      request = build_request(:get_media_capture_pipeline, params)
      request.send_request(options)
    end

    # <p>Gets the configuration settings for a media insights pipeline.</p>
    # @param [Hash, Types::GetMediaInsightsPipelineConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the requested resource.  Valid values include the name and ARN of the media insights pipeline configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_media_insights_pipeline_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_insights_pipeline_configuration: {
    #       media_insights_pipeline_configuration_name: "MediaInsightsPipelineConfigurationNameString",
    #       media_insights_pipeline_configuration_arn: "Arn",
    #       resource_access_role_arn: "Arn",
    #       real_time_alert_configuration: {
    #         disabled: false,
    #         rules: [
    #           {
    #             type: "KeywordMatch" # One of: ["KeywordMatch", "Sentiment", "IssueDetection"], # required
    #             keyword_match_configuration: {
    #               rule_name: "RuleName", # required
    #               keywords: ["Keyword"], # required
    #               negate: false
    #             },
    #             sentiment_configuration: {
    #               rule_name: "RuleName", # required
    #               sentiment_type: "NEGATIVE" # One of: ["NEGATIVE"], # required
    #               time_period: 1, # required
    #             },
    #             issue_detection_configuration: {
    #               rule_name: "RuleName", # required
    #             }
    #           }
    #         ]
    #       },
    #       elements: [
    #         {
    #           type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"], # required
    #           amazon_transcribe_call_analytics_processor_configuration: {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"], # required
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #             language_model_name: "ModelName",
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #             content_identification_type: "PII" # One of: ["PII"],
    #             content_redaction_type: "PII" # One of: ["PII"],
    #             pii_entity_types: "PiiEntityTypes",
    #             filter_partial_results: false,
    #             post_call_analytics_settings: {
    #               output_location: "String", # required
    #               data_access_role_arn: "String", # required
    #               content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #               output_encryption_kms_key_id: "String"
    #             },
    #             call_analytics_stream_categories: ["CategoryName"]
    #           },
    #           amazon_transcribe_processor_configuration: {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #             show_speaker_label: false,
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #             content_identification_type: "PII" # One of: ["PII"],
    #             content_redaction_type: "PII" # One of: ["PII"],
    #             pii_entity_types: "PiiEntityTypes",
    #             language_model_name: "ModelName",
    #             filter_partial_results: false,
    #             identify_language: false,
    #             identify_multiple_languages: false,
    #             language_options: "LanguageOptions",
    #             preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             vocabulary_names: "VocabularyNames",
    #             vocabulary_filter_names: "VocabularyFilterNames"
    #           },
    #           kinesis_data_stream_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           s3_recording_sink_configuration: {
    #             destination: "Arn",
    #             recording_file_format: "Wav" # One of: ["Wav", "Opus"]
    #           },
    #           voice_analytics_processor_configuration: {
    #             speaker_search_status: "Enabled" # One of: ["Enabled", "Disabled"],
    #             voice_tone_analysis_status: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           lambda_function_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           sqs_queue_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           sns_topic_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           voice_enhancement_sink_configuration: {
    #             disabled: false
    #           }
    #         }
    #       ],
    #       media_insights_pipeline_configuration_id: "GuidString",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetMediaInsightsPipelineConfigurationResponse]
    def get_media_insights_pipeline_configuration(params = {}, options = {})
      request = build_request(:get_media_insights_pipeline_configuration, params)
      request.send_request(options)
    end

    # <p>Gets an existing media pipeline.</p>
    # @param [Hash, Types::GetMediaPipelineRequest] params
    # @option params [String] :media_pipeline_id
    #   <p>The ID of the pipeline that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     media_pipeline_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_media_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_pipeline: {
    #       media_capture_pipeline: {
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "AmazonResourceName",
    #         source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"],
    #         source_arn: "Arn",
    #         status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #         sink_type: "S3Bucket" # One of: ["S3Bucket"],
    #         sink_arn: "Arn",
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         chime_sdk_meeting_configuration: {
    #           source_configuration: {
    #             selected_video_streams: {
    #               attendee_ids: ["GuidString"],
    #               external_user_ids: ["ExternalUserIdType"]
    #             }
    #           },
    #           artifacts_configuration: {
    #             audio: { # required
    #               mux_type: "AudioOnly" # One of: ["AudioOnly", "AudioWithActiveSpeakerVideo", "AudioWithCompositedVideo"], # required
    #             },
    #             video: { # required
    #               state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               mux_type: "VideoOnly" # One of: ["VideoOnly"]
    #             },
    #             content: { # required
    #               state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               mux_type: "ContentOnly" # One of: ["ContentOnly"]
    #             },
    #             composited_video: {
    #               layout: "GridView" # One of: ["GridView"],
    #               resolution: "HD" # One of: ["HD", "FHD"],
    #               grid_view_configuration: { # required
    #                 content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #                 presenter_only_configuration: {
    #                   presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #                 },
    #                 active_speaker_only_configuration: {
    #                   active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #                 },
    #                 horizontal_layout_configuration: {
    #                   tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                   tile_position: "Top" # One of: ["Top", "Bottom"],
    #                   tile_count: 1,
    #                   tile_aspect_ratio: "TileAspectRatio"
    #                 },
    #                 vertical_layout_configuration: {
    #                   tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                   tile_position: "Left" # One of: ["Left", "Right"],
    #                   tile_count: 1,
    #                   tile_aspect_ratio: "TileAspectRatio"
    #                 },
    #                 video_attribute: {
    #                   corner_radius: 1,
    #                   border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                   highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                   border_thickness: 1
    #                 },
    #                 canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #               }
    #             }
    #           }
    #         },
    #         sse_aws_key_management_params: {
    #           aws_kms_key_id: "String", # required
    #           aws_kms_encryption_context: "String"
    #         },
    #         sink_iam_role_arn: "Arn"
    #       },
    #       media_live_connector_pipeline: {
    #         sources: [
    #           {
    #             source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #             chime_sdk_meeting_live_connector_configuration: { # required
    #               arn: "Arn", # required
    #               mux_type: "AudioWithCompositedVideo" # One of: ["AudioWithCompositedVideo", "AudioWithActiveSpeakerVideo"], # required
    #               composited_video: {
    #                 layout: "GridView" # One of: ["GridView"],
    #                 resolution: "HD" # One of: ["HD", "FHD"],
    #                 grid_view_configuration: { # required
    #                   content_share_layout: "PresenterOnly" # One of: ["PresenterOnly", "Horizontal", "Vertical", "ActiveSpeakerOnly"], # required
    #                   presenter_only_configuration: {
    #                     presenter_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #                   },
    #                   active_speaker_only_configuration: {
    #                     active_speaker_position: "TopLeft" # One of: ["TopLeft", "TopRight", "BottomLeft", "BottomRight"]
    #                   },
    #                   horizontal_layout_configuration: {
    #                     tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                     tile_position: "Top" # One of: ["Top", "Bottom"],
    #                     tile_count: 1,
    #                     tile_aspect_ratio: "TileAspectRatio"
    #                   },
    #                   vertical_layout_configuration: {
    #                     tile_order: "JoinSequence" # One of: ["JoinSequence", "SpeakerSequence"],
    #                     tile_position: "Left" # One of: ["Left", "Right"],
    #                     tile_count: 1,
    #                     tile_aspect_ratio: "TileAspectRatio"
    #                   },
    #                   video_attribute: {
    #                     corner_radius: 1,
    #                     border_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                     highlight_color: "Black" # One of: ["Black", "Blue", "Red", "Green", "White", "Yellow"],
    #                     border_thickness: 1
    #                   },
    #                   canvas_orientation: "Landscape" # One of: ["Landscape", "Portrait"]
    #                 }
    #               },
    #               source_configuration: {
    #                 selected_video_streams: {
    #                   attendee_ids: ["GuidString"],
    #                   external_user_ids: ["ExternalUserIdType"]
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         sinks: [
    #           {
    #             sink_type: "RTMP" # One of: ["RTMP"], # required
    #             rtmp_configuration: { # required
    #               url: "SensitiveString", # required
    #               audio_channels: "Stereo" # One of: ["Stereo", "Mono"],
    #               audio_sample_rate: "AudioSampleRateOption"
    #             }
    #           }
    #         ],
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "AmazonResourceName",
    #         status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       },
    #       media_concatenation_pipeline: {
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "AmazonResourceName",
    #         sources: [
    #           {
    #             type: "MediaCapturePipeline" # One of: ["MediaCapturePipeline"], # required
    #             media_capture_pipeline_source_configuration: { # required
    #               media_pipeline_arn: "Arn", # required
    #               chime_sdk_meeting_configuration: { # required
    #                 artifacts_configuration: { # required
    #                   audio: { # required
    #                     state: "Enabled" # One of: ["Enabled"], # required
    #                   },
    #                   video: { # required
    #                     state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                   },
    #                   content: { # required
    #                     state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                   },
    #                   data_channel: { # required
    #                     state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                   },
    #                   transcription_messages: { # required
    #                     state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                   },
    #                   meeting_events: { # required
    #                     state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                   },
    #                   composited_video: { # required
    #                     state: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         sinks: [
    #           {
    #             type: "S3Bucket" # One of: ["S3Bucket"], # required
    #             s3_bucket_sink_configuration: { # required
    #               destination: "Arn", # required
    #             }
    #           }
    #         ],
    #         status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       },
    #       media_insights_pipeline: {
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "Arn",
    #         media_insights_pipeline_configuration_arn: "Arn",
    #         status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #         kinesis_video_stream_source_runtime_configuration: {
    #           streams: [ # required
    #             {
    #               stream_arn: "KinesisVideoStreamArn", # required
    #               fragment_number: "FragmentNumberString",
    #               stream_channel_definition: { # required
    #                 number_of_channels: 1, # required
    #                 channel_definitions: [
    #                   {
    #                     channel_id: 1, # required
    #                     participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"]
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           media_encoding: "pcm" # One of: ["pcm"], # required
    #           media_sample_rate: 1, # required
    #         },
    #         media_insights_runtime_metadata: {
    #           "NonEmptyString" => "String"
    #         },
    #         kinesis_video_stream_recording_source_runtime_configuration: {
    #           streams: [ # required
    #             {
    #               stream_arn: "KinesisVideoStreamArn"
    #             }
    #           ],
    #           fragment_selector: { # required
    #             fragment_selector_type: "ProducerTimestamp" # One of: ["ProducerTimestamp", "ServerTimestamp"], # required
    #             timestamp_range: { # required
    #               start_timestamp: Time.now, # required
    #               end_timestamp: Time.now, # required
    #             }
    #           }
    #         },
    #         s3_recording_sink_runtime_configuration: {
    #           destination: "Arn", # required
    #           recording_file_format: "Wav" # One of: ["Wav", "Opus"], # required
    #         },
    #         created_timestamp: Time.now,
    #         element_statuses: [
    #           {
    #             type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"],
    #             status: "NotStarted" # One of: ["NotStarted", "NotSupported", "Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused"]
    #           }
    #         ]
    #       },
    #       media_stream_pipeline: {
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "AmazonResourceName",
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         status: "Initializing" # One of: ["Initializing", "InProgress", "Failed", "Stopping", "Stopped", "Paused", "NotStarted"],
    #         sources: [
    #           {
    #             source_type: "ChimeSdkMeeting" # One of: ["ChimeSdkMeeting"], # required
    #             source_arn: "Arn", # required
    #           }
    #         ],
    #         sinks: [
    #           {
    #             sink_arn: "Arn", # required
    #             sink_type: "KinesisVideoStreamPool" # One of: ["KinesisVideoStreamPool"], # required
    #             reserved_stream_capacity: 1, # required
    #             media_stream_type: "MixedAudio" # One of: ["MixedAudio", "IndividualAudio"], # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetMediaPipelineResponse]
    def get_media_pipeline(params = {}, options = {})
      request = build_request(:get_media_pipeline, params)
      request.send_request(options)
    end

    # <p>Gets an Kinesis video stream pool.</p>
    # @param [Hash, Types::GetMediaPipelineKinesisVideoStreamPoolRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_media_pipeline_kinesis_video_stream_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kinesis_video_stream_pool_configuration: {
    #       pool_arn: "Arn",
    #       pool_name: "KinesisVideoStreamPoolName",
    #       pool_id: "KinesisVideoStreamPoolId",
    #       pool_status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #       pool_size: 1,
    #       stream_configuration: {
    #         region: "AwsRegion", # required
    #         data_retention_in_hours: 1
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetMediaPipelineKinesisVideoStreamPoolResponse]
    def get_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      request = build_request(:get_media_pipeline_kinesis_video_stream_pool, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified speaker search task.</p>
    # @param [Hash, Types::GetSpeakerSearchTaskRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     speaker_search_task_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_speaker_search_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker_search_task: {
    #       speaker_search_task_id: "GuidString",
    #       speaker_search_task_status: "NotStarted" # One of: ["NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetSpeakerSearchTaskResponse]
    def get_speaker_search_task(params = {}, options = {})
      request = build_request(:get_speaker_search_task, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a voice tone analysis task.</p>
    # @param [Hash, Types::GetVoiceToneAnalysisTaskRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     voice_tone_analysis_task_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_tone_analysis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_tone_analysis_task: {
    #       voice_tone_analysis_task_id: "GuidString",
    #       voice_tone_analysis_task_status: "NotStarted" # One of: ["NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetVoiceToneAnalysisTaskResponse]
    def get_voice_tone_analysis_task(params = {}, options = {})
      request = build_request(:get_voice_tone_analysis_task, params)
      request.send_request(options)
    end

    # <p>Returns a list of media pipelines.</p>
    # @param [Hash, Types::ListMediaCapturePipelinesRequest] params
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_media_capture_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_capture_pipelines: [
    #       {
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "AmazonResourceName"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMediaCapturePipelinesResponse]
    def list_media_capture_pipelines(params = {}, options = {})
      request = build_request(:list_media_capture_pipelines, params)
      request.send_request(options)
    end

    # <p>Lists the available media insights pipeline configurations.</p>
    # @param [Hash, Types::ListMediaInsightsPipelineConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_media_insights_pipeline_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_insights_pipeline_configurations: [
    #       {
    #         media_insights_pipeline_configuration_name: "MediaInsightsPipelineConfigurationNameString",
    #         media_insights_pipeline_configuration_id: "GuidString",
    #         media_insights_pipeline_configuration_arn: "Arn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMediaInsightsPipelineConfigurationsResponse]
    def list_media_insights_pipeline_configurations(params = {}, options = {})
      request = build_request(:list_media_insights_pipeline_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the video stream pools in the media pipeline.</p>
    # @param [Hash, Types::ListMediaPipelineKinesisVideoStreamPoolsRequest] params
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_media_pipeline_kinesis_video_stream_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kinesis_video_stream_pools: [
    #       {
    #         pool_name: "KinesisVideoStreamPoolName",
    #         pool_id: "KinesisVideoStreamPoolId",
    #         pool_arn: "Arn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMediaPipelineKinesisVideoStreamPoolsResponse]
    def list_media_pipeline_kinesis_video_stream_pools(params = {}, options = {})
      request = build_request(:list_media_pipeline_kinesis_video_stream_pools, params)
      request.send_request(options)
    end

    # <p>Returns a list of media pipelines.</p>
    # @param [Hash, Types::ListMediaPipelinesRequest] params
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Valid Range: 1 - 99.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_media_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_pipelines: [
    #       {
    #         media_pipeline_id: "GuidString",
    #         media_pipeline_arn: "AmazonResourceName"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMediaPipelinesResponse]
    def list_media_pipelines(params = {}, options = {})
      request = build_request(:list_media_pipelines, params)
      request.send_request(options)
    end

    # <p>Lists the tags available for a media pipeline.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the media pipeline associated with any tags. The ARN consists of the pipeline's region, resource ID, and pipeline ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a speaker search task.</p>
    #          <important>
    #             <p>Before starting any speaker search tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the
    #          <a href="https://aws.amazon.com/service-terms/">AWS service terms</a> for the Amazon Chime SDK.</p>
    #          </important>
    # @param [Hash, Types::StartSpeakerSearchTaskRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :voice_profile_domain_arn
    #   <p>The ARN of the voice profile domain that will store the voice profile.</p>
    # @option params [Types::KinesisVideoStreamSourceTaskConfiguration] :kinesis_video_stream_source_task_configuration
    #   <p>The task configuration for the Kinesis video stream source of the media insights
    #            pipeline.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different speaker search tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     voice_profile_domain_arn: "Arn", # required
    #     kinesis_video_stream_source_task_configuration: {
    #       stream_arn: "KinesisVideoStreamArn", # required
    #       channel_id: 1, # required
    #       fragment_number: "FragmentNumberString"
    #     },
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.start_speaker_search_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker_search_task: {
    #       speaker_search_task_id: "GuidString",
    #       speaker_search_task_status: "NotStarted" # One of: ["NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::StartSpeakerSearchTaskResponse]
    def start_speaker_search_task(params = {}, options = {})
      request = build_request(:start_speaker_search_task, params)
      request.send_request(options)
    end

    # <p>Starts a voice tone analysis task. For more information about voice tone analysis, see
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/voice-analytics.html">Using Amazon Chime SDK voice analytics</a>
    #          in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    #          <important>
    #             <p>Before starting any voice tone analysis tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the
    #          <a href="https://aws.amazon.com/service-terms/">AWS service terms</a> for the Amazon Chime SDK.</p>
    #          </important>
    # @param [Hash, Types::StartVoiceToneAnalysisTaskRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :language_code
    #   <p>The language code.</p>
    # @option params [Types::KinesisVideoStreamSourceTaskConfiguration] :kinesis_video_stream_source_task_configuration
    #   <p>The task configuration for the Kinesis video stream source of the media insights
    #            pipeline.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different voice tone analysis tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     language_code: "en-US" # One of: ["en-US"], # required
    #     kinesis_video_stream_source_task_configuration: {
    #       stream_arn: "KinesisVideoStreamArn", # required
    #       channel_id: 1, # required
    #       fragment_number: "FragmentNumberString"
    #     },
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.start_voice_tone_analysis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_tone_analysis_task: {
    #       voice_tone_analysis_task_id: "GuidString",
    #       voice_tone_analysis_task_status: "NotStarted" # One of: ["NotStarted", "Initializing", "InProgress", "Failed", "Stopping", "Stopped"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::StartVoiceToneAnalysisTaskResponse]
    def start_voice_tone_analysis_task(params = {}, options = {})
      request = build_request(:start_voice_tone_analysis_task, params)
      request.send_request(options)
    end

    # <p>Stops a speaker search task.</p>
    # @param [Hash, Types::StopSpeakerSearchTaskRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :speaker_search_task_id
    #   <p>The speaker search task ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     speaker_search_task_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.stop_speaker_search_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_speaker_search_task(params = {}, options = {})
      request = build_request(:stop_speaker_search_task, params)
      request.send_request(options)
    end

    # <p>Stops a voice tone analysis task.</p>
    # @param [Hash, Types::StopVoiceToneAnalysisTaskRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     voice_tone_analysis_task_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.stop_voice_tone_analysis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_voice_tone_analysis_task(params = {}, options = {})
      request = build_request(:stop_voice_tone_analysis_task, params)
      request.send_request(options)
    end

    # <p>The ARN of the media pipeline that you want to tag. Consists of the pipeline's endpoint region, resource ID, and pipeline ID.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the media pipeline associated with any tags. The ARN consists of the pipeline's endpoint region, resource ID, and pipeline ID.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags associated with the specified media pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes any tags from a media pipeline.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the pipeline that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key/value pairs in the tag that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the media insights pipeline's configuration settings.</p>
    # @param [Hash, Types::UpdateMediaInsightsPipelineConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier for the resource to be updated. Valid values include the name and ARN of the media insights pipeline configuration.</p>
    # @option params [String] :resource_access_role_arn
    #   <p>The ARN of the role used by the service to access Amazon Web Services resources.</p>
    # @option params [Types::RealTimeAlertConfiguration] :real_time_alert_configuration
    #   <p>The configuration settings for real-time alerts for the media insights pipeline.</p>
    # @option params [Array<Types::MediaInsightsPipelineConfigurationElement>] :elements
    #   <p>The elements in the request, such as a processor for Amazon Transcribe or a sink for a Kinesis Data Stream..</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     resource_access_role_arn: "Arn", # required
    #     real_time_alert_configuration: {
    #       disabled: false,
    #       rules: [
    #         {
    #           type: "KeywordMatch" # One of: ["KeywordMatch", "Sentiment", "IssueDetection"], # required
    #           keyword_match_configuration: {
    #             rule_name: "RuleName", # required
    #             keywords: ["Keyword"], # required
    #             negate: false
    #           },
    #           sentiment_configuration: {
    #             rule_name: "RuleName", # required
    #             sentiment_type: "NEGATIVE" # One of: ["NEGATIVE"], # required
    #             time_period: 1, # required
    #           },
    #           issue_detection_configuration: {
    #             rule_name: "RuleName", # required
    #           }
    #         }
    #       ]
    #     },
    #     elements: [ # required
    #       {
    #         type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"], # required
    #         amazon_transcribe_call_analytics_processor_configuration: {
    #           language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"], # required
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #           language_model_name: "ModelName",
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #           content_identification_type: "PII" # One of: ["PII"],
    #           content_redaction_type: "PII" # One of: ["PII"],
    #           pii_entity_types: "PiiEntityTypes",
    #           filter_partial_results: false,
    #           post_call_analytics_settings: {
    #             output_location: "String", # required
    #             data_access_role_arn: "String", # required
    #             content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #             output_encryption_kms_key_id: "String"
    #           },
    #           call_analytics_stream_categories: ["CategoryName"]
    #         },
    #         amazon_transcribe_processor_configuration: {
    #           language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #           show_speaker_label: false,
    #           enable_partial_results_stabilization: false,
    #           partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #           content_identification_type: "PII" # One of: ["PII"],
    #           content_redaction_type: "PII" # One of: ["PII"],
    #           pii_entity_types: "PiiEntityTypes",
    #           language_model_name: "ModelName",
    #           filter_partial_results: false,
    #           identify_language: false,
    #           identify_multiple_languages: false,
    #           language_options: "LanguageOptions",
    #           preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #           vocabulary_names: "VocabularyNames",
    #           vocabulary_filter_names: "VocabularyFilterNames"
    #         },
    #         kinesis_data_stream_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         s3_recording_sink_configuration: {
    #           destination: "Arn",
    #           recording_file_format: "Wav" # One of: ["Wav", "Opus"]
    #         },
    #         voice_analytics_processor_configuration: {
    #           speaker_search_status: "Enabled" # One of: ["Enabled", "Disabled"],
    #           voice_tone_analysis_status: "Enabled" # One of: ["Enabled", "Disabled"]
    #         },
    #         lambda_function_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         sqs_queue_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         sns_topic_sink_configuration: {
    #           insights_target: "Arn"
    #         },
    #         voice_enhancement_sink_configuration: {
    #           disabled: false
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_media_insights_pipeline_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_insights_pipeline_configuration: {
    #       media_insights_pipeline_configuration_name: "MediaInsightsPipelineConfigurationNameString",
    #       media_insights_pipeline_configuration_arn: "Arn",
    #       resource_access_role_arn: "Arn",
    #       real_time_alert_configuration: {
    #         disabled: false,
    #         rules: [
    #           {
    #             type: "KeywordMatch" # One of: ["KeywordMatch", "Sentiment", "IssueDetection"], # required
    #             keyword_match_configuration: {
    #               rule_name: "RuleName", # required
    #               keywords: ["Keyword"], # required
    #               negate: false
    #             },
    #             sentiment_configuration: {
    #               rule_name: "RuleName", # required
    #               sentiment_type: "NEGATIVE" # One of: ["NEGATIVE"], # required
    #               time_period: 1, # required
    #             },
    #             issue_detection_configuration: {
    #               rule_name: "RuleName", # required
    #             }
    #           }
    #         ]
    #       },
    #       elements: [
    #         {
    #           type: "AmazonTranscribeCallAnalyticsProcessor" # One of: ["AmazonTranscribeCallAnalyticsProcessor", "VoiceAnalyticsProcessor", "AmazonTranscribeProcessor", "KinesisDataStreamSink", "LambdaFunctionSink", "SqsQueueSink", "SnsTopicSink", "S3RecordingSink", "VoiceEnhancementSink"], # required
    #           amazon_transcribe_call_analytics_processor_configuration: {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"], # required
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #             language_model_name: "ModelName",
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #             content_identification_type: "PII" # One of: ["PII"],
    #             content_redaction_type: "PII" # One of: ["PII"],
    #             pii_entity_types: "PiiEntityTypes",
    #             filter_partial_results: false,
    #             post_call_analytics_settings: {
    #               output_location: "String", # required
    #               data_access_role_arn: "String", # required
    #               content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #               output_encryption_kms_key_id: "String"
    #             },
    #             call_analytics_stream_categories: ["CategoryName"]
    #           },
    #           amazon_transcribe_processor_configuration: {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #             show_speaker_label: false,
    #             enable_partial_results_stabilization: false,
    #             partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #             content_identification_type: "PII" # One of: ["PII"],
    #             content_redaction_type: "PII" # One of: ["PII"],
    #             pii_entity_types: "PiiEntityTypes",
    #             language_model_name: "ModelName",
    #             filter_partial_results: false,
    #             identify_language: false,
    #             identify_multiple_languages: false,
    #             language_options: "LanguageOptions",
    #             preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             vocabulary_names: "VocabularyNames",
    #             vocabulary_filter_names: "VocabularyFilterNames"
    #           },
    #           kinesis_data_stream_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           s3_recording_sink_configuration: {
    #             destination: "Arn",
    #             recording_file_format: "Wav" # One of: ["Wav", "Opus"]
    #           },
    #           voice_analytics_processor_configuration: {
    #             speaker_search_status: "Enabled" # One of: ["Enabled", "Disabled"],
    #             voice_tone_analysis_status: "Enabled" # One of: ["Enabled", "Disabled"]
    #           },
    #           lambda_function_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           sqs_queue_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           sns_topic_sink_configuration: {
    #             insights_target: "Arn"
    #           },
    #           voice_enhancement_sink_configuration: {
    #             disabled: false
    #           }
    #         }
    #       ],
    #       media_insights_pipeline_configuration_id: "GuidString",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateMediaInsightsPipelineConfigurationResponse]
    def update_media_insights_pipeline_configuration(params = {}, options = {})
      request = build_request(:update_media_insights_pipeline_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the status of a media insights pipeline.</p>
    # @param [Hash, Types::UpdateMediaInsightsPipelineStatusRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the resource to be updated. Valid values include the ID and ARN of the media insights pipeline.</p>
    # @option params [String] :update_status
    #   <p>The requested status of the media insights pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     update_status: "Pause" # One of: ["Pause", "Resume"], # required
    #   }
    #   options = {}
    #   response = client.update_media_insights_pipeline_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_media_insights_pipeline_status(params = {}, options = {})
      request = build_request(:update_media_insights_pipeline_status, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Kinesis Video Stream pool in a media pipeline.</p>
    # @param [Hash, Types::UpdateMediaPipelineKinesisVideoStreamPoolRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the requested resource. Valid values include the name and ARN of the media pipeline Kinesis Video Stream pool.</p>
    # @option params [Types::KinesisVideoStreamConfigurationUpdate] :stream_configuration
    #   <p>The configuration settings for the video stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "NonEmptyString", # required
    #     stream_configuration: {
    #       data_retention_in_hours: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_media_pipeline_kinesis_video_stream_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kinesis_video_stream_pool_configuration: {
    #       pool_arn: "Arn",
    #       pool_name: "KinesisVideoStreamPoolName",
    #       pool_id: "KinesisVideoStreamPoolId",
    #       pool_status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #       pool_size: 1,
    #       stream_configuration: {
    #         region: "AwsRegion", # required
    #         data_retention_in_hours: 1
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateMediaPipelineKinesisVideoStreamPoolResponse]
    def update_media_pipeline_kinesis_video_stream_pool(params = {}, options = {})
      request = build_request(:update_media_pipeline_kinesis_video_stream_pool, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkmediapipelines'
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

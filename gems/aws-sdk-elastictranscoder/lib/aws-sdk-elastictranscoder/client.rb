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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::ElasticTranscoder
  # An API client for Aws::ElasticTranscoder.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::EtsCustomerService

    add_plugin(::Aws::ElasticTranscoder::Plugins::Endpoint)
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
    #  An object that resolves authentication schemes for request signing
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
    # @option options [Aws::ElasticTranscoder::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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

    # <p>The CancelJob operation cancels an unfinished job.</p>
    #         <note>
    #             <p>You can only cancel a job that has a status of <code>Submitted</code>. To prevent a
    #             pipeline from starting to process a job while you're getting the job identifier, use
    #                 <a>UpdatePipelineStatus</a> to temporarily pause the pipeline.</p>
    #          </note>
    # @param [Hash, Types::CancelJobRequest] params
    # @option params [String] :id
    #   <p>The identifier of the job that you want to cancel.</p>
    #           <p>To get a list of the jobs (including their <code>jobId</code>) that have a status of
    #                   <code>Submitted</code>, use the <a>ListJobsByStatus</a> API action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelJobResponse]
    def cancel_job(params = {}, options = {})
      request = build_request(:cancel_job, params)
      request.send_request(options)
    end

    # <p>When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified 
    #             plus information about the job that is created.</p>
    #         <p>If you have specified more than one output for your jobs (for example, one output for the 
    #             Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to 
    #             list the jobs (as opposed to the AWS Console).</p>
    # @param [Hash, Types::CreateJobRequest] params
    # @option params [String] :pipeline_id
    #   <p>The <code>Id</code> of the pipeline that you want Elastic Transcoder to use for
    #               transcoding. The pipeline determines several settings, including the Amazon S3 bucket
    #               from which Elastic Transcoder gets the files to transcode and the bucket into which
    #               Elastic Transcoder puts the transcoded files.</p>
    # @option params [Types::JobInput] :input
    #   <p>A section of the request body that provides information about the file that is being
    #                transcoded.</p>
    # @option params [Array<Types::JobInput>] :inputs
    #   <p>A section of the request body that provides information about the files that are being 
    #               transcoded.</p>
    # @option params [Types::CreateJobOutput] :output
    #   <p> A section of the request body that provides information about the transcoded (target)
    #               file. We strongly recommend that you use the <code>Outputs</code> syntax instead of the
    #               <code>Output</code> syntax. </p>
    # @option params [Array<Types::CreateJobOutput>] :outputs
    #   <p> A section of the request body that provides information about the transcoded (target)
    #               files. We recommend that you use the <code>Outputs</code> syntax instead of the
    #                   <code>Output</code> syntax. </p>
    # @option params [String] :output_key_prefix
    #   <p>The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this 
    #               job creates, including output files, thumbnails, and playlists.</p>
    # @option params [Array<Types::CreateJobPlaylist>] :playlists
    #   <p>If you specify a preset in <code>PresetId</code> for which the value of
    #                   <code>Container</code> is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains 
    #                   information about the master playlists that you want Elastic Transcoder to create.</p>
    #           <p>The maximum number of master playlists in a job is 30.</p>
    # @option params [Hash<String, String>] :user_metadata
    #   <p>User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in 
    #               <code>key/value</code> pairs, and you can add up to 10 <code>key/value</code> pairs per job. 
    #               Elastic Transcoder does not guarantee that <code>key/value</code> pairs are returned in the same 
    #               order in which you specify them.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "Id", # required
    #     input: {
    #       key: "LongKey",
    #       frame_rate: "FrameRate",
    #       resolution: "Resolution",
    #       aspect_ratio: "AspectRatio",
    #       interlaced: "Interlaced",
    #       container: "JobContainer",
    #       encryption: {
    #         mode: "EncryptionMode",
    #         key: "Base64EncodedString",
    #         key_md5: "Base64EncodedString",
    #         initialization_vector: "ZeroTo255String"
    #       },
    #       time_span: {
    #         start_time: "Time",
    #         duration: "Time"
    #       },
    #       input_captions: {
    #         merge_policy: "CaptionMergePolicy",
    #         caption_sources: [
    #           {
    #             key: "LongKey",
    #             language: "Key",
    #             time_offset: "TimeOffset",
    #             label: "Name",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ]
    #       },
    #       detected_properties: {
    #         width: 1,
    #         height: 1,
    #         frame_rate: "FloatString",
    #         file_size: 1,
    #         duration_millis: 1
    #       }
    #     },
    #     inputs: [
    #       {
    #         key: "LongKey",
    #         frame_rate: "FrameRate",
    #         resolution: "Resolution",
    #         aspect_ratio: "AspectRatio",
    #         interlaced: "Interlaced",
    #         container: "JobContainer",
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         time_span: {
    #           start_time: "Time",
    #           duration: "Time"
    #         },
    #         input_captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         detected_properties: {
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1
    #         }
    #       }
    #     ],
    #     output: {
    #       key: "Key",
    #       thumbnail_pattern: "ThumbnailPattern",
    #       thumbnail_encryption: {
    #         mode: "EncryptionMode",
    #         key: "Base64EncodedString",
    #         key_md5: "Base64EncodedString",
    #         initialization_vector: "ZeroTo255String"
    #       },
    #       rotate: "Rotate",
    #       preset_id: "Id",
    #       segment_duration: "FloatString",
    #       watermarks: [
    #         {
    #           preset_watermark_id: "PresetWatermarkId",
    #           input_key: "WatermarkKey",
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           }
    #         }
    #       ],
    #       album_art: {
    #         merge_policy: "MergePolicy",
    #         artwork: [
    #           {
    #             input_key: "WatermarkKey",
    #             max_width: "DigitsOrAuto",
    #             max_height: "DigitsOrAuto",
    #             sizing_policy: "SizingPolicy",
    #             padding_policy: "PaddingPolicy",
    #             album_art_format: "JpgOrPng",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ]
    #       },
    #       composition: [
    #         {
    #           time_span: {
    #             start_time: "Time",
    #             duration: "Time"
    #           }
    #         }
    #       ],
    #       captions: {
    #         merge_policy: "CaptionMergePolicy",
    #         caption_sources: [
    #           {
    #             key: "LongKey",
    #             language: "Key",
    #             time_offset: "TimeOffset",
    #             label: "Name",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ],
    #         caption_formats: [
    #           {
    #             format: "CaptionFormatFormat",
    #             pattern: "CaptionFormatPattern",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ]
    #       },
    #       encryption: {
    #         mode: "EncryptionMode",
    #         key: "Base64EncodedString",
    #         key_md5: "Base64EncodedString",
    #         initialization_vector: "ZeroTo255String"
    #       }
    #     },
    #     outputs: [
    #       {
    #         key: "Key",
    #         thumbnail_pattern: "ThumbnailPattern",
    #         thumbnail_encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         rotate: "Rotate",
    #         preset_id: "Id",
    #         segment_duration: "FloatString",
    #         watermarks: [
    #           {
    #             preset_watermark_id: "PresetWatermarkId",
    #             input_key: "WatermarkKey",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ],
    #         album_art: {
    #           merge_policy: "MergePolicy",
    #           artwork: [
    #             {
    #               input_key: "WatermarkKey",
    #               max_width: "DigitsOrAuto",
    #               max_height: "DigitsOrAuto",
    #               sizing_policy: "SizingPolicy",
    #               padding_policy: "PaddingPolicy",
    #               album_art_format: "JpgOrPng",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         composition: [
    #           {
    #             time_span: {
    #               start_time: "Time",
    #               duration: "Time"
    #             }
    #           }
    #         ],
    #         captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           caption_formats: [
    #             {
    #               format: "CaptionFormatFormat",
    #               pattern: "CaptionFormatPattern",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         }
    #       }
    #     ],
    #     output_key_prefix: "Key",
    #     playlists: [
    #       {
    #         name: "Filename",
    #         format: "PlaylistFormat",
    #         output_keys: ["Key"],
    #         hls_content_protection: {
    #           method: "HlsContentProtectionMethod",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String",
    #           license_acquisition_url: "ZeroTo512String",
    #           key_storage_policy: "KeyStoragePolicy"
    #         },
    #         play_ready_drm: {
    #           format: "PlayReadyDrmFormatString",
    #           key: "NonEmptyBase64EncodedString",
    #           key_md5: "NonEmptyBase64EncodedString",
    #           key_id: "KeyIdGuid",
    #           initialization_vector: "ZeroTo255String",
    #           license_acquisition_url: "OneTo512String"
    #         }
    #       }
    #     ],
    #     user_metadata: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       id: "Id",
    #       arn: "String",
    #       pipeline_id: "Id",
    #       input: {
    #         key: "LongKey",
    #         frame_rate: "FrameRate",
    #         resolution: "Resolution",
    #         aspect_ratio: "AspectRatio",
    #         interlaced: "Interlaced",
    #         container: "JobContainer",
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         time_span: {
    #           start_time: "Time",
    #           duration: "Time"
    #         },
    #         input_captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         detected_properties: {
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1
    #         }
    #       },
    #       inputs: [
    #         {
    #           key: "LongKey",
    #           frame_rate: "FrameRate",
    #           resolution: "Resolution",
    #           aspect_ratio: "AspectRatio",
    #           interlaced: "Interlaced",
    #           container: "JobContainer",
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           time_span: {
    #             start_time: "Time",
    #             duration: "Time"
    #           },
    #           input_captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           detected_properties: {
    #             width: 1,
    #             height: 1,
    #             frame_rate: "FloatString",
    #             file_size: 1,
    #             duration_millis: 1
    #           }
    #         }
    #       ],
    #       output: {
    #         id: "String",
    #         key: "Key",
    #         thumbnail_pattern: "ThumbnailPattern",
    #         thumbnail_encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         rotate: "Rotate",
    #         preset_id: "Id",
    #         segment_duration: "FloatString",
    #         status: "JobStatus",
    #         status_detail: "Description",
    #         duration: 1,
    #         width: 1,
    #         height: 1,
    #         frame_rate: "FloatString",
    #         file_size: 1,
    #         duration_millis: 1,
    #         watermarks: [
    #           {
    #             preset_watermark_id: "PresetWatermarkId",
    #             input_key: "WatermarkKey",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ],
    #         album_art: {
    #           merge_policy: "MergePolicy",
    #           artwork: [
    #             {
    #               input_key: "WatermarkKey",
    #               max_width: "DigitsOrAuto",
    #               max_height: "DigitsOrAuto",
    #               sizing_policy: "SizingPolicy",
    #               padding_policy: "PaddingPolicy",
    #               album_art_format: "JpgOrPng",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         composition: [
    #           {
    #             time_span: {
    #               start_time: "Time",
    #               duration: "Time"
    #             }
    #           }
    #         ],
    #         captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           caption_formats: [
    #             {
    #               format: "CaptionFormatFormat",
    #               pattern: "CaptionFormatPattern",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         applied_color_space_conversion: "String"
    #       },
    #       outputs: [
    #         {
    #           id: "String",
    #           key: "Key",
    #           thumbnail_pattern: "ThumbnailPattern",
    #           thumbnail_encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           rotate: "Rotate",
    #           preset_id: "Id",
    #           segment_duration: "FloatString",
    #           status: "JobStatus",
    #           status_detail: "Description",
    #           duration: 1,
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1,
    #           watermarks: [
    #             {
    #               preset_watermark_id: "PresetWatermarkId",
    #               input_key: "WatermarkKey",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           album_art: {
    #             merge_policy: "MergePolicy",
    #             artwork: [
    #               {
    #                 input_key: "WatermarkKey",
    #                 max_width: "DigitsOrAuto",
    #                 max_height: "DigitsOrAuto",
    #                 sizing_policy: "SizingPolicy",
    #                 padding_policy: "PaddingPolicy",
    #                 album_art_format: "JpgOrPng",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           composition: [
    #             {
    #               time_span: {
    #                 start_time: "Time",
    #                 duration: "Time"
    #               }
    #             }
    #           ],
    #           captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ],
    #             caption_formats: [
    #               {
    #                 format: "CaptionFormatFormat",
    #                 pattern: "CaptionFormatPattern",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           applied_color_space_conversion: "String"
    #         }
    #       ],
    #       output_key_prefix: "Key",
    #       playlists: [
    #         {
    #           name: "Filename",
    #           format: "PlaylistFormat",
    #           output_keys: ["Key"],
    #           hls_content_protection: {
    #             method: "HlsContentProtectionMethod",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String",
    #             license_acquisition_url: "ZeroTo512String",
    #             key_storage_policy: "KeyStoragePolicy"
    #           },
    #           play_ready_drm: {
    #             format: "PlayReadyDrmFormatString",
    #             key: "NonEmptyBase64EncodedString",
    #             key_md5: "NonEmptyBase64EncodedString",
    #             key_id: "KeyIdGuid",
    #             initialization_vector: "ZeroTo255String",
    #             license_acquisition_url: "OneTo512String"
    #           },
    #           status: "JobStatus",
    #           status_detail: "Description"
    #         }
    #       ],
    #       status: "JobStatus",
    #       user_metadata: {
    #         "String" => "String"
    #       },
    #       timing: {
    #         submit_time_millis: 1,
    #         start_time_millis: 1,
    #         finish_time_millis: 1
    #       }
    #     }
    #   }
    # @return [Types::CreateJobResponse]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <p>The CreatePipeline operation creates a pipeline with settings that you specify.</p>
    # @param [Hash, Types::CreatePipelineRequest] params
    # @option params [String] :name
    #   <p>The name of the pipeline. We recommend that the name be unique within the AWS account, 
    #               but uniqueness is not enforced.</p>
    #           <p>Constraints: Maximum 40 characters.</p>
    # @option params [String] :input_bucket
    #   <p>The Amazon S3 bucket in which you saved the media files that you want to transcode.</p>
    # @option params [String] :output_bucket
    #   <p>The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. (Use 
    #   		  this, or use ContentConfig:Bucket plus ThumbnailConfig:Bucket.)</p>
    #           <p>Specify this value when all of the following are true:</p> 
    #   		       <ul>
    #               <li>
    #                  <p>You want to save transcoded files, thumbnails (if any), and playlists (if any)
    #                       together in one bucket.</p>
    #               </li>
    #               <li>
    #                  <p>You do not want to specify the users or groups who have access to the transcoded
    #                       files, thumbnails, and playlists.</p>
    #               </li>
    #               <li>
    #                  <p>You do not want to specify the permissions that Elastic Transcoder grants to the   
    #   				
    #                       files. </p>
    #   				           <important>
    #                     <p>When Elastic Transcoder saves files in
    #                               <code>OutputBucket</code>, it grants full control over the files only to
    #                           the AWS account that owns the role that is specified by
    #                           <code>Role</code>.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>You want to associate the transcoded files and thumbnails with the Amazon S3
    #                       Standard storage class.</p>
    #               </li>
    #            </ul>
    #   
    #           <p>If you want to save transcoded files and playlists in one bucket and thumbnails in
    #               another bucket, specify which users can access the transcoded files or the permissions
    #               the users have, or change the Amazon S3 storage class, omit <code>OutputBucket</code>
    #               and specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>
    #               instead.</p>
    # @option params [String] :role
    #   <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to create the pipeline.</p>
    # @option params [String] :aws_kms_key_arn
    #   <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p>
    #           <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your 
    #               <code>Encryption:Mode</code>, you don't need to provide a key with
    #               your job because a default key, known as an AWS-KMS key, is created for you automatically.
    #               You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are
    #               using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>,
    #               or <code>aes-gcm</code>.</p>
    # @option params [Types::Notifications] :notifications
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p>
    #           <important>
    #               <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p>
    #            </important>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to
    #                   notify when Elastic Transcoder has started to process a job in this pipeline. This is the ARN that
    #                   Amazon SNS returned when you created the topic. For more information, see Create a
    #                   Topic in the Amazon Simple Notification Service Developer Guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when
    #                   Elastic Transcoder has finished processing a job in this pipeline. This is the ARN that Amazon SNS
    #                   returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters a warning condition while processing a job in this pipeline. This is the
    #                   ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters an error condition while processing a job in this pipeline. This is the
    #                   ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #            </ul>
    # @option params [Types::PipelineOutputConfig] :content_config
    #   <p>The optional <code>ContentConfig</code> object specifies information about the Amazon S3
    #               bucket in which you want Elastic Transcoder to save transcoded files and playlists:
    #               which bucket to use, which users you want to have access to the files, the type of
    #               access you want users to have, and the storage class that you want to assign to the
    #               files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code>.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   transcoded files and playlists.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The Permissions object specifies which users you want
    #                   to have access to transcoded files and the type of access you want them to have. You
    #                   can grant permissions to a maximum of 30 users and/or predefined Amazon S3
    #                   groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee Type</b>: Specify the type of value that appears in the
    #                       <code>Grantee</code> object: </p>
    #   					          <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution. For more information about canonical user
    #                           IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage
    #                           Service Developer Guide. For more information about using CloudFront origin
    #                           access identities to require that users use CloudFront URLs instead of
    #                           Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to
    #                           Your Amazon S3 Content.</p> 
    #   						               <important>
    #                           <p>A canonical user ID is not the same as an
    #                               AWS account number.</p>
    #                        </important>
    #                       </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to transcoded
    #                   files and playlists. To identify the user or group, you can specify the canonical
    #                   user ID for an AWS account, an origin access identity for a CloudFront distribution,
    #                   the registered email address of an AWS account, or a predefined Amazon S3 group </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the files that Elastic
    #                   Transcoder adds to the bucket, including playlists and video files. Valid values
    #                   include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the objects and metadata for objects
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the video files and playlists that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    # @option params [Types::PipelineOutputConfig] :thumbnail_config
    #   <p>The <code>ThumbnailConfig</code> object specifies several values, including the Amazon S3
    #               bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have
    #               access to the files, the type of access you want users to have, and the storage class
    #               that you want to assign to the files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code> even if you don't want to create thumbnails.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   thumbnail files.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The <code>Permissions</code> object specifies which
    #                   users and/or predefined Amazon S3 groups you want to have access to thumbnail files,
    #                   and the type of access you want them to have. You can grant permissions to a maximum
    #                   of 30 users and/or predefined Amazon S3 groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>GranteeType</b>: Specify the type of value that appears in the Grantee object: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution.</p> 
    #                        <important>
    #                           <p>A canonical user ID is not the
    #                               same as an AWS account number.</p>
    #                        </important>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to thumbnail
    #                   files. To identify the user or group, you can specify the canonical user ID for an
    #                   AWS account, an origin access identity for a CloudFront distribution, the registered
    #                   email address of an AWS account, or a predefined Amazon S3 group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the thumbnail files
    #                   that Elastic Transcoder adds to the bucket. Valid values include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the thumbnails and metadata for
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p> 
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.</p> 
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the thumbnails that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     input_bucket: "BucketName", # required
    #     output_bucket: "BucketName",
    #     role: "Role", # required
    #     aws_kms_key_arn: "KeyArn",
    #     notifications: {
    #       progressing: "SnsTopic",
    #       completed: "SnsTopic",
    #       warning: "SnsTopic",
    #       error: "SnsTopic"
    #     },
    #     content_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"]
    #         }
    #       ]
    #     },
    #     thumbnail_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       status: "PipelineStatus",
    #       input_bucket: "BucketName",
    #       output_bucket: "BucketName",
    #       role: "Role",
    #       aws_kms_key_arn: "KeyArn",
    #       notifications: {
    #         progressing: "SnsTopic",
    #         completed: "SnsTopic",
    #         warning: "SnsTopic",
    #         error: "SnsTopic"
    #       },
    #       content_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       },
    #       thumbnail_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       }
    #     },
    #     warnings: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CreatePipelineResponse]
    def create_pipeline(params = {}, options = {})
      request = build_request(:create_pipeline, params)
      request.send_request(options)
    end

    # <p>The CreatePreset operation creates a preset with settings that you specify.</p>
    #         <important>
    #             <p>Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements
    #             and to determine whether they comply with H.264 standards. If your settings are not
    #             valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (<code>ValidationException</code>) and
    #             does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly
    #             compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message
    #             in the response. This helps you determine whether your settings comply with the H.264
    #             standard while giving you greater flexibility with respect to the video that Elastic Transcoder
    #             produces.</p>
    #          </important>
    #         <p>Elastic Transcoder uses the H.264 video-compression format. For more information, see the International
    #             Telecommunication Union publication <i>Recommendation ITU-T H.264: Advanced video coding
    #                 for generic audiovisual services</i>.</p>
    # @param [Hash, Types::CreatePresetRequest] params
    # @option params [String] :name
    #   <p>The name of the preset. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.</p>
    # @option params [String] :description
    #   <p>A description of the preset.</p>
    # @option params [String] :container
    #   <p>The container type for the output file. Valid values include <code>flac</code>,
    #               <code>flv</code>, <code>fmp4</code>, 
    #               <code>gif</code>, <code>mp3</code>, 
    #               <code>mp4</code>, <code>mpg</code>, <code>mxf</code>, <code>oga</code>, 
    #               <code>ogg</code>, <code>ts</code>, and <code>webm</code>.</p>
    # @option params [Types::VideoParameters] :video
    #   <p>A section of the request body that specifies the video parameters.</p>
    # @option params [Types::AudioParameters] :audio
    #   <p>A section of the request body that specifies the audio parameters.</p>
    # @option params [Types::Thumbnails] :thumbnails
    #   <p>A section of the request body that specifies the thumbnail parameters, if any.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     container: "PresetContainer", # required
    #     video: {
    #       codec: "VideoCodec",
    #       codec_options: {
    #         "CodecOption" => "CodecOption"
    #       },
    #       keyframes_max_dist: "KeyframesMaxDist",
    #       fixed_gop: "FixedGOP",
    #       bit_rate: "VideoBitRate",
    #       frame_rate: "FrameRate",
    #       max_frame_rate: "MaxFrameRate",
    #       resolution: "Resolution",
    #       aspect_ratio: "AspectRatio",
    #       max_width: "DigitsOrAuto",
    #       max_height: "DigitsOrAuto",
    #       display_aspect_ratio: "AspectRatio",
    #       sizing_policy: "SizingPolicy",
    #       padding_policy: "PaddingPolicy",
    #       watermarks: [
    #         {
    #           id: "PresetWatermarkId",
    #           max_width: "PixelsOrPercent",
    #           max_height: "PixelsOrPercent",
    #           sizing_policy: "WatermarkSizingPolicy",
    #           horizontal_align: "HorizontalAlign",
    #           horizontal_offset: "PixelsOrPercent",
    #           vertical_align: "VerticalAlign",
    #           vertical_offset: "PixelsOrPercent",
    #           opacity: "Opacity",
    #           target: "Target"
    #         }
    #       ]
    #     },
    #     audio: {
    #       codec: "AudioCodec",
    #       sample_rate: "AudioSampleRate",
    #       bit_rate: "AudioBitRate",
    #       channels: "AudioChannels",
    #       audio_packing_mode: "AudioPackingMode",
    #       codec_options: {
    #         profile: "AudioCodecProfile",
    #         bit_depth: "AudioBitDepth",
    #         bit_order: "AudioBitOrder",
    #         signed: "AudioSigned"
    #       }
    #     },
    #     thumbnails: {
    #       format: "JpgOrPng",
    #       interval: "Digits",
    #       resolution: "ThumbnailResolution",
    #       aspect_ratio: "AspectRatio",
    #       max_width: "DigitsOrAuto",
    #       max_height: "DigitsOrAuto",
    #       sizing_policy: "SizingPolicy",
    #       padding_policy: "PaddingPolicy"
    #     }
    #   }
    #   options = {}
    #   response = client.create_preset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     preset: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       description: "Description",
    #       container: "PresetContainer",
    #       audio: {
    #         codec: "AudioCodec",
    #         sample_rate: "AudioSampleRate",
    #         bit_rate: "AudioBitRate",
    #         channels: "AudioChannels",
    #         audio_packing_mode: "AudioPackingMode",
    #         codec_options: {
    #           profile: "AudioCodecProfile",
    #           bit_depth: "AudioBitDepth",
    #           bit_order: "AudioBitOrder",
    #           signed: "AudioSigned"
    #         }
    #       },
    #       video: {
    #         codec: "VideoCodec",
    #         codec_options: {
    #           "CodecOption" => "CodecOption"
    #         },
    #         keyframes_max_dist: "KeyframesMaxDist",
    #         fixed_gop: "FixedGOP",
    #         bit_rate: "VideoBitRate",
    #         frame_rate: "FrameRate",
    #         max_frame_rate: "MaxFrameRate",
    #         resolution: "Resolution",
    #         aspect_ratio: "AspectRatio",
    #         max_width: "DigitsOrAuto",
    #         max_height: "DigitsOrAuto",
    #         display_aspect_ratio: "AspectRatio",
    #         sizing_policy: "SizingPolicy",
    #         padding_policy: "PaddingPolicy",
    #         watermarks: [
    #           {
    #             id: "PresetWatermarkId",
    #             max_width: "PixelsOrPercent",
    #             max_height: "PixelsOrPercent",
    #             sizing_policy: "WatermarkSizingPolicy",
    #             horizontal_align: "HorizontalAlign",
    #             horizontal_offset: "PixelsOrPercent",
    #             vertical_align: "VerticalAlign",
    #             vertical_offset: "PixelsOrPercent",
    #             opacity: "Opacity",
    #             target: "Target"
    #           }
    #         ]
    #       },
    #       thumbnails: {
    #         format: "JpgOrPng",
    #         interval: "Digits",
    #         resolution: "ThumbnailResolution",
    #         aspect_ratio: "AspectRatio",
    #         max_width: "DigitsOrAuto",
    #         max_height: "DigitsOrAuto",
    #         sizing_policy: "SizingPolicy",
    #         padding_policy: "PaddingPolicy"
    #       },
    #       type: "PresetType"
    #     },
    #     warning: "String"
    #   }
    # @return [Types::CreatePresetResponse]
    def create_preset(params = {}, options = {})
      request = build_request(:create_preset, params)
      request.send_request(options)
    end

    # <p>The DeletePipeline operation removes a pipeline.</p>
    #         <p> You can only delete a pipeline that has never been used or that is not currently in use
    #             (doesn't contain any active jobs). If the pipeline is currently in use,
    #                 <code>DeletePipeline</code> returns an error. </p>
    # @param [Hash, Types::DeletePipelineRequest] params
    # @option params [String] :id
    #   <p>The identifier of the pipeline that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePipelineResponse]
    def delete_pipeline(params = {}, options = {})
      request = build_request(:delete_pipeline, params)
      request.send_request(options)
    end

    # <p>The DeletePreset operation removes a preset that you've added in an AWS region.</p>
    #         <note>
    #             <p>You can't delete the default presets that are included with Elastic Transcoder.</p>
    #         </note>
    # @param [Hash, Types::DeletePresetRequest] params
    # @option params [String] :id
    #   <p>The identifier of the preset for which you want to get detailed information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_preset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePresetResponse]
    def delete_preset(params = {}, options = {})
      request = build_request(:delete_preset, params)
      request.send_request(options)
    end

    # <p>The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline.</p>
    #         <p>Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains 
    #             one element for each job that satisfies the search criteria.</p>
    # @param [Hash, Types::ListJobsByPipelineRequest] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline for which you want to get job information.</p>
    # @option params [String] :ascending
    #   <p> To list jobs in chronological order by the date and time that they were submitted, enter
    #                   <code>true</code>. To list jobs in reverse chronological order, enter
    #                   <code>false</code>. </p>
    # @option params [String] :page_token
    #   <p> When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "Id", # required
    #     ascending: "Ascending",
    #     page_token: "Id"
    #   }
    #   options = {}
    #   response = client.list_jobs_by_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         id: "Id",
    #         arn: "String",
    #         pipeline_id: "Id",
    #         input: {
    #           key: "LongKey",
    #           frame_rate: "FrameRate",
    #           resolution: "Resolution",
    #           aspect_ratio: "AspectRatio",
    #           interlaced: "Interlaced",
    #           container: "JobContainer",
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           time_span: {
    #             start_time: "Time",
    #             duration: "Time"
    #           },
    #           input_captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           detected_properties: {
    #             width: 1,
    #             height: 1,
    #             frame_rate: "FloatString",
    #             file_size: 1,
    #             duration_millis: 1
    #           }
    #         },
    #         inputs: [
    #           {
    #             key: "LongKey",
    #             frame_rate: "FrameRate",
    #             resolution: "Resolution",
    #             aspect_ratio: "AspectRatio",
    #             interlaced: "Interlaced",
    #             container: "JobContainer",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             },
    #             time_span: {
    #               start_time: "Time",
    #               duration: "Time"
    #             },
    #             input_captions: {
    #               merge_policy: "CaptionMergePolicy",
    #               caption_sources: [
    #                 {
    #                   key: "LongKey",
    #                   language: "Key",
    #                   time_offset: "TimeOffset",
    #                   label: "Name",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ]
    #             },
    #             detected_properties: {
    #               width: 1,
    #               height: 1,
    #               frame_rate: "FloatString",
    #               file_size: 1,
    #               duration_millis: 1
    #             }
    #           }
    #         ],
    #         output: {
    #           id: "String",
    #           key: "Key",
    #           thumbnail_pattern: "ThumbnailPattern",
    #           thumbnail_encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           rotate: "Rotate",
    #           preset_id: "Id",
    #           segment_duration: "FloatString",
    #           status: "JobStatus",
    #           status_detail: "Description",
    #           duration: 1,
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1,
    #           watermarks: [
    #             {
    #               preset_watermark_id: "PresetWatermarkId",
    #               input_key: "WatermarkKey",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           album_art: {
    #             merge_policy: "MergePolicy",
    #             artwork: [
    #               {
    #                 input_key: "WatermarkKey",
    #                 max_width: "DigitsOrAuto",
    #                 max_height: "DigitsOrAuto",
    #                 sizing_policy: "SizingPolicy",
    #                 padding_policy: "PaddingPolicy",
    #                 album_art_format: "JpgOrPng",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           composition: [
    #             {
    #               time_span: {
    #                 start_time: "Time",
    #                 duration: "Time"
    #               }
    #             }
    #           ],
    #           captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ],
    #             caption_formats: [
    #               {
    #                 format: "CaptionFormatFormat",
    #                 pattern: "CaptionFormatPattern",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           applied_color_space_conversion: "String"
    #         },
    #         outputs: [
    #           {
    #             id: "String",
    #             key: "Key",
    #             thumbnail_pattern: "ThumbnailPattern",
    #             thumbnail_encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             },
    #             rotate: "Rotate",
    #             preset_id: "Id",
    #             segment_duration: "FloatString",
    #             status: "JobStatus",
    #             status_detail: "Description",
    #             duration: 1,
    #             width: 1,
    #             height: 1,
    #             frame_rate: "FloatString",
    #             file_size: 1,
    #             duration_millis: 1,
    #             watermarks: [
    #               {
    #                 preset_watermark_id: "PresetWatermarkId",
    #                 input_key: "WatermarkKey",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ],
    #             album_art: {
    #               merge_policy: "MergePolicy",
    #               artwork: [
    #                 {
    #                   input_key: "WatermarkKey",
    #                   max_width: "DigitsOrAuto",
    #                   max_height: "DigitsOrAuto",
    #                   sizing_policy: "SizingPolicy",
    #                   padding_policy: "PaddingPolicy",
    #                   album_art_format: "JpgOrPng",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ]
    #             },
    #             composition: [
    #               {
    #                 time_span: {
    #                   start_time: "Time",
    #                   duration: "Time"
    #                 }
    #               }
    #             ],
    #             captions: {
    #               merge_policy: "CaptionMergePolicy",
    #               caption_sources: [
    #                 {
    #                   key: "LongKey",
    #                   language: "Key",
    #                   time_offset: "TimeOffset",
    #                   label: "Name",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ],
    #               caption_formats: [
    #                 {
    #                   format: "CaptionFormatFormat",
    #                   pattern: "CaptionFormatPattern",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ]
    #             },
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             },
    #             applied_color_space_conversion: "String"
    #           }
    #         ],
    #         output_key_prefix: "Key",
    #         playlists: [
    #           {
    #             name: "Filename",
    #             format: "PlaylistFormat",
    #             output_keys: ["Key"],
    #             hls_content_protection: {
    #               method: "HlsContentProtectionMethod",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #               license_acquisition_url: "ZeroTo512String",
    #               key_storage_policy: "KeyStoragePolicy"
    #             },
    #             play_ready_drm: {
    #               format: "PlayReadyDrmFormatString",
    #               key: "NonEmptyBase64EncodedString",
    #               key_md5: "NonEmptyBase64EncodedString",
    #               key_id: "KeyIdGuid",
    #               initialization_vector: "ZeroTo255String",
    #               license_acquisition_url: "OneTo512String"
    #             },
    #             status: "JobStatus",
    #             status_detail: "Description"
    #           }
    #         ],
    #         status: "JobStatus",
    #         user_metadata: {
    #           "String" => "String"
    #         },
    #         timing: {
    #           submit_time_millis: 1,
    #           start_time_millis: 1,
    #           finish_time_millis: 1
    #         }
    #       }
    #     ],
    #     next_page_token: "Id"
    #   }
    # @return [Types::ListJobsByPipelineResponse]
    def list_jobs_by_pipeline(params = {}, options = {})
      request = build_request(:list_jobs_by_pipeline, params)
      request.send_request(options)
    end

    # <p>The ListJobsByStatus operation gets a list of jobs that have a specified status. The response 
    #             body contains one element for each job that satisfies the search criteria.</p>
    # @param [Hash, Types::ListJobsByStatusRequest] params
    # @option params [String] :status
    #   <p>To get information about all of the jobs associated with the current AWS account that
    #               have a given status, specify the following status: <code>Submitted</code>,
    #                   <code>Progressing</code>, <code>Complete</code>, <code>Canceled</code>, or
    #                   <code>Error</code>.</p>
    # @option params [String] :ascending
    #   <p> To list jobs in chronological order by the date and time that they were submitted, enter
    #                   <code>true</code>. To list jobs in reverse chronological order, enter
    #                   <code>false</code>. </p>
    # @option params [String] :page_token
    #   <p> When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "JobStatus", # required
    #     ascending: "Ascending",
    #     page_token: "Id"
    #   }
    #   options = {}
    #   response = client.list_jobs_by_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         id: "Id",
    #         arn: "String",
    #         pipeline_id: "Id",
    #         input: {
    #           key: "LongKey",
    #           frame_rate: "FrameRate",
    #           resolution: "Resolution",
    #           aspect_ratio: "AspectRatio",
    #           interlaced: "Interlaced",
    #           container: "JobContainer",
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           time_span: {
    #             start_time: "Time",
    #             duration: "Time"
    #           },
    #           input_captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           detected_properties: {
    #             width: 1,
    #             height: 1,
    #             frame_rate: "FloatString",
    #             file_size: 1,
    #             duration_millis: 1
    #           }
    #         },
    #         inputs: [
    #           {
    #             key: "LongKey",
    #             frame_rate: "FrameRate",
    #             resolution: "Resolution",
    #             aspect_ratio: "AspectRatio",
    #             interlaced: "Interlaced",
    #             container: "JobContainer",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             },
    #             time_span: {
    #               start_time: "Time",
    #               duration: "Time"
    #             },
    #             input_captions: {
    #               merge_policy: "CaptionMergePolicy",
    #               caption_sources: [
    #                 {
    #                   key: "LongKey",
    #                   language: "Key",
    #                   time_offset: "TimeOffset",
    #                   label: "Name",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ]
    #             },
    #             detected_properties: {
    #               width: 1,
    #               height: 1,
    #               frame_rate: "FloatString",
    #               file_size: 1,
    #               duration_millis: 1
    #             }
    #           }
    #         ],
    #         output: {
    #           id: "String",
    #           key: "Key",
    #           thumbnail_pattern: "ThumbnailPattern",
    #           thumbnail_encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           rotate: "Rotate",
    #           preset_id: "Id",
    #           segment_duration: "FloatString",
    #           status: "JobStatus",
    #           status_detail: "Description",
    #           duration: 1,
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1,
    #           watermarks: [
    #             {
    #               preset_watermark_id: "PresetWatermarkId",
    #               input_key: "WatermarkKey",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           album_art: {
    #             merge_policy: "MergePolicy",
    #             artwork: [
    #               {
    #                 input_key: "WatermarkKey",
    #                 max_width: "DigitsOrAuto",
    #                 max_height: "DigitsOrAuto",
    #                 sizing_policy: "SizingPolicy",
    #                 padding_policy: "PaddingPolicy",
    #                 album_art_format: "JpgOrPng",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           composition: [
    #             {
    #               time_span: {
    #                 start_time: "Time",
    #                 duration: "Time"
    #               }
    #             }
    #           ],
    #           captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ],
    #             caption_formats: [
    #               {
    #                 format: "CaptionFormatFormat",
    #                 pattern: "CaptionFormatPattern",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           applied_color_space_conversion: "String"
    #         },
    #         outputs: [
    #           {
    #             id: "String",
    #             key: "Key",
    #             thumbnail_pattern: "ThumbnailPattern",
    #             thumbnail_encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             },
    #             rotate: "Rotate",
    #             preset_id: "Id",
    #             segment_duration: "FloatString",
    #             status: "JobStatus",
    #             status_detail: "Description",
    #             duration: 1,
    #             width: 1,
    #             height: 1,
    #             frame_rate: "FloatString",
    #             file_size: 1,
    #             duration_millis: 1,
    #             watermarks: [
    #               {
    #                 preset_watermark_id: "PresetWatermarkId",
    #                 input_key: "WatermarkKey",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ],
    #             album_art: {
    #               merge_policy: "MergePolicy",
    #               artwork: [
    #                 {
    #                   input_key: "WatermarkKey",
    #                   max_width: "DigitsOrAuto",
    #                   max_height: "DigitsOrAuto",
    #                   sizing_policy: "SizingPolicy",
    #                   padding_policy: "PaddingPolicy",
    #                   album_art_format: "JpgOrPng",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ]
    #             },
    #             composition: [
    #               {
    #                 time_span: {
    #                   start_time: "Time",
    #                   duration: "Time"
    #                 }
    #               }
    #             ],
    #             captions: {
    #               merge_policy: "CaptionMergePolicy",
    #               caption_sources: [
    #                 {
    #                   key: "LongKey",
    #                   language: "Key",
    #                   time_offset: "TimeOffset",
    #                   label: "Name",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ],
    #               caption_formats: [
    #                 {
    #                   format: "CaptionFormatFormat",
    #                   pattern: "CaptionFormatPattern",
    #                   encryption: {
    #                     mode: "EncryptionMode",
    #                     key: "Base64EncodedString",
    #                     key_md5: "Base64EncodedString",
    #                     initialization_vector: "ZeroTo255String"
    #                   }
    #                 }
    #               ]
    #             },
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             },
    #             applied_color_space_conversion: "String"
    #           }
    #         ],
    #         output_key_prefix: "Key",
    #         playlists: [
    #           {
    #             name: "Filename",
    #             format: "PlaylistFormat",
    #             output_keys: ["Key"],
    #             hls_content_protection: {
    #               method: "HlsContentProtectionMethod",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #               license_acquisition_url: "ZeroTo512String",
    #               key_storage_policy: "KeyStoragePolicy"
    #             },
    #             play_ready_drm: {
    #               format: "PlayReadyDrmFormatString",
    #               key: "NonEmptyBase64EncodedString",
    #               key_md5: "NonEmptyBase64EncodedString",
    #               key_id: "KeyIdGuid",
    #               initialization_vector: "ZeroTo255String",
    #               license_acquisition_url: "OneTo512String"
    #             },
    #             status: "JobStatus",
    #             status_detail: "Description"
    #           }
    #         ],
    #         status: "JobStatus",
    #         user_metadata: {
    #           "String" => "String"
    #         },
    #         timing: {
    #           submit_time_millis: 1,
    #           start_time_millis: 1,
    #           finish_time_millis: 1
    #         }
    #       }
    #     ],
    #     next_page_token: "Id"
    #   }
    # @return [Types::ListJobsByStatusResponse]
    def list_jobs_by_status(params = {}, options = {})
      request = build_request(:list_jobs_by_status, params)
      request.send_request(options)
    end

    # <p>The ListPipelines operation gets a list of the pipelines associated with the current AWS account.</p>
    # @param [Hash, Types::ListPipelinesRequest] params
    # @option params [String] :ascending
    #   <p>To list pipelines in chronological order by the date and time that they were created, enter
    #               <code>true</code>. To list pipelines in reverse chronological order, enter
    #               <code>false</code>.</p>
    # @option params [String] :page_token
    #   <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ascending: "Ascending",
    #     page_token: "Id"
    #   }
    #   options = {}
    #   response = client.list_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipelines: [
    #       {
    #         id: "Id",
    #         arn: "String",
    #         name: "Name",
    #         status: "PipelineStatus",
    #         input_bucket: "BucketName",
    #         output_bucket: "BucketName",
    #         role: "Role",
    #         aws_kms_key_arn: "KeyArn",
    #         notifications: {
    #           progressing: "SnsTopic",
    #           completed: "SnsTopic",
    #           warning: "SnsTopic",
    #           error: "SnsTopic"
    #         },
    #         content_config: {
    #           bucket: "BucketName",
    #           storage_class: "StorageClass",
    #           permissions: [
    #             {
    #               grantee_type: "GranteeType",
    #               grantee: "Grantee",
    #               access: ["AccessControl"]
    #             }
    #           ]
    #         },
    #         thumbnail_config: {
    #           bucket: "BucketName",
    #           storage_class: "StorageClass",
    #           permissions: [
    #             {
    #               grantee_type: "GranteeType",
    #               grantee: "Grantee",
    #               access: ["AccessControl"]
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_page_token: "Id"
    #   }
    # @return [Types::ListPipelinesResponse]
    def list_pipelines(params = {}, options = {})
      request = build_request(:list_pipelines, params)
      request.send_request(options)
    end

    # <p>The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that 
    #             you've added in an AWS region.</p>
    # @param [Hash, Types::ListPresetsRequest] params
    # @option params [String] :ascending
    #   <p>To list presets in chronological order by the date and time that they were created, enter
    #               <code>true</code>. To list presets in reverse chronological order, enter
    #               <code>false</code>.</p>
    # @option params [String] :page_token
    #   <p>When Elastic Transcoder returns more than one page of results, use <code>pageToken</code> in
    #               subsequent <code>GET</code> requests to get each successive page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ascending: "Ascending",
    #     page_token: "Id"
    #   }
    #   options = {}
    #   response = client.list_presets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     presets: [
    #       {
    #         id: "Id",
    #         arn: "String",
    #         name: "Name",
    #         description: "Description",
    #         container: "PresetContainer",
    #         audio: {
    #           codec: "AudioCodec",
    #           sample_rate: "AudioSampleRate",
    #           bit_rate: "AudioBitRate",
    #           channels: "AudioChannels",
    #           audio_packing_mode: "AudioPackingMode",
    #           codec_options: {
    #             profile: "AudioCodecProfile",
    #             bit_depth: "AudioBitDepth",
    #             bit_order: "AudioBitOrder",
    #             signed: "AudioSigned"
    #           }
    #         },
    #         video: {
    #           codec: "VideoCodec",
    #           codec_options: {
    #             "CodecOption" => "CodecOption"
    #           },
    #           keyframes_max_dist: "KeyframesMaxDist",
    #           fixed_gop: "FixedGOP",
    #           bit_rate: "VideoBitRate",
    #           frame_rate: "FrameRate",
    #           max_frame_rate: "MaxFrameRate",
    #           resolution: "Resolution",
    #           aspect_ratio: "AspectRatio",
    #           max_width: "DigitsOrAuto",
    #           max_height: "DigitsOrAuto",
    #           display_aspect_ratio: "AspectRatio",
    #           sizing_policy: "SizingPolicy",
    #           padding_policy: "PaddingPolicy",
    #           watermarks: [
    #             {
    #               id: "PresetWatermarkId",
    #               max_width: "PixelsOrPercent",
    #               max_height: "PixelsOrPercent",
    #               sizing_policy: "WatermarkSizingPolicy",
    #               horizontal_align: "HorizontalAlign",
    #               horizontal_offset: "PixelsOrPercent",
    #               vertical_align: "VerticalAlign",
    #               vertical_offset: "PixelsOrPercent",
    #               opacity: "Opacity",
    #               target: "Target"
    #             }
    #           ]
    #         },
    #         thumbnails: {
    #           format: "JpgOrPng",
    #           interval: "Digits",
    #           resolution: "ThumbnailResolution",
    #           aspect_ratio: "AspectRatio",
    #           max_width: "DigitsOrAuto",
    #           max_height: "DigitsOrAuto",
    #           sizing_policy: "SizingPolicy",
    #           padding_policy: "PaddingPolicy"
    #         },
    #         type: "PresetType"
    #       }
    #     ],
    #     next_page_token: "Id"
    #   }
    # @return [Types::ListPresetsResponse]
    def list_presets(params = {}, options = {})
      request = build_request(:list_presets, params)
      request.send_request(options)
    end

    # <p>The ReadJob operation returns detailed information about a job.</p>
    # @param [Hash, Types::ReadJobRequest] params
    # @option params [String] :id
    #   <p>The identifier of the job for which you want to get detailed information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.read_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       id: "Id",
    #       arn: "String",
    #       pipeline_id: "Id",
    #       input: {
    #         key: "LongKey",
    #         frame_rate: "FrameRate",
    #         resolution: "Resolution",
    #         aspect_ratio: "AspectRatio",
    #         interlaced: "Interlaced",
    #         container: "JobContainer",
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         time_span: {
    #           start_time: "Time",
    #           duration: "Time"
    #         },
    #         input_captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         detected_properties: {
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1
    #         }
    #       },
    #       inputs: [
    #         {
    #           key: "LongKey",
    #           frame_rate: "FrameRate",
    #           resolution: "Resolution",
    #           aspect_ratio: "AspectRatio",
    #           interlaced: "Interlaced",
    #           container: "JobContainer",
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           time_span: {
    #             start_time: "Time",
    #             duration: "Time"
    #           },
    #           input_captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           detected_properties: {
    #             width: 1,
    #             height: 1,
    #             frame_rate: "FloatString",
    #             file_size: 1,
    #             duration_millis: 1
    #           }
    #         }
    #       ],
    #       output: {
    #         id: "String",
    #         key: "Key",
    #         thumbnail_pattern: "ThumbnailPattern",
    #         thumbnail_encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         rotate: "Rotate",
    #         preset_id: "Id",
    #         segment_duration: "FloatString",
    #         status: "JobStatus",
    #         status_detail: "Description",
    #         duration: 1,
    #         width: 1,
    #         height: 1,
    #         frame_rate: "FloatString",
    #         file_size: 1,
    #         duration_millis: 1,
    #         watermarks: [
    #           {
    #             preset_watermark_id: "PresetWatermarkId",
    #             input_key: "WatermarkKey",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String"
    #             }
    #           }
    #         ],
    #         album_art: {
    #           merge_policy: "MergePolicy",
    #           artwork: [
    #             {
    #               input_key: "WatermarkKey",
    #               max_width: "DigitsOrAuto",
    #               max_height: "DigitsOrAuto",
    #               sizing_policy: "SizingPolicy",
    #               padding_policy: "PaddingPolicy",
    #               album_art_format: "JpgOrPng",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         composition: [
    #           {
    #             time_span: {
    #               start_time: "Time",
    #               duration: "Time"
    #             }
    #           }
    #         ],
    #         captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           caption_formats: [
    #             {
    #               format: "CaptionFormatFormat",
    #               pattern: "CaptionFormatPattern",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ]
    #         },
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String"
    #         },
    #         applied_color_space_conversion: "String"
    #       },
    #       outputs: [
    #         {
    #           id: "String",
    #           key: "Key",
    #           thumbnail_pattern: "ThumbnailPattern",
    #           thumbnail_encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           rotate: "Rotate",
    #           preset_id: "Id",
    #           segment_duration: "FloatString",
    #           status: "JobStatus",
    #           status_detail: "Description",
    #           duration: 1,
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1,
    #           watermarks: [
    #             {
    #               preset_watermark_id: "PresetWatermarkId",
    #               input_key: "WatermarkKey",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String"
    #               }
    #             }
    #           ],
    #           album_art: {
    #             merge_policy: "MergePolicy",
    #             artwork: [
    #               {
    #                 input_key: "WatermarkKey",
    #                 max_width: "DigitsOrAuto",
    #                 max_height: "DigitsOrAuto",
    #                 sizing_policy: "SizingPolicy",
    #                 padding_policy: "PaddingPolicy",
    #                 album_art_format: "JpgOrPng",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           composition: [
    #             {
    #               time_span: {
    #                 start_time: "Time",
    #                 duration: "Time"
    #               }
    #             }
    #           ],
    #           captions: {
    #             merge_policy: "CaptionMergePolicy",
    #             caption_sources: [
    #               {
    #                 key: "LongKey",
    #                 language: "Key",
    #                 time_offset: "TimeOffset",
    #                 label: "Name",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ],
    #             caption_formats: [
    #               {
    #                 format: "CaptionFormatFormat",
    #                 pattern: "CaptionFormatPattern",
    #                 encryption: {
    #                   mode: "EncryptionMode",
    #                   key: "Base64EncodedString",
    #                   key_md5: "Base64EncodedString",
    #                   initialization_vector: "ZeroTo255String"
    #                 }
    #               }
    #             ]
    #           },
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String"
    #           },
    #           applied_color_space_conversion: "String"
    #         }
    #       ],
    #       output_key_prefix: "Key",
    #       playlists: [
    #         {
    #           name: "Filename",
    #           format: "PlaylistFormat",
    #           output_keys: ["Key"],
    #           hls_content_protection: {
    #             method: "HlsContentProtectionMethod",
    #             key: "Base64EncodedString",
    #             key_md5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String",
    #             license_acquisition_url: "ZeroTo512String",
    #             key_storage_policy: "KeyStoragePolicy"
    #           },
    #           play_ready_drm: {
    #             format: "PlayReadyDrmFormatString",
    #             key: "NonEmptyBase64EncodedString",
    #             key_md5: "NonEmptyBase64EncodedString",
    #             key_id: "KeyIdGuid",
    #             initialization_vector: "ZeroTo255String",
    #             license_acquisition_url: "OneTo512String"
    #           },
    #           status: "JobStatus",
    #           status_detail: "Description"
    #         }
    #       ],
    #       status: "JobStatus",
    #       user_metadata: {
    #         "String" => "String"
    #       },
    #       timing: {
    #         submit_time_millis: 1,
    #         start_time_millis: 1,
    #         finish_time_millis: 1
    #       }
    #     }
    #   }
    # @return [Types::ReadJobResponse]
    def read_job(params = {}, options = {})
      request = build_request(:read_job, params)
      request.send_request(options)
    end

    # <p>The ReadPipeline operation gets detailed information about a pipeline.</p>
    # @param [Hash, Types::ReadPipelineRequest] params
    # @option params [String] :id
    #   <p>The identifier of the pipeline to read.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.read_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       status: "PipelineStatus",
    #       input_bucket: "BucketName",
    #       output_bucket: "BucketName",
    #       role: "Role",
    #       aws_kms_key_arn: "KeyArn",
    #       notifications: {
    #         progressing: "SnsTopic",
    #         completed: "SnsTopic",
    #         warning: "SnsTopic",
    #         error: "SnsTopic"
    #       },
    #       content_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       },
    #       thumbnail_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       }
    #     },
    #     warnings: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ReadPipelineResponse]
    def read_pipeline(params = {}, options = {})
      request = build_request(:read_pipeline, params)
      request.send_request(options)
    end

    # <p>The ReadPreset operation gets detailed information about a preset.</p>
    # @param [Hash, Types::ReadPresetRequest] params
    # @option params [String] :id
    #   <p>The identifier of the preset for which you want to get detailed information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #   }
    #   options = {}
    #   response = client.read_preset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     preset: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       description: "Description",
    #       container: "PresetContainer",
    #       audio: {
    #         codec: "AudioCodec",
    #         sample_rate: "AudioSampleRate",
    #         bit_rate: "AudioBitRate",
    #         channels: "AudioChannels",
    #         audio_packing_mode: "AudioPackingMode",
    #         codec_options: {
    #           profile: "AudioCodecProfile",
    #           bit_depth: "AudioBitDepth",
    #           bit_order: "AudioBitOrder",
    #           signed: "AudioSigned"
    #         }
    #       },
    #       video: {
    #         codec: "VideoCodec",
    #         codec_options: {
    #           "CodecOption" => "CodecOption"
    #         },
    #         keyframes_max_dist: "KeyframesMaxDist",
    #         fixed_gop: "FixedGOP",
    #         bit_rate: "VideoBitRate",
    #         frame_rate: "FrameRate",
    #         max_frame_rate: "MaxFrameRate",
    #         resolution: "Resolution",
    #         aspect_ratio: "AspectRatio",
    #         max_width: "DigitsOrAuto",
    #         max_height: "DigitsOrAuto",
    #         display_aspect_ratio: "AspectRatio",
    #         sizing_policy: "SizingPolicy",
    #         padding_policy: "PaddingPolicy",
    #         watermarks: [
    #           {
    #             id: "PresetWatermarkId",
    #             max_width: "PixelsOrPercent",
    #             max_height: "PixelsOrPercent",
    #             sizing_policy: "WatermarkSizingPolicy",
    #             horizontal_align: "HorizontalAlign",
    #             horizontal_offset: "PixelsOrPercent",
    #             vertical_align: "VerticalAlign",
    #             vertical_offset: "PixelsOrPercent",
    #             opacity: "Opacity",
    #             target: "Target"
    #           }
    #         ]
    #       },
    #       thumbnails: {
    #         format: "JpgOrPng",
    #         interval: "Digits",
    #         resolution: "ThumbnailResolution",
    #         aspect_ratio: "AspectRatio",
    #         max_width: "DigitsOrAuto",
    #         max_height: "DigitsOrAuto",
    #         sizing_policy: "SizingPolicy",
    #         padding_policy: "PaddingPolicy"
    #       },
    #       type: "PresetType"
    #     }
    #   }
    # @return [Types::ReadPresetResponse]
    def read_preset(params = {}, options = {})
      request = build_request(:read_preset, params)
      request.send_request(options)
    end

    # <p>The TestRole operation tests the IAM role used to create the pipeline.</p>
    #         <p>The <code>TestRole</code> action lets you determine whether the IAM role you are using
    #             has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding
    #             process. The action attempts to assume the specified IAM role, checks read access to the
    #             input and output buckets, and tries to send a test notification to Amazon SNS topics
    #             that you specify.</p>
    # @param [Hash, Types::TestRoleRequest] params
    # @option params [String] :role
    #   <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to test.</p>
    # @option params [String] :input_bucket
    #   <p>The Amazon S3 bucket that contains media files to be transcoded. The action attempts to read from this bucket.</p>
    # @option params [String] :output_bucket
    #   <p>The Amazon S3 bucket that Elastic Transcoder writes transcoded media files to. The action attempts to read from this bucket.</p>
    # @option params [Array<String>] :topics
    #   <p>The ARNs of one or more Amazon Simple Notification Service (Amazon SNS) topics that you want the action to send a test notification to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role: "Role", # required
    #     input_bucket: "BucketName", # required
    #     output_bucket: "BucketName", # required
    #     topics: ["SnsTopic"], # required
    #   }
    #   options = {}
    #   response = client.test_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     success: "Success",
    #     messages: ["String"]
    #   }
    # @deprecated
    # @return [Types::TestRoleResponse]
    def test_role(params = {}, options = {})
      request = build_request(:test_role, params)
      request.send_request(options)
    end

    # <p> Use the <code>UpdatePipeline</code> operation to update settings for a pipeline.</p>
    #         <important>
    #             <p>When you change pipeline settings, your changes take effect immediately.
    #             Jobs that you have already submitted and that Elastic Transcoder has not started to process are
    #             affected in addition to jobs that you submit after you change settings. </p>
    #          </important>
    # @param [Hash, Types::UpdatePipelineRequest] params
    # @option params [String] :id
    #   <p>The ID of the pipeline that you want to update.</p>
    # @option params [String] :name
    #   <p>The name of the pipeline. We recommend that the name be unique within the AWS account, but 
    #               uniqueness is not enforced.</p>
    #           <p>Constraints: Maximum 40 characters</p>
    # @option params [String] :input_bucket
    #   <p>The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics 
    #               that you want to use as watermarks.</p>
    # @option params [String] :role
    #   <p>The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for 
    #               this pipeline.</p>
    # @option params [String] :aws_kms_key_arn
    #   <p>The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.</p>
    #           <p>If you use either <code>s3</code> or <code>s3-aws-kms</code> as your <code>Encryption:Mode</code>,
    #           you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is 
    #           created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default 
    #           AWS-KMS key, or if you are using an <code>Encryption:Mode</code> of <code>aes-cbc-pkcs7</code>, <code>aes-ctr</code>,
    #               or <code>aes-gcm</code>.</p>
    # @option params [Types::Notifications] :notifications
    #   <p>The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p>
    #           <important>
    #               <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p>
    #           </important>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to
    #                   notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This
    #                   is the ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when
    #                   Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when
    #                   you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters a warning condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters an error condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #            </ul>
    # @option params [Types::PipelineOutputConfig] :content_config
    #   <p>The optional <code>ContentConfig</code> object specifies information about the Amazon S3
    #               bucket in which you want Elastic Transcoder to save transcoded files and playlists:
    #               which bucket to use, which users you want to have access to the files, the type of
    #               access you want users to have, and the storage class that you want to assign to the
    #               files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code>.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   transcoded files and playlists.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The Permissions object specifies which users you want
    #                   to have access to transcoded files and the type of access you want them to have. You
    #                   can grant permissions to a maximum of 30 users and/or predefined Amazon S3
    #                   groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee Type</b>: Specify the type of value that appears in the
    #                       <code>Grantee</code> object:</p> 
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution. For more information about canonical user
    #                           IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage
    #                           Service Developer Guide. For more information about using CloudFront origin
    #                           access identities to require that users use CloudFront URLs instead of
    #                           Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to
    #                           Your Amazon S3 Content.</p> 
    #                        <important>
    #                           <p>A canonical user ID is not the same as an
    #                               AWS account number.</p>
    #                        </important>
    #                       </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to transcoded
    #                   files and playlists. To identify the user or group, you can specify the canonical
    #                   user ID for an AWS account, an origin access identity for a CloudFront distribution,
    #                   the registered email address of an AWS account, or a predefined Amazon S3 group </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the files that Elastic
    #                   Transcoder adds to the bucket, including playlists and video files. Valid values
    #                   include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the objects and metadata for objects
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the objects that
    #                           Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the video files and playlists that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    # @option params [Types::PipelineOutputConfig] :thumbnail_config
    #   <p>The <code>ThumbnailConfig</code> object specifies several values, including the Amazon S3
    #               bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have
    #               access to the files, the type of access you want users to have, and the storage class
    #               that you want to assign to the files.</p>
    #           <p>If you specify values for <code>ContentConfig</code>, you must also specify values for
    #                   <code>ThumbnailConfig</code> even if you don't want to create thumbnails.</p>
    #           <p>If you specify values for <code>ContentConfig</code> and <code>ThumbnailConfig</code>,
    #               omit the <code>OutputBucket</code> object.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Bucket</b>: The Amazon S3 bucket in which you want Elastic Transcoder to save
    #                   thumbnail files.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Permissions</b> (Optional): The <code>Permissions</code> object specifies which
    #                   users and/or predefined Amazon S3 groups you want to have access to thumbnail files,
    #                   and the type of access you want them to have. You can grant permissions to a maximum
    #                   of 30 users and/or predefined Amazon S3 groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>GranteeType</b>: Specify the type of value that appears in the Grantee object:</p> 
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Canonical</b>: The value in the <code>Grantee</code> object is either the
    #                           canonical user ID for an AWS account or an origin access identity for an
    #                           Amazon CloudFront distribution.</p> 
    #                        <important>
    #                           <p>A canonical user ID is not the
    #                               same as an AWS account number.</p>
    #                        </important>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Email</b>: The value in the <code>Grantee</code> object is the registered
    #                           email address of an AWS account.</p> 
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Group</b>: The value in the <code>Grantee</code> object is one of the
    #                           following predefined Amazon S3 groups: <code>AllUsers</code>,
    #                               <code>AuthenticatedUsers</code>, or <code>LogDelivery</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Grantee</b>: The AWS user or group that you want to have access to thumbnail
    #                   files. To identify the user or group, you can specify the canonical user ID for an
    #                   AWS account, an origin access identity for a CloudFront distribution, the registered
    #                   email address of an AWS account, or a predefined Amazon S3 group. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Access</b>: The permission that you want to give to the AWS user that you
    #                   specified in <code>Grantee</code>. Permissions are granted on the thumbnail files
    #                   that Elastic Transcoder adds to the bucket. Valid values include: </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>READ</code>: The grantee can read the thumbnails and metadata for
    #                           objects that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>READ_ACP</code>: The grantee can read the object ACL for thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p> 
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WRITE_ACP</code>: The grantee can write the ACL for the thumbnails
    #                           that Elastic Transcoder adds to the Amazon S3 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FULL_CONTROL</code>: The grantee has <code>READ</code>,
    #                               <code>READ_ACP</code>, and <code>WRITE_ACP</code> permissions for the
    #                           thumbnails that Elastic Transcoder adds to the Amazon S3 bucket. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>StorageClass</b>: The Amazon S3 storage class, <code>Standard</code> or
    #                       <code>ReducedRedundancy</code>, that you want Elastic Transcoder to assign to
    #                   the thumbnails that it stores in your Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     name: "Name",
    #     input_bucket: "BucketName",
    #     role: "Role",
    #     aws_kms_key_arn: "KeyArn",
    #     notifications: {
    #       progressing: "SnsTopic",
    #       completed: "SnsTopic",
    #       warning: "SnsTopic",
    #       error: "SnsTopic"
    #     },
    #     content_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"]
    #         }
    #       ]
    #     },
    #     thumbnail_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       status: "PipelineStatus",
    #       input_bucket: "BucketName",
    #       output_bucket: "BucketName",
    #       role: "Role",
    #       aws_kms_key_arn: "KeyArn",
    #       notifications: {
    #         progressing: "SnsTopic",
    #         completed: "SnsTopic",
    #         warning: "SnsTopic",
    #         error: "SnsTopic"
    #       },
    #       content_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       },
    #       thumbnail_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       }
    #     },
    #     warnings: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UpdatePipelineResponse]
    def update_pipeline(params = {}, options = {})
      request = build_request(:update_pipeline, params)
      request.send_request(options)
    end

    # <p>With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline.</p>
    #         <p>When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.</p>
    # @param [Hash, Types::UpdatePipelineNotificationsRequest] params
    # @option params [String] :id
    #   <p>The identifier of the pipeline for which you want to change notification settings.</p>
    # @option params [Types::Notifications] :notifications
    #   <p>The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.</p>
    #           <important>
    #               <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p>
    #            </important>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>Progressing</b>: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to
    #                   notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This
    #                   is the ARN that Amazon SNS returned when you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Complete</b>: The topic ARN for the Amazon SNS topic that you want to notify when
    #                   Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when
    #                   you created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Warning</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters a warning condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Error</b>: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder
    #                   encounters an error condition. This is the ARN that Amazon SNS returned when you
    #                   created the topic.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     notifications: { # required
    #       progressing: "SnsTopic",
    #       completed: "SnsTopic",
    #       warning: "SnsTopic",
    #       error: "SnsTopic"
    #     }
    #   }
    #   options = {}
    #   response = client.update_pipeline_notifications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       status: "PipelineStatus",
    #       input_bucket: "BucketName",
    #       output_bucket: "BucketName",
    #       role: "Role",
    #       aws_kms_key_arn: "KeyArn",
    #       notifications: {
    #         progressing: "SnsTopic",
    #         completed: "SnsTopic",
    #         warning: "SnsTopic",
    #         error: "SnsTopic"
    #       },
    #       content_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       },
    #       thumbnail_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdatePipelineNotificationsResponse]
    def update_pipeline_notifications(params = {}, options = {})
      request = build_request(:update_pipeline_notifications, params)
      request.send_request(options)
    end

    # <p>The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline 
    #             stops or restarts the processing of jobs.</p>
    #         <p>Changing the pipeline status is useful if you want to cancel one or more jobs. You can't
    #             cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which
    #             you submitted the jobs, you have more time to get the job IDs for the jobs that you want
    #             to cancel, and to send a <a>CancelJob</a> request. </p>
    # @param [Hash, Types::UpdatePipelineStatusRequest] params
    # @option params [String] :id
    #   <p>The identifier of the pipeline to update.</p>
    # @option params [String] :status
    #   <p>The desired status of the pipeline:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>Active</code>: The pipeline is processing jobs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Paused</code>: The pipeline is not currently processing jobs.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     status: "PipelineStatus", # required
    #   }
    #   options = {}
    #   response = client.update_pipeline_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       id: "Id",
    #       arn: "String",
    #       name: "Name",
    #       status: "PipelineStatus",
    #       input_bucket: "BucketName",
    #       output_bucket: "BucketName",
    #       role: "Role",
    #       aws_kms_key_arn: "KeyArn",
    #       notifications: {
    #         progressing: "SnsTopic",
    #         completed: "SnsTopic",
    #         warning: "SnsTopic",
    #         error: "SnsTopic"
    #       },
    #       content_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       },
    #       thumbnail_config: {
    #         bucket: "BucketName",
    #         storage_class: "StorageClass",
    #         permissions: [
    #           {
    #             grantee_type: "GranteeType",
    #             grantee: "Grantee",
    #             access: ["AccessControl"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdatePipelineStatusResponse]
    def update_pipeline_status(params = {}, options = {})
      request = build_request(:update_pipeline_status, params)
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
      context[:gem_name] = 'aws-sdk-elastictranscoder'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        job_complete: Waiters::JobComplete
      }
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

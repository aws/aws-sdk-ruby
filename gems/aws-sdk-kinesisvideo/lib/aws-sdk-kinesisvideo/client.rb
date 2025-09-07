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

module Aws::KinesisVideo
  # An API client for Aws::KinesisVideo.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::KinesisVideo20170930

    add_plugin(::Aws::KinesisVideo::Plugins::Endpoint)
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
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::KinesisVideo::EndpointProvider] :endpoint_provider
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

    # <p>Creates a signaling channel. </p>
    #          <p>
    #             <code>CreateSignalingChannel</code> is an asynchronous operation.</p>
    # @param [Hash, Types::CreateSignalingChannelInput] params
    # @option params [String] :channel_name
    #   <p>A name for the signaling channel that you are creating. It must be unique for each Amazon Web Services account and Amazon Web Services Region.</p>
    # @option params [String] :channel_type
    #   <p>A type of the signaling channel that you are creating. Currently,
    #                   <code>SINGLE_MASTER</code> is the only supported channel type. </p>
    # @option params [Types::SingleMasterConfiguration] :single_master_configuration
    #   <p>A structure containing the configuration for the <code>SINGLE_MASTER</code> channel
    #               type. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A set of tags (key-value pairs) that you want to associate with this channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName", # required
    #     channel_type: "SINGLE_MASTER" # One of: ["SINGLE_MASTER", "FULL_MESH"],
    #     single_master_configuration: {
    #       message_ttl_seconds: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_signaling_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_arn: "ResourceARN"
    #   }
    # @return [Types::CreateSignalingChannelOutput]
    def create_signaling_channel(params = {}, options = {})
      request = build_request(:create_signaling_channel, params)
      request.send_request(options)
    end

    # <p>Creates a new Kinesis video stream. </p>
    #          <p>When you create a new stream, Kinesis Video Streams assigns it a version number.
    #             When you change the stream's metadata, Kinesis Video Streams updates the version. </p>
    #          <p>
    #             <code>CreateStream</code> is an asynchronous operation.</p>
    #          <p>For information about how the service works, see <a href="https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html">How it Works</a>. </p>
    #          <p>You must have permissions for the <code>KinesisVideo:CreateStream</code>
    #             action.</p>
    # @param [Hash, Types::CreateStreamInput] params
    # @option params [String] :device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #            <note>
    #               <p>In the current implementation, Kinesis Video Streams does not use this
    #                   name.</p>
    #            </note>
    # @option params [String] :stream_name
    #   <p>A name for the stream that you are creating.</p>
    #            <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    # @option params [String] :media_type
    #   <p>The media type of the stream. Consumers of the stream can use this information when
    #               processing the stream. For more information about media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming Requirements</a>
    #               for guidelines.</p>
    #            <p>Example valid values include "video/h264" and "video/h264,audio/aac".</p>
    #            <p>This parameter is optional; the default value is <code>null</code> (or empty in
    #               JSON).</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key that you want Kinesis Video
    #               Streams to use to encrypt stream data.</p>
    #            <p>If no key ID is specified, the default, Kinesis Video-managed key
    #               (<code>Amazon Web Services/kinesisvideo</code>) is used.</p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">DescribeKey</a>. </p>
    # @option params [Integer] :data_retention_in_hours
    #   <p>The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.</p>
    #            <p>The default value is 0, indicating that the stream does not persist data.</p>
    #            <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume
    #               the fragments that remain in the service host buffer, which has a retention time limit
    #               of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the
    #               buffer when either limit is reached.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_name: "DeviceName",
    #     stream_name: "StreamName", # required
    #     media_type: "MediaType",
    #     kms_key_id: "KmsKeyId",
    #     data_retention_in_hours: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_arn: "ResourceARN"
    #   }
    # @return [Types::CreateStreamOutput]
    def create_stream(params = {}, options = {})
      request = build_request(:create_stream, params)
      request.send_request(options)
    end

    # <p>An asynchronous API that deletes a stream’s existing edge configuration, as well as the corresponding media from the Edge Agent.</p>
    #          <p>When you invoke this API, the sync status is set to <code>DELETING</code>. A deletion process starts, in which active edge jobs are stopped and all media is deleted from the edge device. The time to delete varies, depending on the total amount of stored media. If the deletion process fails, the sync status changes to <code>DELETE_FAILED</code>. You will need to re-try the deletion.</p>
    #          <p>When the deletion process has completed successfully, the edge configuration is no longer accessible.</p>
    # @param [Hash, Types::DeleteEdgeConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to delete the edge configuration. Specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream. Specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.delete_edge_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEdgeConfigurationOutput]
    def delete_edge_configuration(params = {}, options = {})
      request = build_request(:delete_edge_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a specified signaling channel. <code>DeleteSignalingChannel</code> is an
    #             asynchronous operation. If you don't specify the channel's current version, the most
    #             recent version is deleted.</p>
    # @param [Hash, Types::DeleteSignalingChannelInput] params
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               delete.</p>
    # @option params [String] :current_version
    #   <p>The current version of the signaling channel that you want to delete. You can obtain
    #               the current version by invoking the <code>DescribeSignalingChannel</code> or
    #                   <code>ListSignalingChannels</code> API operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ResourceARN", # required
    #     current_version: "Version"
    #   }
    #   options = {}
    #   response = client.delete_signaling_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSignalingChannelOutput]
    def delete_signaling_channel(params = {}, options = {})
      request = build_request(:delete_signaling_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a Kinesis video stream and the data contained in the stream. </p>
    #          <p>This method marks the stream for deletion, and makes the data in the stream
    #             inaccessible immediately.</p>
    #          <p> </p>
    #          <p> To ensure that you have the latest version of the stream before deleting it, you
    #             can specify the stream version. Kinesis Video Streams assigns a version to each stream.
    #             When you update a stream, Kinesis Video Streams assigns a new version number. To get the
    #             latest stream version, use the <code>DescribeStream</code> API. </p>
    #          <p>This operation requires permission for the <code>KinesisVideo:DeleteStream</code>
    #             action.</p>
    # @param [Hash, Types::DeleteStreamInput] params
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>
    # @option params [String] :current_version
    #   <p>Optional: The version of the stream that you want to delete. </p>
    #            <p>Specify the version as a safeguard to ensure that your are deleting the correct
    #               stream. To get the stream version, use the <code>DescribeStream</code> API.</p>
    #            <p>If not specified, only the <code>CreationTime</code> is checked before deleting the
    #               stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "ResourceARN", # required
    #     current_version: "Version"
    #   }
    #   options = {}
    #   response = client.delete_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStreamOutput]
    def delete_stream(params = {}, options = {})
      request = build_request(:delete_stream, params)
      request.send_request(options)
    end

    # <p>Describes a stream’s edge configuration that was set using the
    #                 <code>StartEdgeConfigurationUpdate</code> API and the latest status of the edge
    #             agent's recorder and uploader jobs. Use this API to get the status of the configuration
    #             to determine if the configuration is in sync with the Edge Agent. Use this API to
    #             evaluate the health of the Edge Agent.</p>
    # @param [Hash, Types::DescribeEdgeConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream whose edge configuration you want to update. Specify either the <code>StreamName</code> or 
    #               the <code>StreamARN</code>.
    #           </p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream. Specify either the <code>StreamName</code>or the <code>StreamARN</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.describe_edge_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     creation_time: Time.now,
    #     last_updated_time: Time.now,
    #     sync_status: "SYNCING" # One of: ["SYNCING", "ACKNOWLEDGED", "IN_SYNC", "SYNC_FAILED", "DELETING", "DELETE_FAILED", "DELETING_ACKNOWLEDGED"],
    #     failed_status_details: "FailedStatusDetails",
    #     edge_config: {
    #       hub_device_arn: "HubDeviceArn", # required
    #       recorder_config: { # required
    #         media_source_config: { # required
    #           media_uri_secret_arn: "MediaUriSecretArn", # required
    #           media_uri_type: "RTSP_URI" # One of: ["RTSP_URI", "FILE_URI"], # required
    #         },
    #         schedule_config: {
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         }
    #       },
    #       uploader_config: {
    #         schedule_config: { # required
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         }
    #       },
    #       deletion_config: {
    #         edge_retention_in_hours: 1,
    #         local_size_config: {
    #           max_local_media_size_in_mb: 1,
    #           strategy_on_full_size: "DELETE_OLDEST_MEDIA" # One of: ["DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"]
    #         },
    #         delete_after_upload: false
    #       }
    #     },
    #     edge_agent_status: {
    #       last_recorder_status: {
    #         job_status_details: "JobStatusDetails",
    #         last_collected_time: Time.now,
    #         last_updated_time: Time.now,
    #         recorder_status: "SUCCESS" # One of: ["SUCCESS", "USER_ERROR", "SYSTEM_ERROR"]
    #       },
    #       last_uploader_status: {
    #         job_status_details: "JobStatusDetails",
    #         last_collected_time: Time.now,
    #         last_updated_time: Time.now,
    #         uploader_status: "SUCCESS" # One of: ["SUCCESS", "USER_ERROR", "SYSTEM_ERROR"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeEdgeConfigurationOutput]
    def describe_edge_configuration(params = {}, options = {})
      request = build_request(:describe_edge_configuration, params)
      request.send_request(options)
    end

    # <p>Gets the <code>ImageGenerationConfiguration</code> for a given Kinesis video stream.</p>
    # @param [Hash, Types::DescribeImageGenerationConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.  </p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from which to retrieve the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.describe_image_generation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_generation_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       image_selector_type: "SERVER_TIMESTAMP" # One of: ["SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP"], # required
    #       destination_config: { # required
    #         uri: "DestinationUri", # required
    #         destination_region: "DestinationRegion", # required
    #       },
    #       sampling_interval: 1, # required
    #       format: "JPEG" # One of: ["JPEG", "PNG"], # required
    #       format_config: {
    #         "FormatConfigKey" => "FormatConfigValue"
    #       },
    #       width_pixels: 1,
    #       height_pixels: 1
    #     }
    #   }
    # @return [Types::DescribeImageGenerationConfigurationOutput]
    def describe_image_generation_configuration(params = {}, options = {})
      request = build_request(:describe_image_generation_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the most current information about the stream. The <code>streamName</code>
    #             or <code>streamARN</code> should be provided in the input.</p>
    # @param [Hash, Types::DescribeMappedResourceConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to provide in your next request, to get another batch of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_mapped_resource_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mapped_resource_configuration_list: [
    #       {
    #         type: "Type",
    #         arn: "ResourceARN"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMappedResourceConfigurationOutput]
    def describe_mapped_resource_configuration(params = {}, options = {})
      request = build_request(:describe_mapped_resource_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the most current information about the channel. Specify the <code>ChannelName</code>
    #             or <code>ChannelARN</code> in the input.</p>
    # @param [Hash, Types::DescribeMediaStorageConfigurationInput] params
    # @option params [String] :channel_name
    #   <p>The name of the channel.</p>
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName",
    #     channel_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.describe_media_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     media_storage_configuration: {
    #       stream_arn: "ResourceARN",
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    # @return [Types::DescribeMediaStorageConfigurationOutput]
    def describe_media_storage_configuration(params = {}, options = {})
      request = build_request(:describe_media_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Gets the <code>NotificationConfiguration</code> for a given Kinesis video stream.</p>
    # @param [Hash, Types::DescribeNotificationConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to retrieve the notification configuration. You must specify either the <code>StreamName</code> or the StreamARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.describe_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       destination_config: { # required
    #         uri: "DestinationUri", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeNotificationConfigurationOutput]
    def describe_notification_configuration(params = {}, options = {})
      request = build_request(:describe_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the most current information about the signaling channel. You must specify
    #             either the name or the Amazon Resource Name (ARN) of the channel that you want to
    #             describe.</p>
    # @param [Hash, Types::DescribeSignalingChannelInput] params
    # @option params [String] :channel_name
    #   <p>The name of the signaling channel that you want to describe.</p>
    # @option params [String] :channel_arn
    #   <p>The ARN of the signaling channel that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_name: "ChannelName",
    #     channel_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.describe_signaling_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_info: {
    #       channel_name: "ChannelName",
    #       channel_arn: "ResourceARN",
    #       channel_type: "SINGLE_MASTER" # One of: ["SINGLE_MASTER", "FULL_MESH"],
    #       channel_status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"],
    #       creation_time: Time.now,
    #       single_master_configuration: {
    #         message_ttl_seconds: 1
    #       },
    #       version: "Version"
    #     }
    #   }
    # @return [Types::DescribeSignalingChannelOutput]
    def describe_signaling_channel(params = {}, options = {})
      request = build_request(:describe_signaling_channel, params)
      request.send_request(options)
    end

    # <p>Returns the most current information about the specified stream. You must specify
    #             either the <code>StreamName</code> or the <code>StreamARN</code>. </p>
    # @param [Hash, Types::DescribeStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN"
    #   }
    #   options = {}
    #   response = client.describe_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_info: {
    #       device_name: "DeviceName",
    #       stream_name: "StreamName",
    #       stream_arn: "ResourceARN",
    #       media_type: "MediaType",
    #       kms_key_id: "KmsKeyId",
    #       version: "Version",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"],
    #       creation_time: Time.now,
    #       data_retention_in_hours: 1
    #     }
    #   }
    # @return [Types::DescribeStreamOutput]
    def describe_stream(params = {}, options = {})
      request = build_request(:describe_stream, params)
      request.send_request(options)
    end

    # <p>Gets an endpoint for a specified stream for either reading or writing. Use this
    #             endpoint in your application to read from the specified stream (using the
    #                 <code>GetMedia</code> or <code>GetMediaForFragmentList</code> operations) or write
    #             to it (using the <code>PutMedia</code> operation).
    #             </p>
    #          <note>
    #             <p>The returned endpoint does not have the API name appended. The client needs to
    #                 add the API name to the returned endpoint.</p>
    #          </note>
    #          <p>In the request, specify the stream either by <code>StreamName</code> or
    #                 <code>StreamARN</code>.</p>
    # @param [Hash, Types::GetDataEndpointInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to get the endpoint for. You must specify
    #               either this parameter or a <code>StreamARN</code> in the request.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for.
    #               You must specify either this parameter or a <code>StreamName</code> in the request.
    #           </p>
    # @option params [String] :api_name
    #   <p>The name of the API action for which to get an endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     api_name: "PUT_MEDIA" # One of: ["PUT_MEDIA", "GET_MEDIA", "LIST_FRAGMENTS", "GET_MEDIA_FOR_FRAGMENT_LIST", "GET_HLS_STREAMING_SESSION_URL", "GET_DASH_STREAMING_SESSION_URL", "GET_CLIP", "GET_IMAGES"], # required
    #   }
    #   options = {}
    #   response = client.get_data_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_endpoint: "DataEndpoint"
    #   }
    # @return [Types::GetDataEndpointOutput]
    def get_data_endpoint(params = {}, options = {})
      request = build_request(:get_data_endpoint, params)
      request.send_request(options)
    end

    # <p>Provides an endpoint for the specified signaling channel to send and receive messages.
    #             This API uses the <code>SingleMasterChannelEndpointConfiguration</code> input parameter,
    #             which consists of the <code>Protocols</code> and <code>Role</code> properties.</p>
    #          <p>
    #             <code>Protocols</code> is used to determine the communication mechanism. For example,
    #             if you specify <code>WSS</code> as the protocol, this API produces a secure websocket
    #             endpoint. If you specify <code>HTTPS</code> as the protocol, this API generates an HTTPS
    #             endpoint. </p>
    #          <p>
    #             <code>Role</code> determines the messaging permissions. A <code>MASTER</code> role
    #             results in this API generating an endpoint that a client can use to communicate with any
    #             of the viewers on the channel. A <code>VIEWER</code> role results in this API generating
    #             an endpoint that a client can use to communicate only with a <code>MASTER</code>.
    #         </p>
    # @param [Hash, Types::GetSignalingChannelEndpointInput] params
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signalling channel for which you want to get an
    #               endpoint.</p>
    # @option params [Types::SingleMasterChannelEndpointConfiguration] :single_master_channel_endpoint_configuration
    #   <p>A structure containing the endpoint configuration for the <code>SINGLE_MASTER</code>
    #               channel type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ResourceARN", # required
    #     single_master_channel_endpoint_configuration: {
    #       protocols: ["WSS" # One of: ["WSS", "HTTPS", "WEBRTC"]],
    #       role: "MASTER" # One of: ["MASTER", "VIEWER"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_signaling_channel_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_endpoint_list: [
    #       {
    #         protocol: "WSS" # One of: ["WSS", "HTTPS", "WEBRTC"],
    #         resource_endpoint: "ResourceEndpoint"
    #       }
    #     ]
    #   }
    # @return [Types::GetSignalingChannelEndpointOutput]
    def get_signaling_channel_endpoint(params = {}, options = {})
      request = build_request(:get_signaling_channel_endpoint, params)
      request.send_request(options)
    end

    # <p>Returns an array of edge configurations associated with the specified Edge Agent.</p>
    #          <p>In the request, you must specify the Edge Agent <code>HubDeviceArn</code>.</p>
    # @param [Hash, Types::ListEdgeAgentConfigurationsInput] params
    # @option params [String] :hub_device_arn
    #   <p>The "Internet of Things (IoT) Thing" Arn of the edge agent.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of edge configurations to return in the response. The default is 5.</p>
    # @option params [String] :next_token
    #   <p>If you specify this parameter, when the result of a <code>ListEdgeAgentConfigurations</code> operation is truncated, the call returns the <code>NextToken</code> in the response. To get another batch of edge configurations, provide this token in your next request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hub_device_arn: "HubDeviceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_edge_agent_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     edge_configs: [
    #       {
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         sync_status: "SYNCING" # One of: ["SYNCING", "ACKNOWLEDGED", "IN_SYNC", "SYNC_FAILED", "DELETING", "DELETE_FAILED", "DELETING_ACKNOWLEDGED"],
    #         failed_status_details: "FailedStatusDetails",
    #         edge_config: {
    #           hub_device_arn: "HubDeviceArn", # required
    #           recorder_config: { # required
    #             media_source_config: { # required
    #               media_uri_secret_arn: "MediaUriSecretArn", # required
    #               media_uri_type: "RTSP_URI" # One of: ["RTSP_URI", "FILE_URI"], # required
    #             },
    #             schedule_config: {
    #               schedule_expression: "ScheduleExpression", # required
    #               duration_in_seconds: 1, # required
    #             }
    #           },
    #           uploader_config: {
    #             schedule_config: { # required
    #               schedule_expression: "ScheduleExpression", # required
    #               duration_in_seconds: 1, # required
    #             }
    #           },
    #           deletion_config: {
    #             edge_retention_in_hours: 1,
    #             local_size_config: {
    #               max_local_media_size_in_mb: 1,
    #               strategy_on_full_size: "DELETE_OLDEST_MEDIA" # One of: ["DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"]
    #             },
    #             delete_after_upload: false
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEdgeAgentConfigurationsOutput]
    def list_edge_agent_configurations(params = {}, options = {})
      request = build_request(:list_edge_agent_configurations, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>ChannelInfo</code> objects. Each object describes a
    #             signaling channel. To retrieve only those channels that satisfy a specific condition,
    #             you can specify a <code>ChannelNameCondition</code>.</p>
    # @param [Hash, Types::ListSignalingChannelsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of channels to return in the response. The default is 500.</p>
    # @option params [String] :next_token
    #   <p>If you specify this parameter, when the result of a <code>ListSignalingChannels</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of channels, provide this token in your next request.</p>
    # @option params [Types::ChannelNameCondition] :channel_name_condition
    #   <p>Optional: Returns only the channels that satisfy a specific condition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     channel_name_condition: {
    #       comparison_operator: "BEGINS_WITH" # One of: ["BEGINS_WITH"],
    #       comparison_value: "ChannelName"
    #     }
    #   }
    #   options = {}
    #   response = client.list_signaling_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel_info_list: [
    #       {
    #         channel_name: "ChannelName",
    #         channel_arn: "ResourceARN",
    #         channel_type: "SINGLE_MASTER" # One of: ["SINGLE_MASTER", "FULL_MESH"],
    #         channel_status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"],
    #         creation_time: Time.now,
    #         single_master_configuration: {
    #           message_ttl_seconds: 1
    #         },
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSignalingChannelsOutput]
    def list_signaling_channels(params = {}, options = {})
      request = build_request(:list_signaling_channels, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>StreamInfo</code> objects. Each object describes a
    #             stream. To retrieve only streams that satisfy a specific condition, you can specify a
    #                 <code>StreamNameCondition</code>. </p>
    # @param [Hash, Types::ListStreamsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of streams to return in the response. The default is
    #               10,000.</p>
    # @option params [String] :next_token
    #   <p>If you specify this parameter, when the result of a <code>ListStreams</code>
    #               operation is truncated, the call returns the <code>NextToken</code> in the response. To
    #               get another batch of streams, provide this token in your next request.</p>
    # @option params [Types::StreamNameCondition] :stream_name_condition
    #   <p>Optional: Returns only streams that satisfy a specific condition. Currently, you
    #               can specify only the prefix of a stream name as a condition. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     stream_name_condition: {
    #       comparison_operator: "BEGINS_WITH" # One of: ["BEGINS_WITH"],
    #       comparison_value: "StreamName"
    #     }
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_info_list: [
    #       {
    #         device_name: "DeviceName",
    #         stream_name: "StreamName",
    #         stream_arn: "ResourceARN",
    #         media_type: "MediaType",
    #         kms_key_id: "KmsKeyId",
    #         version: "Version",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING"],
    #         creation_time: Time.now,
    #         data_retention_in_hours: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStreamsOutput]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags associated with the specified signaling channel.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForResource</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags. </p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel for which you want to list
    #               tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     resource_arn: "ResourceARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags associated with the specified stream.</p>
    #          <p>In the request, you must specify either the <code>StreamName</code> or the
    #                 <code>StreamARN</code>. </p>
    # @param [Hash, Types::ListTagsForStreamInput] params
    # @option params [String] :next_token
    #   <p>If you specify this parameter and the result of a <code>ListTagsForStream</code>
    #               call is truncated, the response includes a token that you can use in the next request to
    #               fetch the next batch of tags.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to list tags
    #               for.</p>
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName"
    #   }
    #   options = {}
    #   response = client.list_tags_for_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForStreamOutput]
    def list_tags_for_stream(params = {}, options = {})
      request = build_request(:list_tags_for_stream, params)
      request.send_request(options)
    end

    # <p>An asynchronous API that updates a stream’s existing edge configuration. 
    #             The Kinesis Video Stream will sync the stream’s edge configuration with the Edge Agent IoT Greengrass 
    #             component that runs on an IoT Hub Device, setup at your premise. The time to sync can vary
    #             and depends on the connectivity of the Hub Device. 
    #             The <code>SyncStatus</code> will be updated as the edge configuration is acknowledged, 
    #             and synced with the Edge Agent. </p>
    #          <p>If this API is invoked for the first time, a new edge configuration will be created for the stream,
    #             and the sync status will be set to <code>SYNCING</code>. You will have to wait for the sync status
    #             to reach a terminal state such as: <code>IN_SYNC</code>, or <code>SYNC_FAILED</code>, before using this API again. 
    #             If you invoke this API during the syncing process, a <code>ResourceInUseException</code> will be thrown. 
    #             The connectivity of the stream’s edge configuration and the Edge Agent will be retried for 15 minutes. After 15 minutes,
    #             the status will transition into the <code>SYNC_FAILED</code> state.</p>
    #          <p>To move an edge configuration from one device to another, use <a>DeleteEdgeConfiguration</a> to delete
    #             the current edge configuration. You can then invoke StartEdgeConfigurationUpdate with an updated Hub Device ARN.</p>
    # @param [Hash, Types::StartEdgeConfigurationUpdateInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream whose edge configuration you want to update. Specify either the <code>StreamName</code>
    #               or the <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p> The Amazon Resource Name (ARN) of the stream. Specify either the 
    #               <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [Types::EdgeConfig] :edge_config
    #   <p>The edge configuration details required to invoke the update process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     edge_config: { # required
    #       hub_device_arn: "HubDeviceArn", # required
    #       recorder_config: { # required
    #         media_source_config: { # required
    #           media_uri_secret_arn: "MediaUriSecretArn", # required
    #           media_uri_type: "RTSP_URI" # One of: ["RTSP_URI", "FILE_URI"], # required
    #         },
    #         schedule_config: {
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         }
    #       },
    #       uploader_config: {
    #         schedule_config: { # required
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         }
    #       },
    #       deletion_config: {
    #         edge_retention_in_hours: 1,
    #         local_size_config: {
    #           max_local_media_size_in_mb: 1,
    #           strategy_on_full_size: "DELETE_OLDEST_MEDIA" # One of: ["DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"]
    #         },
    #         delete_after_upload: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_edge_configuration_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     creation_time: Time.now,
    #     last_updated_time: Time.now,
    #     sync_status: "SYNCING" # One of: ["SYNCING", "ACKNOWLEDGED", "IN_SYNC", "SYNC_FAILED", "DELETING", "DELETE_FAILED", "DELETING_ACKNOWLEDGED"],
    #     failed_status_details: "FailedStatusDetails",
    #     edge_config: {
    #       hub_device_arn: "HubDeviceArn", # required
    #       recorder_config: { # required
    #         media_source_config: { # required
    #           media_uri_secret_arn: "MediaUriSecretArn", # required
    #           media_uri_type: "RTSP_URI" # One of: ["RTSP_URI", "FILE_URI"], # required
    #         },
    #         schedule_config: {
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         }
    #       },
    #       uploader_config: {
    #         schedule_config: { # required
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         }
    #       },
    #       deletion_config: {
    #         edge_retention_in_hours: 1,
    #         local_size_config: {
    #           max_local_media_size_in_mb: 1,
    #           strategy_on_full_size: "DELETE_OLDEST_MEDIA" # One of: ["DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"]
    #         },
    #         delete_after_upload: false
    #       }
    #     }
    #   }
    # @return [Types::StartEdgeConfigurationUpdateOutput]
    def start_edge_configuration_update(params = {}, options = {})
      request = build_request(:start_edge_configuration_update, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a signaling channel. A <i>tag</i> is a
    #             key-value pair (the value is optional) that you can define and assign to Amazon Web Services resources.
    #             If you specify a tag that already exists, the tag value is replaced with the value that
    #             you specify in the request. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #                 Tags</a> in the <i>Billing and Cost Management and Cost Management User
    #             Guide</i>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel to which you want to add
    #               tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with the specified signaling channel. Each tag is a
    #               key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a stream. A <i>tag</i> is a key-value pair
    #             (the value is optional) that you can define and assign to Amazon Web Services resources. If you specify
    #             a tag that already exists, the tag value is replaced with the value that you specify in
    #             the request. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation
    #                 Tags</a> in the <i>Billing and Cost Management and Cost Management User Guide</i>. </p>
    #          <p>You must provide either the <code>StreamName</code> or the
    #             <code>StreamARN</code>.</p>
    #          <p>This operation requires permission for the <code>KinesisVideo:TagStream</code>
    #             action.</p>
    #          <p>A Kinesis video stream can support up to 50 tags.</p>
    # @param [Hash, Types::TagStreamInput] params
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags
    #               to.</p>
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to add the tag or tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to associate with the specified stream. Each tag is a key-value pair
    #               (the value is optional).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagStreamOutput]
    def tag_stream(params = {}, options = {})
      request = build_request(:tag_stream, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from a signaling channel. In the request, specify only a tag
    #             key or keys; don't specify the value. If you specify a tag key that does not exist, it's
    #             ignored.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel from which you want to remove
    #               tags.</p>
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN", # required
    #     tag_key_list: ["TagKey"], # required
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

    # <p>Removes one or more tags from a stream. In the request, specify only a tag key or
    #             keys; don't specify the value. If you specify a tag key that does not exist, it's
    #             ignored.</p>
    #          <p>In the request, you must provide the <code>StreamName</code> or
    #                 <code>StreamARN</code>.</p>
    # @param [Hash, Types::UntagStreamInput] params
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream that you want to remove tags
    #               from.</p>
    # @option params [String] :stream_name
    #   <p>The name of the stream that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of the keys of the tags that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #     tag_key_list: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagStreamOutput]
    def untag_stream(params = {}, options = {})
      request = build_request(:untag_stream, params)
      request.send_request(options)
    end

    # <p>Increases or decreases the stream's data retention period by the value that you
    #             specify. To indicate whether you want to increase or decrease the data retention period,
    #             specify the <code>Operation</code> parameter in the request body. In the request, you
    #             must specify either the <code>StreamName</code> or the <code>StreamARN</code>. </p>
    #          <p>This operation requires permission for the
    #                 <code>KinesisVideo:UpdateDataRetention</code> action.</p>
    #          <p>Changing the data retention period affects the data in the stream as
    #             follows:</p>
    #          <ul>
    #             <li>
    #                <p>If the data retention period is increased, existing data is retained for
    #                     the new retention period. For example, if the data retention period is increased
    #                     from one hour to seven hours, all existing data is retained for seven
    #                     hours.</p>
    #             </li>
    #             <li>
    #                <p>If the data retention period is decreased, existing data is retained for
    #                     the new retention period. For example, if the data retention period is decreased
    #                     from seven hours to one hour, all existing data is retained for one hour, and
    #                     any data older than one hour is deleted immediately.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateDataRetentionInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream whose retention period you want to change.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream whose retention period you want to
    #               change.</p>
    # @option params [String] :current_version
    #   <p>The version of the stream whose retention period you want to change. To get the
    #               version, call either the <code>DescribeStream</code> or the <code>ListStreams</code>
    #               API.</p>
    # @option params [String] :operation
    #   <p>Indicates whether you want to increase or decrease the retention period.</p>
    # @option params [Integer] :data_retention_change_in_hours
    #   <p>The number of hours to adjust the current retention by. The value you specify is added to or subtracted from the current value, depending on the <code>operation</code>.</p>
    #            <p>The minimum value for data retention is 0 and the maximum value is 87600 (ten years).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     current_version: "Version", # required
    #     operation: "INCREASE_DATA_RETENTION" # One of: ["INCREASE_DATA_RETENTION", "DECREASE_DATA_RETENTION"], # required
    #     data_retention_change_in_hours: 1, # required
    #   }
    #   options = {}
    #   response = client.update_data_retention(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDataRetentionOutput]
    def update_data_retention(params = {}, options = {})
      request = build_request(:update_data_retention, params)
      request.send_request(options)
    end

    # <p>Updates the <code>StreamInfo</code> and <code>ImageProcessingConfiguration</code> fields.</p>
    # @param [Hash, Types::UpdateImageGenerationConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to update the image generation configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the image generation configuration. You must specify either the <code>StreamName</code> 
    #               or the <code>StreamARN</code>.</p>
    # @option params [Types::ImageGenerationConfiguration] :image_generation_configuration
    #   <p>The structure that contains the information required for the KVS images delivery. If the structure is null, the configuration will be deleted from the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     image_generation_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       image_selector_type: "SERVER_TIMESTAMP" # One of: ["SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP"], # required
    #       destination_config: { # required
    #         uri: "DestinationUri", # required
    #         destination_region: "DestinationRegion", # required
    #       },
    #       sampling_interval: 1, # required
    #       format: "JPEG" # One of: ["JPEG", "PNG"], # required
    #       format_config: {
    #         "FormatConfigKey" => "FormatConfigValue"
    #       },
    #       width_pixels: 1,
    #       height_pixels: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_image_generation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateImageGenerationConfigurationOutput]
    def update_image_generation_configuration(params = {}, options = {})
      request = build_request(:update_image_generation_configuration, params)
      request.send_request(options)
    end

    # <p>Associates a <code>SignalingChannel</code> to a stream to store the media. There are
    #             two signaling modes that you can specify :</p>
    #          <ul>
    #             <li>
    #                <p>If <code>StorageStatus</code> is enabled, the data will be stored in the
    #                         <code>StreamARN</code> provided. In order for WebRTC Ingestion to work, the stream must have data retention
    #                     enabled.</p>
    #             </li>
    #             <li>
    #                <p>If <code>StorageStatus</code> is disabled, no data will be stored, and the
    #                         <code>StreamARN</code> parameter will not be needed. </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>If <code>StorageStatus</code> is enabled, direct peer-to-peer (master-viewer) connections no
    #                 longer occur. Peers connect directly to the storage session. You must call the
    #                     <code>JoinStorageSession</code> API to trigger an SDP offer send and establish a
    #                 connection between a peer and the storage session. </p>
    #          </important>
    # @param [Hash, Types::UpdateMediaStorageConfigurationInput] params
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the channel.</p>
    # @option params [Types::MediaStorageConfiguration] :media_storage_configuration
    #   <p>A structure that encapsulates, or contains, the media storage configuration properties.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ResourceARN", # required
    #     media_storage_configuration: { # required
    #       stream_arn: "ResourceARN",
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_media_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMediaStorageConfigurationOutput]
    def update_media_storage_configuration(params = {}, options = {})
      request = build_request(:update_media_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the notification information for a stream.</p>
    # @param [Hash, Types::UpdateNotificationConfigurationInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream from which to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis video stream from where you want to update the notification configuration. You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
    # @option params [Types::NotificationConfiguration] :notification_configuration
    #   <p>The structure containing the information required for notifications. If the structure is null, the configuration will be deleted from the stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     notification_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       destination_config: { # required
    #         uri: "DestinationUri", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateNotificationConfigurationOutput]
    def update_notification_configuration(params = {}, options = {})
      request = build_request(:update_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the existing signaling channel. This is an asynchronous operation and takes
    #             time to complete. </p>
    #          <p>If the <code>MessageTtlSeconds</code> value is updated (either increased or reduced),
    #             it only applies to new messages sent via this channel after it's been updated. Existing
    #             messages are still expired as per the previous <code>MessageTtlSeconds</code>
    #             value.</p>
    # @param [Hash, Types::UpdateSignalingChannelInput] params
    # @option params [String] :channel_arn
    #   <p>The Amazon Resource Name (ARN) of the signaling channel that you want to
    #               update.</p>
    # @option params [String] :current_version
    #   <p>The current version of the signaling channel that you want to update.</p>
    # @option params [Types::SingleMasterConfiguration] :single_master_configuration
    #   <p>The structure containing the configuration for the <code>SINGLE_MASTER</code> type of
    #               the signaling channel that you want to update. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     channel_arn: "ResourceARN", # required
    #     current_version: "Version", # required
    #     single_master_configuration: {
    #       message_ttl_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_signaling_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSignalingChannelOutput]
    def update_signaling_channel(params = {}, options = {})
      request = build_request(:update_signaling_channel, params)
      request.send_request(options)
    end

    # <p>Updates stream metadata, such as the device name and media type.</p>
    #          <p>You must provide the stream name or the Amazon Resource Name (ARN) of the
    #             stream.</p>
    #          <p>To make sure that you have the latest version of the stream before updating it, you
    #             can specify the stream version. Kinesis Video Streams assigns a version to each stream.
    #             When you update a stream, Kinesis Video Streams assigns a new version number. To get the
    #             latest stream version, use the <code>DescribeStream</code> API. </p>
    #          <p>
    #             <code>UpdateStream</code> is an asynchronous operation, and takes time to
    #             complete.</p>
    # @param [Hash, Types::UpdateStreamInput] params
    # @option params [String] :stream_name
    #   <p>The name of the stream whose metadata you want to update.</p>
    #            <p>The stream name is an identifier for the stream, and must be unique for each
    #               account and region.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN of the stream whose metadata you want to update.</p>
    # @option params [String] :current_version
    #   <p>The version of the stream whose metadata you want to update.</p>
    # @option params [String] :device_name
    #   <p>The name of the device that is writing to the stream. </p>
    #            <note>
    #               <p> In the current implementation, Kinesis Video Streams does not use this name.
    #               </p>
    #            </note>
    # @option params [String] :media_type
    #   <p>The stream's media type. Use <code>MediaType</code> to specify the type of content
    #               that the stream contains to the consumers of the stream. For more information about
    #               media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media
    #                   Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming
    #               Requirements</a>.</p>
    #            <p>To play video on the console, you must specify the correct video type. For example,
    #               if the video in the stream is H.264, specify <code>video/h264</code> as the
    #                   <code>MediaType</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     current_version: "Version", # required
    #     device_name: "DeviceName",
    #     media_type: "MediaType"
    #   }
    #   options = {}
    #   response = client.update_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateStreamOutput]
    def update_stream(params = {}, options = {})
      request = build_request(:update_stream, params)
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
      context[:gem_name] = 'aws-sdk-kinesisvideo'
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

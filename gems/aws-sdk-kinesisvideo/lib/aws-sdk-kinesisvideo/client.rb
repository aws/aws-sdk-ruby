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

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideo)

module Aws::KinesisVideo
  # An API client for KinesisVideo.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KinesisVideo::Client.new(
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

    @identifier = :kinesisvideo

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

    # Creates a signaling channel.
    #
    # `CreateSignalingChannel` is an asynchronous operation.
    #
    # @option params [required, String] :channel_name
    #   A name for the signaling channel that you are creating. It must be
    #   unique for each AWS account and AWS Region.
    #
    # @option params [String] :channel_type
    #   A type of the signaling channel that you are creating. Currently,
    #   `SINGLE_MASTER` is the only supported channel type.
    #
    # @option params [Types::SingleMasterConfiguration] :single_master_configuration
    #   A structure containing the configuration for the `SINGLE_MASTER`
    #   channel type.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags (key-value pairs) that you want to associate with this
    #   channel.
    #
    # @return [Types::CreateSignalingChannelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSignalingChannelOutput#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_signaling_channel({
    #     channel_name: "ChannelName", # required
    #     channel_type: "SINGLE_MASTER", # accepts SINGLE_MASTER
    #     single_master_configuration: {
    #       message_ttl_seconds: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateSignalingChannel AWS API Documentation
    #
    # @overload create_signaling_channel(params = {})
    # @param [Hash] params ({})
    def create_signaling_channel(params = {}, options = {})
      req = build_request(:create_signaling_channel, params)
      req.send_request(options)
    end

    # Creates a new Kinesis video stream.
    #
    # When you create a new stream, Kinesis Video Streams assigns it a
    # version number. When you change the stream's metadata, Kinesis Video
    # Streams updates the version.
    #
    # `CreateStream` is an asynchronous operation.
    #
    # For information about how the service works, see [How it Works][1].
    #
    # You must have permissions for the `KinesisVideo:CreateStream` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html
    #
    # @option params [String] :device_name
    #   The name of the device that is writing to the stream.
    #
    #   <note markdown="1"> In the current implementation, Kinesis Video Streams does not use this
    #   name.
    #
    #    </note>
    #
    # @option params [required, String] :stream_name
    #   A name for the stream that you are creating.
    #
    #   The stream name is an identifier for the stream, and must be unique
    #   for each account and region.
    #
    # @option params [String] :media_type
    #   The media type of the stream. Consumers of the stream can use this
    #   information when processing the stream. For more information about
    #   media types, see [Media Types][1]. If you choose to specify the
    #   `MediaType`, see [Naming Requirements][2] for guidelines.
    #
    #   Example valid values include "video/h264" and
    #   "video/h264,audio/aac".
    #
    #   This parameter is optional; the default value is `null` (or empty in
    #   JSON).
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/media-types/media-types.xhtml
    #   [2]: https://tools.ietf.org/html/rfc6838#section-4.2
    #
    # @option params [String] :kms_key_id
    #   The ID of the AWS Key Management Service (AWS KMS) key that you want
    #   Kinesis Video Streams to use to encrypt stream data.
    #
    #   If no key ID is specified, the default, Kinesis Video-managed key
    #   (`aws/kinesisvideo`) is used.
    #
    #   For more information, see [DescribeKey][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #
    # @option params [Integer] :data_retention_in_hours
    #   The number of hours that you want to retain the data in the stream.
    #   Kinesis Video Streams retains the data in a data store that is
    #   associated with the stream.
    #
    #   The default value is 0, indicating that the stream does not persist
    #   data.
    #
    #   When the `DataRetentionInHours` value is 0, consumers can still
    #   consume the fragments that remain in the service host buffer, which
    #   has a retention time limit of 5 minutes and a retention memory limit
    #   of 200 MB. Fragments are removed from the buffer when either limit is
    #   reached.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to associate with the specified stream. Each tag is a
    #   key-value pair (the value is optional).
    #
    # @return [Types::CreateStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamOutput#stream_arn #stream_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream({
    #     device_name: "DeviceName",
    #     stream_name: "StreamName", # required
    #     media_type: "MediaType",
    #     kms_key_id: "KmsKeyId",
    #     data_retention_in_hours: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateStream AWS API Documentation
    #
    # @overload create_stream(params = {})
    # @param [Hash] params ({})
    def create_stream(params = {}, options = {})
      req = build_request(:create_stream, params)
      req.send_request(options)
    end

    # Deletes a specified signaling channel. `DeleteSignalingChannel` is an
    # asynchronous operation. If you don't specify the channel's current
    # version, the most recent version is deleted.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel that you want
    #   to delete.
    #
    # @option params [String] :current_version
    #   The current version of the signaling channel that you want to delete.
    #   You can obtain the current version by invoking the
    #   `DescribeSignalingChannel` or `ListSignalingChannels` API operations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_signaling_channel({
    #     channel_arn: "ResourceARN", # required
    #     current_version: "Version",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteSignalingChannel AWS API Documentation
    #
    # @overload delete_signaling_channel(params = {})
    # @param [Hash] params ({})
    def delete_signaling_channel(params = {}, options = {})
      req = build_request(:delete_signaling_channel, params)
      req.send_request(options)
    end

    # Deletes a Kinesis video stream and the data contained in the stream.
    #
    # This method marks the stream for deletion, and makes the data in the
    # stream inaccessible immediately.
    #
    #
    #
    # To ensure that you have the latest version of the stream before
    # deleting it, you can specify the stream version. Kinesis Video Streams
    # assigns a version to each stream. When you update a stream, Kinesis
    # Video Streams assigns a new version number. To get the latest stream
    # version, use the `DescribeStream` API.
    #
    # This operation requires permission for the `KinesisVideo:DeleteStream`
    # action.
    #
    # @option params [required, String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to delete.
    #
    # @option params [String] :current_version
    #   Optional: The version of the stream that you want to delete.
    #
    #   Specify the version as a safeguard to ensure that your are deleting
    #   the correct stream. To get the stream version, use the
    #   `DescribeStream` API.
    #
    #   If not specified, only the `CreationTime` is checked before deleting
    #   the stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream({
    #     stream_arn: "ResourceARN", # required
    #     current_version: "Version",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteStream AWS API Documentation
    #
    # @overload delete_stream(params = {})
    # @param [Hash] params ({})
    def delete_stream(params = {}, options = {})
      req = build_request(:delete_stream, params)
      req.send_request(options)
    end

    # Returns the most current information about the signaling channel. You
    # must specify either the name or the Amazon Resource Name (ARN) of the
    # channel that you want to describe.
    #
    # @option params [String] :channel_name
    #   The name of the signaling channel that you want to describe.
    #
    # @option params [String] :channel_arn
    #   The ARN of the signaling channel that you want to describe.
    #
    # @return [Types::DescribeSignalingChannelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSignalingChannelOutput#channel_info #channel_info} => Types::ChannelInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_signaling_channel({
    #     channel_name: "ChannelName",
    #     channel_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_info.channel_name #=> String
    #   resp.channel_info.channel_arn #=> String
    #   resp.channel_info.channel_type #=> String, one of "SINGLE_MASTER"
    #   resp.channel_info.channel_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.channel_info.creation_time #=> Time
    #   resp.channel_info.single_master_configuration.message_ttl_seconds #=> Integer
    #   resp.channel_info.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeSignalingChannel AWS API Documentation
    #
    # @overload describe_signaling_channel(params = {})
    # @param [Hash] params ({})
    def describe_signaling_channel(params = {}, options = {})
      req = build_request(:describe_signaling_channel, params)
      req.send_request(options)
    end

    # Returns the most current information about the specified stream. You
    # must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_name
    #   The name of the stream.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #
    # @return [Types::DescribeStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamOutput#stream_info #stream_info} => Types::StreamInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_info.device_name #=> String
    #   resp.stream_info.stream_name #=> String
    #   resp.stream_info.stream_arn #=> String
    #   resp.stream_info.media_type #=> String
    #   resp.stream_info.kms_key_id #=> String
    #   resp.stream_info.version #=> String
    #   resp.stream_info.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.stream_info.creation_time #=> Time
    #   resp.stream_info.data_retention_in_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeStream AWS API Documentation
    #
    # @overload describe_stream(params = {})
    # @param [Hash] params ({})
    def describe_stream(params = {}, options = {})
      req = build_request(:describe_stream, params)
      req.send_request(options)
    end

    # Gets an endpoint for a specified stream for either reading or writing.
    # Use this endpoint in your application to read from the specified
    # stream (using the `GetMedia` or `GetMediaForFragmentList` operations)
    # or write to it (using the `PutMedia` operation).
    #
    # <note markdown="1"> The returned endpoint does not have the API name appended. The client
    # needs to add the API name to the returned endpoint.
    #
    #  </note>
    #
    # In the request, specify the stream either by `StreamName` or
    # `StreamARN`.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to get the endpoint for. You must
    #   specify either this parameter or a `StreamARN` in the request.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to get the
    #   endpoint for. You must specify either this parameter or a `StreamName`
    #   in the request.
    #
    # @option params [required, String] :api_name
    #   The name of the API action for which to get an endpoint.
    #
    # @return [Types::GetDataEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataEndpointOutput#data_endpoint #data_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_endpoint({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     api_name: "PUT_MEDIA", # required, accepts PUT_MEDIA, GET_MEDIA, LIST_FRAGMENTS, GET_MEDIA_FOR_FRAGMENT_LIST, GET_HLS_STREAMING_SESSION_URL, GET_DASH_STREAMING_SESSION_URL, GET_CLIP
    #   })
    #
    # @example Response structure
    #
    #   resp.data_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetDataEndpoint AWS API Documentation
    #
    # @overload get_data_endpoint(params = {})
    # @param [Hash] params ({})
    def get_data_endpoint(params = {}, options = {})
      req = build_request(:get_data_endpoint, params)
      req.send_request(options)
    end

    # Provides an endpoint for the specified signaling channel to send and
    # receive messages. This API uses the
    # `SingleMasterChannelEndpointConfiguration` input parameter, which
    # consists of the `Protocols` and `Role` properties.
    #
    # `Protocols` is used to determine the communication mechanism. For
    # example, if you specify `WSS` as the protocol, this API produces a
    # secure websocket endpoint. If you specify `HTTPS` as the protocol,
    # this API generates an HTTPS endpoint.
    #
    # `Role` determines the messaging permissions. A `MASTER` role results
    # in this API generating an endpoint that a client can use to
    # communicate with any of the viewers on the channel. A `VIEWER` role
    # results in this API generating an endpoint that a client can use to
    # communicate only with a `MASTER`.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the signalling channel for which you
    #   want to get an endpoint.
    #
    # @option params [Types::SingleMasterChannelEndpointConfiguration] :single_master_channel_endpoint_configuration
    #   A structure containing the endpoint configuration for the
    #   `SINGLE_MASTER` channel type.
    #
    # @return [Types::GetSignalingChannelEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSignalingChannelEndpointOutput#resource_endpoint_list #resource_endpoint_list} => Array&lt;Types::ResourceEndpointListItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signaling_channel_endpoint({
    #     channel_arn: "ResourceARN", # required
    #     single_master_channel_endpoint_configuration: {
    #       protocols: ["WSS"], # accepts WSS, HTTPS
    #       role: "MASTER", # accepts MASTER, VIEWER
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_endpoint_list #=> Array
    #   resp.resource_endpoint_list[0].protocol #=> String, one of "WSS", "HTTPS"
    #   resp.resource_endpoint_list[0].resource_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetSignalingChannelEndpoint AWS API Documentation
    #
    # @overload get_signaling_channel_endpoint(params = {})
    # @param [Hash] params ({})
    def get_signaling_channel_endpoint(params = {}, options = {})
      req = build_request(:get_signaling_channel_endpoint, params)
      req.send_request(options)
    end

    # Returns an array of `ChannelInfo` objects. Each object describes a
    # signaling channel. To retrieve only those channels that satisfy a
    # specific condition, you can specify a `ChannelNameCondition`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels to return in the response. The default
    #   is 500.
    #
    # @option params [String] :next_token
    #   If you specify this parameter, when the result of a
    #   `ListSignalingChannels` operation is truncated, the call returns the
    #   `NextToken` in the response. To get another batch of channels, provide
    #   this token in your next request.
    #
    # @option params [Types::ChannelNameCondition] :channel_name_condition
    #   Optional: Returns only the channels that satisfy a specific condition.
    #
    # @return [Types::ListSignalingChannelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSignalingChannelsOutput#channel_info_list #channel_info_list} => Array&lt;Types::ChannelInfo&gt;
    #   * {Types::ListSignalingChannelsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signaling_channels({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     channel_name_condition: {
    #       comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #       comparison_value: "ChannelName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_info_list #=> Array
    #   resp.channel_info_list[0].channel_name #=> String
    #   resp.channel_info_list[0].channel_arn #=> String
    #   resp.channel_info_list[0].channel_type #=> String, one of "SINGLE_MASTER"
    #   resp.channel_info_list[0].channel_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.channel_info_list[0].creation_time #=> Time
    #   resp.channel_info_list[0].single_master_configuration.message_ttl_seconds #=> Integer
    #   resp.channel_info_list[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListSignalingChannels AWS API Documentation
    #
    # @overload list_signaling_channels(params = {})
    # @param [Hash] params ({})
    def list_signaling_channels(params = {}, options = {})
      req = build_request(:list_signaling_channels, params)
      req.send_request(options)
    end

    # Returns an array of `StreamInfo` objects. Each object describes a
    # stream. To retrieve only streams that satisfy a specific condition,
    # you can specify a `StreamNameCondition`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of streams to return in the response. The default
    #   is 10,000.
    #
    # @option params [String] :next_token
    #   If you specify this parameter, when the result of a `ListStreams`
    #   operation is truncated, the call returns the `NextToken` in the
    #   response. To get another batch of streams, provide this token in your
    #   next request.
    #
    # @option params [Types::StreamNameCondition] :stream_name_condition
    #   Optional: Returns only streams that satisfy a specific condition.
    #   Currently, you can specify only the prefix of a stream name as a
    #   condition.
    #
    # @return [Types::ListStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsOutput#stream_info_list #stream_info_list} => Array&lt;Types::StreamInfo&gt;
    #   * {Types::ListStreamsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     stream_name_condition: {
    #       comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #       comparison_value: "StreamName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_info_list #=> Array
    #   resp.stream_info_list[0].device_name #=> String
    #   resp.stream_info_list[0].stream_name #=> String
    #   resp.stream_info_list[0].stream_arn #=> String
    #   resp.stream_info_list[0].media_type #=> String
    #   resp.stream_info_list[0].kms_key_id #=> String
    #   resp.stream_info_list[0].version #=> String
    #   resp.stream_info_list[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.stream_info_list[0].creation_time #=> Time
    #   resp.stream_info_list[0].data_retention_in_hours #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListStreams AWS API Documentation
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with the specified signaling
    # channel.
    #
    # @option params [String] :next_token
    #   If you specify this parameter and the result of a
    #   `ListTagsForResource` call is truncated, the response includes a token
    #   that you can use in the next request to fetch the next batch of tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel for which you
    #   want to list tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     next_token: "NextToken",
    #     resource_arn: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with the specified stream.
    #
    # In the request, you must specify either the `StreamName` or the
    # `StreamARN`.
    #
    # @option params [String] :next_token
    #   If you specify this parameter and the result of a `ListTagsForStream`
    #   call is truncated, the response includes a token that you can use in
    #   the next request to fetch the next batch of tags.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to list
    #   tags for.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to list tags for.
    #
    # @return [Types::ListTagsForStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForStreamOutput#next_token #next_token} => String
    #   * {Types::ListTagsForStreamOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_stream({
    #     next_token: "NextToken",
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForStream AWS API Documentation
    #
    # @overload list_tags_for_stream(params = {})
    # @param [Hash] params ({})
    def list_tags_for_stream(params = {}, options = {})
      req = build_request(:list_tags_for_stream, params)
      req.send_request(options)
    end

    # Adds one or more tags to a signaling channel. A *tag* is a key-value
    # pair (the value is optional) that you can define and assign to AWS
    # resources. If you specify a tag that already exists, the tag value is
    # replaced with the value that you specify in the request. For more
    # information, see [Using Cost Allocation Tags][1] in the *AWS Billing
    # and Cost Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel to which you
    #   want to add tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to associate with the specified signaling channel. Each
    #   tag is a key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Adds one or more tags to a stream. A *tag* is a key-value pair (the
    # value is optional) that you can define and assign to AWS resources. If
    # you specify a tag that already exists, the tag value is replaced with
    # the value that you specify in the request. For more information, see
    # [Using Cost Allocation Tags][1] in the *AWS Billing and Cost
    # Management User Guide*.
    #
    # You must provide either the `StreamName` or the `StreamARN`.
    #
    # This operation requires permission for the `KinesisVideo:TagStream`
    # action.
    #
    # Kinesis video streams support up to 50 tags.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   the tag or tags to.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to add the tag or tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to associate with the specified stream. Each tag is a
    #   key-value pair (the value is optional).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_stream({
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagStream AWS API Documentation
    #
    # @overload tag_stream(params = {})
    # @param [Hash] params ({})
    def tag_stream(params = {}, options = {})
      req = build_request(:tag_stream, params)
      req.send_request(options)
    end

    # Removes one or more tags from a signaling channel. In the request,
    # specify only a tag key or keys; don't specify the value. If you
    # specify a tag key that does not exist, it's ignored.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel from which you
    #   want to remove tags.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of the keys of the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_key_list: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a stream. In the request, specify only a
    # tag key or keys; don't specify the value. If you specify a tag key
    # that does not exist, it's ignored.
    #
    # In the request, you must provide the `StreamName` or `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to remove
    #   tags from.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to remove tags from.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of the keys of the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_stream({
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #     tag_key_list: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagStream AWS API Documentation
    #
    # @overload untag_stream(params = {})
    # @param [Hash] params ({})
    def untag_stream(params = {}, options = {})
      req = build_request(:untag_stream, params)
      req.send_request(options)
    end

    # Increases or decreases the stream's data retention period by the
    # value that you specify. To indicate whether you want to increase or
    # decrease the data retention period, specify the `Operation` parameter
    # in the request body. In the request, you must specify either the
    # `StreamName` or the `StreamARN`.
    #
    # <note markdown="1"> The retention period that you specify replaces the current value.
    #
    #  </note>
    #
    # This operation requires permission for the
    # `KinesisVideo:UpdateDataRetention` action.
    #
    # Changing the data retention period affects the data in the stream as
    # follows:
    #
    # * If the data retention period is increased, existing data is retained
    #   for the new retention period. For example, if the data retention
    #   period is increased from one hour to seven hours, all existing data
    #   is retained for seven hours.
    #
    # * If the data retention period is decreased, existing data is retained
    #   for the new retention period. For example, if the data retention
    #   period is decreased from seven hours to one hour, all existing data
    #   is retained for one hour, and any data older than one hour is
    #   deleted immediately.
    #
    # @option params [String] :stream_name
    #   The name of the stream whose retention period you want to change.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream whose retention period
    #   you want to change.
    #
    # @option params [required, String] :current_version
    #   The version of the stream whose retention period you want to change.
    #   To get the version, call either the `DescribeStream` or the
    #   `ListStreams` API.
    #
    # @option params [required, String] :operation
    #   Indicates whether you want to increase or decrease the retention
    #   period.
    #
    # @option params [required, Integer] :data_retention_change_in_hours
    #   The retention period, in hours. The value you specify replaces the
    #   current value. The maximum value for this parameter is 87600 (ten
    #   years).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_retention({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     current_version: "Version", # required
    #     operation: "INCREASE_DATA_RETENTION", # required, accepts INCREASE_DATA_RETENTION, DECREASE_DATA_RETENTION
    #     data_retention_change_in_hours: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateDataRetention AWS API Documentation
    #
    # @overload update_data_retention(params = {})
    # @param [Hash] params ({})
    def update_data_retention(params = {}, options = {})
      req = build_request(:update_data_retention, params)
      req.send_request(options)
    end

    # Updates the existing signaling channel. This is an asynchronous
    # operation and takes time to complete.
    #
    # If the `MessageTtlSeconds` value is updated (either increased or
    # reduced), it only applies to new messages sent via this channel after
    # it's been updated. Existing messages are still expired as per the
    # previous `MessageTtlSeconds` value.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel that you want
    #   to update.
    #
    # @option params [required, String] :current_version
    #   The current version of the signaling channel that you want to update.
    #
    # @option params [Types::SingleMasterConfiguration] :single_master_configuration
    #   The structure containing the configuration for the `SINGLE_MASTER`
    #   type of the signaling channel that you want to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_signaling_channel({
    #     channel_arn: "ResourceARN", # required
    #     current_version: "Version", # required
    #     single_master_configuration: {
    #       message_ttl_seconds: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateSignalingChannel AWS API Documentation
    #
    # @overload update_signaling_channel(params = {})
    # @param [Hash] params ({})
    def update_signaling_channel(params = {}, options = {})
      req = build_request(:update_signaling_channel, params)
      req.send_request(options)
    end

    # Updates stream metadata, such as the device name and media type.
    #
    # You must provide the stream name or the Amazon Resource Name (ARN) of
    # the stream.
    #
    # To make sure that you have the latest version of the stream before
    # updating it, you can specify the stream version. Kinesis Video Streams
    # assigns a version to each stream. When you update a stream, Kinesis
    # Video Streams assigns a new version number. To get the latest stream
    # version, use the `DescribeStream` API.
    #
    # `UpdateStream` is an asynchronous operation, and takes time to
    # complete.
    #
    # @option params [String] :stream_name
    #   The name of the stream whose metadata you want to update.
    #
    #   The stream name is an identifier for the stream, and must be unique
    #   for each account and region.
    #
    # @option params [String] :stream_arn
    #   The ARN of the stream whose metadata you want to update.
    #
    # @option params [required, String] :current_version
    #   The version of the stream whose metadata you want to update.
    #
    # @option params [String] :device_name
    #   The name of the device that is writing to the stream.
    #
    #   <note markdown="1"> In the current implementation, Kinesis Video Streams does not use this
    #   name.
    #
    #    </note>
    #
    # @option params [String] :media_type
    #   The stream's media type. Use `MediaType` to specify the type of
    #   content that the stream contains to the consumers of the stream. For
    #   more information about media types, see [Media Types][1]. If you
    #   choose to specify the `MediaType`, see [Naming Requirements][2].
    #
    #   To play video on the console, you must specify the correct video type.
    #   For example, if the video in the stream is H.264, specify `video/h264`
    #   as the `MediaType`.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/media-types/media-types.xhtml
    #   [2]: https://tools.ietf.org/html/rfc6838#section-4.2
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     current_version: "Version", # required
    #     device_name: "DeviceName",
    #     media_type: "MediaType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateStream AWS API Documentation
    #
    # @overload update_stream(params = {})
    # @param [Hash] params ({})
    def update_stream(params = {}, options = {})
      req = build_request(:update_stream, params)
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
      context[:gem_name] = 'aws-sdk-kinesisvideo'
      context[:gem_version] = '1.30.0'
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

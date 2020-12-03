# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

if RUBY_VERSION >= '2.1'
  begin
    require 'http/2'
  rescue LoadError; end
end
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
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesis)

module Aws::Kinesis
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :kinesis

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
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Plugins::EventStreamConfiguration)

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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # This operation establishes an HTTP/2 connection between the consumer
    # you specify in the `ConsumerARN` parameter and the shard you specify
    # in the `ShardId` parameter. After the connection is successfully
    # established, Kinesis Data Streams pushes records from the shard to the
    # consumer over this connection. Before you call this operation, call
    # RegisterStreamConsumer to register the consumer with Kinesis Data
    # Streams.
    #
    # When the `SubscribeToShard` call succeeds, your consumer starts
    # receiving events of type SubscribeToShardEvent over the HTTP/2
    # connection for up to 5 minutes, after which time you need to call
    # `SubscribeToShard` again to renew the subscription if you want to
    # continue to receive records.
    #
    # You can make one call to `SubscribeToShard` per second per registered
    # consumer per shard. For example, if you have a 4000 shard stream and
    # two registered stream consumers, you can make one `SubscribeToShard`
    # request per second for each combination of shard and registered
    # consumer, allowing you to subscribe both consumers to all 4000 shards
    # in one second.
    #
    # If you call `SubscribeToShard` again with the same `ConsumerARN` and
    # `ShardId` within 5 seconds of a successful call, you'll get a
    # `ResourceInUseException`. If you call `SubscribeToShard` 5 seconds or
    # more after a successful call, the first connection will expire and the
    # second call will take over the subscription.
    #
    # For an example of how to use this operations, see [Enhanced Fan-Out
    # Using the Kinesis Data Streams
    # API](/streams/latest/dev/building-enhanced-consumers-api.html).
    #
    # @option params [required, String] :consumer_arn
    #   For this parameter, use the value you obtained when you called
    #   RegisterStreamConsumer.
    #
    # @option params [required, String] :shard_id
    #   The ID of the shard you want to subscribe to. To see a list of all the
    #   shards for a given stream, use ListShards.
    #
    # @option params [required, Types::StartingPosition] :starting_position
    #
    # @return [Types::SubscribeToShardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubscribeToShardOutput#event_stream #event_stream} => Types::SubscribeToShardEventStream
    #
    # @example EventStream Operation Example
    #
    #   You can process event once it arrives immediately, or wait until
    #   full response complete and iterate through eventstream enumerator.
    #
    #   To interact with event immediately, you need to register #subscribe_to_shard
    #   with callbacks, callbacks can be register for specifc events or for all events,
    #   callback for errors in the event stream is also available for register.
    #
    #   Callbacks can be passed in by `:event_stream_handler` option or within block
    #   statement attached to #subscribe_to_shard call directly. Hybrid pattern of both
    #   is also supported.
    #
    #   `:event_stream_handler` option takes in either Proc object or
    #   Aws::Kinesis::EventStreams::SubscribeToShardEventStream object.
    #
    #   Usage pattern a): callbacks with a block attached to #subscribe_to_shard
    #     Example for registering callbacks for all event types and error event
    #
    #     client.subscribe_to_shard( # params input# ) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #
    #       stream.on_event do |event|
    #         # process all events arrive
    #         puts event.event_type
    #         ...
    #       end
    #
    #     end
    #
    #   Usage pattern b): pass in `:event_stream_handler` for #subscribe_to_shard
    #
    #     1) create a Aws::Kinesis::EventStreams::SubscribeToShardEventStream object
    #     Example for registering callbacks with specific events
    #
    #       handler = Aws::Kinesis::EventStreams::SubscribeToShardEventStream.new
    #       handler.on_subscribe_to_shard_event_event do |event|
    #         event # => Aws::Kinesis::Types::SubscribeToShardEvent
    #       end
    #       handler.on_resource_not_found_exception_event do |event|
    #         event # => Aws::Kinesis::Types::ResourceNotFoundException
    #       end
    #       handler.on_resource_in_use_exception_event do |event|
    #         event # => Aws::Kinesis::Types::ResourceInUseException
    #       end
    #       handler.on_kms_disabled_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSDisabledException
    #       end
    #       handler.on_kms_invalid_state_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSInvalidStateException
    #       end
    #       handler.on_kms_access_denied_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSAccessDeniedException
    #       end
    #       handler.on_kms_not_found_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSNotFoundException
    #       end
    #       handler.on_kms_opt_in_required_event do |event|
    #         event # => Aws::Kinesis::Types::KMSOptInRequired
    #       end
    #       handler.on_kms_throttling_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSThrottlingException
    #       end
    #       handler.on_internal_failure_exception_event do |event|
    #         event # => Aws::Kinesis::Types::InternalFailureException
    #       end
    #
    #     client.subscribe_to_shard( # params input #, event_stream_handler: handler)
    #
    #     2) use a Ruby Proc object
    #     Example for registering callbacks with specific events
    #
    #     handler = Proc.new do |stream|
    #       stream.on_subscribe_to_shard_event_event do |event|
    #         event # => Aws::Kinesis::Types::SubscribeToShardEvent
    #       end
    #       stream.on_resource_not_found_exception_event do |event|
    #         event # => Aws::Kinesis::Types::ResourceNotFoundException
    #       end
    #       stream.on_resource_in_use_exception_event do |event|
    #         event # => Aws::Kinesis::Types::ResourceInUseException
    #       end
    #       stream.on_kms_disabled_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSDisabledException
    #       end
    #       stream.on_kms_invalid_state_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSInvalidStateException
    #       end
    #       stream.on_kms_access_denied_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSAccessDeniedException
    #       end
    #       stream.on_kms_not_found_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSNotFoundException
    #       end
    #       stream.on_kms_opt_in_required_event do |event|
    #         event # => Aws::Kinesis::Types::KMSOptInRequired
    #       end
    #       stream.on_kms_throttling_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSThrottlingException
    #       end
    #       stream.on_internal_failure_exception_event do |event|
    #         event # => Aws::Kinesis::Types::InternalFailureException
    #       end
    #     end
    #
    #     client.subscribe_to_shard( # params input #, event_stream_handler: handler)
    #
    #   Usage pattern c): hybird pattern of a) and b)
    #
    #       handler = Aws::Kinesis::EventStreams::SubscribeToShardEventStream.new
    #       handler.on_subscribe_to_shard_event_event do |event|
    #         event # => Aws::Kinesis::Types::SubscribeToShardEvent
    #       end
    #       handler.on_resource_not_found_exception_event do |event|
    #         event # => Aws::Kinesis::Types::ResourceNotFoundException
    #       end
    #       handler.on_resource_in_use_exception_event do |event|
    #         event # => Aws::Kinesis::Types::ResourceInUseException
    #       end
    #       handler.on_kms_disabled_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSDisabledException
    #       end
    #       handler.on_kms_invalid_state_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSInvalidStateException
    #       end
    #       handler.on_kms_access_denied_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSAccessDeniedException
    #       end
    #       handler.on_kms_not_found_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSNotFoundException
    #       end
    #       handler.on_kms_opt_in_required_event do |event|
    #         event # => Aws::Kinesis::Types::KMSOptInRequired
    #       end
    #       handler.on_kms_throttling_exception_event do |event|
    #         event # => Aws::Kinesis::Types::KMSThrottlingException
    #       end
    #       handler.on_internal_failure_exception_event do |event|
    #         event # => Aws::Kinesis::Types::InternalFailureException
    #       end
    #
    #     client.subscribe_to_shard( # params input #, event_stream_handler: handler) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #     end
    #
    #   Besides above usage patterns for process events when they arrive immediately, you can also
    #   iterate through events after response complete.
    #
    #   Events are available at resp.event_stream # => Enumerator
    #   For parameter input example, please refer to following request syntax
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.subscribe_to_shard({
    #     consumer_arn: "ConsumerARN", # required
    #     shard_id: "ShardId", # required
    #     starting_position: { # required
    #       type: "AT_SEQUENCE_NUMBER", # required, accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #       sequence_number: "SequenceNumber",
    #       timestamp: Time.now,
    #     },
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   All events are available at resp.event_stream:
    #   resp.event_stream #=> Enumerator
    #   resp.event_stream.event_types #=> [:subscribe_to_shard_event, :resource_not_found_exception, :resource_in_use_exception, :kms_disabled_exception, :kms_invalid_state_exception, :kms_access_denied_exception, :kms_not_found_exception, :kms_opt_in_required, :kms_throttling_exception, :internal_failure_exception]
    #
    #   For :subscribe_to_shard_event event available at #on_subscribe_to_shard_event_event callback and response eventstream enumerator:
    #   event.records #=> Array
    #   event.records[0].sequence_number #=> String
    #   event.records[0].approximate_arrival_timestamp #=> Time
    #   event.records[0].data #=> String
    #   event.records[0].partition_key #=> String
    #   event.records[0].encryption_type #=> String, one of "NONE", "KMS"
    #   event.continuation_sequence_number #=> String
    #   event.millis_behind_latest #=> Integer
    #   event.child_shards #=> Array
    #   event.child_shards[0].shard_id #=> String
    #   event.child_shards[0].parent_shards #=> Array
    #   event.child_shards[0].parent_shards[0] #=> String
    #   event.child_shards[0].hash_key_range.starting_hash_key #=> String
    #   event.child_shards[0].hash_key_range.ending_hash_key #=> String
    #
    #   For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :resource_in_use_exception event available at #on_resource_in_use_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :kms_disabled_exception event available at #on_kms_disabled_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :kms_invalid_state_exception event available at #on_kms_invalid_state_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :kms_access_denied_exception event available at #on_kms_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :kms_not_found_exception event available at #on_kms_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :kms_opt_in_required event available at #on_kms_opt_in_required_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :kms_throttling_exception event available at #on_kms_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SubscribeToShard AWS API Documentation
    #
    # @overload subscribe_to_shard(params = {})
    # @param [Hash] params ({})
    def subscribe_to_shard(params = {}, options = {})
      params = params.dup
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::SubscribeToShardEventStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:subscribe_to_shard, params)

      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

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
        http_response: Seahorse::Client::Http::AsyncResponse.new,
        config: config)
      context[:gem_name] = 'aws-sdk-kinesis'
      context[:gem_version] = '1.30.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    private

    def _event_stream_handler(type, handler, event_stream_class)
      case handler
      when event_stream_class then handler
      when Proc then event_stream_class.new.tap(&handler)
      when nil then event_stream_class.new
      else
        msg = "expected #{type}_event_stream_handler to be a block or "\
              "instance of Aws::Kinesis::#{event_stream_class}"\
              ", got `#{handler.inspect}` instead"
        raise ArgumentError, msg
      end
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

# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

begin
  require 'http/2'
rescue LoadError; end
require 'seahorse/client/plugins/endpoint.rb'
require 'seahorse/client/plugins/response_target.rb'
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
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'seahorse/client/plugins/h2.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:qbusiness)

module Aws::QBusiness
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :qbusiness

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::Endpoint)
    add_plugin(Seahorse::Client::Plugins::ResponseTarget)
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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Seahorse::Client::Plugins::H2)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::QBusiness::Plugins::Endpoints)

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
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #   @option options [Integer] :connection_read_timeout (60)
    #     Connection read timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Integer] :connection_timeout (60)
    #     Connection timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [Boolean] :enable_alpn (false)
    #     Set to `true` to enable ALPN in HTTP2 over TLS. Requires Openssl version >= 1.0.2.
    #     Defaults to false. Note: not all service HTTP2 operations supports ALPN on server
    #     side, please refer to service documentation.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`, HTTP2 debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :max_concurrent_streams (100)
    #     Maximum concurrent streams used in HTTP2 connection, defaults to 100. Note that server may send back
    #     :settings_max_concurrent_streams value which will take priority when initializing new streams.
    #
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     Defaults to `true`, raises errors if exist when #wait or #join! is called upon async response.
    #
    #   @option options [Integer] :read_chunk_size (1024)
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates. If you do not pass `:ssl_ca_directory` or `:ssl_ca_bundle`
    #     the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate authority
    #     files for verifying peer certificates. If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::QBusiness::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::QBusiness::EndpointParameters`
    #
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # @option params [required, String] :application_id
    #
    # @option params [String] :client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :conversation_id
    #
    # @option params [String] :parent_message_id
    #
    # @option params [Array<String>] :user_groups
    #
    # @option params [String] :user_id
    #
    # @return [Types::ChatOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ChatOutput#output_stream #output_stream} => Types::ChatOutputStream
    #
    # @example Bi-directional EventStream Operation Example
    #
    #   You can signal input events after initial request is
    #   established, events will be sent to stream
    #   immediately (once stream connection is established successfully).
    #
    #   To signal events, you can call #signal methods from an Aws::QBusiness::EventStreams::ChatInputStream object.
    #   Make sure signal events before calling #wait or #join! at async response.
    #
    #     input_stream = Aws::QBusiness::EventStreams::ChatInputStream.new
    #
    #     async_resp = client.chat( # params input,
    #       input_event_stream_handler: input_stream) do |out_stream|
    #
    #       # register callbacks for events arrival
    #       out_stream.on_action_review_event_event do |event|
    #         event # => Aws::QBusiness::Types::actionReviewEvent
    #       end
    #       out_stream.on_failed_attachment_event_event do |event|
    #         event # => Aws::QBusiness::Types::failedAttachmentEvent
    #       end
    #       out_stream.on_metadata_event_event do |event|
    #         event # => Aws::QBusiness::Types::metadataEvent
    #       end
    #       out_stream.on_text_event_event do |event|
    #         event # => Aws::QBusiness::Types::textEvent
    #       end
    #
    #     end
    #     # => returns Aws::Seahorse::Client::AsyncResponse
    #
    #     # signal events
    #     input_stream.signal_action_execution_event_event( ... )
    #     input_stream.signal_attachment_event_event( ... )
    #     input_stream.signal_configuration_event_event( ... )
    #     input_stream.signal_end_of_input_event_event( ... )
    #     input_stream.signal_text_event_event( ... )
    #
    #     # make sure signaling :end_stream in the end
    #     input_stream.signal_end_stream
    #
    #     # wait until stream is closed before finalizing sync response
    #     resp = async_resp.wait
    #     # Or close stream and finalizing sync response immediately
    #     # resp = async_resp.join!
    #
    #   Inorder to streamingly processing events received, you can also provide an Aws::QBusiness::EventStreams::ChatOutputStream
    #   object to register callbacks before initializing request instead of processing from request block
    #
    #     output_stream = Aws::QBusiness::EventStreams::ChatOutputStream.new
    #     # register callbacks for events arrival
    #     output_stream.on_action_review_event_event do |event|
    #       event # => Aws::QBusiness::Types::actionReviewEvent
    #     end
    #     output_stream.on_failed_attachment_event_event do |event|
    #       event # => Aws::QBusiness::Types::failedAttachmentEvent
    #     end
    #     output_stream.on_metadata_event_event do |event|
    #       event # => Aws::QBusiness::Types::metadataEvent
    #     end
    #     output_stream.on_text_event_event do |event|
    #       event # => Aws::QBusiness::Types::textEvent
    #     end
    #     output_stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     async_resp = client.chat ( #params input,
    #       input_event_stream_handler: input_stream
    #       output_event_stream_handler: output_stream
    #     )
    #
    #     resp = async_resp.wait!
    #
    #   Besides above usage patterns for process events when they arrive immediately, you can also
    #   iterate through events after response complete.
    #
    #   Events are available at resp.output_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.chat({
    #     application_id: "ApplicationId", # required
    #     client_token: "ClientToken",
    #     conversation_id: "ConversationId",
    #     input_event_stream_hander: EventStreams::ChatInputStream.new,
    #     parent_message_id: "MessageId",
    #     user_groups: ["String"],
    #     user_id: "UserId",
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   All events are available at resp.output_stream:
    #   resp.output_stream #=> Enumerator
    #   resp.output_stream.event_types #=> [:action_review_event, :failed_attachment_event, :metadata_event, :text_event]
    #
    #   For :action_review_event event available at #on_action_review_event_event callback and response eventstream enumerator:
    #   event.conversation_id #=> String
    #   event.payload #=> Hash
    #   event.payload["ActionPayloadFieldKey"].allowed_values #=> Array
    #   event.payload["ActionPayloadFieldKey"].display_name #=> String
    #   event.payload["ActionPayloadFieldKey"].display_order #=> Integer
    #   event.payload["ActionPayloadFieldKey"].required #=> Boolean
    #   event.payload["ActionPayloadFieldKey"].type #=> String, one of "STRING", "NUMBER", "ARRAY", "BOOLEAN"
    #   event.payload_field_name_separator #=> String
    #   event.plugin_id #=> String
    #   event.plugin_type #=> String, one of "SERVICE_NOW", "SALESFORCE", "JIRA", "ZENDESK"
    #   event.system_message_id #=> String
    #   event.user_message_id #=> String
    #
    #   For :failed_attachment_event event available at #on_failed_attachment_event_event callback and response eventstream enumerator:
    #   event.attachment.error.error_code #=> String, one of "InternalError", "InvalidRequest", "ResourceInactive", "ResourceNotFound"
    #   event.attachment.error.error_message #=> String
    #   event.attachment.name #=> String
    #   event.attachment.status #=> String, one of "FAILED", "SUCCEEDED"
    #   event.conversation_id #=> String
    #   event.system_message_id #=> String
    #   event.user_message_id #=> String
    #
    #   For :metadata_event event available at #on_metadata_event_event callback and response eventstream enumerator:
    #   event.conversation_id #=> String
    #   event.final_text_message #=> String
    #   event.source_attributions #=> Array
    #   event.source_attributions[0].citation_number #=> Integer
    #   event.source_attributions[0].snippet #=> String
    #   event.source_attributions[0].text_message_segments #=> Array
    #   event.source_attributions[0].text_message_segments[0].begin_offset #=> Integer
    #   event.source_attributions[0].text_message_segments[0].end_offset #=> Integer
    #   event.source_attributions[0].title #=> String
    #   event.source_attributions[0].updated_at #=> Time
    #   event.source_attributions[0].url #=> String
    #   event.system_message_id #=> String
    #   event.user_message_id #=> String
    #
    #   For :text_event event available at #on_text_event_event callback and response eventstream enumerator:
    #   event.conversation_id #=> String
    #   event.system_message #=> String
    #   event.system_message_id #=> String
    #   event.user_message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Chat AWS API Documentation
    #
    # @overload chat(params = {})
    # @param [Hash] params ({})
    def chat(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::ChatInputStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::ChatOutputStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:chat, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 55)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options, &block)
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
      context[:gem_name] = 'aws-sdk-qbusiness'
      context[:gem_version] = '1.3.0'
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
              "instance of Aws::QBusiness::#{event_stream_class}"\
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

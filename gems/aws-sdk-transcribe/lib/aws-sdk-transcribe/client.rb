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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:transcribe)

module Aws::Transcribe
  # An API client for Aws::Transcribe.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Transcribe
    @identifier = :transcribe

    add_plugin(::Aws::Transcribe::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Transcribe::EndpointProvider)
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
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Creates a new Call Analytics category.</p>
    #          <p>All categories are automatically applied to your Call Analytics transcriptions. Note that in
    #             order to apply categories to your transcriptions, you must create them before submitting your
    #             transcription request, as categories cannot be applied retroactively.</p>
    #          <p>When creating a new category, you can use the <code>InputType</code> parameter to 
    #             label the category as a <code>POST_CALL</code> or a <code>REAL_TIME</code> category. 
    #             <code>POST_CALL</code> categories can only be applied to post-call transcriptions and 
    #             <code>REAL_TIME</code> categories can only be applied to real-time transcriptions. If you 
    #             do not include <code>InputType</code>, your category is created as a 
    #             <code>POST_CALL</code> category by default.</p>
    #          <p>Call Analytics categories are composed of rules. For each category, you must create
    #             between 1 and 20 rules. Rules can include these parameters: , , , and .</p>
    #          <p>To update an existing category, see .</p>
    #          <p>To learn more about Call Analytics categories, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html">Creating categories for post-call
    #             transcriptions</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html">Creating categories for
    #                 real-time transcriptions</a>.</p>
    # @param [Hash, Types::CreateCallAnalyticsCategoryRequest] params
    # @option params [String] :category_name
    #   <p>A unique name, chosen by you, for your Call Analytics category. It's helpful to use a
    #               detailed naming system that will make sense to you in the future. For example, it's
    #               better to use <code>sentiment-positive-last30seconds</code> for a category over a
    #               generic name like <code>test-category</code>.</p>
    #            <p>Category names are case sensitive.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>Rules define a Call Analytics category. When creating a new category, you must create 
    #               between 1 and 20 rules for that category. For each rule, you specify a filter you want 
    #               applied to the attributes of a call. For example, you can choose a sentiment filter that 
    #               detects if a customer's sentiment was positive during the last 30 seconds of the call.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new
    #               call analytics category at the time you start this new job.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #               resources</a>.</p>
    # @option params [String] :input_type
    #   <p>Choose whether you want to create a real-time or a post-call category for your Call 
    #               Analytics transcription.</p>
    #            <p>Specifying <code>POST_CALL</code> assigns your category to post-call transcriptions; 
    #               categories with this input type cannot be applied to streaming (real-time) 
    #               transcriptions.</p>
    #            <p>Specifying <code>REAL_TIME</code> assigns your category to streaming transcriptions; 
    #               categories with this input type cannot be applied to post-call transcriptions.</p>
    #            <p>If you do not include <code>InputType</code>, your category is created as a post-call 
    #               category by default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category_name: "CategoryName", # required
    #     rules: [{ # required
    #       # One of:
    #       non_talk_time_filter: {
    #         threshold: 1,
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         negate: false
    #       },
    #       interruption_filter: {
    #         threshold: 1,
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         negate: false
    #       },
    #       transcript_filter: {
    #         transcript_filter_type: "EXACT" # One of: ["EXACT"], # required
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         negate: false,
    #         targets: ["NonEmptyString"], # required
    #       },
    #       sentiment_filter: {
    #         sentiments: ["POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]], # required
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         negate: false
    #       }
    #     }],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     input_type: "REAL_TIME" # One of: ["REAL_TIME", "POST_CALL"]
    #   }
    #   options = {}
    #   response = client.create_call_analytics_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     category_properties: {
    #       category_name: "CategoryName",
    #       rules: [{
    #         # One of:
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: "EXACT" # One of: ["EXACT"], # required
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           negate: false,
    #           targets: ["NonEmptyString"], # required
    #         },
    #         sentiment_filter: {
    #           sentiments: ["POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]], # required
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           negate: false
    #         }
    #       }],
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       input_type: "REAL_TIME" # One of: ["REAL_TIME", "POST_CALL"]
    #     }
    #   }
    # @return [Types::CreateCallAnalyticsCategoryResponse]
    def create_call_analytics_category(params = {}, options = {})
      request = build_request(:create_call_analytics_category, params)
      request.send_request(options)
    end

    # <p>Creates a new custom language model.</p>
    #          <p>When creating a new custom language model, you must specify:</p>
    #          <ul>
    #             <li>
    #                <p>If you want a Wideband (audio sample rates over 16,000 Hz) or Narrowband
    #                     (audio sample rates under 16,000 Hz) base model</p>
    #             </li>
    #             <li>
    #                <p>The location of your training and tuning files (this must be an Amazon S3 URI)</p>
    #             </li>
    #             <li>
    #                <p>The language of your model</p>
    #             </li>
    #             <li>
    #                <p>A unique name for your model</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateLanguageModelRequest] params
    # @option params [String] :language_code
    #   <p>The language code that represents the language of your model. Each custom language
    #               model must contain terms in only one language, and the language you select for your
    #               custom language model must match the language of your training and tuning data.</p>
    #            <p>For a list of supported languages and their associated language codes, refer to the
    #                   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table. Note that US English (<code>en-US</code>) is the 
    #               only language supported with Amazon Transcribe Medical.</p>
    #            <p>A custom language model can only be used to transcribe files in the same language as
    #               the model. For example, if you create a custom language model using US English
    #                   (<code>en-US</code>), you can only apply this model to files that contain English
    #               audio.</p>
    # @option params [String] :base_model_name
    #   <p>The Amazon Transcribe standard language model, or base model, used to create your
    #               custom language model. Amazon Transcribe offers two options for base models: Wideband
    #               and Narrowband.</p>
    #            <p>If the audio you want to transcribe has a sample rate of 16,000 Hz or greater, choose
    #                   <code>WideBand</code>. To transcribe audio with a sample rate less than 16,000 Hz,
    #               choose <code>NarrowBand</code>.</p>
    # @option params [String] :model_name
    #   <p>A unique name, chosen by you, for your custom language model.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new custom language model with
    #               the same name as an existing custom language model, you get a
    #                   <code>ConflictException</code> error.</p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Contains the Amazon S3 location of the training data you want to use to create
    #               a new custom language model, and permissions to access this location.</p>
    #            <p>When using <code>InputDataConfig</code>, you must include these sub-parameters:
    #                   <code>S3Uri</code>, which is the Amazon S3 location of your training data,
    #               and <code>DataAccessRoleArn</code>, which is the Amazon Resource Name (ARN) of the role
    #               that has permission to access your specified Amazon S3 location. You can
    #               optionally include <code>TuningDataS3Uri</code>, which is the Amazon S3 location
    #               of your tuning data. If you specify different Amazon S3 locations for training
    #               and tuning data, the ARN you use must have permissions to access both locations.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               language model at the time you create this new model.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language_code: "en-US" # One of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"], # required
    #     base_model_name: "NarrowBand" # One of: ["NarrowBand", "WideBand"], # required
    #     model_name: "ModelName", # required
    #     input_data_config: { # required
    #       s3_uri: "Uri", # required
    #       tuning_data_s3_uri: "Uri",
    #       data_access_role_arn: "DataAccessRoleArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_language_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     language_code: "en-US" # One of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"],
    #     base_model_name: "NarrowBand" # One of: ["NarrowBand", "WideBand"],
    #     model_name: "ModelName",
    #     input_data_config: {
    #       s3_uri: "Uri", # required
    #       tuning_data_s3_uri: "Uri",
    #       data_access_role_arn: "DataAccessRoleArn", # required
    #     },
    #     model_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #   }
    # @return [Types::CreateLanguageModelResponse]
    def create_language_model(params = {}, options = {})
      request = build_request(:create_language_model, params)
      request.send_request(options)
    end

    # <p>Creates a new custom medical vocabulary.</p>
    #          <p>Before creating a new custom medical vocabulary, you must first upload a text file
    #             that contains your vocabulary table into an Amazon S3 bucket.
    #             Note that this differs from , where you can
    #             include a list of terms within your request using the <code>Phrases</code> flag;
    #                 <code>CreateMedicalVocabulary</code> does not support the <code>Phrases</code>
    #             flag and only accepts vocabularies in table format.</p>
    #          <p>Each language has a character set that contains all allowed characters for that
    #             specific language. If you use unsupported characters, your custom vocabulary request
    #             fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom Vocabularies</a> to get the character set for your
    #             language.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom
    #             vocabularies</a>.</p>
    # @param [Hash, Types::CreateMedicalVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>A unique name, chosen by you, for your new custom medical vocabulary.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new custom medical vocabulary
    #               with the same name as an existing custom medical vocabulary, you get a
    #                   <code>ConflictException</code> error.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in your custom
    #               vocabulary. US English (<code>en-US</code>) is the only language supported with Amazon Transcribe Medical.</p>
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location (URI) of the text file that contains your custom
    #               medical vocabulary. The URI must be in the same Amazon Web Services Region as the
    #               resource you're calling.</p>
    #            <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               medical vocabulary at the time you create this new custom vocabulary.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"], # required
    #     vocabulary_file_uri: "Uri", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_medical_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_name: "VocabularyName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     last_modified_time: Time.now,
    #     failure_reason: "FailureReason"
    #   }
    # @return [Types::CreateMedicalVocabularyResponse]
    def create_medical_vocabulary(params = {}, options = {})
      request = build_request(:create_medical_vocabulary, params)
      request.send_request(options)
    end

    # <p>Creates a new custom vocabulary.</p>
    #          <p>When creating a new custom vocabulary, you can either upload a text file that contains
    #             your new entries, phrases, and terms into an Amazon S3 bucket and include the
    #             URI in your request. Or you can include a list of terms directly in your request using
    #             the <code>Phrases</code> flag.</p>
    #          <p>Each language has a character set that contains all allowed characters for that
    #             specific language. If you use unsupported characters, your custom vocabulary request
    #             fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom Vocabularies</a> to get the character set for your
    #             language.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom
    #             vocabularies</a>.</p>
    # @param [Hash, Types::CreateVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>A unique name, chosen by you, for your new custom vocabulary.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new custom vocabulary with the
    #               same name as an existing custom vocabulary, you get a <code>ConflictException</code>
    #               error.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in your custom
    #               vocabulary. Each custom vocabulary must contain terms in only one language.</p>
    #            <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               custom vocabulary. For example, if you create a custom vocabulary using US English
    #                   (<code>en-US</code>), you can only apply this custom vocabulary to files that
    #               contain English audio.</p>
    #            <p>For a list of supported languages and their associated language codes, refer to the
    #                   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table.</p>
    # @option params [Array<String>] :phrases
    #   <p>Use this parameter if you want to create your custom vocabulary by including all
    #               desired terms, as comma-separated values, within your request. The other option for
    #               creating your custom vocabulary is to save your entries in a text file and upload them
    #               to an Amazon S3 bucket, then specify the location of your file using the
    #                   <code>VocabularyFileUri</code> parameter.</p>
    #            <p>Note that if you include <code>Phrases</code> in your request, you cannot use
    #                   <code>VocabularyFileUri</code>; you must choose one or the other.</p>
    #            <p>Each language has a character set that contains all allowed characters for that
    #               specific language. If you use unsupported characters, your custom vocabulary filter
    #               request fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom
    #                   Vocabularies</a> to get the character set for your language.</p>
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary.
    #               The URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #            <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #            <p>Note that if you include <code>VocabularyFileUri</code> in your request, you cannot
    #               use the <code>Phrases</code> flag; you must choose one or the other.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               vocabulary at the time you create this new custom vocabulary.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files (in this case, your custom
    #               vocabulary). If the role that you specify doesn’t have the appropriate permissions to access
    #               the specified Amazon S3 location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #               ARNs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"], # required
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     data_access_role_arn: "DataAccessRoleArn"
    #   }
    #   options = {}
    #   response = client.create_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_name: "VocabularyName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     last_modified_time: Time.now,
    #     failure_reason: "FailureReason"
    #   }
    # @return [Types::CreateVocabularyResponse]
    def create_vocabulary(params = {}, options = {})
      request = build_request(:create_vocabulary, params)
      request.send_request(options)
    end

    # <p>Creates a new custom vocabulary filter.</p>
    #          <p>You can use custom vocabulary filters to mask, delete, or flag specific words from
    #             your transcript. Custom vocabulary filters are commonly used to mask profanity in
    #             transcripts.</p>
    #          <p>Each language has a character set that contains all allowed characters for that
    #             specific language. If you use unsupported characters, your custom vocabulary filter
    #             request fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom
    #                 Vocabularies</a> to get the character set for your language.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Vocabulary
    #             filtering</a>.</p>
    # @param [Hash, Types::CreateVocabularyFilterRequest] params
    # @option params [String] :vocabulary_filter_name
    #   <p>A unique name, chosen by you, for your new custom vocabulary filter.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new custom vocabulary filter with
    #               the same name as an existing custom vocabulary filter, you get a
    #                   <code>ConflictException</code> error.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in your vocabulary
    #               filter. Each custom vocabulary filter must contain terms in only one language.</p>
    #            <p>A custom vocabulary filter can only be used to transcribe files in the same language
    #               as the filter. For example, if you create a custom vocabulary filter using US English
    #                   (<code>en-US</code>), you can only apply this filter to files that contain English
    #               audio.</p>
    #            <p>For a list of supported languages and their associated language codes, refer to the
    #                   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table.</p>
    # @option params [Array<String>] :words
    #   <p>Use this parameter if you want to create your custom vocabulary filter by including
    #               all desired terms, as comma-separated values, within your request. The other option for
    #               creating your vocabulary filter is to save your entries in a text file and upload them
    #               to an Amazon S3 bucket, then specify the location of your file using the
    #                   <code>VocabularyFilterFileUri</code> parameter.</p>
    #            <p>Note that if you include <code>Words</code> in your request, you cannot use
    #                   <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>
    #            <p>Each language has a character set that contains all allowed characters for that
    #               specific language. If you use unsupported characters, your custom vocabulary filter
    #               request fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom
    #                   Vocabularies</a> to get the character set for your language.</p>
    # @option params [String] :vocabulary_filter_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary
    #               filter terms. The URI must be located in the same Amazon Web Services Region as the
    #               resource you're calling.</p>
    #            <p>Here's an example URI path:
    #                   <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt</code>
    #            </p>
    #            <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you
    #               cannot use <code>Words</code>; you must choose one or the other.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new custom
    #               vocabulary filter at the time you create this new vocabulary filter.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files (in this case, your custom
    #               vocabulary filter). If the role that you specify doesn’t have the appropriate permissions to access
    #               the specified Amazon S3 location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #               ARNs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"], # required
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     data_access_role_arn: "DataAccessRoleArn"
    #   }
    #   options = {}
    #   response = client.create_vocabulary_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     last_modified_time: Time.now
    #   }
    # @return [Types::CreateVocabularyFilterResponse]
    def create_vocabulary_filter(params = {}, options = {})
      request = build_request(:create_vocabulary_filter, params)
      request.send_request(options)
    end

    # <p>Deletes a Call Analytics category. To use this operation, specify the name of the
    #             category you want to delete using <code>CategoryName</code>. Category names are case
    #             sensitive.</p>
    # @param [Hash, Types::DeleteCallAnalyticsCategoryRequest] params
    # @option params [String] :category_name
    #   <p>The name of the Call Analytics category you want to delete. Category names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category_name: "CategoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_call_analytics_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCallAnalyticsCategoryResponse]
    def delete_call_analytics_category(params = {}, options = {})
      request = build_request(:delete_call_analytics_category, params)
      request.send_request(options)
    end

    # <p>Deletes a Call Analytics job. To use this operation, specify the name of the job you
    #             want to delete using <code>CallAnalyticsJobName</code>. Job names are case
    #             sensitive.</p>
    # @param [Hash, Types::DeleteCallAnalyticsJobRequest] params
    # @option params [String] :call_analytics_job_name
    #   <p>The name of the Call Analytics job you want to delete. Job names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     call_analytics_job_name: "CallAnalyticsJobName", # required
    #   }
    #   options = {}
    #   response = client.delete_call_analytics_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCallAnalyticsJobResponse]
    def delete_call_analytics_job(params = {}, options = {})
      request = build_request(:delete_call_analytics_job, params)
      request.send_request(options)
    end

    # <p>Deletes a custom language model. To use this operation, specify the name of the
    #             language model you want to delete using <code>ModelName</code>. custom language model
    #             names are case sensitive.</p>
    # @param [Hash, Types::DeleteLanguageModelRequest] params
    # @option params [String] :model_name
    #   <p>The name of the custom language model you want to delete. Model names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.delete_language_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_language_model(params = {}, options = {})
      request = build_request(:delete_language_model, params)
      request.send_request(options)
    end

    # <p>Deletes a Medical Scribe job. To use this operation, specify the name of the
    #             job you want to delete using <code>MedicalScribeJobName</code>. Job names are
    #             case sensitive.</p>
    # @param [Hash, Types::DeleteMedicalScribeJobRequest] params
    # @option params [String] :medical_scribe_job_name
    #   <p>The name of the Medical Scribe job you want to delete. Job names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     medical_scribe_job_name: "TranscriptionJobName", # required
    #   }
    #   options = {}
    #   response = client.delete_medical_scribe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_medical_scribe_job(params = {}, options = {})
      request = build_request(:delete_medical_scribe_job, params)
      request.send_request(options)
    end

    # <p>Deletes a medical transcription job. To use this operation, specify the name of the
    #             job you want to delete using <code>MedicalTranscriptionJobName</code>. Job names are
    #             case sensitive.</p>
    # @param [Hash, Types::DeleteMedicalTranscriptionJobRequest] params
    # @option params [String] :medical_transcription_job_name
    #   <p>The name of the medical transcription job you want to delete. Job names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #   }
    #   options = {}
    #   response = client.delete_medical_transcription_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_medical_transcription_job(params = {}, options = {})
      request = build_request(:delete_medical_transcription_job, params)
      request.send_request(options)
    end

    # <p>Deletes a custom medical vocabulary. To use this operation, specify the name of the
    #             custom vocabulary you want to delete using <code>VocabularyName</code>. Custom
    #             vocabulary names are case sensitive.</p>
    # @param [Hash, Types::DeleteMedicalVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom medical vocabulary you want to delete. Custom medical
    #               vocabulary names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #   }
    #   options = {}
    #   response = client.delete_medical_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_medical_vocabulary(params = {}, options = {})
      request = build_request(:delete_medical_vocabulary, params)
      request.send_request(options)
    end

    # <p>Deletes a transcription job. To use this operation, specify the name of the job you
    #             want to delete using <code>TranscriptionJobName</code>. Job names are case
    #             sensitive.</p>
    # @param [Hash, Types::DeleteTranscriptionJobRequest] params
    # @option params [String] :transcription_job_name
    #   <p>The name of the transcription job you want to delete. Job names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transcription_job_name: "TranscriptionJobName", # required
    #   }
    #   options = {}
    #   response = client.delete_transcription_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_transcription_job(params = {}, options = {})
      request = build_request(:delete_transcription_job, params)
      request.send_request(options)
    end

    # <p>Deletes a custom vocabulary. To use this operation, specify the name of the custom
    #             vocabulary you want to delete using <code>VocabularyName</code>. Custom vocabulary names
    #             are case sensitive.</p>
    # @param [Hash, Types::DeleteVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom vocabulary you want to delete. Custom vocabulary names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #   }
    #   options = {}
    #   response = client.delete_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vocabulary(params = {}, options = {})
      request = build_request(:delete_vocabulary, params)
      request.send_request(options)
    end

    # <p>Deletes a custom vocabulary filter. To use this operation, specify the name of the
    #             custom vocabulary filter you want to delete using <code>VocabularyFilterName</code>.
    #             Custom vocabulary filter names are case sensitive.</p>
    # @param [Hash, Types::DeleteVocabularyFilterRequest] params
    # @option params [String] :vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to delete. Custom vocabulary filter
    #               names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #   }
    #   options = {}
    #   response = client.delete_vocabulary_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vocabulary_filter(params = {}, options = {})
      request = build_request(:delete_vocabulary_filter, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified custom language model.</p>
    #          <p>This operation also shows if the base language model that you used to create your
    #             custom language model has been updated. If Amazon Transcribe has updated the base
    #             model, you can create a new custom language model using the updated base model.</p>
    #          <p>If you tried to create a new custom language model and the request wasn't successful,
    #             you can use <code>DescribeLanguageModel</code> to help identify the reason for this
    #             failure.</p>
    # @param [Hash, Types::DescribeLanguageModelRequest] params
    # @option params [String] :model_name
    #   <p>The name of the custom language model you want information about. Model names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_name: "ModelName", # required
    #   }
    #   options = {}
    #   response = client.describe_language_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     language_model: {
    #       model_name: "ModelName",
    #       create_time: Time.now,
    #       last_modified_time: Time.now,
    #       language_code: "en-US" # One of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"],
    #       base_model_name: "NarrowBand" # One of: ["NarrowBand", "WideBand"],
    #       model_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #       upgrade_availability: false,
    #       failure_reason: "FailureReason",
    #       input_data_config: {
    #         s3_uri: "Uri", # required
    #         tuning_data_s3_uri: "Uri",
    #         data_access_role_arn: "DataAccessRoleArn", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeLanguageModelResponse]
    def describe_language_model(params = {}, options = {})
      request = build_request(:describe_language_model, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified Call Analytics category.</p>
    #          <p>To get a list of your Call Analytics categories, use the  operation.</p>
    # @param [Hash, Types::GetCallAnalyticsCategoryRequest] params
    # @option params [String] :category_name
    #   <p>The name of the Call Analytics category you want information about. Category names are
    #               case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category_name: "CategoryName", # required
    #   }
    #   options = {}
    #   response = client.get_call_analytics_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     category_properties: {
    #       category_name: "CategoryName",
    #       rules: [{
    #         # One of:
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: "EXACT" # One of: ["EXACT"], # required
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           negate: false,
    #           targets: ["NonEmptyString"], # required
    #         },
    #         sentiment_filter: {
    #           sentiments: ["POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]], # required
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           negate: false
    #         }
    #       }],
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       input_type: "REAL_TIME" # One of: ["REAL_TIME", "POST_CALL"]
    #     }
    #   }
    # @return [Types::GetCallAnalyticsCategoryResponse]
    def get_call_analytics_category(params = {}, options = {})
      request = build_request(:get_call_analytics_category, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified Call Analytics job.</p>
    #          <p>To view the job's status, refer to <code>CallAnalyticsJobStatus</code>. If the status
    #             is <code>COMPLETED</code>, the job is finished. You can find your completed transcript
    #             at the URI specified in <code>TranscriptFileUri</code>. If the status is
    #                 <code>FAILED</code>, <code>FailureReason</code> provides details on why your
    #             transcription job failed.</p>
    #          <p>If you enabled personally identifiable information (PII) redaction, the redacted
    #             transcript appears at the location specified in
    #             <code>RedactedTranscriptFileUri</code>.</p>
    #          <p>If you chose to redact the audio in your media file, you can find your redacted media
    #             file at the location specified in <code>RedactedMediaFileUri</code>.</p>
    #          <p>To get a list of your Call Analytics jobs, use the  operation.</p>
    # @param [Hash, Types::GetCallAnalyticsJobRequest] params
    # @option params [String] :call_analytics_job_name
    #   <p>The name of the Call Analytics job you want information about. Job names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     call_analytics_job_name: "CallAnalyticsJobName", # required
    #   }
    #   options = {}
    #   response = client.get_call_analytics_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     call_analytics_job: {
    #       call_analytics_job_name: "CallAnalyticsJobName",
    #       call_analytics_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       call_analytics_job_details: {
    #         skipped: [
    #           {
    #             feature: "GENERATIVE_SUMMARIZATION" # One of: ["GENERATIVE_SUMMARIZATION"],
    #             reason_code: "INSUFFICIENT_CONVERSATION_CONTENT" # One of: ["INSUFFICIENT_CONVERSATION_CONTENT", "FAILED_SAFETY_GUIDELINES"],
    #             message: "String"
    #           }
    #         ]
    #       },
    #       language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #       media_sample_rate_hertz: 1,
    #       media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       transcript: {
    #         transcript_file_uri: "Uri",
    #         redacted_transcript_file_uri: "Uri"
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       data_access_role_arn: "DataAccessRoleArn",
    #       identified_language_score: 1.0,
    #       settings: {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #         language_model_name: "ModelName",
    #         content_redaction: {
    #           redaction_type: "PII" # One of: ["PII"], # required
    #           redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #         },
    #         language_options: ["af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"]],
    #         language_id_settings: {
    #           "LanguageCode" => {
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             language_model_name: "ModelName"
    #           }
    #         },
    #         summarization: {
    #           generate_abstractive_summary: false, # required
    #         }
    #       },
    #       channel_definitions: [
    #         {
    #           channel_id: 1,
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetCallAnalyticsJobResponse]
    def get_call_analytics_job(params = {}, options = {})
      request = build_request(:get_call_analytics_job, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified Medical Scribe job.</p>
    #          <p>To view the status of the specified medical transcription job, check the
    #                 <code>MedicalScribeJobStatus</code> field. If the status is <code>COMPLETED</code>,
    #             the job is finished. You can find the results at the location specified in
    #                 <code>MedicalScribeOutput</code>. 
    #                 If the status is <code>FAILED</code>, <code>FailureReason</code> provides details on why your Medical Scribe job
    #             failed.</p>
    #          <p>To get a list of your Medical Scribe jobs, use the  operation.</p>
    # @param [Hash, Types::GetMedicalScribeJobRequest] params
    # @option params [String] :medical_scribe_job_name
    #   <p>The name of the Medical Scribe job you want information about. Job names are
    #               case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     medical_scribe_job_name: "TranscriptionJobName", # required
    #   }
    #   options = {}
    #   response = client.get_medical_scribe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     medical_scribe_job: {
    #       medical_scribe_job_name: "TranscriptionJobName",
    #       medical_scribe_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       language_code: "en-US" # One of: ["en-US"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       medical_scribe_output: {
    #         transcript_file_uri: "Uri", # required
    #         clinical_document_uri: "Uri", # required
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       settings: {
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #         clinical_note_generation_settings: {
    #           note_template: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "BIRP", "SIRP", "DAP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"]
    #         }
    #       },
    #       data_access_role_arn: "DataAccessRoleArn",
    #       channel_definitions: [
    #         {
    #           channel_id: 1, # required
    #           participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #         }
    #       ],
    #       medical_scribe_context_provided: false,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMedicalScribeJobResponse]
    def get_medical_scribe_job(params = {}, options = {})
      request = build_request(:get_medical_scribe_job, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified medical transcription job.</p>
    #          <p>To view the status of the specified medical transcription job, check the
    #                 <code>TranscriptionJobStatus</code> field. If the status is <code>COMPLETED</code>,
    #             the job is finished. You can find the results at the location specified in
    #                 <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #                 <code>FailureReason</code> provides details on why your transcription job
    #             failed.</p>
    #          <p>To get a list of your medical transcription jobs, use the  operation.</p>
    # @param [Hash, Types::GetMedicalTranscriptionJobRequest] params
    # @option params [String] :medical_transcription_job_name
    #   <p>The name of the medical transcription job you want information about. Job names are
    #               case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #   }
    #   options = {}
    #   response = client.get_medical_transcription_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     medical_transcription_job: {
    #       medical_transcription_job_name: "TranscriptionJobName",
    #       transcription_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #       media_sample_rate_hertz: 1,
    #       media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       transcript: {
    #         transcript_file_uri: "Uri"
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       settings: {
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_name: "VocabularyName"
    #       },
    #       content_identification_type: "PHI" # One of: ["PHI"],
    #       specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE"],
    #       type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMedicalTranscriptionJobResponse]
    def get_medical_transcription_job(params = {}, options = {})
      request = build_request(:get_medical_transcription_job, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified custom medical vocabulary.</p>
    #          <p>To view the status of the specified custom medical vocabulary, check the
    #                 <code>VocabularyState</code> field. If the status is <code>READY</code>, your custom
    #             vocabulary is available to use. If the status is <code>FAILED</code>,
    #                 <code>FailureReason</code> provides details on why your vocabulary failed.</p>
    #          <p>To get a list of your custom medical vocabularies, use the  operation.</p>
    # @param [Hash, Types::GetMedicalVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom medical vocabulary you want information about. Custom medical
    #               vocabulary names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #   }
    #   options = {}
    #   response = client.get_medical_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_name: "VocabularyName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     last_modified_time: Time.now,
    #     failure_reason: "FailureReason",
    #     download_uri: "Uri"
    #   }
    # @return [Types::GetMedicalVocabularyResponse]
    def get_medical_vocabulary(params = {}, options = {})
      request = build_request(:get_medical_vocabulary, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified transcription job.</p>
    #          <p>To view the status of the specified transcription job, check the
    #                 <code>TranscriptionJobStatus</code> field. If the status is <code>COMPLETED</code>,
    #             the job is finished. You can find the results at the location specified in
    #                 <code>TranscriptFileUri</code>. If the status is <code>FAILED</code>,
    #                 <code>FailureReason</code> provides details on why your transcription job
    #             failed.</p>
    #          <p>If you enabled content redaction, the redacted transcript can be found at the location
    #             specified in <code>RedactedTranscriptFileUri</code>.</p>
    #          <p>To get a list of your transcription jobs, use the  operation.</p>
    # @param [Hash, Types::GetTranscriptionJobRequest] params
    # @option params [String] :transcription_job_name
    #   <p>The name of the transcription job you want information about. Job names are case
    #               sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transcription_job_name: "TranscriptionJobName", # required
    #   }
    #   options = {}
    #   response = client.get_transcription_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transcription_job: {
    #       transcription_job_name: "TranscriptionJobName",
    #       transcription_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #       media_sample_rate_hertz: 1,
    #       media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       transcript: {
    #         transcript_file_uri: "Uri",
    #         redacted_transcript_file_uri: "Uri"
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       settings: {
    #         vocabulary_name: "VocabularyName",
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"]
    #       },
    #       model_settings: {
    #         language_model_name: "ModelName"
    #       },
    #       job_execution_settings: {
    #         allow_deferred_execution: false,
    #         data_access_role_arn: "DataAccessRoleArn"
    #       },
    #       content_redaction: {
    #         redaction_type: "PII" # One of: ["PII"], # required
    #         redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #       },
    #       identify_language: false,
    #       identify_multiple_languages: false,
    #       language_options: ["af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"]],
    #       identified_language_score: 1.0,
    #       language_codes: [
    #         {
    #           language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #           duration_in_seconds: 1.0
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       subtitles: {
    #         formats: ["vtt" # One of: ["vtt", "srt"]],
    #         subtitle_file_uris: ["Uri"],
    #         output_start_index: 1
    #       },
    #       language_id_settings: {
    #         "LanguageCode" => {
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           language_model_name: "ModelName"
    #         }
    #       },
    #       toxicity_detection: [
    #         {
    #           toxicity_categories: ["ALL" # One of: ["ALL"]], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetTranscriptionJobResponse]
    def get_transcription_job(params = {}, options = {})
      request = build_request(:get_transcription_job, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified custom vocabulary.</p>
    #          <p>To view the status of the specified custom vocabulary, check the
    #                 <code>VocabularyState</code> field. If the status is <code>READY</code>, your custom
    #             vocabulary is available to use. If the status is <code>FAILED</code>,
    #                 <code>FailureReason</code> provides details on why your custom vocabulary
    #             failed.</p>
    #          <p>To get a list of your custom vocabularies, use the  operation.</p>
    # @param [Hash, Types::GetVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom vocabulary you want information about. Custom vocabulary names
    #               are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #   }
    #   options = {}
    #   response = client.get_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_name: "VocabularyName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     last_modified_time: Time.now,
    #     failure_reason: "FailureReason",
    #     download_uri: "Uri"
    #   }
    # @return [Types::GetVocabularyResponse]
    def get_vocabulary(params = {}, options = {})
      request = build_request(:get_vocabulary, params)
      request.send_request(options)
    end

    # <p>Provides information about the specified custom vocabulary filter.</p>
    #          <p>To get a list of your custom vocabulary filters, use the  operation.</p>
    # @param [Hash, Types::GetVocabularyFilterRequest] params
    # @option params [String] :vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want information about. Custom vocabulary
    #               filter names are case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #   }
    #   options = {}
    #   response = client.get_vocabulary_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     last_modified_time: Time.now,
    #     download_uri: "Uri"
    #   }
    # @return [Types::GetVocabularyFilterResponse]
    def get_vocabulary_filter(params = {}, options = {})
      request = build_request(:get_vocabulary_filter, params)
      request.send_request(options)
    end

    # <p>Provides a list of Call Analytics categories, including all rules that make up each
    #             category.</p>
    #          <p>To get detailed information about a specific Call Analytics category, use the  operation.</p>
    # @param [Hash, Types::ListCallAnalyticsCategoriesRequest] params
    # @option params [String] :next_token
    #   <p>If your <code>ListCallAnalyticsCategories</code> request returns more results than can
    #               be displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Call Analytics categories to return in each page of results. If
    #               there are fewer results than the value that you specify, only the actual results are
    #               returned. If you do not specify a value, a default of 5 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_call_analytics_categories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     categories: [
    #       {
    #         category_name: "CategoryName",
    #         rules: [{
    #           # One of:
    #           non_talk_time_filter: {
    #             threshold: 1,
    #             absolute_time_range: {
    #               start_time: 1,
    #               end_time: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             relative_time_range: {
    #               start_percentage: 1,
    #               end_percentage: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             negate: false
    #           },
    #           interruption_filter: {
    #             threshold: 1,
    #             participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #             absolute_time_range: {
    #               start_time: 1,
    #               end_time: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             relative_time_range: {
    #               start_percentage: 1,
    #               end_percentage: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             negate: false
    #           },
    #           transcript_filter: {
    #             transcript_filter_type: "EXACT" # One of: ["EXACT"], # required
    #             absolute_time_range: {
    #               start_time: 1,
    #               end_time: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             relative_time_range: {
    #               start_percentage: 1,
    #               end_percentage: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #             negate: false,
    #             targets: ["NonEmptyString"], # required
    #           },
    #           sentiment_filter: {
    #             sentiments: ["POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]], # required
    #             absolute_time_range: {
    #               start_time: 1,
    #               end_time: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             relative_time_range: {
    #               start_percentage: 1,
    #               end_percentage: 1,
    #               first: 1,
    #               last: 1
    #             },
    #             participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #             negate: false
    #           }
    #         }],
    #         create_time: Time.now,
    #         last_update_time: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         input_type: "REAL_TIME" # One of: ["REAL_TIME", "POST_CALL"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCallAnalyticsCategoriesResponse]
    def list_call_analytics_categories(params = {}, options = {})
      request = build_request(:list_call_analytics_categories, params)
      request.send_request(options)
    end

    # <p>Provides a list of Call Analytics jobs that match the specified criteria. If no
    #             criteria are specified, all Call Analytics jobs are returned.</p>
    #          <p>To get detailed information about a specific Call Analytics job, use the  operation.</p>
    # @param [Hash, Types::ListCallAnalyticsJobsRequest] params
    # @option params [String] :status
    #   <p>Returns only Call Analytics jobs with the specified status. Jobs are ordered by
    #               creation date, with the newest job first. If you do not include <code>Status</code>, all
    #               Call Analytics jobs are returned.</p>
    # @option params [String] :job_name_contains
    #   <p>Returns only the Call Analytics jobs that contain the specified string. The search is
    #               not case sensitive.</p>
    # @option params [String] :next_token
    #   <p>If your <code>ListCallAnalyticsJobs</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Call Analytics jobs to return in each page of results. If there
    #               are fewer results than the value that you specify, only the actual results are returned.
    #               If you do not specify a value, a default of 5 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     job_name_contains: "CallAnalyticsJobName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_call_analytics_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     next_token: "NextToken",
    #     call_analytics_job_summaries: [
    #       {
    #         call_analytics_job_name: "CallAnalyticsJobName",
    #         creation_time: Time.now,
    #         start_time: Time.now,
    #         completion_time: Time.now,
    #         language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #         call_analytics_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #         call_analytics_job_details: {
    #           skipped: [
    #             {
    #               feature: "GENERATIVE_SUMMARIZATION" # One of: ["GENERATIVE_SUMMARIZATION"],
    #               reason_code: "INSUFFICIENT_CONVERSATION_CONTENT" # One of: ["INSUFFICIENT_CONVERSATION_CONTENT", "FAILED_SAFETY_GUIDELINES"],
    #               message: "String"
    #             }
    #           ]
    #         },
    #         failure_reason: "FailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::ListCallAnalyticsJobsResponse]
    def list_call_analytics_jobs(params = {}, options = {})
      request = build_request(:list_call_analytics_jobs, params)
      request.send_request(options)
    end

    # <p>Provides a list of custom language models that match the specified criteria. If no
    #             criteria are specified, all custom language models are returned.</p>
    #          <p>To get detailed information about a specific custom language model, use the  operation.</p>
    # @param [Hash, Types::ListLanguageModelsRequest] params
    # @option params [String] :status_equals
    #   <p>Returns only custom language models with the specified status. Language models are
    #               ordered by creation date, with the newest model first. If you do not include
    #                   <code>StatusEquals</code>, all custom language models are returned.</p>
    # @option params [String] :name_contains
    #   <p>Returns only the custom language models that contain the specified string. The search
    #               is not case sensitive.</p>
    # @option params [String] :next_token
    #   <p>If your <code>ListLanguageModels</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom language models to return in each page of results. If
    #               there are fewer results than the value that you specify, only the actual results are
    #               returned. If you do not specify a value, a default of 5 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status_equals: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #     name_contains: "ModelName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_language_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     models: [
    #       {
    #         model_name: "ModelName",
    #         create_time: Time.now,
    #         last_modified_time: Time.now,
    #         language_code: "en-US" # One of: ["en-US", "hi-IN", "es-US", "en-GB", "en-AU", "de-DE", "ja-JP"],
    #         base_model_name: "NarrowBand" # One of: ["NarrowBand", "WideBand"],
    #         model_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #         upgrade_availability: false,
    #         failure_reason: "FailureReason",
    #         input_data_config: {
    #           s3_uri: "Uri", # required
    #           tuning_data_s3_uri: "Uri",
    #           data_access_role_arn: "DataAccessRoleArn", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListLanguageModelsResponse]
    def list_language_models(params = {}, options = {})
      request = build_request(:list_language_models, params)
      request.send_request(options)
    end

    # <p>Provides a list of Medical Scribe jobs that match the specified criteria. If no
    #             criteria are specified, all Medical Scribe jobs are returned.</p>
    #          <p>To get detailed information about a specific Medical Scribe job, use the  operation.</p>
    # @param [Hash, Types::ListMedicalScribeJobsRequest] params
    # @option params [String] :status
    #   <p>Returns only Medical Scribe jobs with the specified status. Jobs are ordered by
    #               creation date, with the newest job first. If you do not include <code>Status</code>, all
    #               Medical Scribe jobs are returned.</p>
    # @option params [String] :job_name_contains
    #   <p>Returns only the Medical Scribe jobs that contain the specified string. The
    #               search is not case sensitive.</p>
    # @option params [String] :next_token
    #   <p>If your <code>ListMedicalScribeJobs</code> request returns more results than
    #               can be displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of Medical Scribe jobs to return in each page of results. If
    #               there are fewer results than the value that you specify, only the actual results are
    #               returned. If you do not specify a value, a default of 5 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_medical_scribe_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     next_token: "NextToken",
    #     medical_scribe_job_summaries: [
    #       {
    #         medical_scribe_job_name: "TranscriptionJobName",
    #         creation_time: Time.now,
    #         start_time: Time.now,
    #         completion_time: Time.now,
    #         language_code: "en-US" # One of: ["en-US"],
    #         medical_scribe_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #         failure_reason: "FailureReason"
    #       }
    #     ]
    #   }
    # @return [Types::ListMedicalScribeJobsResponse]
    def list_medical_scribe_jobs(params = {}, options = {})
      request = build_request(:list_medical_scribe_jobs, params)
      request.send_request(options)
    end

    # <p>Provides a list of medical transcription jobs that match the specified criteria. If no
    #             criteria are specified, all medical transcription jobs are returned.</p>
    #          <p>To get detailed information about a specific medical transcription job, use the  operation.</p>
    # @param [Hash, Types::ListMedicalTranscriptionJobsRequest] params
    # @option params [String] :status
    #   <p>Returns only medical transcription jobs with the specified status. Jobs are ordered by
    #               creation date, with the newest job first. If you do not include <code>Status</code>, all
    #               medical transcription jobs are returned.</p>
    # @option params [String] :job_name_contains
    #   <p>Returns only the medical transcription jobs that contain the specified string. The
    #               search is not case sensitive.</p>
    # @option params [String] :next_token
    #   <p>If your <code>ListMedicalTranscriptionJobs</code> request returns more results than
    #               can be displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of medical transcription jobs to return in each page of results. If
    #               there are fewer results than the value that you specify, only the actual results are
    #               returned. If you do not specify a value, a default of 5 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_medical_transcription_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     next_token: "NextToken",
    #     medical_transcription_job_summaries: [
    #       {
    #         medical_transcription_job_name: "TranscriptionJobName",
    #         creation_time: Time.now,
    #         start_time: Time.now,
    #         completion_time: Time.now,
    #         language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #         transcription_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #         failure_reason: "FailureReason",
    #         output_location_type: "CUSTOMER_BUCKET" # One of: ["CUSTOMER_BUCKET", "SERVICE_BUCKET"],
    #         specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE"],
    #         content_identification_type: "PHI" # One of: ["PHI"],
    #         type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"]
    #       }
    #     ]
    #   }
    # @return [Types::ListMedicalTranscriptionJobsResponse]
    def list_medical_transcription_jobs(params = {}, options = {})
      request = build_request(:list_medical_transcription_jobs, params)
      request.send_request(options)
    end

    # <p>Provides a list of custom medical vocabularies that match the specified criteria. If
    #             no criteria are specified, all custom medical vocabularies are returned.</p>
    #          <p>To get detailed information about a specific custom medical vocabulary, use the  operation.</p>
    # @param [Hash, Types::ListMedicalVocabulariesRequest] params
    # @option params [String] :next_token
    #   <p>If your <code>ListMedicalVocabularies</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom medical vocabularies to return in each page of results.
    #               If there are fewer results than the value that you specify, only the actual results are
    #               returned. If you do not specify a value, a default of 5 is used.</p>
    # @option params [String] :state_equals
    #   <p>Returns only custom medical vocabularies with the specified state. Custom vocabularies
    #               are ordered by creation date, with the newest vocabulary first. If you do not include
    #                   <code>StateEquals</code>, all custom medical vocabularies are returned.</p>
    # @option params [String] :name_contains
    #   <p>Returns only the custom medical vocabularies that contain the specified string. The
    #               search is not case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state_equals: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     name_contains: "VocabularyName"
    #   }
    #   options = {}
    #   response = client.list_medical_vocabularies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     next_token: "NextToken",
    #     vocabularies: [
    #       {
    #         vocabulary_name: "VocabularyName",
    #         language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #         last_modified_time: Time.now,
    #         vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListMedicalVocabulariesResponse]
    def list_medical_vocabularies(params = {}, options = {})
      request = build_request(:list_medical_vocabularies, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with the specified transcription job, vocabulary, model, or
    #             resource.</p>
    #          <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                 resources</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Returns a list of all tags associated with the specified Amazon Resource Name (ARN).
    #               ARNs have the format
    #                   <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #            <p>For example,
    #                   <code>arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name</code>.</p>
    #            <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #                   <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #                   <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #                   <code>language-model</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TranscribeArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "TranscribeArn",
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

    # <p>Provides a list of transcription jobs that match the specified criteria. If no
    #             criteria are specified, all transcription jobs are returned.</p>
    #          <p>To get detailed information about a specific transcription job, use the  operation.</p>
    # @param [Hash, Types::ListTranscriptionJobsRequest] params
    # @option params [String] :status
    #   <p>Returns only transcription jobs with the specified status. Jobs are ordered by
    #               creation date, with the newest job first. If you do not include <code>Status</code>, all
    #               transcription jobs are returned.</p>
    # @option params [String] :job_name_contains
    #   <p>Returns only the transcription jobs that contain the specified string. The search is
    #               not case sensitive.</p>
    # @option params [String] :next_token
    #   <p>If your <code>ListTranscriptionJobs</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of transcription jobs to return in each page of results. If there
    #               are fewer results than the value that you specify, only the actual results are returned.
    #               If you do not specify a value, a default of 5 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_transcription_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #     next_token: "NextToken",
    #     transcription_job_summaries: [
    #       {
    #         transcription_job_name: "TranscriptionJobName",
    #         creation_time: Time.now,
    #         start_time: Time.now,
    #         completion_time: Time.now,
    #         language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #         transcription_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #         failure_reason: "FailureReason",
    #         output_location_type: "CUSTOMER_BUCKET" # One of: ["CUSTOMER_BUCKET", "SERVICE_BUCKET"],
    #         content_redaction: {
    #           redaction_type: "PII" # One of: ["PII"], # required
    #           redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #         },
    #         model_settings: {
    #           language_model_name: "ModelName"
    #         },
    #         identify_language: false,
    #         identify_multiple_languages: false,
    #         identified_language_score: 1.0,
    #         language_codes: [
    #           {
    #             language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #             duration_in_seconds: 1.0
    #           }
    #         ],
    #         toxicity_detection: [
    #           {
    #             toxicity_categories: ["ALL" # One of: ["ALL"]], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListTranscriptionJobsResponse]
    def list_transcription_jobs(params = {}, options = {})
      request = build_request(:list_transcription_jobs, params)
      request.send_request(options)
    end

    # <p>Provides a list of custom vocabularies that match the specified criteria. If no
    #             criteria are specified, all custom vocabularies are returned.</p>
    #          <p>To get detailed information about a specific custom vocabulary, use the  operation.</p>
    # @param [Hash, Types::ListVocabulariesRequest] params
    # @option params [String] :next_token
    #   <p>If your <code>ListVocabularies</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom vocabularies to return in each page of results. If there
    #               are fewer results than the value that you specify, only the actual results are returned.
    #               If you do not specify a value, a default of 5 is used.</p>
    # @option params [String] :state_equals
    #   <p>Returns only custom vocabularies with the specified state. Vocabularies are ordered by
    #               creation date, with the newest vocabulary first. If you do not include
    #                   <code>StateEquals</code>, all custom medical vocabularies are returned.</p>
    # @option params [String] :name_contains
    #   <p>Returns only the custom vocabularies that contain the specified string. The search is
    #               not case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state_equals: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     name_contains: "VocabularyName"
    #   }
    #   options = {}
    #   response = client.list_vocabularies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PENDING" # One of: ["PENDING", "READY", "FAILED"],
    #     next_token: "NextToken",
    #     vocabularies: [
    #       {
    #         vocabulary_name: "VocabularyName",
    #         language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #         last_modified_time: Time.now,
    #         vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::ListVocabulariesResponse]
    def list_vocabularies(params = {}, options = {})
      request = build_request(:list_vocabularies, params)
      request.send_request(options)
    end

    # <p>Provides a list of custom vocabulary filters that match the specified criteria. If no
    #             criteria are specified, all custom vocabularies are returned.</p>
    #          <p>To get detailed information about a specific custom vocabulary filter, use the  operation.</p>
    # @param [Hash, Types::ListVocabularyFiltersRequest] params
    # @option params [String] :next_token
    #   <p>If your <code>ListVocabularyFilters</code> request returns more results than can be
    #               displayed, <code>NextToken</code> is displayed in the response with an associated
    #               string. To get the next page of results, copy this string and repeat your request,
    #               including <code>NextToken</code> with the value of the copied string. Repeat as needed
    #               to view all your results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom vocabulary filters to return in each page of results. If
    #               there are fewer results than the value that you specify, only the actual results are
    #               returned. If you do not specify a value, a default of 5 is used.</p>
    # @option params [String] :name_contains
    #   <p>Returns only the custom vocabulary filters that contain the specified string. The
    #               search is not case sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "VocabularyFilterName"
    #   }
    #   options = {}
    #   response = client.list_vocabulary_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     vocabulary_filters: [
    #       {
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #         last_modified_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListVocabularyFiltersResponse]
    def list_vocabulary_filters(params = {}, options = {})
      request = build_request(:list_vocabulary_filters, params)
      request.send_request(options)
    end

    # <p>Transcribes the audio from a customer service call and applies any additional Request
    #             Parameters you choose to include in your request.</p>
    #          <p>In addition to many standard transcription features, Call Analytics provides you with
    #             call characteristics, call summarization, speaker sentiment, and optional redaction of
    #             your text transcript and your audio file. You can also apply custom categories to flag
    #             specified conditions. To learn more about these features and insights, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html">Analyzing call
    #                 center audio with Call Analytics</a>.</p>
    #          <p>If you want to apply categories to your Call Analytics job, you must create them
    #             before submitting your job request. Categories cannot be retroactively applied to a job.
    #             To create a new category, use the 
    #             operation. To learn more about Call Analytics categories, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html">Creating categories for post-call 
    #                 transcriptions</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html">Creating categories for 
    #                     real-time transcriptions</a>.</p>
    #          <p>To make a <code>StartCallAnalyticsJob</code> request, you must first upload your media
    #             file into an Amazon S3 bucket; you can then specify the Amazon S3
    #             location of the file using the <code>Media</code> parameter.</p>
    #          <p>Job queuing is available for Call Analytics jobs. If you pass a <code>DataAccessRoleArn</code> 
    #             in your request and you exceed your Concurrent Job Limit, your job will automatically be 
    #             added to a queue to be processed once your concurrent job count is below the limit.</p>
    #          <p>You must include the following parameters in your <code>StartCallAnalyticsJob</code>
    #             request:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>region</code>: The Amazon Web Services Region where you are making your
    #                     request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/general/latest/gr/transcribe.html">Amazon Transcribe endpoints and
    #                         quotas</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CallAnalyticsJobName</code>: A custom name that you create for your
    #                     transcription job that's unique within your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Media</code> (<code>MediaFileUri</code> or
    #                         <code>RedactedMediaFileUri</code>): The Amazon S3 location of your
    #                     media file.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>With Call Analytics, you can redact the audio contained in your media file by
    #                 including <code>RedactedMediaFileUri</code>, instead of <code>MediaFileUri</code>,
    #                 to specify the location of your input audio. If you choose to redact your audio, you
    #                 can find your redacted media at the location specified in the
    #                     <code>RedactedMediaFileUri</code> field of your response.</p>
    #          </note>
    # @param [Hash, Types::StartCallAnalyticsJobRequest] params
    # @option params [String] :call_analytics_job_name
    #   <p>A unique name, chosen by you, for your Call Analytics job.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    # @option params [Types::Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               Call Analytics request.</p>
    # @option params [String] :output_location
    #   <p>The Amazon S3 location where you want your Call Analytics transcription output
    #               stored. You can use any of the following formats to specify the output location:</p>
    #            <ol>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET</p>
    #               </li>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/</p>
    #               </li>
    #               <li>
    #                  <p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json</p>
    #               </li>
    #            </ol>
    #            <p>Unless you specify a file name (option 3), the name of your output file has a default
    #               value that matches the name you specified for your transcription job using the
    #                   <code>CallAnalyticsJobName</code> parameter.</p>
    #            <p>You can specify a KMS key to encrypt your output using the
    #                   <code>OutputEncryptionKMSKeyId</code> parameter. If you do not specify a KMS key, Amazon Transcribe uses the default Amazon S3 key for
    #               server-side encryption.</p>
    #            <p>If you do not specify <code>OutputLocation</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your Call Analytics
    #               output.</p>
    #            <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of four
    #               ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #                           <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #                           <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can specify
    #               your KMS key in one of two ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If you do not specify an encryption key, your output is encrypted with the default
    #                   Amazon S3 key (SSE-S3).</p>
    #            <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #            <p>Note that the role making the  request must
    #               have permission to use the specified KMS key.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files. If the role that you
    #               specify doesn’t have the appropriate permissions to access the specified Amazon S3 location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #               ARNs</a>.</p>
    # @option params [Types::CallAnalyticsJobSettings] :settings
    #   <p>Specify additional optional settings in your  request, including content redaction; allows you to apply custom language models,
    #               vocabulary filters, and custom vocabularies to your Call Analytics job.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new
    #               call analytics job at the time you start this new job.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #               resources</a>.</p>
    # @option params [Array<Types::ChannelDefinition>] :channel_definitions
    #   <p>Makes it possible to specify which speaker is on which channel. For example, if your
    #               agent is the first participant to speak, you would set <code>ChannelId</code> to
    #                   <code>0</code> (to indicate the first channel) and <code>ParticipantRole</code> to
    #                   <code>AGENT</code> (to indicate that it's the agent speaking).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     call_analytics_job_name: "CallAnalyticsJobName", # required
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri"
    #     },
    #     output_location: "Uri",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     data_access_role_arn: "DataAccessRoleArn",
    #     settings: {
    #       vocabulary_name: "VocabularyName",
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #       language_model_name: "ModelName",
    #       content_redaction: {
    #         redaction_type: "PII" # One of: ["PII"], # required
    #         redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #       },
    #       language_options: ["af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"]],
    #       language_id_settings: {
    #         "LanguageCode" => {
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           language_model_name: "ModelName"
    #         }
    #       },
    #       summarization: {
    #         generate_abstractive_summary: false, # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     channel_definitions: [
    #       {
    #         channel_id: 1,
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_call_analytics_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     call_analytics_job: {
    #       call_analytics_job_name: "CallAnalyticsJobName",
    #       call_analytics_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       call_analytics_job_details: {
    #         skipped: [
    #           {
    #             feature: "GENERATIVE_SUMMARIZATION" # One of: ["GENERATIVE_SUMMARIZATION"],
    #             reason_code: "INSUFFICIENT_CONVERSATION_CONTENT" # One of: ["INSUFFICIENT_CONVERSATION_CONTENT", "FAILED_SAFETY_GUIDELINES"],
    #             message: "String"
    #           }
    #         ]
    #       },
    #       language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #       media_sample_rate_hertz: 1,
    #       media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       transcript: {
    #         transcript_file_uri: "Uri",
    #         redacted_transcript_file_uri: "Uri"
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       data_access_role_arn: "DataAccessRoleArn",
    #       identified_language_score: 1.0,
    #       settings: {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #         language_model_name: "ModelName",
    #         content_redaction: {
    #           redaction_type: "PII" # One of: ["PII"], # required
    #           redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #         },
    #         language_options: ["af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"]],
    #         language_id_settings: {
    #           "LanguageCode" => {
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             language_model_name: "ModelName"
    #           }
    #         },
    #         summarization: {
    #           generate_abstractive_summary: false, # required
    #         }
    #       },
    #       channel_definitions: [
    #         {
    #           channel_id: 1,
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartCallAnalyticsJobResponse]
    def start_call_analytics_job(params = {}, options = {})
      request = build_request(:start_call_analytics_job, params)
      request.send_request(options)
    end

    # <p>Transcribes patient-clinician conversations and generates clinical notes. </p>
    #          <p>Amazon Web Services HealthScribe automatically provides rich conversation transcripts, identifies speaker roles, 
    #             classifies dialogues, extracts medical terms, and generates preliminary clinical notes.
    #             To learn more about these features, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe.html">Amazon Web Services HealthScribe</a>.</p>
    #          <p>To make a <code>StartMedicalScribeJob</code> request, you must first upload
    #             your media file into an Amazon S3 bucket; you can then specify the Amazon S3 location
    #             of the file using the <code>Media</code> parameter.</p>
    #          <p>You must include the following parameters in your
    #                 <code>StartMedicalTranscriptionJob</code> request:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DataAccessRoleArn</code>: The ARN of an IAM role with the these minimum permissions: read permission on input file Amazon S3 bucket specified in <code>Media</code>,
    #                 write permission on the Amazon S3 bucket specified in <code>OutputBucketName</code>, and full permissions on the KMS key specified in <code>OutputEncryptionKMSKeyId</code> (if set).
    #                 The role should also allow <code>transcribe.amazonaws.com</code> to assume it.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Media</code> (<code>MediaFileUri</code>): The Amazon S3 location
    #                     of your media file.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MedicalScribeJobName</code>: A custom name you create for your
    #                     MedicalScribe job that is unique within your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OutputBucketName</code>: The Amazon S3 bucket where you want
    #                     your output files stored.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Settings</code>: A <code>MedicalScribeSettings</code> object
    #                 that must set exactly one of <code>ShowSpeakerLabels</code> or <code>ChannelIdentification</code> to true.
    #                 If <code>ShowSpeakerLabels</code> is true, <code>MaxSpeakerLabels</code> must also be set.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ChannelDefinitions</code>: A <code>MedicalScribeChannelDefinitions</code> array should be set if and only if the <code>ChannelIdentification</code>
    #                 value of <code>Settings</code> is set to true. 
    #                 </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartMedicalScribeJobRequest] params
    # @option params [String] :medical_scribe_job_name
    #   <p>A unique name, chosen by you, for your Medical Scribe job.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    # @option params [Types::Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #            <p>For information on supported media formats, refer to the <code>MediaFormat</code> 
    #               parameter or the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a> section 
    #               in the Amazon S3 Developer Guide.</p>
    # @option params [String] :output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your Medical Scribe
    #               output stored. Do not include the <code>S3://</code> prefix of the specified
    #               bucket.</p>
    #            <p>Note that the role specified in the <code>DataAccessRoleArn</code> request parameter 
    #               must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions Required for IAM User Roles</a>.</p>
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your Medical Scribe
    #               output.</p>
    #            <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of four
    #               ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #                           <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #                           <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can specify
    #               your KMS key in one of two ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If you do not specify an encryption key, your output is encrypted with the default
    #                   Amazon S3 key (SSE-S3).</p>
    #            <p>Note that the role specified in the <code>DataAccessRoleArn</code> request parameter 
    #               must have permission to use the specified KMS key.</p>
    # @option params [Hash<String, String>] :kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs,
    #               that provide an added layer of security for your data. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context">KMS encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in KMS</a>.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files, 
    #               write to the output bucket, and use your KMS key if supplied.  
    #                If the role that you specify doesn’t have the appropriate permissions your request fails.</p>
    #            <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #               ARNs</a>.</p>
    # @option params [Types::MedicalScribeSettings] :settings
    #   <p>Makes it possible to control how your Medical Scribe job is processed using a
    #               <code>MedicalScribeSettings</code> object. Specify <code>ChannelIdentification</code> if 
    #               <code>ChannelDefinitions</code> are set. Enabled <code>ShowSpeakerLabels</code> if <code>ChannelIdentification</code> 
    #               and <code>ChannelDefinitions</code> are not set. One and only one of <code>ChannelIdentification</code> and <code>ShowSpeakerLabels</code>
    #               must be set. If <code>ShowSpeakerLabels</code> is set, <code>MaxSpeakerLabels</code> must also be set. Use <code>Settings</code>
    #               to specify a vocabulary or vocabulary filter or both using <code>VocabularyName</code>, <code>VocabularyFilterName</code>. 
    #               <code>VocabularyFilterMethod</code> must be specified if <code>VocabularyFilterName</code> is set.
    #           </p>
    # @option params [Array<Types::MedicalScribeChannelDefinition>] :channel_definitions
    #   <p>Makes it possible to specify which speaker is on which channel. For example, if the clinician
    #                is the first participant to speak, you would set <code>ChannelId</code> of the first <code>ChannelDefinition</code> 
    #                in the list to <code>0</code> (to indicate the first channel) and <code>ParticipantRole</code> to
    #                   <code>CLINICIAN</code> (to indicate that it's the clinician speaking).
    #                   Then you would set the <code>ChannelId</code> of the second <code>ChannelDefinition</code> in the list to
    #                   <code>1</code> (to indicate the second channel) and <code>ParticipantRole</code> to
    #                   <code>PATIENT</code> (to indicate that it's the patient speaking).
    #                   </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to the Medical Scribe job.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @option params [Types::MedicalScribeContext] :medical_scribe_context
    #   <p>The <code>MedicalScribeContext</code> object that contains contextual information which is used during
    #               clinical note generation to add relevant context to the note.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     medical_scribe_job_name: "TranscriptionJobName", # required
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri"
    #     },
    #     output_bucket_name: "OutputBucketName", # required
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     kms_encryption_context: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     data_access_role_arn: "DataAccessRoleArn", # required
    #     settings: { # required
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       vocabulary_name: "VocabularyName",
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #       clinical_note_generation_settings: {
    #         note_template: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "BIRP", "SIRP", "DAP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"]
    #       }
    #     },
    #     channel_definitions: [
    #       {
    #         channel_id: 1, # required
    #         participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     medical_scribe_context: {
    #       patient_context: {
    #         pronouns: "HE_HIM" # One of: ["HE_HIM", "SHE_HER", "THEY_THEM"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_medical_scribe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     medical_scribe_job: {
    #       medical_scribe_job_name: "TranscriptionJobName",
    #       medical_scribe_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       language_code: "en-US" # One of: ["en-US"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       medical_scribe_output: {
    #         transcript_file_uri: "Uri", # required
    #         clinical_document_uri: "Uri", # required
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       settings: {
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #         clinical_note_generation_settings: {
    #           note_template: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "BIRP", "SIRP", "DAP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"]
    #         }
    #       },
    #       data_access_role_arn: "DataAccessRoleArn",
    #       channel_definitions: [
    #         {
    #           channel_id: 1, # required
    #           participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #         }
    #       ],
    #       medical_scribe_context_provided: false,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartMedicalScribeJobResponse]
    def start_medical_scribe_job(params = {}, options = {})
      request = build_request(:start_medical_scribe_job, params)
      request.send_request(options)
    end

    # <p>Transcribes the audio from a medical dictation or conversation and applies any
    #             additional Request Parameters you choose to include in your request.</p>
    #          <p>In addition to many standard transcription features, Amazon Transcribe Medical
    #             provides you with a robust medical vocabulary and, optionally, content identification,
    #             which adds flags to personal health information (PHI). To learn more about these
    #             features, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html">How Amazon Transcribe Medical
    #                 works</a>.</p>
    #          <p>To make a <code>StartMedicalTranscriptionJob</code> request, you must first upload
    #             your media file into an Amazon S3 bucket; you can then specify the Amazon S3 location
    #             of the file using the <code>Media</code> parameter.</p>
    #          <p>You must include the following parameters in your
    #                 <code>StartMedicalTranscriptionJob</code> request:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>region</code>: The Amazon Web Services Region where you are making your
    #                     request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/general/latest/gr/transcribe.html">Amazon Transcribe endpoints and
    #                         quotas</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MedicalTranscriptionJobName</code>: A custom name you create for your
    #                     transcription job that is unique within your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Media</code> (<code>MediaFileUri</code>): The Amazon S3 location
    #                     of your media file.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LanguageCode</code>: This must be <code>en-US</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>OutputBucketName</code>: The Amazon S3 bucket where you want
    #                     your transcript stored. If you want your output stored in a sub-folder of this
    #                     bucket, you must also include <code>OutputKey</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Specialty</code>: This must be <code>PRIMARYCARE</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Type</code>: Choose whether your audio is a conversation or a
    #                     dictation.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartMedicalTranscriptionJobRequest] params
    # @option params [String] :medical_transcription_job_name
    #   <p>A unique name, chosen by you, for your medical transcription job. The name that you
    #               specify is also used as the default name of your transcription output file. If you want
    #               to specify a different name for your transcription output, use the
    #                   <code>OutputKey</code> parameter.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language spoken in the input media file. US
    #               English (<code>en-US</code>) is the only valid value for medical transcription jobs. Any
    #               other value you enter for language code results in a <code>BadRequestException</code>
    #               error.</p>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate, in hertz, of the audio track in your input media file.</p>
    #            <p>If you do not specify the media sample rate, Amazon Transcribe Medical determines it
    #               for you. If you specify the sample rate, it must match the rate detected by Amazon Transcribe Medical; if there's a mismatch between the value that you specify and the
    #               value detected, your job fails. Therefore, in most cases, it's advised to omit
    #                   <code>MediaSampleRateHertz</code> and let Amazon Transcribe Medical determine the
    #               sample rate.</p>
    # @option params [String] :media_format
    #   <p>Specify the format of your input media file.</p>
    # @option params [Types::Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    #            <p>For information on supported media formats, refer to the <code>MediaFormat</code> 
    #               parameter or the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a> section 
    #               in the Amazon S3 Developer Guide.</p>
    # @option params [String] :output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your medical transcription
    #               output stored. Do not include the <code>S3://</code> prefix of the specified
    #               bucket.</p>
    #            <p>If you want your output to go to a sub-folder of this bucket, specify it using the
    #                   <code>OutputKey</code> parameter; <code>OutputBucketName</code> only accepts the
    #               name of a bucket.</p>
    #            <p>For example, if you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET</code>,
    #               set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>. However, if you
    #               want your output stored in <code>S3://DOC-EXAMPLE-BUCKET/test-files/</code>, set
    #                   <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
    #                   <code>OutputKey</code> to <code>test-files/</code>.</p>
    #            <p>Note that Amazon Transcribe must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions Required for IAM User Roles</a>.</p>
    # @option params [String] :output_key
    #   <p>Use in combination with <code>OutputBucketName</code> to specify the output location
    #               of your transcript and, optionally, a unique name for your output file. The default name
    #               for your transcription output is the same as the name you specified for your medical
    #               transcription job (<code>MedicalTranscriptionJobName</code>).</p>
    #            <p>Here are some examples of how you can use <code>OutputKey</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code> and
    #                       'my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify 'my-first-transcription' as the
    #                           <code>MedicalTranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
    #                           <code>OutputBucketName</code>, and 'my-transcript' as the
    #                           <code>OutputKey</code>, your transcription output path is
    #                           <code>s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code> and
    #                       'test-files/my-transcript.json' as the <code>OutputKey</code>, your
    #                       transcription output path is
    #                           <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify 'my-first-transcription' as the
    #                           <code>MedicalTranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
    #                           <code>OutputBucketName</code>, and 'test-files/my-transcript' as the
    #                           <code>OutputKey</code>, your transcription output path is
    #                           <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify the name of an Amazon S3 bucket sub-folder that doesn't exist,
    #               one is created for you.</p>
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your medical transcription
    #               output.</p>
    #            <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of four
    #               ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #                           <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #                           <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can specify
    #               your KMS key in one of two ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If you do not specify an encryption key, your output is encrypted with the default
    #                   Amazon S3 key (SSE-S3).</p>
    #            <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #            <p>Note that the role making the  request must
    #               have permission to use the specified KMS key.</p>
    # @option params [Hash<String, String>] :kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs,
    #               that provide an added layer of security for your data. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context">KMS encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in KMS</a>.</p>
    # @option params [Types::MedicalTranscriptionSetting] :settings
    #   <p>Specify additional optional settings in your  request, including channel
    #               identification, alternative transcriptions, and speaker partitioning. You can use that to
    #               apply custom vocabularies to your transcription job.</p>
    # @option params [String] :content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript. For more
    #               information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health information (PHI) in a transcription</a>.</p>
    # @option params [String] :specialty
    #   <p>Specify the predominant medical specialty represented in your media. For batch
    #               transcriptions, <code>PRIMARYCARE</code> is the only valid value. If you require
    #               additional specialties, refer to .</p>
    # @option params [String] :type
    #   <p>Specify whether your input media contains only one person (<code>DICTATION</code>) or
    #               contains a conversation between two people (<code>CONVERSATION</code>).</p>
    #            <p>For example, <code>DICTATION</code> could be used for a medical professional wanting
    #               to transcribe voice memos; <code>CONVERSATION</code> could be used for transcribing the
    #               doctor-patient dialogue during the patient's office visit.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new medical
    #               transcription job at the time you start this new job.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     medical_transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"], # required
    #     media_sample_rate_hertz: 1,
    #     media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri"
    #     },
    #     output_bucket_name: "OutputBucketName", # required
    #     output_key: "OutputKey",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     kms_encryption_context: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     settings: {
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_name: "VocabularyName"
    #     },
    #     content_identification_type: "PHI" # One of: ["PHI"],
    #     specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE"], # required
    #     type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_medical_transcription_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     medical_transcription_job: {
    #       medical_transcription_job_name: "TranscriptionJobName",
    #       transcription_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #       media_sample_rate_hertz: 1,
    #       media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       transcript: {
    #         transcript_file_uri: "Uri"
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       settings: {
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_name: "VocabularyName"
    #       },
    #       content_identification_type: "PHI" # One of: ["PHI"],
    #       specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE"],
    #       type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartMedicalTranscriptionJobResponse]
    def start_medical_transcription_job(params = {}, options = {})
      request = build_request(:start_medical_transcription_job, params)
      request.send_request(options)
    end

    # <p>Transcribes the audio from a media file and applies any additional Request Parameters
    #             you choose to include in your request.</p>
    #          <p>To make a <code>StartTranscriptionJob</code> request, you must first upload your media
    #             file into an Amazon S3 bucket; you can then specify the Amazon S3
    #             location of the file using the <code>Media</code> parameter.</p>
    #          <p>You must include the following parameters in your <code>StartTranscriptionJob</code>
    #             request:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>region</code>: The Amazon Web Services Region where you are making your
    #                     request. For a list of Amazon Web Services Regions supported with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/general/latest/gr/transcribe.html">Amazon Transcribe endpoints and
    #                         quotas</a>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TranscriptionJobName</code>: A custom name you create for your
    #                     transcription job that is unique within your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Media</code> (<code>MediaFileUri</code>): The Amazon S3 location
    #                     of your media file.</p>
    #             </li>
    #             <li>
    #                <p>One of <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or
    #                         <code>IdentifyMultipleLanguages</code>: If you know the language of your
    #                     media file, specify it using the <code>LanguageCode</code> parameter; you can
    #                     find all valid language codes in the <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #                         languages</a> table. If you do not know the languages spoken in your
    #                     media, use either <code>IdentifyLanguage</code> or
    #                         <code>IdentifyMultipleLanguages</code> and let Amazon Transcribe identify
    #                     the languages for you.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartTranscriptionJobRequest] params
    # @option params [String] :transcription_job_name
    #   <p>A unique name, chosen by you, for your transcription job. The name that you specify is
    #               also used as the default name of your transcription output file. If you want to specify
    #               a different name for your transcription output, use the <code>OutputKey</code>
    #               parameter.</p>
    #            <p>This name is case sensitive, cannot contain spaces, and must be unique within an
    #                   Amazon Web Services account. If you try to create a new job with the same name as an
    #               existing job, you get a <code>ConflictException</code> error.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language spoken in the input media file.</p>
    #            <p>If you're unsure of the language spoken in your media file, consider using
    #                   <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> to enable
    #               automatic language identification.</p>
    #            <p>Note that you must include one of <code>LanguageCode</code>,
    #                   <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    #            <p>For a list of supported languages and their associated language codes, refer to the
    #                   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table.</p>
    #            <note>
    #               <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>) in Amazon Web Services GovCloud (US) (US-West, us-gov-west-1), Amazon Web Services GovCloud (US) (US-East, us-gov-east-1), Canada (Calgary, ca-west-1) and Africa (Cape Town, af-south-1), your media
    #                   file must be encoded at a sample rate of 16,000 Hz or higher.</p>
    #            </note>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate, in hertz, of the audio track in your input media file.</p>
    #            <p>If you do not specify the media sample rate, Amazon Transcribe determines it for you.
    #               If you specify the sample rate, it must match the rate detected by Amazon Transcribe.
    #               If there's a mismatch between the value that you specify and the value detected, your
    #               job fails. In most cases, you can omit <code>MediaSampleRateHertz</code> and let Amazon Transcribe determine the sample rate.</p>
    # @option params [String] :media_format
    #   <p>Specify the format of your input media file.</p>
    # @option params [Types::Media] :media
    #   <p>Describes the Amazon S3 location of the media file you want to use in your
    #               request.</p>
    # @option params [String] :output_bucket_name
    #   <p>The name of the Amazon S3 bucket where you want your transcription output
    #               stored. Do not include the <code>S3://</code> prefix of the specified bucket.</p>
    #            <p>If you want your output to go to a sub-folder of this bucket, specify it using the
    #                   <code>OutputKey</code> parameter; <code>OutputBucketName</code> only accepts the
    #               name of a bucket.</p>
    #            <p>For example, if you want your output stored in <code>S3://DOC-EXAMPLE-BUCKET</code>,
    #               set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>. However, if you
    #               want your output stored in <code>S3://DOC-EXAMPLE-BUCKET/test-files/</code>, set
    #                   <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
    #                   <code>OutputKey</code> to <code>test-files/</code>.</p>
    #            <p>Note that Amazon Transcribe must have permission to use the specified location. You
    #               can change Amazon S3 permissions using the <a href="https://console.aws.amazon.com/s3">Amazon Web Services Management Console</a>. See also <a href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions Required for IAM User Roles</a>.</p>
    #            <p>If you do not specify <code>OutputBucketName</code>, your transcript is placed in a
    #               service-managed Amazon S3 bucket and you are provided with a URI to access your
    #               transcript.</p>
    # @option params [String] :output_key
    #   <p>Use in combination with <code>OutputBucketName</code> to specify the output location
    #               of your transcript and, optionally, a unique name for your output file. The default name
    #               for your transcription output is the same as the name you specified for your
    #               transcription job (<code>TranscriptionJobName</code>).</p>
    #            <p>Here are some examples of how you can use <code>OutputKey</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code> and
    #                       'my-transcript.json' as the <code>OutputKey</code>, your transcription output
    #                       path is <code>s3://DOC-EXAMPLE-BUCKET/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify 'my-first-transcription' as the
    #                           <code>TranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
    #                           <code>OutputBucketName</code>, and 'my-transcript' as the
    #                           <code>OutputKey</code>, your transcription output path is
    #                           <code>s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify 'DOC-EXAMPLE-BUCKET' as the <code>OutputBucketName</code> and
    #                       'test-files/my-transcript.json' as the <code>OutputKey</code>, your
    #                       transcription output path is
    #                           <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify 'my-first-transcription' as the
    #                           <code>TranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
    #                           <code>OutputBucketName</code>, and 'test-files/my-transcript' as the
    #                           <code>OutputKey</code>, your transcription output path is
    #                           <code>s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify the name of an Amazon S3 bucket sub-folder that doesn't exist,
    #               one is created for you.</p>
    # @option params [String] :output_encryption_kms_key_id
    #   <p>The KMS key you want to use to encrypt your transcription
    #               output.</p>
    #            <p>If using a key located in the <b>current</b>
    #               Amazon Web Services account, you can specify your KMS key in one of four
    #               ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the KMS key ID itself. For example,
    #                           <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use an alias for the KMS key ID. For example,
    #                           <code>alias/ExampleAlias</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #                       example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If using a key located in a <b>different</b>
    #               Amazon Web Services account than the current Amazon Web Services account, you can specify
    #               your KMS key in one of two ways:</p>
    #            <ol>
    #               <li>
    #                  <p>Use the ARN for the KMS key ID. For example,
    #                           <code>arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Use the ARN for the KMS key alias. For example,
    #                           <code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p>
    #               </li>
    #            </ol>
    #            <p>If you do not specify an encryption key, your output is encrypted with the default
    #                   Amazon S3 key (SSE-S3).</p>
    #            <p>If you specify a KMS key to encrypt your output, you must also specify
    #               an output location using the <code>OutputLocation</code> parameter.</p>
    #            <p>Note that the role making the  request must
    #               have permission to use the specified KMS key.</p>
    # @option params [Hash<String, String>] :kms_encryption_context
    #   <p>A map of plain text, non-secret key:value pairs, known as encryption context pairs,
    #               that provide an added layer of security for your data. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context">KMS encryption context</a> and <a href="https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html">Asymmetric keys in KMS</a>.</p>
    # @option params [Types::Settings] :settings
    #   <p>Specify additional optional settings in your  
    #               request, including channel identification, alternative transcriptions, speaker
    #               partitioning. You can use that to apply custom vocabularies and vocabulary filters.</p>
    #            <p>If you want to include a custom vocabulary or a custom vocabulary filter (or both)
    #               with your request but <b>do not</b> want to use automatic
    #               language identification, use <code>Settings</code> with the <code>VocabularyName</code>
    #               or <code>VocabularyFilterName</code> (or both) sub-parameter.</p>
    #            <p>If you're using automatic language identification with your request and want to
    #               include a custom language model, a custom vocabulary, or a custom vocabulary filter, use
    #               instead the <code></code> parameter with the
    #                   <code>LanguageModelName</code>, <code>VocabularyName</code> or
    #                   <code>VocabularyFilterName</code> sub-parameters.</p>
    # @option params [Types::ModelSettings] :model_settings
    #   <p>Specify the custom language model you want to include with your transcription job. If
    #               you include <code>ModelSettings</code> in your request, you must include the
    #                   <code>LanguageModelName</code> sub-parameter.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language
    #                   models</a>.</p>
    # @option params [Types::JobExecutionSettings] :job_execution_settings
    #   <p>Makes it possible to control how your transcription job is processed. Currently, the
    #               only <code>JobExecutionSettings</code> modification you can choose is enabling job
    #               queueing using the <code>AllowDeferredExecution</code> sub-parameter.</p>
    #            <p>If you include <code>JobExecutionSettings</code> in your request, you must also
    #               include the sub-parameters: <code>AllowDeferredExecution</code> and
    #                   <code>DataAccessRoleArn</code>.</p>
    # @option params [Types::ContentRedaction] :content_redaction
    #   <p>Makes it possible to redact or flag specified personally identifiable information (PII) in 
    #               your transcript. If you use <code>ContentRedaction</code>, you must also include the 
    #               sub-parameters: <code>RedactionOutput</code> and <code>RedactionType</code>. You can 
    #               optionally include <code>PiiEntityTypes</code> to choose which types of PII you want to redact.
    #               If you do not include <code>PiiEntityTypes</code> in your request, all PII is redacted.</p>
    # @option params [Boolean] :identify_language
    #   <p>Enables automatic language identification in your transcription job request. Use this
    #               parameter if your media file contains only one language. If your media contains multiple
    #               languages, use <code>IdentifyMultipleLanguages</code> instead.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you can optionally include a list of
    #               language codes, using <code>LanguageOptions</code>, that you think may be present in
    #               your media file. Including <code>LanguageOptions</code> restricts
    #                   <code>IdentifyLanguage</code> to only the language options that you specify, which
    #               can improve transcription accuracy.</p>
    #            <p>If you want to apply a custom language model, a custom vocabulary, or a custom
    #               vocabulary filter to your automatic language identification request, include
    #                   <code>LanguageIdSettings</code> with the relevant sub-parameters
    #                   (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #                   <code>VocabularyFilterName</code>). If you include <code>LanguageIdSettings</code>,
    #               also include <code>LanguageOptions</code>.</p>
    #            <p>Note that you must include one of <code>LanguageCode</code>,
    #                   <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    # @option params [Boolean] :identify_multiple_languages
    #   <p>Enables automatic multi-language identification in your transcription job request. Use
    #               this parameter if your media file contains more than one language. If your media
    #               contains only one language, use <code>IdentifyLanguage</code> instead.</p>
    #            <p>If you include <code>IdentifyMultipleLanguages</code>, you can optionally include a
    #               list of language codes, using <code>LanguageOptions</code>, that you think may be
    #               present in your media file. Including <code>LanguageOptions</code> restricts
    #                   <code>IdentifyLanguage</code> to only the language options that you specify, which
    #               can improve transcription accuracy.</p>
    #            <p>If you want to apply a custom vocabulary or a custom vocabulary filter to your
    #               automatic language identification request, include <code>LanguageIdSettings</code> with
    #               the relevant sub-parameters (<code>VocabularyName</code> and
    #                   <code>VocabularyFilterName</code>). If you include <code>LanguageIdSettings</code>,
    #               also include <code>LanguageOptions</code>.</p>
    #            <p>Note that you must include one of <code>LanguageCode</code>,
    #                   <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your
    #               request. If you include more than one of these parameters, your transcription job
    #               fails.</p>
    # @option params [Array<String>] :language_options
    #   <p>You can specify two or more language codes that represent the languages you think may
    #               be present in your media. Including more than five is not recommended. If you're unsure
    #               what languages are present, do not include this parameter.</p>
    #            <p>If you include <code>LanguageOptions</code> in your request, you must also include
    #                   <code>IdentifyLanguage</code>.</p>
    #            <p>For more information, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
    #               languages</a>.</p>
    #            <p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>)in Amazon Web Services GovCloud (US) (US-West, us-gov-west-1), Amazon Web Services GovCloud (US) (US-East, us-gov-east-1), in Canada (Calgary) ca-west-1 and Africa (Cape Town) af-south-1, your media file
    #               must be encoded at a sample rate of 16,000 Hz or higher.</p>
    # @option params [Types::Subtitles] :subtitles
    #   <p>Produces subtitle files for your input media. You can specify WebVTT (*.vtt) and
    #               SubRip (*.srt) formats.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to a new
    #               transcription job at the time you start this new job.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @option params [Hash<String, Types::LanguageIdSettings>] :language_id_settings
    #   <p>If using automatic language identification in your request and you want to apply a
    #               custom language model, a custom vocabulary, or a custom vocabulary filter, include
    #                   <code>LanguageIdSettings</code> with the relevant sub-parameters
    #                   (<code>VocabularyName</code>, <code>LanguageModelName</code>, and
    #                   <code>VocabularyFilterName</code>). Note that multi-language identification
    #                   (<code>IdentifyMultipleLanguages</code>) doesn't support custom language
    #               models.</p>
    #            <p>
    #               <code>LanguageIdSettings</code> supports two to five language codes. Each language
    #               code you include can have an associated custom language model, custom vocabulary, and
    #               custom vocabulary filter. The language codes that you specify must match the languages
    #               of the associated custom language models, custom vocabularies, and custom vocabulary
    #               filters.</p>
    #            <p>It's recommended that you include <code>LanguageOptions</code> when using
    #                   <code>LanguageIdSettings</code> to ensure that the correct language dialect is
    #               identified. For example, if you specify a custom vocabulary that is in
    #                   <code>en-US</code> but Amazon Transcribe determines that the language spoken in
    #               your media is <code>en-AU</code>, your custom vocabulary <i>is not</i>
    #               applied to your transcription. If you include <code>LanguageOptions</code> and include
    #                   <code>en-US</code> as the only English language dialect, your custom vocabulary
    #                   <i>is</i> applied to your transcription.</p>
    #            <p>If you want to include a custom language model with your request but <b>do not</b> want to use automatic language identification, use
    #               instead the <code></code> parameter with the
    #                   <code>LanguageModelName</code> sub-parameter. If you want to include a custom
    #               vocabulary or a custom vocabulary filter (or both) with your request but <b>do not</b> want to use automatic language identification, use
    #               instead the <code></code> parameter with the
    #                   <code>VocabularyName</code> or <code>VocabularyFilterName</code> (or both)
    #               sub-parameter.</p>
    # @option params [Array<Types::ToxicityDetectionSettings>] :toxicity_detection
    #   <p>Enables toxic speech detection in your transcript. If you include 
    #               <code>ToxicityDetection</code> in your request, you must also include
    #               <code>ToxicityCategories</code>.</p>
    #            <p>For information on the types of toxic speech Amazon Transcribe can detect, see 
    #               <a href="https://docs.aws.amazon.com/transcribe/latest/dg/toxic-language.html">Detecting toxic
    #                   speech</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     media_sample_rate_hertz: 1,
    #     media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #     media: { # required
    #       media_file_uri: "Uri",
    #       redacted_media_file_uri: "Uri"
    #     },
    #     output_bucket_name: "OutputBucketName",
    #     output_key: "OutputKey",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     kms_encryption_context: {
    #       "NonEmptyString" => "NonEmptyString"
    #     },
    #     settings: {
    #       vocabulary_name: "VocabularyName",
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"]
    #     },
    #     model_settings: {
    #       language_model_name: "ModelName"
    #     },
    #     job_execution_settings: {
    #       allow_deferred_execution: false,
    #       data_access_role_arn: "DataAccessRoleArn"
    #     },
    #     content_redaction: {
    #       redaction_type: "PII" # One of: ["PII"], # required
    #       redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #       pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #     },
    #     identify_language: false,
    #     identify_multiple_languages: false,
    #     language_options: ["af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"]],
    #     subtitles: {
    #       formats: ["vtt" # One of: ["vtt", "srt"]],
    #       output_start_index: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     language_id_settings: {
    #       "LanguageCode" => {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         language_model_name: "ModelName"
    #       }
    #     },
    #     toxicity_detection: [
    #       {
    #         toxicity_categories: ["ALL" # One of: ["ALL"]], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_transcription_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transcription_job: {
    #       transcription_job_name: "TranscriptionJobName",
    #       transcription_job_status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #       language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #       media_sample_rate_hertz: 1,
    #       media_format: "mp3" # One of: ["mp3", "mp4", "wav", "flac", "ogg", "amr", "webm", "m4a"],
    #       media: {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri"
    #       },
    #       transcript: {
    #         transcript_file_uri: "Uri",
    #         redacted_transcript_file_uri: "Uri"
    #       },
    #       start_time: Time.now,
    #       creation_time: Time.now,
    #       completion_time: Time.now,
    #       failure_reason: "FailureReason",
    #       settings: {
    #         vocabulary_name: "VocabularyName",
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"]
    #       },
    #       model_settings: {
    #         language_model_name: "ModelName"
    #       },
    #       job_execution_settings: {
    #         allow_deferred_execution: false,
    #         data_access_role_arn: "DataAccessRoleArn"
    #       },
    #       content_redaction: {
    #         redaction_type: "PII" # One of: ["PII"], # required
    #         redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"], # required
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "ALL"]]
    #       },
    #       identify_language: false,
    #       identify_multiple_languages: false,
    #       language_options: ["af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"]],
    #       identified_language_score: 1.0,
    #       language_codes: [
    #         {
    #           language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #           duration_in_seconds: 1.0
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       subtitles: {
    #         formats: ["vtt" # One of: ["vtt", "srt"]],
    #         subtitle_file_uris: ["Uri"],
    #         output_start_index: 1
    #       },
    #       language_id_settings: {
    #         "LanguageCode" => {
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           language_model_name: "ModelName"
    #         }
    #       },
    #       toxicity_detection: [
    #         {
    #           toxicity_categories: ["ALL" # One of: ["ALL"]], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartTranscriptionJobResponse]
    def start_transcription_job(params = {}, options = {})
      request = build_request(:start_transcription_job, params)
      request.send_request(options)
    end

    # <p>Adds one or more custom tags, each in the form of a key:value pair, to the specified
    #             resource.</p>
    #          <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                 resources</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you want to tag. ARNs have the format
    #                   <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #            <p>For example,
    #                   <code>arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name</code>.</p>
    #            <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #                   <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #                   <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #                   <code>language-model</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds one or more custom tags, each in the form of a key:value pair, to the specified
    #               resource.</p>
    #            <p>To learn more about using tags with Amazon Transcribe, refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
    #                   resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TranscribeArn", # required
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

    # <p>Removes the specified tags from the specified Amazon Transcribe resource.</p>
    #          <p>If you include <code>UntagResource</code> in your request, you must also include
    #                 <code>ResourceArn</code> and <code>TagKeys</code>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Transcribe resource you want to remove
    #               tags from. ARNs have the format
    #                   <code>arn:partition:service:region:account-id:resource-type/resource-id</code>.</p>
    #            <p>For example,
    #                   <code>arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name</code>.</p>
    #            <p>Valid values for <code>resource-type</code> are: <code>transcription-job</code>,
    #                   <code>medical-transcription-job</code>, <code>vocabulary</code>,
    #                   <code>medical-vocabulary</code>, <code>vocabulary-filter</code>, and
    #                   <code>language-model</code>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Removes the specified tag keys from the specified Amazon Transcribe resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TranscribeArn", # required
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

    # <p>Updates the specified Call Analytics category with new rules. Note that the
    #                 <code>UpdateCallAnalyticsCategory</code> operation overwrites all existing rules
    #             contained in the specified category. You cannot append additional rules onto an existing
    #             category.</p>
    #          <p>To create a new category, see .</p>
    # @param [Hash, Types::UpdateCallAnalyticsCategoryRequest] params
    # @option params [String] :category_name
    #   <p>The name of the Call Analytics category you want to update. Category names are case
    #               sensitive.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The rules used for the updated Call Analytics category. The rules you provide in this
    #               field replace the ones that are currently being used in the specified category.</p>
    # @option params [String] :input_type
    #   <p>Choose whether you want to update a real-time or a post-call category. The 
    #               input type you specify must match the input type specified when the category was created. For
    #               example, if you created a category with the <code>POST_CALL</code> input type, you must
    #               use <code>POST_CALL</code> as the input type when updating this category.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     category_name: "CategoryName", # required
    #     rules: [{ # required
    #       # One of:
    #       non_talk_time_filter: {
    #         threshold: 1,
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         negate: false
    #       },
    #       interruption_filter: {
    #         threshold: 1,
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         negate: false
    #       },
    #       transcript_filter: {
    #         transcript_filter_type: "EXACT" # One of: ["EXACT"], # required
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         negate: false,
    #         targets: ["NonEmptyString"], # required
    #       },
    #       sentiment_filter: {
    #         sentiments: ["POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]], # required
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1
    #         },
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         negate: false
    #       }
    #     }],
    #     input_type: "REAL_TIME" # One of: ["REAL_TIME", "POST_CALL"]
    #   }
    #   options = {}
    #   response = client.update_call_analytics_category(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     category_properties: {
    #       category_name: "CategoryName",
    #       rules: [{
    #         # One of:
    #         non_talk_time_filter: {
    #           threshold: 1,
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         interruption_filter: {
    #           threshold: 1,
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           negate: false
    #         },
    #         transcript_filter: {
    #           transcript_filter_type: "EXACT" # One of: ["EXACT"], # required
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           negate: false,
    #           targets: ["NonEmptyString"], # required
    #         },
    #         sentiment_filter: {
    #           sentiments: ["POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"]], # required
    #           absolute_time_range: {
    #             start_time: 1,
    #             end_time: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           relative_time_range: {
    #             start_percentage: 1,
    #             end_percentage: 1,
    #             first: 1,
    #             last: 1
    #           },
    #           participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #           negate: false
    #         }
    #       }],
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       input_type: "REAL_TIME" # One of: ["REAL_TIME", "POST_CALL"]
    #     }
    #   }
    # @return [Types::UpdateCallAnalyticsCategoryResponse]
    def update_call_analytics_category(params = {}, options = {})
      request = build_request(:update_call_analytics_category, params)
      request.send_request(options)
    end

    # <p>Updates an existing custom medical vocabulary with new values. This operation
    #             overwrites all existing information with your new values; you cannot append new terms
    #             onto an existing custom vocabulary.</p>
    # @param [Hash, Types::UpdateMedicalVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom medical vocabulary you want to update. Custom medical
    #               vocabulary names are case sensitive.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in the custom vocabulary
    #               you want to update. US English (<code>en-US</code>) is the only language supported with
    #                   Amazon Transcribe Medical.</p>
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom medical
    #               vocabulary. The URI must be located in the same Amazon Web Services Region as the
    #               resource you're calling.</p>
    #            <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"], # required
    #     vocabulary_file_uri: "Uri", # required
    #   }
    #   options = {}
    #   response = client.update_medical_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_name: "VocabularyName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     last_modified_time: Time.now,
    #     vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"]
    #   }
    # @return [Types::UpdateMedicalVocabularyResponse]
    def update_medical_vocabulary(params = {}, options = {})
      request = build_request(:update_medical_vocabulary, params)
      request.send_request(options)
    end

    # <p>Updates an existing custom vocabulary with new values. This operation overwrites all
    #             existing information with your new values; you cannot append new terms onto an existing
    #             custom vocabulary.</p>
    # @param [Hash, Types::UpdateVocabularyRequest] params
    # @option params [String] :vocabulary_name
    #   <p>The name of the custom vocabulary you want to update. Custom vocabulary names are case
    #               sensitive.</p>
    # @option params [String] :language_code
    #   <p>The language code that represents the language of the entries in the custom vocabulary
    #               you want to update. Each custom vocabulary must contain terms in only one
    #               language.</p>
    #            <p>A custom vocabulary can only be used to transcribe files in the same language as the
    #               custom vocabulary. For example, if you create a custom vocabulary using US English
    #                   (<code>en-US</code>), you can only apply this custom vocabulary to files that
    #               contain English audio.</p>
    #            <p>For a list of supported languages and their associated language codes, refer to the
    #                   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported languages</a> table.</p>
    # @option params [Array<String>] :phrases
    #   <p>Use this parameter if you want to update your custom vocabulary by including all
    #               desired terms, as comma-separated values, within your request. The other option for
    #               updating your custom vocabulary is to save your entries in a text file and upload them
    #               to an Amazon S3 bucket, then specify the location of your file using the
    #                   <code>VocabularyFileUri</code> parameter.</p>
    #            <p>Note that if you include <code>Phrases</code> in your request, you cannot use
    #                   <code>VocabularyFileUri</code>; you must choose one or the other.</p>
    #            <p>Each language has a character set that contains all allowed characters for that
    #               specific language. If you use unsupported characters, your custom vocabulary filter
    #               request fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom
    #                   Vocabularies</a> to get the character set for your language.</p>
    # @option params [String] :vocabulary_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary.
    #               The URI must be located in the same Amazon Web Services Region as the resource you're
    #               calling.</p>
    #            <p>Here's an example URI path:
    #               <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt</code>
    #            </p>
    #            <p>Note that if you include <code>VocabularyFileUri</code> in your request, you cannot
    #               use the <code>Phrases</code> flag; you must choose one or the other.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files (in this case, your custom
    #               vocabulary). If the role that you specify doesn’t have the appropriate permissions to access
    #               the specified Amazon S3 location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #               ARNs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"], # required
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #     data_access_role_arn: "DataAccessRoleArn"
    #   }
    #   options = {}
    #   response = client.update_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_name: "VocabularyName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     last_modified_time: Time.now,
    #     vocabulary_state: "PENDING" # One of: ["PENDING", "READY", "FAILED"]
    #   }
    # @return [Types::UpdateVocabularyResponse]
    def update_vocabulary(params = {}, options = {})
      request = build_request(:update_vocabulary, params)
      request.send_request(options)
    end

    # <p>Updates an existing custom vocabulary filter with a new list of words. The new list
    #             you provide overwrites all previous entries; you cannot append new terms onto an
    #             existing custom vocabulary filter.</p>
    # @param [Hash, Types::UpdateVocabularyFilterRequest] params
    # @option params [String] :vocabulary_filter_name
    #   <p>The name of the custom vocabulary filter you want to update. Custom vocabulary filter
    #               names are case sensitive.</p>
    # @option params [Array<String>] :words
    #   <p>Use this parameter if you want to update your custom vocabulary filter by including
    #               all desired terms, as comma-separated values, within your request. The other option for
    #               updating your vocabulary filter is to save your entries in a text file and upload them
    #               to an Amazon S3 bucket, then specify the location of your file using the
    #                   <code>VocabularyFilterFileUri</code> parameter.</p>
    #            <p>Note that if you include <code>Words</code> in your request, you cannot use
    #                   <code>VocabularyFilterFileUri</code>; you must choose one or the other.</p>
    #            <p>Each language has a character set that contains all allowed characters for that
    #               specific language. If you use unsupported characters, your custom vocabulary filter
    #               request fails. Refer to <a href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character Sets for Custom
    #                   Vocabularies</a> to get the character set for your language.</p>
    # @option params [String] :vocabulary_filter_file_uri
    #   <p>The Amazon S3 location of the text file that contains your custom vocabulary
    #               filter terms. The URI must be located in the same Amazon Web Services Region as the
    #               resource you're calling.</p>
    #            <p>Here's an example URI path:
    #                   <code>s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt</code>
    #            </p>
    #            <p>Note that if you include <code>VocabularyFilterFileUri</code> in your request, you
    #               cannot use <code>Words</code>; you must choose one or the other.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has permissions to
    #               access the Amazon S3 bucket that contains your input files (in this case, your custom
    #               vocabulary filter). If the role that you specify doesn’t have the appropriate permissions to access
    #               the specified Amazon S3 location, your request fails.</p>
    #            <p>IAM role ARNs have the format
    #               <code>arn:partition:iam::account:role/role-name-with-path</code>. For example:
    #               <code>arn:aws:iam::111122223333:role/Admin</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
    #               ARNs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
    #     data_access_role_arn: "DataAccessRoleArn"
    #   }
    #   options = {}
    #   response = client.update_vocabulary_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     language_code: "af-ZA" # One of: ["af-ZA", "ar-AE", "ar-SA", "da-DK", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fa-IR", "fr-CA", "fr-FR", "he-IL", "hi-IN", "id-ID", "it-IT", "ja-JP", "ko-KR", "ms-MY", "nl-NL", "pt-BR", "pt-PT", "ru-RU", "ta-IN", "te-IN", "tr-TR", "zh-CN", "zh-TW", "th-TH", "en-ZA", "en-NZ", "vi-VN", "sv-SE", "ab-GE", "ast-ES", "az-AZ", "ba-RU", "be-BY", "bg-BG", "bn-IN", "bs-BA", "ca-ES", "ckb-IQ", "ckb-IR", "cs-CZ", "cy-WL", "el-GR", "et-EE", "et-ET", "eu-ES", "fi-FI", "gl-ES", "gu-IN", "ha-NG", "hr-HR", "hu-HU", "hy-AM", "is-IS", "ka-GE", "kab-DZ", "kk-KZ", "kn-IN", "ky-KG", "lg-IN", "lt-LT", "lv-LV", "mhr-RU", "mi-NZ", "mk-MK", "ml-IN", "mn-MN", "mr-IN", "mt-MT", "no-NO", "or-IN", "pa-IN", "pl-PL", "ps-AF", "ro-RO", "rw-RW", "si-LK", "sk-SK", "sl-SI", "so-SO", "sr-RS", "su-ID", "sw-BI", "sw-KE", "sw-RW", "sw-TZ", "sw-UG", "tl-PH", "tt-RU", "ug-CN", "uk-UA", "uz-UZ", "wo-SN", "zh-HK", "zu-ZA"],
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdateVocabularyFilterResponse]
    def update_vocabulary_filter(params = {}, options = {})
      request = build_request(:update_vocabulary_filter, params)
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
      context[:gem_name] = 'aws-sdk-transcribe'
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

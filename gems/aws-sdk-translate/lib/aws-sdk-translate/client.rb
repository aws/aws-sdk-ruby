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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:translate)

module Aws::Translate
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :translate

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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

    # A synchronous action that deletes a custom terminology.
    #
    # @option params [required, String] :name
    #   The name of the custom terminology being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_terminology({
    #     name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteTerminology AWS API Documentation
    #
    # @overload delete_terminology(params = {})
    # @param [Hash] params ({})
    def delete_terminology(params = {}, options = {})
      req = build_request(:delete_terminology, params)
      req.send_request(options)
    end

    # Retrieves a custom terminology.
    #
    # @option params [required, String] :name
    #   The name of the custom terminology being retrieved.
    #
    # @option params [required, String] :terminology_data_format
    #   The data format of the custom terminology being retrieved, either CSV
    #   or TMX.
    #
    # @return [Types::GetTerminologyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTerminologyResponse#terminology_properties #terminology_properties} => Types::TerminologyProperties
    #   * {Types::GetTerminologyResponse#terminology_data_location #terminology_data_location} => Types::TerminologyDataLocation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_terminology({
    #     name: "ResourceName", # required
    #     terminology_data_format: "CSV", # required, accepts CSV, TMX
    #   })
    #
    # @example Response structure
    #
    #   resp.terminology_properties.name #=> String
    #   resp.terminology_properties.description #=> String
    #   resp.terminology_properties.arn #=> String
    #   resp.terminology_properties.source_language_code #=> String
    #   resp.terminology_properties.target_language_codes #=> Array
    #   resp.terminology_properties.target_language_codes[0] #=> String
    #   resp.terminology_properties.encryption_key.type #=> String, one of "KMS"
    #   resp.terminology_properties.encryption_key.id #=> String
    #   resp.terminology_properties.size_bytes #=> Integer
    #   resp.terminology_properties.term_count #=> Integer
    #   resp.terminology_properties.created_at #=> Time
    #   resp.terminology_properties.last_updated_at #=> Time
    #   resp.terminology_data_location.repository_type #=> String
    #   resp.terminology_data_location.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminology AWS API Documentation
    #
    # @overload get_terminology(params = {})
    # @param [Hash] params ({})
    def get_terminology(params = {}, options = {})
      req = build_request(:get_terminology, params)
      req.send_request(options)
    end

    # Creates or updates a custom terminology, depending on whether or not
    # one already exists for the given terminology name. Importing a
    # terminology with the same name as an existing one will merge the
    # terminologies based on the chosen merge strategy. Currently, the only
    # supported merge strategy is OVERWRITE, and so the imported terminology
    # will overwrite an existing terminology of the same name.
    #
    # If you import a terminology that overwrites an existing one, the new
    # terminology take up to 10 minutes to fully propagate and be available
    # for use in a translation due to cache policies with the DataPlane
    # service that performs the translations.
    #
    # @option params [required, String] :name
    #   The name of the custom terminology being imported.
    #
    # @option params [required, String] :merge_strategy
    #   The merge strategy of the custom terminology being imported.
    #   Currently, only the OVERWRITE merge strategy is supported. In this
    #   case, the imported terminology will overwrite an existing terminology
    #   of the same name.
    #
    # @option params [String] :description
    #   The description of the custom terminology being imported.
    #
    # @option params [required, Types::TerminologyData] :terminology_data
    #   The terminology data for the custom terminology being imported.
    #
    # @option params [Types::EncryptionKey] :encryption_key
    #   The encryption key for the custom terminology being imported.
    #
    # @return [Types::ImportTerminologyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportTerminologyResponse#terminology_properties #terminology_properties} => Types::TerminologyProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_terminology({
    #     name: "ResourceName", # required
    #     merge_strategy: "OVERWRITE", # required, accepts OVERWRITE
    #     description: "Description",
    #     terminology_data: { # required
    #       file: "data", # required
    #       format: "CSV", # required, accepts CSV, TMX
    #     },
    #     encryption_key: {
    #       type: "KMS", # required, accepts KMS
    #       id: "EncryptionKeyID", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.terminology_properties.name #=> String
    #   resp.terminology_properties.description #=> String
    #   resp.terminology_properties.arn #=> String
    #   resp.terminology_properties.source_language_code #=> String
    #   resp.terminology_properties.target_language_codes #=> Array
    #   resp.terminology_properties.target_language_codes[0] #=> String
    #   resp.terminology_properties.encryption_key.type #=> String, one of "KMS"
    #   resp.terminology_properties.encryption_key.id #=> String
    #   resp.terminology_properties.size_bytes #=> Integer
    #   resp.terminology_properties.term_count #=> Integer
    #   resp.terminology_properties.created_at #=> Time
    #   resp.terminology_properties.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminology AWS API Documentation
    #
    # @overload import_terminology(params = {})
    # @param [Hash] params ({})
    def import_terminology(params = {}, options = {})
      req = build_request(:import_terminology, params)
      req.send_request(options)
    end

    # Provides a list of custom terminologies associated with your account.
    #
    # @option params [String] :next_token
    #   If the result of the request to ListTerminologies was truncated,
    #   include the NextToken to fetch the next group of custom terminologies.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom terminologies returned per list request.
    #
    # @return [Types::ListTerminologiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTerminologiesResponse#terminology_properties_list #terminology_properties_list} => Array&lt;Types::TerminologyProperties&gt;
    #   * {Types::ListTerminologiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_terminologies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.terminology_properties_list #=> Array
    #   resp.terminology_properties_list[0].name #=> String
    #   resp.terminology_properties_list[0].description #=> String
    #   resp.terminology_properties_list[0].arn #=> String
    #   resp.terminology_properties_list[0].source_language_code #=> String
    #   resp.terminology_properties_list[0].target_language_codes #=> Array
    #   resp.terminology_properties_list[0].target_language_codes[0] #=> String
    #   resp.terminology_properties_list[0].encryption_key.type #=> String, one of "KMS"
    #   resp.terminology_properties_list[0].encryption_key.id #=> String
    #   resp.terminology_properties_list[0].size_bytes #=> Integer
    #   resp.terminology_properties_list[0].term_count #=> Integer
    #   resp.terminology_properties_list[0].created_at #=> Time
    #   resp.terminology_properties_list[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTerminologies AWS API Documentation
    #
    # @overload list_terminologies(params = {})
    # @param [Hash] params ({})
    def list_terminologies(params = {}, options = {})
      req = build_request(:list_terminologies, params)
      req.send_request(options)
    end

    # Translates input text from the source language to the target language.
    # It is not necessary to use English (en) as either the source or the
    # target language but not all language combinations are supported by
    # Amazon Translate. For more information, see [Supported Language
    # Pairs][1].
    #
    # * Arabic (ar)
    #
    # * Chinese (Simplified) (zh)
    #
    # * Chinese (Traditional) (zh-TW)
    #
    # * Czech (cs)
    #
    # * Danish (da)
    #
    # * Dutch (nl)
    #
    # * English (en)
    #
    # * Finnish (fi)
    #
    # * French (fr)
    #
    # * German (de)
    #
    # * Hebrew (he)
    #
    # * Indonesian (id)
    #
    # * Italian (it)
    #
    # * Japanese (ja)
    #
    # * Korean (ko)
    #
    # * Polish (pl)
    #
    # * Portuguese (pt)
    #
    # * Russian (ru)
    #
    # * Spanish (es)
    #
    # * Swedish (sv)
    #
    # * Turkish (tr)
    #
    # To have Amazon Translate determine the source language of your text,
    # you can specify `auto` in the `SourceLanguageCode` field. If you
    # specify `auto`, Amazon Translate will call Amazon Comprehend to
    # determine the source language.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/translate/latest/dg/pairs.html
    #
    # @option params [required, String] :text
    #   The text to translate. The text string can be a maximum of 5,000 bytes
    #   long. Depending on your character set, this may be fewer than 5,000
    #   characters.
    #
    # @option params [Array<String>] :terminology_names
    #   The TerminologyNames list that is taken as input to the TranslateText
    #   request. This has a minimum length of 0 and a maximum length of 1.
    #
    # @option params [required, String] :source_language_code
    #   The language code for the language of the source text. The language
    #   must be a language supported by Amazon Translate.
    #
    #   To have Amazon Translate determine the source language of your text,
    #   you can specify `auto` in the `SourceLanguageCode` field. If you
    #   specify `auto`, Amazon Translate will call Amazon Comprehend to
    #   determine the source language.
    #
    # @option params [required, String] :target_language_code
    #   The language code requested for the language of the target text. The
    #   language must be a language supported by Amazon Translate.
    #
    # @return [Types::TranslateTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TranslateTextResponse#translated_text #translated_text} => String
    #   * {Types::TranslateTextResponse#source_language_code #source_language_code} => String
    #   * {Types::TranslateTextResponse#target_language_code #target_language_code} => String
    #   * {Types::TranslateTextResponse#applied_terminologies #applied_terminologies} => Array&lt;Types::AppliedTerminology&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.translate_text({
    #     text: "BoundedLengthString", # required
    #     terminology_names: ["ResourceName"],
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.translated_text #=> String
    #   resp.source_language_code #=> String
    #   resp.target_language_code #=> String
    #   resp.applied_terminologies #=> Array
    #   resp.applied_terminologies[0].name #=> String
    #   resp.applied_terminologies[0].terms #=> Array
    #   resp.applied_terminologies[0].terms[0].source_text #=> String
    #   resp.applied_terminologies[0].terms[0].target_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateText AWS API Documentation
    #
    # @overload translate_text(params = {})
    # @param [Hash] params ({})
    def translate_text(params = {}, options = {})
      req = build_request(:translate_text, params)
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
      context[:gem_name] = 'aws-sdk-translate'
      context[:gem_version] = '1.14.0'
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

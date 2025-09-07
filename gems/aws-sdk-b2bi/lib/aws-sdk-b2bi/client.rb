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
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::B2bi
  # An API client for Aws::B2bi.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::B2BI

    add_plugin(::Aws::B2bi::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

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
    # @option options [Aws::B2bi::EndpointProvider] :endpoint_provider
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

    # <p>Instantiates a capability based on the specified parameters. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @param [Hash, Types::CreateCapabilityRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the capability, used to identify it.</p>
    # @option params [String] :type
    #   <p>Specifies the type of the capability. Currently, only <code>edi</code> is supported.</p>
    # @option params [Types::CapabilityConfiguration] :configuration
    #   <p>Specifies a structure that contains the details for a capability.</p>
    # @option params [Array<Types::S3Location>] :instructions_documents
    #   <p>Specifies one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    # @option params [String] :client_token
    #   <p>Reserved for future use.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    # @example Sample CreateCapability call
    #   # Example operation for create_capability
    #   params = {
    #     name: "b2biexample",
    #     type: edi,
    #     configuration: {
    #     "edi" => {
    #       "type" => {
    #         "x12Details" => {
    #           "transactionSet" => X12_110,
    #           "version" => VERSION_4010
    #         }
    #       },
    #       "inputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => input/
    #       },
    #       "outputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => output/
    #       },
    #       "transformerId" => tr-9a893cf536df4658b
    #     }
    #   },
    #     instructions_documents: [
    #       {
    #         bucket_name: "test-bucket",
    #         key: "instructiondoc.txt"
    #       }
    #     ],
    #     client_token: "foo",
    #     tags: [
    #       {
    #         key: "capabilityKey1",
    #         value: "capabilityValue1"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_capability(params, options)
    #   response.to_h #=>
    #   {
    #     capability_arn: "arn:aws:b2bi:us-west-2:123456789012:capability/ca-963a8121e4fc4e348",
    #     capability_id: "ca-963a8121e4fc4e348",
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     configuration: {
    #     "edi" => {
    #       "type" => {
    #         "x12Details" => {
    #           "transactionSet" => X12_110,
    #           "version" => VERSION_4010
    #         }
    #       },
    #       "inputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => input/
    #       },
    #       "outputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => output/
    #       },
    #       "transformerId" => tr-9a893cf536df4658b
    #     }
    #   },
    #     instructions_documents: [
    #       {
    #         bucket_name: "test-bucket",
    #         key: "instructiondoc.txt"
    #       }
    #     ],
    #     name: "b2biexample",
    #     type: edi
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CapabilityName", # required
    #     type: "edi" # One of: ["edi"], # required
    #     configuration: { # required
    #       # One of:
    #       edi: {
    #         capability_direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"],
    #         type: { # required
    #           # One of:
    #           x12_details: {
    #             transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #             version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #           }
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         transformer_id: "TransformerId", # required
    #       }
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key"
    #       }
    #     ],
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_capability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capability_id: "CapabilityId", # required
    #     capability_arn: "ResourceArn", # required
    #     name: "CapabilityName", # required
    #     type: "edi" # One of: ["edi"], # required
    #     configuration: { # required
    #       # One of:
    #       edi: {
    #         capability_direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"],
    #         type: { # required
    #           # One of:
    #           x12_details: {
    #             transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #             version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #           }
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         transformer_id: "TransformerId", # required
    #       }
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key"
    #       }
    #     ],
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateCapabilityResponse]
    def create_capability(params = {}, options = {})
      request = build_request(:create_capability, params)
      request.send_request(options)
    end

    # <p>Creates a partnership between a customer and a trading partner, based on the supplied parameters. A partnership represents the connection between you and your trading partner. It ties together a profile and one or more trading capabilities.</p>
    # @param [Hash, Types::CreatePartnershipRequest] params
    # @option params [String] :profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile connected to this partnership.</p>
    # @option params [String] :name
    #   <p>Specifies a descriptive name for the partnership.</p>
    # @option params [String] :email
    #   <p>Specifies the email address associated with this trading partner.</p>
    # @option params [String] :phone
    #   <p>Specifies the phone number associated with the partnership.</p>
    # @option params [Array<String>] :capabilities
    #   <p>Specifies a list of the capabilities associated with this partnership.</p>
    # @option params [Types::CapabilityOptions] :capability_options
    #   <p>Specify the structure that contains the details for the associated capabilities.</p>
    # @option params [String] :client_token
    #   <p>Reserved for future use.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    # @example Sample CreatePartnership call
    #   # Example operation for create_partnership
    #   params = {
    #     capabilities: [
    #       "ca-963a8121e4fc4e348"
    #     ],
    #     client_token: "foo",
    #     email: "john@example.com",
    #     name: "b2bipartner",
    #     phone: "5555555555",
    #     profile_id: "p-60fbc37c87f04fce9",
    #     tags: [
    #       {
    #         key: "sampleKey1",
    #         value: "sampleValue1"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_partnership(params, options)
    #   response.to_h #=>
    #   {
    #     capabilities: [
    #       "ca-963a8121e4fc4e348"
    #     ],
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     email: "john@example.com",
    #     name: "b2bipartner",
    #     partnership_arn: "arn:aws:b2bi:us-west-2:123456789012:partnership/ps-60fbc37c87f04fce9",
    #     partnership_id: "ps-219fa02f5b4242af8",
    #     phone: "5555555555",
    #     profile_id: "p-60fbc37c87f04fce9",
    #     trading_partner_id: "tp-2a17ca447f6f4a8a8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #     name: "PartnerName", # required
    #     email: "Email", # required
    #     phone: "Phone",
    #     capabilities: ["CapabilityId"], # required
    #     capability_options: {
    #       outbound_edi: {
    #         # One of:
    #         x12: {
    #           common: {
    #             interchange_control_headers: {
    #               sender_id_qualifier: "X12IdQualifier",
    #               sender_id: "X12SenderId",
    #               receiver_id_qualifier: "X12IdQualifier",
    #               receiver_id: "X12ReceiverId",
    #               repetition_separator: "X12RepetitionSeparator",
    #               acknowledgment_requested_code: "X12AcknowledgmentRequestedCode",
    #               usage_indicator_code: "X12UsageIndicatorCode"
    #             },
    #             functional_group_headers: {
    #               application_sender_code: "X12ApplicationSenderCode",
    #               application_receiver_code: "X12ApplicationReceiverCode",
    #               responsible_agency_code: "X12ResponsibleAgencyCode"
    #             },
    #             delimiters: {
    #               component_separator: "X12ComponentSeparator",
    #               data_element_separator: "X12DataElementSeparator",
    #               segment_terminator: "X12SegmentTerminator"
    #             },
    #             validate_edi: false,
    #             control_numbers: {
    #               starting_interchange_control_number: 1,
    #               starting_functional_group_control_number: 1,
    #               starting_transaction_set_control_number: 1
    #             },
    #             gs05_time_format: "HHMM" # One of: ["HHMM", "HHMMSS", "HHMMSSDD"]
    #           },
    #           wrap_options: {
    #             wrap_by: "SEGMENT" # One of: ["SEGMENT", "ONE_LINE", "LINE_LENGTH"], # required
    #             line_terminator: "CRLF" # One of: ["CRLF", "LF", "CR"],
    #             line_length: 1
    #           }
    #         }
    #       },
    #       inbound_edi: {
    #         x12: {
    #           acknowledgment_options: {
    #             functional_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS", "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"], # required
    #             technical_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS"], # required
    #           }
    #         }
    #       }
    #     },
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_partnership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #     partnership_id: "PartnershipId", # required
    #     partnership_arn: "ResourceArn", # required
    #     name: "PartnerName",
    #     email: "Email",
    #     phone: "Phone",
    #     capabilities: ["CapabilityId"],
    #     capability_options: {
    #       outbound_edi: {
    #         # One of:
    #         x12: {
    #           common: {
    #             interchange_control_headers: {
    #               sender_id_qualifier: "X12IdQualifier",
    #               sender_id: "X12SenderId",
    #               receiver_id_qualifier: "X12IdQualifier",
    #               receiver_id: "X12ReceiverId",
    #               repetition_separator: "X12RepetitionSeparator",
    #               acknowledgment_requested_code: "X12AcknowledgmentRequestedCode",
    #               usage_indicator_code: "X12UsageIndicatorCode"
    #             },
    #             functional_group_headers: {
    #               application_sender_code: "X12ApplicationSenderCode",
    #               application_receiver_code: "X12ApplicationReceiverCode",
    #               responsible_agency_code: "X12ResponsibleAgencyCode"
    #             },
    #             delimiters: {
    #               component_separator: "X12ComponentSeparator",
    #               data_element_separator: "X12DataElementSeparator",
    #               segment_terminator: "X12SegmentTerminator"
    #             },
    #             validate_edi: false,
    #             control_numbers: {
    #               starting_interchange_control_number: 1,
    #               starting_functional_group_control_number: 1,
    #               starting_transaction_set_control_number: 1
    #             },
    #             gs05_time_format: "HHMM" # One of: ["HHMM", "HHMMSS", "HHMMSSDD"]
    #           },
    #           wrap_options: {
    #             wrap_by: "SEGMENT" # One of: ["SEGMENT", "ONE_LINE", "LINE_LENGTH"], # required
    #             line_terminator: "CRLF" # One of: ["CRLF", "LF", "CR"],
    #             line_length: 1
    #           }
    #         }
    #       },
    #       inbound_edi: {
    #         x12: {
    #           acknowledgment_options: {
    #             functional_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS", "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"], # required
    #             technical_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS"], # required
    #           }
    #         }
    #       }
    #     },
    #     trading_partner_id: "TradingPartnerId",
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreatePartnershipResponse]
    def create_partnership(params = {}, options = {})
      request = build_request(:create_partnership, params)
      request.send_request(options)
    end

    # <p>Creates a customer profile. You can have up to five customer profiles, each representing a distinct private network. A profile is the mechanism used to create the concept of a private network.</p>
    # @param [Hash, Types::CreateProfileRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the profile.</p>
    # @option params [String] :email
    #   <p>Specifies the email address associated with this customer profile.</p>
    # @option params [String] :phone
    #   <p>Specifies the phone number associated with the profile.</p>
    # @option params [String] :business_name
    #   <p>Specifies the name for the business associated with this profile.</p>
    # @option params [String] :logging
    #   <p>Specifies whether or not logging is enabled for this profile.</p>
    # @option params [String] :client_token
    #   <p>Reserved for future use.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    # @example Sample CreateProfile call
    #   # Example operation for create_profile
    #   params = {
    #     business_name: "John's Shipping",
    #     client_token: "foo",
    #     email: "john@example.com",
    #     logging: ENABLED,
    #     name: "Shipping Profile",
    #     phone: "5555555555",
    #     tags: [
    #       {
    #         key: "sampleKey",
    #         value: "sampleValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    #   response.to_h #=>
    #   {
    #     business_name: "John's Trucking",
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     email: "john@example.com",
    #     logging: ENABLED,
    #     log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs",
    #     name: "Shipping Profile",
    #     phone: "5555555555",
    #     profile_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9",
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProfileName", # required
    #     email: "Email",
    #     phone: "Phone", # required
    #     business_name: "BusinessName", # required
    #     logging: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #     profile_arn: "ResourceArn", # required
    #     name: "ProfileName", # required
    #     business_name: "BusinessName", # required
    #     phone: "Phone", # required
    #     email: "Email",
    #     logging: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     log_group_name: "LogGroupName",
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateProfileResponse]
    def create_profile(params = {}, options = {})
      request = build_request(:create_profile, params)
      request.send_request(options)
    end

    # <p>Amazon Web Services B2B Data Interchange uses a mapping template in JSONata or XSLT format to transform a customer input file into a JSON or XML file that can be converted to EDI.</p> <p>If you provide a sample EDI file with the same structure as the EDI files that you wish to generate, then the service can generate a mapping template. The starter template contains placeholder values which you can replace with JSONata or XSLT expressions to take data from your input file and insert it into the JSON or XML file that is used to generate the EDI.</p> <p>If you do not provide a sample EDI file, then the service can generate a mapping template based on the EDI settings in the <code>templateDetails</code> parameter. </p> <p> Currently, we only support generating a template that can generate the input to produce an Outbound X12 EDI file.</p>
    # @param [Hash, Types::CreateStarterMappingTemplateRequest] params
    # @option params [Types::S3Location] :output_sample_location
    #   <p>Specify the location of the sample EDI file that is used to generate the mapping template.</p>
    # @option params [String] :mapping_type
    #   <p>Specify the format for the mapping template: either JSONATA or XSLT.</p>
    # @option params [Types::TemplateDetails] :template_details
    #   <p> Describes the details needed for generating the template. Specify the X12 transaction set and version for which the template is used: currently, we only support X12. </p>
    # @example Sample CreateStarterMappingTemplate call
    #   # Example operation for create_starter_mapping_template
    #   params = {
    #     mapping_type: JSONATA,
    #     template_details: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   },
    #     output_sample_location: {
    #       bucket_name: "output-sample-bucket",
    #       key: "output-sample-key"
    #     }
    #   }
    #   options = {}
    #   response = client.create_starter_mapping_template(params, options)
    #   response.to_h #=>
    #   {
    #     mapping_template: "Example Mapping Template"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     output_sample_location: {
    #       bucket_name: "BucketName",
    #       key: "S3Key"
    #     },
    #     mapping_type: "JSONATA" # One of: ["JSONATA", "XSLT"], # required
    #     template_details: { # required
    #       # One of:
    #       x12: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_starter_mapping_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mapping_template: "String", # required
    #   }
    # @return [Types::CreateStarterMappingTemplateResponse]
    def create_starter_mapping_template(params = {}, options = {})
      request = build_request(:create_starter_mapping_template, params)
      request.send_request(options)
    end

    # <p>Creates a transformer. Amazon Web Services B2B Data Interchange currently supports two scenarios:</p> <ul> <li> <p> <i>Inbound EDI</i>: the Amazon Web Services customer receives an EDI file from their trading partner. Amazon Web Services B2B Data Interchange converts this EDI file into a JSON or XML file with a service-defined structure. A mapping template provided by the customer, in JSONata or XSLT format, is optionally applied to this file to produce a JSON or XML file with the structure the customer requires.</p> </li> <li> <p> <i>Outbound EDI</i>: the Amazon Web Services customer has a JSON or XML file containing data that they wish to use in an EDI file. A mapping template, provided by the customer (in either JSONata or XSLT format) is applied to this file to generate a JSON or XML file in the service-defined structure. This file is then converted to an EDI file.</p> </li> </ul> <note> <p>The following fields are provided for backwards compatibility only: <code>fileFormat</code>, <code>mappingTemplate</code>, <code>ediType</code>, and <code>sampleDocument</code>.</p> <ul> <li> <p>Use the <code>mapping</code> data type in place of <code>mappingTemplate</code> and <code>fileFormat</code> </p> </li> <li> <p>Use the <code>sampleDocuments</code> data type in place of <code>sampleDocument</code> </p> </li> <li> <p>Use either the <code>inputConversion</code> or <code>outputConversion</code> in place of <code>ediType</code> </p> </li> </ul> </note>
    # @param [Hash, Types::CreateTransformerRequest] params
    # @option params [String] :name
    #   <p>Specifies the name of the transformer, used to identify it.</p>
    # @option params [String] :client_token
    #   <p>Reserved for future use.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    # @option params [String] :file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    # @option params [String] :mapping_template
    #   <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p> <note> <p>This parameter is available for backwards compatibility. Use the <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html">Mapping</a> data type instead.</p> </note>
    # @option params [Types::EdiType] :edi_type
    #   <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    # @option params [String] :sample_document
    #   <p>Specifies a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    # @option params [Types::InputConversion] :input_conversion
    #   <p>Specify the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    # @option params [Types::Mapping] :mapping
    #   <p>Specify the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    # @option params [Types::OutputConversion] :output_conversion
    #   <p>A structure that contains the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    # @option params [Types::SampleDocuments] :sample_documents
    #   <p>Specify a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    # @example Sample CreateTransformer call
    #   # Example operation for create_transformer
    #   params = {
    #     client_token: "foo",
    #     name: "transformX12",
    #     input_conversion: {
    #       from_format: X12,
    #       format_options: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   }
    #     },
    #     mapping: {
    #       template_language: JSONATA,
    #       template: "{}"
    #     },
    #     sample_documents: {
    #       bucket_name: "test-bucket",
    #       keys: [
    #         {
    #           input: "sampleDoc.txt"
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "sampleKey",
    #         value: "sampleValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_transformer(params, options)
    #   response.to_h #=>
    #   {
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     name: "transformX12",
    #     input_conversion: {
    #       from_format: X12,
    #       format_options: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   }
    #     },
    #     mapping: {
    #       template_language: JSONATA,
    #       template: "{}"
    #     },
    #     sample_documents: {
    #       bucket_name: "test-bucket",
    #       keys: [
    #         {
    #           input: "sampleDoc.txt"
    #         }
    #       ]
    #     },
    #     status: inactive,
    #     transformer_arn: "arn:aws:b2bi:us-west-2:123456789012:transformer/tr-974c129999f84d8c9",
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TransformerName", # required
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"],
    #     mapping_template: "MappingTemplate",
    #     edi_type: {
    #       # One of:
    #       x12_details: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     },
    #     sample_document: "FileLocation",
    #     input_conversion: {
    #       from_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       },
    #       advanced_options: {
    #         x12: {
    #           split_options: {
    #             split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #           }
    #         }
    #       }
    #     },
    #     mapping: {
    #       template_language: "XSLT" # One of: ["XSLT", "JSONATA"], # required
    #       template: "MappingTemplate"
    #     },
    #     output_conversion: {
    #       to_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       }
    #     },
    #     sample_documents: {
    #       bucket_name: "BucketName", # required
    #       keys: [ # required
    #         {
    #           input: "S3Key",
    #           output: "S3Key"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformer_id: "TransformerId", # required
    #     transformer_arn: "ResourceArn", # required
    #     name: "TransformerName", # required
    #     status: "active" # One of: ["active", "inactive"], # required
    #     created_at: Time.now, # required
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"],
    #     mapping_template: "MappingTemplate",
    #     edi_type: {
    #       # One of:
    #       x12_details: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     },
    #     sample_document: "FileLocation",
    #     input_conversion: {
    #       from_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       },
    #       advanced_options: {
    #         x12: {
    #           split_options: {
    #             split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #           }
    #         }
    #       }
    #     },
    #     mapping: {
    #       template_language: "XSLT" # One of: ["XSLT", "JSONATA"], # required
    #       template: "MappingTemplate"
    #     },
    #     output_conversion: {
    #       to_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       }
    #     },
    #     sample_documents: {
    #       bucket_name: "BucketName", # required
    #       keys: [ # required
    #         {
    #           input: "S3Key",
    #           output: "S3Key"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateTransformerResponse]
    def create_transformer(params = {}, options = {})
      request = build_request(:create_transformer, params)
      request.send_request(options)
    end

    # <p>Deletes the specified capability. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @param [Hash, Types::DeleteCapabilityRequest] params
    # @option params [String] :capability_id
    #   <p>Specifies a system-assigned unique identifier for the capability.</p>
    # @example Sample DeleteCapabilty call
    #   # Example operation for delete_capability
    #   params = {
    #     capability_id: "ca-963a8121e4fc4e348"
    #   }
    #   options = {}
    #   response = client.delete_capability(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     capability_id: "CapabilityId", # required
    #   }
    #   options = {}
    #   response = client.delete_capability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_capability(params = {}, options = {})
      request = build_request(:delete_capability, params)
      request.send_request(options)
    end

    # <p>Deletes the specified partnership. A partnership represents the connection between you and your trading partner. It ties together a profile and one or more trading capabilities.</p>
    # @param [Hash, Types::DeletePartnershipRequest] params
    # @option params [String] :partnership_id
    #   <p>Specifies the unique, system-generated identifier for a partnership.</p>
    # @example Sample DeletePartnership call
    #   # Example operation for delete_partnership
    #   params = {
    #     partnership_id: "ps-219fa02f5b4242af8"
    #   }
    #   options = {}
    #   response = client.delete_partnership(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     partnership_id: "PartnershipId", # required
    #   }
    #   options = {}
    #   response = client.delete_partnership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_partnership(params = {}, options = {})
      request = build_request(:delete_partnership, params)
      request.send_request(options)
    end

    # <p>Deletes the specified profile. A profile is the mechanism used to create the concept of a private network.</p>
    # @param [Hash, Types::DeleteProfileRequest] params
    # @option params [String] :profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile.</p>
    # @example Sample DeleteProfile call
    #   # Example operation for delete_profile
    #   params = {
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_profile(params = {}, options = {})
      request = build_request(:delete_profile, params)
      request.send_request(options)
    end

    # <p>Deletes the specified transformer. A transformer can take an EDI file as input and transform it into a JSON-or XML-formatted document. Alternatively, a transformer can take a JSON-or XML-formatted document as input and transform it into an EDI file.</p>
    # @param [Hash, Types::DeleteTransformerRequest] params
    # @option params [String] :transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    # @example Sample DeleteTransformer call
    #   # Example operation for delete_transformer
    #   params = {
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    #   options = {}
    #   response = client.delete_transformer(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     transformer_id: "TransformerId", # required
    #   }
    #   options = {}
    #   response = client.delete_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_transformer(params = {}, options = {})
      request = build_request(:delete_transformer, params)
      request.send_request(options)
    end

    # <p>Takes sample input and output documents and uses Amazon Bedrock to generate a mapping automatically. Depending on the accuracy and other factors, you can then edit the mapping for your needs.</p> <note> <p>Before you can use the AI-assisted feature for Amazon Web Services B2B Data Interchange you must enable models in Amazon Bedrock. For details, see <a href="https://docs.aws.amazon.com/b2bi/latest/userguide/ai-assisted-mapping.html#ai-assist-prereq">AI-assisted template mapping prerequisites</a> in the <i>Amazon Web Services B2B Data Interchange User guide</i>.</p> </note> <p>To generate a mapping, perform the following steps:</p> <ol> <li> <p>Start with an X12 EDI document to use as the input.</p> </li> <li> <p>Call <code>TestMapping</code> using your EDI document.</p> </li> <li> <p>Use the output from the <code>TestMapping</code> operation as either input or output for your GenerateMapping call, along with your sample file.</p> </li> </ol>
    # @param [Hash, Types::GenerateMappingRequest] params
    # @option params [String] :input_file_content
    #   <p>Provide the contents of a sample X12 EDI file, either in JSON or XML format, to use as a starting point for the mapping.</p>
    # @option params [String] :output_file_content
    #   <p>Provide the contents of a sample X12 EDI file, either in JSON or XML format, to use as a target for the mapping.</p>
    # @option params [String] :mapping_type
    #   <p>Specify the mapping type: either <code>JSONATA</code> or <code>XSLT.</code> </p>
    # @example Sample GenerateMapping call
    #   # Example operation for generate_mapping
    #   params = {
    #     input_file_content: "Sample input file content",
    #     output_file_content: "Sample output file content",
    #     mapping_type: JSONATA
    #   }
    #   options = {}
    #   response = client.generate_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     mapping_template: "Sample mapping content",
    #     mapping_accuracy: 0.95
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     input_file_content: "GenerateMappingInputFileContent", # required
    #     output_file_content: "GenerateMappingOutputFileContent", # required
    #     mapping_type: "JSONATA" # One of: ["JSONATA", "XSLT"], # required
    #   }
    #   options = {}
    #   response = client.generate_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mapping_template: "String", # required
    #     mapping_accuracy: 1.0
    #   }
    # @return [Types::GenerateMappingResponse]
    def generate_mapping(params = {}, options = {})
      request = build_request(:generate_mapping, params)
      request.send_request(options)
    end

    # <p>Retrieves the details for the specified capability. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @param [Hash, Types::GetCapabilityRequest] params
    # @option params [String] :capability_id
    #   <p>Specifies a system-assigned unique identifier for the capability.</p>
    # @example Sample GetCapabilty call
    #   # Example operation for get_capability
    #   params = {
    #     capability_id: "ca-963a8121e4fc4e348"
    #   }
    #   options = {}
    #   response = client.get_capability(params, options)
    #   response.to_h #=>
    #   {
    #     capability_arn: "arn:aws:b2bi:us-west-2:123456789012:capability/ca-963a8121e4fc4e348",
    #     capability_id: "ca-963a8121e4fc4e348",
    #     configuration: {
    #     "edi" => {
    #       "type" => {
    #         "x12Details" => {
    #           "transactionSet" => X12_110,
    #           "version" => VERSION_4010
    #         }
    #       },
    #       "inputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => input/
    #       },
    #       "outputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => output/
    #       },
    #       "transformerId" => tr-9a893cf536df4658b
    #     }
    #   },
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     instructions_documents: [
    #       {
    #         bucket_name: "test-bucket",
    #         key: "instructiondoc.txt"
    #       }
    #     ],
    #     modified_at: Time.parse("2023-11-02T21:51:05.504Z"),
    #     name: "b2biexample",
    #     type: edi
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     capability_id: "CapabilityId", # required
    #   }
    #   options = {}
    #   response = client.get_capability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capability_id: "CapabilityId", # required
    #     capability_arn: "ResourceArn", # required
    #     name: "CapabilityName", # required
    #     type: "edi" # One of: ["edi"], # required
    #     configuration: { # required
    #       # One of:
    #       edi: {
    #         capability_direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"],
    #         type: { # required
    #           # One of:
    #           x12_details: {
    #             transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #             version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #           }
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         transformer_id: "TransformerId", # required
    #       }
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key"
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     modified_at: Time.now
    #   }
    # @return [Types::GetCapabilityResponse]
    def get_capability(params = {}, options = {})
      request = build_request(:get_capability, params)
      request.send_request(options)
    end

    # <p>Retrieves the details for a partnership, based on the partner and profile IDs specified. A partnership represents the connection between you and your trading partner. It ties together a profile and one or more trading capabilities.</p>
    # @param [Hash, Types::GetPartnershipRequest] params
    # @option params [String] :partnership_id
    #   <p>Specifies the unique, system-generated identifier for a partnership.</p>
    # @example Sample GetPartnership call
    #   # Example operation for get_partnership
    #   params = {
    #     partnership_id: "ps-219fa02f5b4242af8"
    #   }
    #   options = {}
    #   response = client.get_partnership(params, options)
    #   response.to_h #=>
    #   {
    #     capabilities: [
    #       "ca-963a8121e4fc4e348"
    #     ],
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     email: "john@example.com",
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     name: "b2bipartner",
    #     partnership_arn: "arn:aws:b2bi:us-west-2:123456789012:partnership/ps-219fa02f5b4242af8",
    #     partnership_id: "ps-219fa02f5b4242af8",
    #     phone: "5555555555",
    #     profile_id: "p-60fbc37c87f04fce9",
    #     trading_partner_id: "tp-2a17ca447f6f4a8a8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     partnership_id: "PartnershipId", # required
    #   }
    #   options = {}
    #   response = client.get_partnership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #     partnership_id: "PartnershipId", # required
    #     partnership_arn: "ResourceArn", # required
    #     name: "PartnerName",
    #     email: "Email",
    #     phone: "Phone",
    #     capabilities: ["CapabilityId"],
    #     capability_options: {
    #       outbound_edi: {
    #         # One of:
    #         x12: {
    #           common: {
    #             interchange_control_headers: {
    #               sender_id_qualifier: "X12IdQualifier",
    #               sender_id: "X12SenderId",
    #               receiver_id_qualifier: "X12IdQualifier",
    #               receiver_id: "X12ReceiverId",
    #               repetition_separator: "X12RepetitionSeparator",
    #               acknowledgment_requested_code: "X12AcknowledgmentRequestedCode",
    #               usage_indicator_code: "X12UsageIndicatorCode"
    #             },
    #             functional_group_headers: {
    #               application_sender_code: "X12ApplicationSenderCode",
    #               application_receiver_code: "X12ApplicationReceiverCode",
    #               responsible_agency_code: "X12ResponsibleAgencyCode"
    #             },
    #             delimiters: {
    #               component_separator: "X12ComponentSeparator",
    #               data_element_separator: "X12DataElementSeparator",
    #               segment_terminator: "X12SegmentTerminator"
    #             },
    #             validate_edi: false,
    #             control_numbers: {
    #               starting_interchange_control_number: 1,
    #               starting_functional_group_control_number: 1,
    #               starting_transaction_set_control_number: 1
    #             },
    #             gs05_time_format: "HHMM" # One of: ["HHMM", "HHMMSS", "HHMMSSDD"]
    #           },
    #           wrap_options: {
    #             wrap_by: "SEGMENT" # One of: ["SEGMENT", "ONE_LINE", "LINE_LENGTH"], # required
    #             line_terminator: "CRLF" # One of: ["CRLF", "LF", "CR"],
    #             line_length: 1
    #           }
    #         }
    #       },
    #       inbound_edi: {
    #         x12: {
    #           acknowledgment_options: {
    #             functional_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS", "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"], # required
    #             technical_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS"], # required
    #           }
    #         }
    #       }
    #     },
    #     trading_partner_id: "TradingPartnerId",
    #     created_at: Time.now, # required
    #     modified_at: Time.now
    #   }
    # @return [Types::GetPartnershipResponse]
    def get_partnership(params = {}, options = {})
      request = build_request(:get_partnership, params)
      request.send_request(options)
    end

    # <p>Retrieves the details for the profile specified by the profile ID. A profile is the mechanism used to create the concept of a private network.</p>
    # @param [Hash, Types::GetProfileRequest] params
    # @option params [String] :profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile.</p>
    # @example Sample GetProfile call
    #   # Example operation for get_profile
    #   params = {
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    #   options = {}
    #   response = client.get_profile(params, options)
    #   response.to_h #=>
    #   {
    #     business_name: "John's Trucking",
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     email: "john@example.com",
    #     logging: ENABLED,
    #     log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs",
    #     name: "Shipping Profile",
    #     phone: "5555555555",
    #     profile_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9",
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #     profile_arn: "ResourceArn", # required
    #     name: "ProfileName", # required
    #     email: "Email",
    #     phone: "Phone", # required
    #     business_name: "BusinessName", # required
    #     logging: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     log_group_name: "LogGroupName",
    #     created_at: Time.now, # required
    #     modified_at: Time.now
    #   }
    # @return [Types::GetProfileResponse]
    def get_profile(params = {}, options = {})
      request = build_request(:get_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves the details for the transformer specified by the transformer ID. A transformer can take an EDI file as input and transform it into a JSON-or XML-formatted document. Alternatively, a transformer can take a JSON-or XML-formatted document as input and transform it into an EDI file.</p>
    # @param [Hash, Types::GetTransformerRequest] params
    # @option params [String] :transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    # @example Sample GetTransformer call
    #   # Example operation for get_transformer
    #   params = {
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    #   options = {}
    #   response = client.get_transformer(params, options)
    #   response.to_h #=>
    #   {
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     name: "transformX12",
    #     input_conversion: {
    #       from_format: X12,
    #       format_options: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   }
    #     },
    #     mapping: {
    #       template_language: JSONATA,
    #       template: "{}"
    #     },
    #     sample_documents: {
    #       bucket_name: "test-bucket",
    #       keys: [
    #         {
    #           input: "sampleDoc.txt"
    #         }
    #       ]
    #     },
    #     status: inactive,
    #     transformer_arn: "arn:aws:b2bi:us-west-2:123456789012:transformer/tr-974c129999f84d8c9",
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     transformer_id: "TransformerId", # required
    #   }
    #   options = {}
    #   response = client.get_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformer_id: "TransformerId", # required
    #     transformer_arn: "ResourceArn", # required
    #     name: "TransformerName", # required
    #     status: "active" # One of: ["active", "inactive"], # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now,
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"],
    #     mapping_template: "MappingTemplate",
    #     edi_type: {
    #       # One of:
    #       x12_details: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     },
    #     sample_document: "FileLocation",
    #     input_conversion: {
    #       from_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       },
    #       advanced_options: {
    #         x12: {
    #           split_options: {
    #             split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #           }
    #         }
    #       }
    #     },
    #     mapping: {
    #       template_language: "XSLT" # One of: ["XSLT", "JSONATA"], # required
    #       template: "MappingTemplate"
    #     },
    #     output_conversion: {
    #       to_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       }
    #     },
    #     sample_documents: {
    #       bucket_name: "BucketName", # required
    #       keys: [ # required
    #         {
    #           input: "S3Key",
    #           output: "S3Key"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetTransformerResponse]
    def get_transformer(params = {}, options = {})
      request = build_request(:get_transformer, params)
      request.send_request(options)
    end

    # <p>Returns the details of the transformer run, based on the Transformer job ID.</p> <note> <p>If 30 days have elapsed since your transformer job was started, the system deletes it. So, if you run <code>GetTransformerJob</code> and supply a <code>transformerId</code> and <code>transformerJobId</code> for a job that was started more than 30 days previously, you receive a 404 response.</p> </note>
    # @param [Hash, Types::GetTransformerJobRequest] params
    # @option params [String] :transformer_job_id
    #   <p>Specifies the unique, system-generated identifier for a transformer run.</p>
    # @option params [String] :transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    # @example Sample GetTransformerJob call
    #   # Example operation for get_transformer_job
    #   params = {
    #     transformer_id: "tr-974c129999f84d8c9",
    #     transformer_job_id: "tj-vpYxfV7yQOqjMSYllEslLw"
    #   }
    #   options = {}
    #   response = client.get_transformer_job(params, options)
    #   response.to_h #=>
    #   {
    #     status: succeeded,
    #     output_files: [
    #       {
    #         bucket_name: "gt-edi-test",
    #         key: "output/sample-214.edi.2023-11-01T10:44:03.353Z.json"
    #       }
    #     ],
    #     message: "Transformed, writing output"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     transformer_job_id: "TransformerJobId", # required
    #     transformer_id: "TransformerId", # required
    #   }
    #   options = {}
    #   response = client.get_transformer_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "running" # One of: ["running", "succeeded", "failed"], # required
    #     output_files: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key"
    #       }
    #     ],
    #     message: "String"
    #   }
    # @return [Types::GetTransformerJobResponse]
    def get_transformer_job(params = {}, options = {})
      request = build_request(:get_transformer_job, params)
      request.send_request(options)
    end

    # <p>Lists the capabilities associated with your Amazon Web Services account for your current or specified region. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @param [Hash, Types::ListCapabilitiesRequest] params
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of capabilities to return.</p>
    # @example Sample ListCapabilities call
    #   # Example operation for list_capabilities
    #   params = {
    #     max_results: 50,
    #     next_token: "foo"
    #   }
    #   options = {}
    #   response = client.list_capabilities(params, options)
    #   response.to_h #=>
    #   {
    #     capabilities: [
    #       {
    #         capability_id: "ca-963a8121e4fc4e348",
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         modified_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         name: "b2biexample",
    #         type: edi
    #       }
    #     ],
    #     next_token: "foo"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_capabilities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capabilities: [ # required
    #       {
    #         capability_id: "CapabilityId", # required
    #         name: "CapabilityName", # required
    #         type: "edi" # One of: ["edi"], # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListCapabilitiesResponse]
    def list_capabilities(params = {}, options = {})
      request = build_request(:list_capabilities, params)
      request.send_request(options)
    end

    # <p>Lists the partnerships associated with your Amazon Web Services account for your current or specified region. A partnership represents the connection between you and your trading partner. It ties together a profile and one or more trading capabilities.</p>
    # @param [Hash, Types::ListPartnershipsRequest] params
    # @option params [String] :profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile connected to this partnership.</p>
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of capabilities to return.</p>
    # @example Sample ListPartnerships call
    #   # Example operation for list_partnerships
    #   params = {
    #     max_results: 50,
    #     next_token: "foo",
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    #   options = {}
    #   response = client.list_partnerships(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     partnerships: [
    #       {
    #         capabilities: [
    #           "ca-963a8121e4fc4e348"
    #         ],
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         modified_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         name: "b2bipartner",
    #         partnership_id: "ps-219fa02f5b4242af8",
    #         profile_id: "p-60fbc37c87f04fce9",
    #         trading_partner_id: "tp-2a17ca447f6f4a8a8"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId",
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_partnerships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     partnerships: [ # required
    #       {
    #         profile_id: "ProfileId", # required
    #         partnership_id: "PartnershipId", # required
    #         name: "PartnerName",
    #         capabilities: ["CapabilityId"],
    #         capability_options: {
    #           outbound_edi: {
    #             # One of:
    #             x12: {
    #               common: {
    #                 interchange_control_headers: {
    #                   sender_id_qualifier: "X12IdQualifier",
    #                   sender_id: "X12SenderId",
    #                   receiver_id_qualifier: "X12IdQualifier",
    #                   receiver_id: "X12ReceiverId",
    #                   repetition_separator: "X12RepetitionSeparator",
    #                   acknowledgment_requested_code: "X12AcknowledgmentRequestedCode",
    #                   usage_indicator_code: "X12UsageIndicatorCode"
    #                 },
    #                 functional_group_headers: {
    #                   application_sender_code: "X12ApplicationSenderCode",
    #                   application_receiver_code: "X12ApplicationReceiverCode",
    #                   responsible_agency_code: "X12ResponsibleAgencyCode"
    #                 },
    #                 delimiters: {
    #                   component_separator: "X12ComponentSeparator",
    #                   data_element_separator: "X12DataElementSeparator",
    #                   segment_terminator: "X12SegmentTerminator"
    #                 },
    #                 validate_edi: false,
    #                 control_numbers: {
    #                   starting_interchange_control_number: 1,
    #                   starting_functional_group_control_number: 1,
    #                   starting_transaction_set_control_number: 1
    #                 },
    #                 gs05_time_format: "HHMM" # One of: ["HHMM", "HHMMSS", "HHMMSSDD"]
    #               },
    #               wrap_options: {
    #                 wrap_by: "SEGMENT" # One of: ["SEGMENT", "ONE_LINE", "LINE_LENGTH"], # required
    #                 line_terminator: "CRLF" # One of: ["CRLF", "LF", "CR"],
    #                 line_length: 1
    #               }
    #             }
    #           },
    #           inbound_edi: {
    #             x12: {
    #               acknowledgment_options: {
    #                 functional_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS", "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"], # required
    #                 technical_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS"], # required
    #               }
    #             }
    #           }
    #         },
    #         trading_partner_id: "TradingPartnerId",
    #         created_at: Time.now, # required
    #         modified_at: Time.now
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListPartnershipsResponse]
    def list_partnerships(params = {}, options = {})
      request = build_request(:list_partnerships, params)
      request.send_request(options)
    end

    # <p>Lists the profiles associated with your Amazon Web Services account for your current or specified region. A profile is the mechanism used to create the concept of a private network.</p>
    # @param [Hash, Types::ListProfilesRequest] params
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of profiles to return.</p>
    # @example Sample ListProfiles call
    #   # Example operation for list_profiles
    #   params = {
    #     max_results: 50,
    #     next_token: "foo"
    #   }
    #   options = {}
    #   response = client.list_profiles(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "foo",
    #     profiles: [
    #       {
    #         business_name: "John's Trucking",
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         logging: ENABLED,
    #         log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs",
    #         name: "Shipping Profile",
    #         profile_id: "p-60fbc37c87f04fce9"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profiles: [ # required
    #       {
    #         profile_id: "ProfileId", # required
    #         name: "ProfileName", # required
    #         business_name: "BusinessName", # required
    #         logging: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         log_group_name: "LogGroupName",
    #         created_at: Time.now, # required
    #         modified_at: Time.now
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListProfilesResponse]
    def list_profiles(params = {}, options = {})
      request = build_request(:list_profiles, params)
      request.send_request(options)
    end

    # <p>Lists all of the tags associated with the Amazon Resource Name (ARN) that you specify. The resource can be a capability, partnership, profile, or transformer.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Requests the tags associated with a particular Amazon Resource Name (ARN). An ARN is an identifier for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    # @example Sample ListTagsForResources call
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "sampleKey",
    #         value: "SampleValue"
    #       }
    #     ]
    #   }
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

    # <p>Lists the available transformers. A transformer can take an EDI file as input and transform it into a JSON-or XML-formatted document. Alternatively, a transformer can take a JSON-or XML-formatted document as input and transform it into an EDI file.</p>
    # @param [Hash, Types::ListTransformersRequest] params
    # @option params [String] :next_token
    #   <p>When additional results are obtained from the command, a <code>NextToken</code> parameter is returned in the output. You can then pass the <code>NextToken</code> parameter in a subsequent command to continue listing additional resources.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the number of items to return for the API response.</p>
    # @example Sample ListTransformers call
    #   # Example operation for list_transformers
    #   params = {
    #     max_results: 50,
    #     next_token: "foo"
    #   }
    #   options = {}
    #   response = client.list_transformers(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "foo",
    #     transformers: [
    #       {
    #         created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         edi_type: {
    #     "x12Details" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   },
    #         file_format: JSON,
    #         mapping_template: "$",
    #         modified_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #         name: "transformJSON",
    #         sample_document: "s3://test-bucket/sampleDoc.txt",
    #         status: inactive,
    #         transformer_id: "tr-974c129999f84d8c9"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_transformers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformers: [ # required
    #       {
    #         transformer_id: "TransformerId", # required
    #         name: "TransformerName", # required
    #         status: "active" # One of: ["active", "inactive"], # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now,
    #         file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"],
    #         mapping_template: "MappingTemplate",
    #         edi_type: {
    #           # One of:
    #           x12_details: {
    #             transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #             version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #           }
    #         },
    #         sample_document: "FileLocation",
    #         input_conversion: {
    #           from_format: "X12" # One of: ["X12"], # required
    #           format_options: {
    #             # One of:
    #             x12: {
    #               transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #               version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #             }
    #           },
    #           advanced_options: {
    #             x12: {
    #               split_options: {
    #                 split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #               }
    #             }
    #           }
    #         },
    #         mapping: {
    #           template_language: "XSLT" # One of: ["XSLT", "JSONATA"], # required
    #           template: "MappingTemplate"
    #         },
    #         output_conversion: {
    #           to_format: "X12" # One of: ["X12"], # required
    #           format_options: {
    #             # One of:
    #             x12: {
    #               transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #               version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #             }
    #           }
    #         },
    #         sample_documents: {
    #           bucket_name: "BucketName", # required
    #           keys: [ # required
    #             {
    #               input: "S3Key",
    #               output: "S3Key"
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "PageToken"
    #   }
    # @return [Types::ListTransformersResponse]
    def list_transformers(params = {}, options = {})
      request = build_request(:list_transformers, params)
      request.send_request(options)
    end

    # <p>Runs a job, using a transformer, to parse input EDI (electronic data interchange) file into the output structures used by Amazon Web Services B2B Data Interchange.</p> <p>If you only want to transform EDI (electronic data interchange) documents, you don't need to create profiles, partnerships or capabilities. Just create and configure a transformer, and then run the <code>StartTransformerJob</code> API to process your files.</p> <note> <p>The system stores transformer jobs for 30 days. During that period, you can run <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_GetTransformerJob.html">GetTransformerJob</a> and supply its <code>transformerId</code> and <code>transformerJobId</code> to return details of the job.</p> </note>
    # @param [Hash, Types::StartTransformerJobRequest] params
    # @option params [Types::S3Location] :input_file
    #   <p>Specifies the location of the input file for the transformation. The location consists of an Amazon S3 bucket and prefix.</p>
    # @option params [Types::S3Location] :output_location
    #   <p>Specifies the location of the output file for the transformation. The location consists of an Amazon S3 bucket and prefix.</p>
    # @option params [String] :transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    # @option params [String] :client_token
    #   <p>Reserved for future use.</p>
    # @example Sample StartTransformerJob call
    #   # Example operation for start_transformer_job
    #   params = {
    #     client_token: "foo",
    #     input_file: {
    #       bucket_name: "test-bucket",
    #       key: "input/inputFile.txt"
    #     },
    #     output_location: {
    #       bucket_name: "test-bucket",
    #       key: "output/"
    #     },
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    #   options = {}
    #   response = client.start_transformer_job(params, options)
    #   response.to_h #=>
    #   {
    #     transformer_job_id: "tj-vpYxfV7yQOqjMSYllEslLw"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     input_file: { # required
    #       bucket_name: "BucketName",
    #       key: "S3Key"
    #     },
    #     output_location: { # required
    #       bucket_name: "BucketName",
    #       key: "S3Key"
    #     },
    #     transformer_id: "TransformerId", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.start_transformer_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformer_job_id: "TransformerJobId", # required
    #   }
    # @return [Types::StartTransformerJobResponse]
    def start_transformer_job(params = {}, options = {})
      request = build_request(:start_transformer_job, params)
      request.send_request(options)
    end

    # <p>Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN). Resources are capability, partnership, profile, transformers and other entities.</p> <p>There is no response returned from this call.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    # @example Sample TagResource call
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9",
    #     tags: [
    #       {
    #         key: "sampleKey",
    #         value: "SampleValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>This operation mimics the latter half of a typical Outbound EDI request. It takes an input JSON/XML in the B2Bi shape as input, converts it to an X12 EDI string, and return that string.</p>
    # @param [Hash, Types::TestConversionRequest] params
    # @option params [Types::ConversionSource] :source
    #   <p>Specify the source file for an outbound EDI request.</p>
    # @option params [Types::ConversionTarget] :target
    #   <p>Specify the format (X12 is the only currently supported format), and other details for the conversion target.</p>
    # @example Sample TestConversion call
    #   # Example operation for test_conversion
    #   params = {
    #     source: {
    #       file_format: JSON,
    #       input_file: {
    #     "fileContent" => Sample file content
    #   }
    #     },
    #     target: {
    #       file_format: X12,
    #       format_details: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   }
    #     }
    #   }
    #   options = {}
    #   response = client.test_conversion(params, options)
    #   response.to_h #=>
    #   {
    #     converted_file_content: "Sample converted file content",
    #     validation_messages: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source: { # required
    #       file_format: "JSON" # One of: ["JSON", "XML"], # required
    #       input_file: { # required
    #         # One of:
    #         file_content: "String"
    #       }
    #     },
    #     target: { # required
    #       file_format: "X12" # One of: ["X12"], # required
    #       format_details: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       },
    #       output_sample_file: {
    #         # One of:
    #         file_location: {
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.test_conversion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     converted_file_content: "String", # required
    #     validation_messages: ["String"]
    #   }
    # @return [Types::TestConversionResponse]
    def test_conversion(params = {}, options = {})
      request = build_request(:test_conversion, params)
      request.send_request(options)
    end

    # <p>Maps the input file according to the provided template file. The API call downloads the file contents from the Amazon S3 location, and passes the contents in as a string, to the <code>inputFileContent</code> parameter.</p>
    # @param [Hash, Types::TestMappingRequest] params
    # @option params [String] :input_file_content
    #   <p>Specify the contents of the EDI (electronic data interchange) XML or JSON file that is used as input for the transform.</p>
    # @option params [String] :mapping_template
    #   <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p> <note> <p>This parameter is available for backwards compatibility. Use the <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html">Mapping</a> data type instead.</p> </note>
    # @option params [String] :file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    # @example Sample TestMapping call
    #   # Example operation for test_mapping
    #   params = {
    #     file_format: JSON,
    #     input_file_content: "Sample file content",
    #     mapping_template: "$"
    #   }
    #   options = {}
    #   response = client.test_mapping(params, options)
    #   response.to_h #=>
    #   {
    #     mapped_file_content: "Sample file content"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     input_file_content: "TestMappingInputFileContent", # required
    #     mapping_template: "MappingTemplate", # required
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"], # required
    #   }
    #   options = {}
    #   response = client.test_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mapped_file_content: "String", # required
    #   }
    # @return [Types::TestMappingResponse]
    def test_mapping(params = {}, options = {})
      request = build_request(:test_mapping, params)
      request.send_request(options)
    end

    # <p>Parses the input EDI (electronic data interchange) file. The input file has a file size limit of 250 KB.</p>
    # @param [Hash, Types::TestParsingRequest] params
    # @option params [Types::S3Location] :input_file
    #   <p>Specifies an <code>S3Location</code> object, which contains the Amazon S3 bucket and prefix for the location of the input file.</p>
    # @option params [String] :file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    # @option params [Types::EdiType] :edi_type
    #   <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    # @option params [Types::AdvancedOptions] :advanced_options
    #   <p>Specifies advanced options for parsing the input EDI file. These options allow for more granular control over the parsing process, including split options for X12 files.</p>
    # @example Sample TestParsing call
    #   # Example operation for test_parsing
    #   params = {
    #     edi_type: {
    #     "x12Details" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   },
    #     file_format: JSON,
    #     input_file: {
    #       bucket_name: "test-bucket",
    #       key: "sampleFile.txt"
    #     }
    #   }
    #   options = {}
    #   response = client.test_parsing(params, options)
    #   response.to_h #=>
    #   {
    #     parsed_file_content: "Sample parsed file content"
    #   }
    # @example Sample TestParsing call without EDI Splitting
    #   # Example operation for test_parsing
    #   params = {
    #     edi_type: {
    #     "x12Details" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   },
    #     file_format: JSON,
    #     advanced_options: {
    #       x12: {
    #         split_options: {
    #           split_by: NONE
    #         }
    #       }
    #     },
    #     input_file: {
    #       bucket_name: "test-bucket",
    #       key: "sampleFile.txt"
    #     }
    #   }
    #   options = {}
    #   response = client.test_parsing(params, options)
    #   response.to_h #=>
    #   {
    #     parsed_file_content: "Sample parsed file content"
    #   }
    # @example Sample TestParsing call with EDI Splitting by Transaction
    #   # Example operation for test_parsing
    #   params = {
    #     edi_type: {
    #     "x12Details" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   },
    #     file_format: JSON,
    #     advanced_options: {
    #       x12: {
    #         split_options: {
    #           split_by: TRANSACTION
    #         }
    #       }
    #     },
    #     input_file: {
    #       bucket_name: "test-bucket",
    #       key: "sampleFile.txt"
    #     }
    #   }
    #   options = {}
    #   response = client.test_parsing(params, options)
    #   response.to_h #=>
    #   {
    #     parsed_file_content: "",
    #     parsed_split_file_contents: [
    #       "sample split parsed file content",
    #       "sample split parsed file content"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     input_file: { # required
    #       bucket_name: "BucketName",
    #       key: "S3Key"
    #     },
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"], # required
    #     edi_type: { # required
    #       # One of:
    #       x12_details: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     },
    #     advanced_options: {
    #       x12: {
    #         split_options: {
    #           split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.test_parsing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parsed_file_content: "String", # required
    #     parsed_split_file_contents: ["String"]
    #   }
    # @return [Types::TestParsingResponse]
    def test_parsing(params = {}, options = {})
      request = build_request(:test_parsing, params)
      request.send_request(options)
    end

    # <p>Detaches a key-value pair from the specified resource, as identified by its Amazon Resource Name (ARN). Resources are capability, partnership, profile, transformers and other entities.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies an Amazon Resource Name (ARN) for a specific Amazon Web Services resource, such as a capability, partnership, profile, or transformer.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the key-value pairs assigned to ARNs that you can use to group and search for resources by type. You can attach this metadata to resources (capabilities, partnerships, and so on) for any purpose.</p>
    # @example Sample UntagResource call
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9",
    #     tag_keys: [
    #       "sampleKey"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates some of the parameters for a capability, based on the specified parameters. A trading capability contains the information required to transform incoming EDI documents into JSON or XML outputs.</p>
    # @param [Hash, Types::UpdateCapabilityRequest] params
    # @option params [String] :capability_id
    #   <p>Specifies a system-assigned unique identifier for the capability.</p>
    # @option params [String] :name
    #   <p>Specifies a new name for the capability, to replace the existing name.</p>
    # @option params [Types::CapabilityConfiguration] :configuration
    #   <p>Specifies a structure that contains the details for a capability.</p>
    # @option params [Array<Types::S3Location>] :instructions_documents
    #   <p>Specifies one or more locations in Amazon S3, each specifying an EDI document that can be used with this capability. Each item contains the name of the bucket and the key, to identify the document's location.</p>
    # @example Sample UpdateCapability call
    #   # Example operation for update_capability
    #   params = {
    #     capability_id: "ca-963a8121e4fc4e348",
    #     name: "b2biexample",
    #     instructions_documents: [
    #       {
    #         bucket_name: "test-bucket",
    #         key: "instructiondoc.txt"
    #       }
    #     ],
    #     configuration: {
    #     "edi" => {
    #       "type" => {
    #         "x12Details" => {
    #           "transactionSet" => X12_110,
    #           "version" => VERSION_4010
    #         }
    #       },
    #       "inputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => input/
    #       },
    #       "outputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => output/
    #       },
    #       "transformerId" => tr-9a893cf536df4658b
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.update_capability(params, options)
    #   response.to_h #=>
    #   {
    #     capability_arn: "arn:aws:b2bi:us-west-2:123456789012:capability/ca-963a8121e4fc4e348",
    #     capability_id: "ca-963a8121e4fc4e348",
    #     configuration: {
    #     "edi" => {
    #       "type" => {
    #         "x12Details" => {
    #           "transactionSet" => X12_110,
    #           "version" => VERSION_4010
    #         }
    #       },
    #       "inputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => input/
    #       },
    #       "outputLocation" => {
    #         "bucketName" => test-bucket,
    #         "key" => output/
    #       },
    #       "transformerId" => tr-9a893cf536df4658b
    #     }
    #   },
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     instructions_documents: [
    #       {
    #         bucket_name: "test-bucket",
    #         key: "instructiondoc.txt"
    #       }
    #     ],
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     name: "b2biexample",
    #     type: edi
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     capability_id: "CapabilityId", # required
    #     name: "CapabilityName",
    #     configuration: {
    #       # One of:
    #       edi: {
    #         capability_direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"],
    #         type: { # required
    #           # One of:
    #           x12_details: {
    #             transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #             version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #           }
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         transformer_id: "TransformerId", # required
    #       }
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_capability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capability_id: "CapabilityId", # required
    #     capability_arn: "ResourceArn", # required
    #     name: "CapabilityName", # required
    #     type: "edi" # One of: ["edi"], # required
    #     configuration: { # required
    #       # One of:
    #       edi: {
    #         capability_direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"],
    #         type: { # required
    #           # One of:
    #           x12_details: {
    #             transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #             version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #           }
    #         },
    #         input_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         output_location: { # required
    #           bucket_name: "BucketName",
    #           key: "S3Key"
    #         },
    #         transformer_id: "TransformerId", # required
    #       }
    #     },
    #     instructions_documents: [
    #       {
    #         bucket_name: "BucketName",
    #         key: "S3Key"
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     modified_at: Time.now
    #   }
    # @return [Types::UpdateCapabilityResponse]
    def update_capability(params = {}, options = {})
      request = build_request(:update_capability, params)
      request.send_request(options)
    end

    # <p>Updates some of the parameters for a partnership between a customer and trading partner. A partnership represents the connection between you and your trading partner. It ties together a profile and one or more trading capabilities.</p>
    # @param [Hash, Types::UpdatePartnershipRequest] params
    # @option params [String] :partnership_id
    #   <p>Specifies the unique, system-generated identifier for a partnership.</p>
    # @option params [String] :name
    #   <p>The name of the partnership, used to identify it.</p>
    # @option params [Array<String>] :capabilities
    #   <p>List of the capabilities associated with this partnership.</p>
    # @option params [Types::CapabilityOptions] :capability_options
    #   <p>To update, specify the structure that contains the details for the associated capabilities.</p>
    # @example Sample UpdatePartnership call
    #   # Example operation for update_partnership
    #   params = {
    #     capabilities: [
    #       "ca-963a8121e4fc4e348"
    #     ],
    #     name: "b2bipartner",
    #     partnership_id: "ps-219fa02f5b4242af8"
    #   }
    #   options = {}
    #   response = client.update_partnership(params, options)
    #   response.to_h #=>
    #   {
    #     capabilities: [
    #       "ca-963a8121e4fc4e348"
    #     ],
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     email: "john@example.com",
    #     modified_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     name: "b2bipartner",
    #     partnership_arn: "arn:aws:b2bi:us-west-2:123456789012:partnership/ps-60fbc37c87f04fce9",
    #     partnership_id: "ps-219fa02f5b4242af8",
    #     phone: "5555555555",
    #     profile_id: "p-60fbc37c87f04fce9",
    #     trading_partner_id: "tp-2a17ca447f6f4a8a8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     partnership_id: "PartnershipId", # required
    #     name: "PartnerName",
    #     capabilities: ["CapabilityId"],
    #     capability_options: {
    #       outbound_edi: {
    #         # One of:
    #         x12: {
    #           common: {
    #             interchange_control_headers: {
    #               sender_id_qualifier: "X12IdQualifier",
    #               sender_id: "X12SenderId",
    #               receiver_id_qualifier: "X12IdQualifier",
    #               receiver_id: "X12ReceiverId",
    #               repetition_separator: "X12RepetitionSeparator",
    #               acknowledgment_requested_code: "X12AcknowledgmentRequestedCode",
    #               usage_indicator_code: "X12UsageIndicatorCode"
    #             },
    #             functional_group_headers: {
    #               application_sender_code: "X12ApplicationSenderCode",
    #               application_receiver_code: "X12ApplicationReceiverCode",
    #               responsible_agency_code: "X12ResponsibleAgencyCode"
    #             },
    #             delimiters: {
    #               component_separator: "X12ComponentSeparator",
    #               data_element_separator: "X12DataElementSeparator",
    #               segment_terminator: "X12SegmentTerminator"
    #             },
    #             validate_edi: false,
    #             control_numbers: {
    #               starting_interchange_control_number: 1,
    #               starting_functional_group_control_number: 1,
    #               starting_transaction_set_control_number: 1
    #             },
    #             gs05_time_format: "HHMM" # One of: ["HHMM", "HHMMSS", "HHMMSSDD"]
    #           },
    #           wrap_options: {
    #             wrap_by: "SEGMENT" # One of: ["SEGMENT", "ONE_LINE", "LINE_LENGTH"], # required
    #             line_terminator: "CRLF" # One of: ["CRLF", "LF", "CR"],
    #             line_length: 1
    #           }
    #         }
    #       },
    #       inbound_edi: {
    #         x12: {
    #           acknowledgment_options: {
    #             functional_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS", "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"], # required
    #             technical_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS"], # required
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_partnership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #     partnership_id: "PartnershipId", # required
    #     partnership_arn: "ResourceArn", # required
    #     name: "PartnerName",
    #     email: "Email",
    #     phone: "Phone",
    #     capabilities: ["CapabilityId"],
    #     capability_options: {
    #       outbound_edi: {
    #         # One of:
    #         x12: {
    #           common: {
    #             interchange_control_headers: {
    #               sender_id_qualifier: "X12IdQualifier",
    #               sender_id: "X12SenderId",
    #               receiver_id_qualifier: "X12IdQualifier",
    #               receiver_id: "X12ReceiverId",
    #               repetition_separator: "X12RepetitionSeparator",
    #               acknowledgment_requested_code: "X12AcknowledgmentRequestedCode",
    #               usage_indicator_code: "X12UsageIndicatorCode"
    #             },
    #             functional_group_headers: {
    #               application_sender_code: "X12ApplicationSenderCode",
    #               application_receiver_code: "X12ApplicationReceiverCode",
    #               responsible_agency_code: "X12ResponsibleAgencyCode"
    #             },
    #             delimiters: {
    #               component_separator: "X12ComponentSeparator",
    #               data_element_separator: "X12DataElementSeparator",
    #               segment_terminator: "X12SegmentTerminator"
    #             },
    #             validate_edi: false,
    #             control_numbers: {
    #               starting_interchange_control_number: 1,
    #               starting_functional_group_control_number: 1,
    #               starting_transaction_set_control_number: 1
    #             },
    #             gs05_time_format: "HHMM" # One of: ["HHMM", "HHMMSS", "HHMMSSDD"]
    #           },
    #           wrap_options: {
    #             wrap_by: "SEGMENT" # One of: ["SEGMENT", "ONE_LINE", "LINE_LENGTH"], # required
    #             line_terminator: "CRLF" # One of: ["CRLF", "LF", "CR"],
    #             line_length: 1
    #           }
    #         }
    #       },
    #       inbound_edi: {
    #         x12: {
    #           acknowledgment_options: {
    #             functional_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS", "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP"], # required
    #             technical_acknowledgment: "DO_NOT_GENERATE" # One of: ["DO_NOT_GENERATE", "GENERATE_ALL_SEGMENTS"], # required
    #           }
    #         }
    #       }
    #     },
    #     trading_partner_id: "TradingPartnerId",
    #     created_at: Time.now, # required
    #     modified_at: Time.now
    #   }
    # @return [Types::UpdatePartnershipResponse]
    def update_partnership(params = {}, options = {})
      request = build_request(:update_partnership, params)
      request.send_request(options)
    end

    # <p>Updates the specified parameters for a profile. A profile is the mechanism used to create the concept of a private network.</p>
    # @param [Hash, Types::UpdateProfileRequest] params
    # @option params [String] :profile_id
    #   <p>Specifies the unique, system-generated identifier for the profile.</p>
    # @option params [String] :name
    #   <p>The name of the profile, used to identify it.</p>
    # @option params [String] :email
    #   <p>Specifies the email address associated with this customer profile.</p>
    # @option params [String] :phone
    #   <p>Specifies the phone number associated with the profile.</p>
    # @option params [String] :business_name
    #   <p>Specifies the name for the business associated with this profile.</p>
    # @example Sample UpdateProfile call
    #   # Example operation for update_profile
    #   params = {
    #     business_name: "John's Shipping",
    #     email: "john@example.com",
    #     name: "Shipping Profile",
    #     phone: "5555555555",
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    #   options = {}
    #   response = client.update_profile(params, options)
    #   response.to_h #=>
    #   {
    #     business_name: "John's Trucking",
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     email: "john@example.com",
    #     logging: ENABLED,
    #     log_group_name: "b2bi/p-60fbc37c87f04fce9-Logs",
    #     modified_at: Time.parse("2023-11-02T21:51:05.504Z"),
    #     name: "Shipping Profile",
    #     phone: "5555555555",
    #     profile_arn: "arn:aws:b2bi:us-west-2:123456789012:profile/p-60fbc37c87f04fce9",
    #     profile_id: "p-60fbc37c87f04fce9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileId", # required
    #     name: "ProfileName",
    #     email: "Email",
    #     phone: "Phone",
    #     business_name: "BusinessName"
    #   }
    #   options = {}
    #   response = client.update_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileId", # required
    #     profile_arn: "ResourceArn", # required
    #     name: "ProfileName", # required
    #     email: "Email",
    #     phone: "Phone", # required
    #     business_name: "BusinessName", # required
    #     logging: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     log_group_name: "LogGroupName",
    #     created_at: Time.now, # required
    #     modified_at: Time.now
    #   }
    # @return [Types::UpdateProfileResponse]
    def update_profile(params = {}, options = {})
      request = build_request(:update_profile, params)
      request.send_request(options)
    end

    # <p>Updates the specified parameters for a transformer. A transformer can take an EDI file as input and transform it into a JSON-or XML-formatted document. Alternatively, a transformer can take a JSON-or XML-formatted document as input and transform it into an EDI file.</p>
    # @param [Hash, Types::UpdateTransformerRequest] params
    # @option params [String] :transformer_id
    #   <p>Specifies the system-assigned unique identifier for the transformer.</p>
    # @option params [String] :name
    #   <p>Specify a new name for the transformer, if you want to update it.</p>
    # @option params [String] :status
    #   <p>Specifies the transformer's status. You can update the state of the transformer from <code>inactive</code> to <code>active</code>.</p>
    # @option params [String] :file_format
    #   <p>Specifies that the currently supported file formats for EDI transformations are <code>JSON</code> and <code>XML</code>.</p>
    # @option params [String] :mapping_template
    #   <p>Specifies the mapping template for the transformer. This template is used to map the parsed EDI file using JSONata or XSLT.</p> <note> <p>This parameter is available for backwards compatibility. Use the <a href="https://docs.aws.amazon.com/b2bi/latest/APIReference/API_Mapping.html">Mapping</a> data type instead.</p> </note>
    # @option params [Types::EdiType] :edi_type
    #   <p>Specifies the details for the EDI standard that is being used for the transformer. Currently, only X12 is supported. X12 is a set of standards and corresponding messages that define specific business documents.</p>
    # @option params [String] :sample_document
    #   <p>Specifies a sample EDI document that is used by a transformer as a guide for processing the EDI data.</p>
    # @option params [Types::InputConversion] :input_conversion
    #   <p>To update, specify the <code>InputConversion</code> object, which contains the format options for the inbound transformation.</p>
    # @option params [Types::Mapping] :mapping
    #   <p>Specify the structure that contains the mapping template and its language (either XSLT or JSONATA).</p>
    # @option params [Types::OutputConversion] :output_conversion
    #   <p>To update, specify the <code>OutputConversion</code> object, which contains the format options for the outbound transformation.</p>
    # @option params [Types::SampleDocuments] :sample_documents
    #   <p>Specify a structure that contains the Amazon S3 bucket and an array of the corresponding keys used to identify the location for your sample documents.</p>
    # @example Sample UpdateTransformer call
    #   # Example operation for update_transformer
    #   params = {
    #     input_conversion: {
    #       from_format: X12,
    #       format_options: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   }
    #     },
    #     mapping: {
    #       template_language: JSONATA,
    #       template: "{}"
    #     },
    #     sample_documents: {
    #       bucket_name: "test-bucket",
    #       keys: [
    #         {
    #           input: "sampleDoc.txt"
    #         }
    #       ]
    #     },
    #     name: "transformX12",
    #     status: inactive,
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    #   options = {}
    #   response = client.update_transformer(params, options)
    #   response.to_h #=>
    #   {
    #     created_at: Time.parse("2023-11-01T21:51:05.504Z"),
    #     modified_at: Time.parse("2023-11-02T22:31:05.504Z"),
    #     name: "transformX12",
    #     input_conversion: {
    #       from_format: X12,
    #       format_options: {
    #     "x12" => {
    #       "transactionSet" => X12_110,
    #       "version" => VERSION_4010
    #     }
    #   }
    #     },
    #     mapping: {
    #       template_language: JSONATA,
    #       template: "{}"
    #     },
    #     sample_documents: {
    #       bucket_name: "test-bucket",
    #       keys: [
    #         {
    #           input: "sampleDoc.txt"
    #         }
    #       ]
    #     },
    #     status: inactive,
    #     transformer_arn: "arn:aws:b2bi:us-west-2:123456789012:transformer/tr-974c129999f84d8c9",
    #     transformer_id: "tr-974c129999f84d8c9"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     transformer_id: "TransformerId", # required
    #     name: "TransformerName",
    #     status: "active" # One of: ["active", "inactive"],
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"],
    #     mapping_template: "MappingTemplate",
    #     edi_type: {
    #       # One of:
    #       x12_details: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     },
    #     sample_document: "FileLocation",
    #     input_conversion: {
    #       from_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       },
    #       advanced_options: {
    #         x12: {
    #           split_options: {
    #             split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #           }
    #         }
    #       }
    #     },
    #     mapping: {
    #       template_language: "XSLT" # One of: ["XSLT", "JSONATA"], # required
    #       template: "MappingTemplate"
    #     },
    #     output_conversion: {
    #       to_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       }
    #     },
    #     sample_documents: {
    #       bucket_name: "BucketName", # required
    #       keys: [ # required
    #         {
    #           input: "S3Key",
    #           output: "S3Key"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_transformer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformer_id: "TransformerId", # required
    #     transformer_arn: "ResourceArn", # required
    #     name: "TransformerName", # required
    #     status: "active" # One of: ["active", "inactive"], # required
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     file_format: "XML" # One of: ["XML", "JSON", "NOT_USED"],
    #     mapping_template: "MappingTemplate",
    #     edi_type: {
    #       # One of:
    #       x12_details: {
    #         transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #         version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #       }
    #     },
    #     sample_document: "FileLocation",
    #     input_conversion: {
    #       from_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       },
    #       advanced_options: {
    #         x12: {
    #           split_options: {
    #             split_by: "NONE" # One of: ["NONE", "TRANSACTION"], # required
    #           }
    #         }
    #       }
    #     },
    #     mapping: {
    #       template_language: "XSLT" # One of: ["XSLT", "JSONATA"], # required
    #       template: "MappingTemplate"
    #     },
    #     output_conversion: {
    #       to_format: "X12" # One of: ["X12"], # required
    #       format_options: {
    #         # One of:
    #         x12: {
    #           transaction_set: "X12_100" # One of: ["X12_100", "X12_101", "X12_102", "X12_103", "X12_104", "X12_105", "X12_106", "X12_107", "X12_108", "X12_109", "X12_110", "X12_111", "X12_112", "X12_113", "X12_120", "X12_121", "X12_124", "X12_125", "X12_126", "X12_127", "X12_128", "X12_129", "X12_130", "X12_131", "X12_132", "X12_133", "X12_135", "X12_138", "X12_139", "X12_140", "X12_141", "X12_142", "X12_143", "X12_144", "X12_146", "X12_147", "X12_148", "X12_149", "X12_150", "X12_151", "X12_152", "X12_153", "X12_154", "X12_155", "X12_157", "X12_158", "X12_159", "X12_160", "X12_161", "X12_163", "X12_170", "X12_175", "X12_176", "X12_179", "X12_180", "X12_185", "X12_186", "X12_187", "X12_188", "X12_189", "X12_190", "X12_191", "X12_194", "X12_195", "X12_196", "X12_197", "X12_198", "X12_199", "X12_200", "X12_201", "X12_202", "X12_203", "X12_204", "X12_205", "X12_206", "X12_210", "X12_211", "X12_212", "X12_213", "X12_214", "X12_215", "X12_216", "X12_217", "X12_218", "X12_219", "X12_220", "X12_222", "X12_223", "X12_224", "X12_225", "X12_227", "X12_228", "X12_240", "X12_242", "X12_244", "X12_245", "X12_248", "X12_249", "X12_250", "X12_251", "X12_252", "X12_255", "X12_256", "X12_259", "X12_260", "X12_261", "X12_262", "X12_263", "X12_264", "X12_265", "X12_266", "X12_267", "X12_268", "X12_269", "X12_270", "X12_271", "X12_272", "X12_273", "X12_274", "X12_275", "X12_276", "X12_277", "X12_278", "X12_280", "X12_283", "X12_284", "X12_285", "X12_286", "X12_288", "X12_290", "X12_300", "X12_301", "X12_303", "X12_304", "X12_309", "X12_310", "X12_311", "X12_312", "X12_313", "X12_315", "X12_317", "X12_319", "X12_322", "X12_323", "X12_324", "X12_325", "X12_326", "X12_350", "X12_352", "X12_353", "X12_354", "X12_355", "X12_356", "X12_357", "X12_358", "X12_361", "X12_362", "X12_404", "X12_410", "X12_412", "X12_414", "X12_417", "X12_418", "X12_419", "X12_420", "X12_421", "X12_422", "X12_423", "X12_424", "X12_425", "X12_426", "X12_429", "X12_431", "X12_432", "X12_433", "X12_434", "X12_435", "X12_436", "X12_437", "X12_440", "X12_451", "X12_452", "X12_453", "X12_455", "X12_456", "X12_460", "X12_463", "X12_466", "X12_468", "X12_470", "X12_475", "X12_485", "X12_486", "X12_490", "X12_492", "X12_494", "X12_500", "X12_501", "X12_503", "X12_504", "X12_511", "X12_517", "X12_521", "X12_527", "X12_536", "X12_540", "X12_561", "X12_567", "X12_568", "X12_601", "X12_602", "X12_620", "X12_625", "X12_650", "X12_715", "X12_753", "X12_754", "X12_805", "X12_806", "X12_810", "X12_811", "X12_812", "X12_813", "X12_814", "X12_815", "X12_816", "X12_818", "X12_819", "X12_820", "X12_821", "X12_822", "X12_823", "X12_824", "X12_826", "X12_827", "X12_828", "X12_829", "X12_830", "X12_831", "X12_832", "X12_833", "X12_834", "X12_835", "X12_836", "X12_837", "X12_838", "X12_839", "X12_840", "X12_841", "X12_842", "X12_843", "X12_844", "X12_845", "X12_846", "X12_847", "X12_848", "X12_849", "X12_850", "X12_851", "X12_852", "X12_853", "X12_854", "X12_855", "X12_856", "X12_857", "X12_858", "X12_859", "X12_860", "X12_861", "X12_862", "X12_863", "X12_864", "X12_865", "X12_866", "X12_867", "X12_868", "X12_869", "X12_870", "X12_871", "X12_872", "X12_873", "X12_874", "X12_875", "X12_876", "X12_877", "X12_878", "X12_879", "X12_880", "X12_881", "X12_882", "X12_883", "X12_884", "X12_885", "X12_886", "X12_887", "X12_888", "X12_889", "X12_891", "X12_893", "X12_894", "X12_895", "X12_896", "X12_920", "X12_924", "X12_925", "X12_926", "X12_928", "X12_940", "X12_943", "X12_944", "X12_945", "X12_947", "X12_980", "X12_990", "X12_993", "X12_996", "X12_997", "X12_998", "X12_999", "X12_270_X279", "X12_271_X279", "X12_275_X210", "X12_275_X211", "X12_276_X212", "X12_277_X212", "X12_277_X214", "X12_277_X364", "X12_278_X217", "X12_820_X218", "X12_820_X306", "X12_824_X186", "X12_834_X220", "X12_834_X307", "X12_834_X318", "X12_835_X221", "X12_837_X222", "X12_837_X223", "X12_837_X224", "X12_837_X291", "X12_837_X292", "X12_837_X298", "X12_999_X231"],
    #           version: "VERSION_4010" # One of: ["VERSION_4010", "VERSION_4030", "VERSION_4050", "VERSION_4060", "VERSION_5010", "VERSION_5010_HIPAA"]
    #         }
    #       }
    #     },
    #     sample_documents: {
    #       bucket_name: "BucketName", # required
    #       keys: [ # required
    #         {
    #           input: "S3Key",
    #           output: "S3Key"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateTransformerResponse]
    def update_transformer(params = {}, options = {})
      request = build_request(:update_transformer, params)
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
      context[:gem_name] = 'aws-sdk-b2bi'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        transformer_job_succeeded: Waiters::TransformerJobSucceeded
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

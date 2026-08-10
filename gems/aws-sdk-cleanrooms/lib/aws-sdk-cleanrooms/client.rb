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
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cleanrooms)

module Aws::CleanRooms
  # An API client for Aws::CleanRooms.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBastionControlPlaneServiceLambda
    @identifier = :cleanrooms

    add_plugin(::Aws::CleanRooms::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CleanRooms::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
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

    # <p>Retrieves multiple analysis templates within a collaboration by their Amazon Resource Names (ARNs).</p>
    # @param [Hash, Types::BatchGetCollaborationAnalysisTemplateOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    # @option params [Array<String>] :analysis_template_arns
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     analysis_template_arns: ["AnalysisTemplateArn"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_collaboration_analysis_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_analysis_templates: [ # required
    #       {
    #         id: "AnalysisTemplateIdentifier", # required
    #         arn: "AnalysisTemplateArn", # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         description: "ResourceDescription",
    #         creator_account_id: "AccountId", # required
    #         name: "ResourceAlias", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         schema: { # required
    #           referenced_tables: ["TableAlias"]
    #         },
    #         format: "SQL" # One of: ["SQL", "PYSPARK_1_0"], # required
    #         source: {
    #           # One of:
    #           text: "AnalysisTemplateText",
    #           artifacts: {
    #             entry_point: { # required
    #               location: { # required
    #                 bucket: "String", # required
    #                 key: "String", # required
    #               }
    #             },
    #             additional_artifacts: [
    #               {
    #                 location: { # required
    #                   bucket: "String", # required
    #                   key: "String", # required
    #                 }
    #               }
    #             ],
    #             role_arn: "RoleArn", # required
    #           }
    #         },
    #         source_metadata: {
    #           # One of:
    #           artifacts: {
    #             entry_point_hash: { # required
    #               sha256: "String"
    #             },
    #             additional_artifact_hashes: [
    #               {
    #                 sha256: "String"
    #               }
    #             ]
    #           }
    #         },
    #         analysis_parameters: [
    #           {
    #             name: "ParameterName", # required
    #             type: "SMALLINT" # One of: ["SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"], # required
    #             default_value: "ParameterValue"
    #           }
    #         ],
    #         validations: [
    #           {
    #             type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"], # required
    #             status: "VALID" # One of: ["VALID", "INVALID", "UNABLE_TO_VALIDATE"], # required
    #             reasons: [
    #               {
    #                 message: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         error_message_configuration: {
    #           type: "DETAILED" # One of: ["DETAILED"], # required
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         arn: "AnalysisTemplateArn", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetCollaborationAnalysisTemplateOperationOutput]
    def batch_get_collaboration_analysis_template(params = {}, options = {})
      request = build_request(:batch_get_collaboration_analysis_template, params)
      request.send_request(options)
    end

    # <p>Retrieves multiple schemas by their identifiers.</p>
    # @param [Hash, Types::BatchGetSchemaOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schemas belong to. Currently accepts collaboration ID.</p>
    # @option params [Array<String>] :names
    #   <p>The names for the schema objects to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     names: ["TableAlias"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schemas: [ # required
    #       {
    #         columns: [ # required
    #           {
    #             name: "ColumnName", # required
    #             type: "ColumnTypeString", # required
    #           }
    #         ],
    #         partition_keys: [ # required
    #           {
    #             name: "ColumnName", # required
    #             type: "ColumnTypeString", # required
    #           }
    #         ],
    #         analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"]], # required
    #         analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"],
    #         selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]],
    #         creator_account_id: "AccountId", # required
    #         name: "TableAlias", # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         description: "TableDescription", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         type: "TABLE" # One of: ["TABLE", "ID_MAPPING_TABLE"], # required
    #         schema_status_details: [ # required
    #           {
    #             status: "READY" # One of: ["READY", "NOT_READY"], # required
    #             reasons: [
    #               {
    #                 code: "ANALYSIS_RULE_MISSING" # One of: ["ANALYSIS_RULE_MISSING", "ANALYSIS_TEMPLATES_NOT_CONFIGURED", "ANALYSIS_PROVIDERS_NOT_CONFIGURED", "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED", "ID_MAPPING_TABLE_NOT_POPULATED", "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_CONFIGURED", "RESULT_RECEIVERS_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_ALLOWED", "RESULT_RECEIVERS_NOT_ALLOWED", "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"], # required
    #                 message: "String", # required
    #               }
    #             ],
    #             analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"],
    #             configurations: ["DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"]],
    #             analysis_type: "DIRECT_ANALYSIS" # One of: ["DIRECT_ANALYSIS", "ADDITIONAL_ANALYSIS"], # required
    #           }
    #         ],
    #         resource_arn: "SchemaResourceArn",
    #         schema_type_properties: {
    #           # One of:
    #           id_mapping_table: {
    #             id_mapping_table_input_source: [ # required
    #               {
    #                 id_namespace_association_id: "String", # required
    #                 type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         name: "TableAlias", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetSchemaOperationOutput]
    def batch_get_schema(params = {}, options = {})
      request = build_request(:batch_get_schema, params)
      request.send_request(options)
    end

    # <p>Retrieves multiple analysis rule schemas.</p>
    # @param [Hash, Types::BatchGetSchemaAnalysisRuleInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the schema analysis rule.</p>
    # @option params [Array<Types::SchemaAnalysisRuleRequest>] :schema_analysis_rule_requests
    #   <p>The information that's necessary to retrieve a schema analysis rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     schema_analysis_rule_requests: [ # required
    #       {
    #         name: "TableAlias", # required
    #         type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_schema_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rules: [ # required
    #       {
    #         collaboration_id: "CollaborationIdentifier", # required
    #         type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"], # required
    #         name: "TableAlias", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         policy: { # required
    #           # One of:
    #           v1: {
    #             # One of:
    #             list: {
    #               join_columns: ["AnalysisRuleColumnName"], # required
    #               allowed_join_operators: ["JoinOperator"],
    #               list_columns: ["AnalysisRuleColumnName"], # required
    #               additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #             },
    #             aggregation: {
    #               aggregate_columns: [ # required
    #                 {
    #                   column_names: ["AnalysisRuleColumnName"], # required
    #                   function: "AggregateFunctionName", # required
    #                 }
    #               ],
    #               join_columns: ["AnalysisRuleColumnName"], # required
    #               join_required: "JoinRequiredOption",
    #               allowed_join_operators: ["JoinOperator"],
    #               dimension_columns: ["AnalysisRuleColumnName"], # required
    #               scalar_functions: ["ScalarFunctions"], # required
    #               output_constraints: [ # required
    #                 {
    #                   column_name: "AnalysisRuleColumnName", # required
    #                   minimum: 1, # required
    #                   type: "AggregationType", # required
    #                 }
    #               ],
    #               additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #             },
    #             custom: {
    #               allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #               allowed_analysis_providers: ["AccountId"],
    #               additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #               disallowed_output_columns: ["AnalysisRuleColumnName"],
    #               differential_privacy: {
    #                 columns: [ # required
    #                   {
    #                     name: "String", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             id_mapping_table: {
    #               join_columns: ["AnalysisRuleColumnName"], # required
    #               query_constraints: [{ # required
    #                 # One of:
    #                 require_overlap: {
    #                   columns: ["AnalysisRuleColumnName"]
    #                 }
    #               }],
    #               dimension_columns: ["AnalysisRuleColumnName"]
    #             }
    #           }
    #         },
    #         collaboration_policy: {
    #           # One of:
    #           v1: {
    #             # One of:
    #             list: {
    #               allowed_result_receivers: ["AccountId"],
    #               allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #             },
    #             aggregation: {
    #               allowed_result_receivers: ["AccountId"],
    #               allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #             },
    #             custom: {
    #               allowed_result_receivers: ["AccountId"],
    #               allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #             }
    #           }
    #         },
    #         consolidated_policy: {
    #           # One of:
    #           v1: {
    #             # One of:
    #             list: {
    #               join_columns: ["AnalysisRuleColumnName"], # required
    #               allowed_join_operators: ["JoinOperator"],
    #               list_columns: ["AnalysisRuleColumnName"], # required
    #               additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #               allowed_result_receivers: ["AccountId"],
    #               allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #             },
    #             aggregation: {
    #               aggregate_columns: [ # required
    #                 {
    #                   column_names: ["AnalysisRuleColumnName"], # required
    #                   function: "AggregateFunctionName", # required
    #                 }
    #               ],
    #               join_columns: ["AnalysisRuleColumnName"], # required
    #               join_required: "JoinRequiredOption",
    #               allowed_join_operators: ["JoinOperator"],
    #               dimension_columns: ["AnalysisRuleColumnName"], # required
    #               scalar_functions: ["ScalarFunctions"], # required
    #               output_constraints: [ # required
    #                 {
    #                   column_name: "AnalysisRuleColumnName", # required
    #                   minimum: 1, # required
    #                   type: "AggregationType", # required
    #                 }
    #               ],
    #               additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #               allowed_result_receivers: ["AccountId"],
    #               allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #             },
    #             custom: {
    #               allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #               allowed_analysis_providers: ["AccountId"],
    #               additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #               disallowed_output_columns: ["AnalysisRuleColumnName"],
    #               differential_privacy: {
    #                 columns: [ # required
    #                   {
    #                     name: "String", # required
    #                   }
    #                 ]
    #               },
    #               allowed_result_receivers: ["AccountId"],
    #               allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         name: "TableAlias", # required
    #         type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"], # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetSchemaAnalysisRuleOutput]
    def batch_get_schema_analysis_rule(params = {}, options = {})
      request = build_request(:batch_get_schema_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Creates a new analysis template.</p>
    # @param [Hash, Types::CreateAnalysisTemplateOperationInput] params
    # @option params [String] :description
    #   <p>The description of the analysis template.</p>
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @option params [String] :name
    #   <p>The name of the analysis template.</p>
    # @option params [String] :format
    #   <p>The format of the analysis template.</p>
    # @option params [Types::AnalysisSource] :source
    #   <p>The information in the analysis template.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @option params [Array<Types::AnalysisParameter>] :analysis_parameters
    #   <p>The parameters of the analysis template.</p>
    # @option params [Types::AnalysisSchema] :schema
    #   <p>A relation within an analysis.</p>
    # @option params [Types::ErrorMessageConfiguration] :error_message_configuration
    #   <p>The configuration that specifies the level of detail in error messages returned by analyses using this template. When set to <code>DETAILED</code>, error messages include more information to help troubleshoot issues with PySpark jobs. Detailed error messages may expose underlying data, including sensitive information. Recommended for faster troubleshooting in development and testing environments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "ResourceDescription",
    #     membership_identifier: "MembershipIdentifier", # required
    #     name: "TableAlias", # required
    #     format: "SQL" # One of: ["SQL", "PYSPARK_1_0"], # required
    #     source: { # required
    #       # One of:
    #       text: "AnalysisTemplateText",
    #       artifacts: {
    #         entry_point: { # required
    #           location: { # required
    #             bucket: "String", # required
    #             key: "String", # required
    #           }
    #         },
    #         additional_artifacts: [
    #           {
    #             location: { # required
    #               bucket: "String", # required
    #               key: "String", # required
    #             }
    #           }
    #         ],
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     analysis_parameters: [
    #       {
    #         name: "ParameterName", # required
    #         type: "SMALLINT" # One of: ["SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"], # required
    #         default_value: "ParameterValue"
    #       }
    #     ],
    #     schema: {
    #       referenced_tables: ["TableAlias"]
    #     },
    #     error_message_configuration: {
    #       type: "DETAILED" # One of: ["DETAILED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_analysis_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_template: { # required
    #       id: "AnalysisTemplateIdentifier", # required
    #       arn: "AnalysisTemplateArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       description: "ResourceDescription",
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       schema: { # required
    #         referenced_tables: ["TableAlias"]
    #       },
    #       format: "SQL" # One of: ["SQL", "PYSPARK_1_0"], # required
    #       source: { # required
    #         # One of:
    #         text: "AnalysisTemplateText",
    #         artifacts: {
    #           entry_point: { # required
    #             location: { # required
    #               bucket: "String", # required
    #               key: "String", # required
    #             }
    #           },
    #           additional_artifacts: [
    #             {
    #               location: { # required
    #                 bucket: "String", # required
    #                 key: "String", # required
    #               }
    #             }
    #           ],
    #           role_arn: "RoleArn", # required
    #         }
    #       },
    #       source_metadata: {
    #         # One of:
    #         artifacts: {
    #           entry_point_hash: { # required
    #             sha256: "String"
    #           },
    #           additional_artifact_hashes: [
    #             {
    #               sha256: "String"
    #             }
    #           ]
    #         }
    #       },
    #       analysis_parameters: [
    #         {
    #           name: "ParameterName", # required
    #           type: "SMALLINT" # One of: ["SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"], # required
    #           default_value: "ParameterValue"
    #         }
    #       ],
    #       validations: [
    #         {
    #           type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"], # required
    #           status: "VALID" # One of: ["VALID", "INVALID", "UNABLE_TO_VALIDATE"], # required
    #           reasons: [
    #             {
    #               message: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       error_message_configuration: {
    #         type: "DETAILED" # One of: ["DETAILED"], # required
    #       }
    #     }
    #   }
    # @return [Types::CreateAnalysisTemplateOperationOutput]
    def create_analysis_template(params = {}, options = {})
      request = build_request(:create_analysis_template, params)
      request.send_request(options)
    end

    # <p>Creates a new collaboration.</p>
    # @param [Hash, Types::CreateCollaborationOperationInput] params
    # @option params [Array<Types::MemberSpecification>] :members
    #   <p>A list of initial members, not including the creator. This list is immutable.</p>
    # @option params [String] :name
    #   <p>The display name for a collaboration.</p>
    # @option params [String] :description
    #   <p>A description of the collaboration provided by the collaboration owner.</p>
    # @option params [Array<String>] :creator_member_abilities
    #   <p>The abilities granted to the collaboration creator.</p>
    # @option params [Types::MLMemberAbilities] :creator_ml_member_abilities
    #   <p>The ML abilities granted to the collaboration creator.</p>
    # @option params [String] :creator_display_name
    #   <p>The display name of the collaboration creator.</p>
    # @option params [Types::DataEncryptionMetadata] :data_encryption_metadata
    #   <p>The settings for client-side encryption with Cryptographic Computing for Clean Rooms.</p>
    # @option params [String] :query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the collaboration.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    # @option params [String] :job_log_status
    #   <p>Specifies whether job logs are enabled for this collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration; those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @option params [Types::PaymentConfiguration] :creator_payment_configuration
    #   <p>The collaboration creator's payment responsibilities set by the collaboration creator. </p> <p>If the collaboration creator hasn't specified anyone as the member paying for query compute costs, then the member who can query is the default payer.</p>
    # @option params [String] :analytics_engine
    #   <p> The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>
    # @option params [Array<String>] :auto_approved_change_request_types
    #   <p>The types of change requests that are automatically approved for this collaboration.</p>
    # @option params [Array<String>] :allowed_result_regions
    #   <p>The Amazon Web Services Regions where collaboration query results can be stored. When specified, results can only be written to these Regions. This parameter enables you to meet your compliance and data governance requirements, and implement regional data governance policies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     members: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #         ml_member_abilities: {
    #           custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #         },
    #         display_name: "DisplayName", # required
    #         payment_configuration: {
    #           query_compute: { # required
    #             is_responsible: false, # required
    #           },
    #           machine_learning: {
    #             model_training: {
    #               is_responsible: false, # required
    #             },
    #             model_inference: {
    #               is_responsible: false, # required
    #             }
    #           },
    #           job_compute: {
    #             is_responsible: false, # required
    #           }
    #         }
    #       }
    #     ],
    #     name: "CollaborationName", # required
    #     description: "CollaborationDescription", # required
    #     creator_member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #     creator_ml_member_abilities: {
    #       custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #     },
    #     creator_display_name: "DisplayName", # required
    #     data_encryption_metadata: {
    #       allow_cleartext: false, # required
    #       allow_duplicates: false, # required
    #       allow_joins_on_columns_with_different_names: false, # required
    #       preserve_nulls: false, # required
    #     },
    #     query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     creator_payment_configuration: {
    #       query_compute: { # required
    #         is_responsible: false, # required
    #       },
    #       machine_learning: {
    #         model_training: {
    #           is_responsible: false, # required
    #         },
    #         model_inference: {
    #           is_responsible: false, # required
    #         }
    #       },
    #       job_compute: {
    #         is_responsible: false, # required
    #       }
    #     },
    #     analytics_engine: "SPARK" # One of: ["SPARK", "CLEAN_ROOMS_SQL"],
    #     auto_approved_change_request_types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]],
    #     allowed_result_regions: ["us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-east-2", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1"]]
    #   }
    #   options = {}
    #   response = client.create_collaboration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration: { # required
    #       id: "UUID", # required
    #       arn: "CollaborationArn", # required
    #       name: "CollaborationName", # required
    #       description: "CollaborationDescription",
    #       creator_account_id: "AccountId", # required
    #       creator_display_name: "DisplayName", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       member_status: "MemberStatus", # required
    #       membership_id: "UUID",
    #       membership_arn: "MembershipArn",
    #       data_encryption_metadata: {
    #         allow_cleartext: false, # required
    #         allow_duplicates: false, # required
    #         allow_joins_on_columns_with_different_names: false, # required
    #         preserve_nulls: false, # required
    #       },
    #       query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       analytics_engine: "SPARK" # One of: ["SPARK", "CLEAN_ROOMS_SQL"],
    #       auto_approved_change_types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]],
    #       allowed_result_regions: ["us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-east-2", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1"]]
    #     }
    #   }
    # @return [Types::CreateCollaborationOperationOutput]
    def create_collaboration(params = {}, options = {})
      request = build_request(:create_collaboration, params)
      request.send_request(options)
    end

    # <p>Creates a new change request to modify an existing collaboration. This enables post-creation modifications to collaborations through a structured API-driven approach.</p>
    # @param [Hash, Types::CreateCollaborationChangeRequestInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier of the collaboration that the change request is made against.</p>
    # @option params [Array<Types::ChangeInput>] :changes
    #   <p>The list of changes to apply to the collaboration. Each change specifies the type of modification and the details of what should be changed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     changes: [ # required
    #       {
    #         specification_type: "MEMBER" # One of: ["MEMBER"], # required
    #         specification: { # required
    #           # One of:
    #           member: {
    #             account_id: "AccountId", # required
    #             member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #             display_name: "DisplayName"
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_collaboration_change_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_change_request: { # required
    #       id: "UUID", # required
    #       collaboration_id: "UUID", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       status: "PENDING" # One of: ["PENDING", "APPROVED", "CANCELLED", "DENIED", "COMMITTED"], # required
    #       is_auto_approved: false, # required
    #       changes: [ # required
    #         {
    #           specification_type: "MEMBER" # One of: ["MEMBER"], # required
    #           specification: { # required
    #             # One of:
    #             member: {
    #               account_id: "AccountId", # required
    #               member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #               display_name: "DisplayName"
    #             }
    #           },
    #           types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateCollaborationChangeRequestOutput]
    def create_collaboration_change_request(params = {}, options = {})
      request = build_request(:create_collaboration_change_request, params)
      request.send_request(options)
    end

    # <p>Provides the details necessary to create a configured audience model association.</p>
    # @param [Hash, Types::CreateConfiguredAudienceModelAssociationInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The configured audience model is associated to the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :configured_audience_model_arn
    #   <p>A unique identifier for the configured audience model that you want to associate.</p>
    # @option params [String] :configured_audience_model_association_name
    #   <p>The name of the configured audience model association.</p>
    # @option params [Boolean] :manage_resource_policies
    #   <p>When <code>TRUE</code>, indicates that the resource policy for the configured audience model resource being associated is configured for Clean Rooms to manage permissions related to the given collaboration. When <code>FALSE</code>, indicates that the configured audience model resource owner will manage permissions related to the given collaboration.</p> <p>Setting this to <code>TRUE</code> requires you to have permissions to create, update, and delete the resource policy for the <code>cleanrooms-ml</code> resource when you call the <a>DeleteConfiguredAudienceModelAssociation</a> resource. In addition, if you are the collaboration creator and specify <code>TRUE</code>, you must have the same permissions when you call the <a>DeleteMember</a> and <a>DeleteCollaboration</a> APIs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @option params [String] :description
    #   <p>A description of the configured audience model association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     configured_audience_model_association_name: "ConfiguredAudienceModelAssociationName", # required
    #     manage_resource_policies: false, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.create_configured_audience_model_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_association: { # required
    #       id: "ConfiguredAudienceModelAssociationIdentifier", # required
    #       arn: "ConfiguredAudienceModelAssociationArn", # required
    #       configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "ConfiguredAudienceModelAssociationName", # required
    #       manage_resource_policies: false, # required
    #       description: "ResourceDescription",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateConfiguredAudienceModelAssociationOutput]
    def create_configured_audience_model_association(params = {}, options = {})
      request = build_request(:create_configured_audience_model_association, params)
      request.send_request(options)
    end

    # <p>Creates a new configured table resource.</p>
    # @param [Hash, Types::CreateConfiguredTableOperationInput] params
    # @option params [String] :name
    #   <p>The name of the configured table.</p>
    # @option params [String] :description
    #   <p>A description for the configured table.</p>
    # @option params [Types::TableReference] :table_reference
    #   <p>A reference to the table being configured.</p>
    # @option params [Array<String>] :allowed_columns
    #   <p>The columns of the underlying table that can be used by collaborations or analysis rules.</p>
    # @option params [String] :analysis_method
    #   <p>The analysis method allowed for the configured tables.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    # @option params [Array<String>] :selected_analysis_methods
    #   <p> The analysis methods to enable for the configured table. When configured, you must specify at least two analysis methods.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DisplayName", # required
    #     description: "TableDescription",
    #     table_reference: { # required
    #       # One of:
    #       glue: {
    #         region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #         table_name: "GlueTableName", # required
    #         database_name: "GlueDatabaseName", # required
    #       },
    #       snowflake: {
    #         secret_arn: "SecretsManagerArn", # required
    #         account_identifier: "SnowflakeAccountIdentifier", # required
    #         database_name: "SnowflakeDatabaseName", # required
    #         table_name: "SnowflakeTableName", # required
    #         schema_name: "SnowflakeSchemaName", # required
    #         table_schema: { # required
    #           # One of:
    #           v1: [
    #             {
    #               column_name: "ColumnName", # required
    #               column_type: "ColumnTypeString", # required
    #             }
    #           ]
    #         }
    #       },
    #       athena: {
    #         region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #         work_group: "AthenaWorkGroup", # required
    #         output_location: "AthenaOutputLocation",
    #         database_name: "AthenaDatabaseName", # required
    #         table_name: "AthenaTableName", # required
    #       }
    #     },
    #     allowed_columns: ["ColumnName"], # required
    #     analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"], # required
    #     selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configured_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table: { # required
    #       id: "UUID", # required
    #       arn: "ConfiguredTableArn", # required
    #       name: "DisplayName", # required
    #       description: "TableDescription",
    #       table_reference: { # required
    #         # One of:
    #         glue: {
    #           region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #           table_name: "GlueTableName", # required
    #           database_name: "GlueDatabaseName", # required
    #         },
    #         snowflake: {
    #           secret_arn: "SecretsManagerArn", # required
    #           account_identifier: "SnowflakeAccountIdentifier", # required
    #           database_name: "SnowflakeDatabaseName", # required
    #           table_name: "SnowflakeTableName", # required
    #           schema_name: "SnowflakeSchemaName", # required
    #           table_schema: { # required
    #             # One of:
    #             v1: [
    #               {
    #                 column_name: "ColumnName", # required
    #                 column_type: "ColumnTypeString", # required
    #               }
    #             ]
    #           }
    #         },
    #         athena: {
    #           region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #           work_group: "AthenaWorkGroup", # required
    #           output_location: "AthenaOutputLocation",
    #           database_name: "AthenaDatabaseName", # required
    #           table_name: "AthenaTableName", # required
    #         }
    #       },
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]], # required
    #       analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"], # required
    #       allowed_columns: ["ColumnName"], # required
    #       selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]]
    #     }
    #   }
    # @return [Types::CreateConfiguredTableOperationOutput]
    def create_configured_table(params = {}, options = {})
      request = build_request(:create_configured_table, params)
      request.send_request(options)
    end

    # <p>Creates a new analysis rule for a configured table. Currently, only one analysis rule can be created for a given configured table.</p>
    # @param [Hash, Types::CreateConfiguredTableAnalysisRuleOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The identifier for the configured table to create the analysis rule for. Currently accepts the configured table ID. </p>
    # @option params [String] :analysis_rule_type
    #   <p>The type of analysis rule.</p>
    # @option params [Types::ConfiguredTableAnalysisRulePolicy] :analysis_rule_policy
    #   <p>The analysis rule policy that was created for the configured table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #     analysis_rule_policy: { # required
    #       # One of:
    #       v1: {
    #         # One of:
    #         list: {
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           allowed_join_operators: ["JoinOperator"],
    #           list_columns: ["AnalysisRuleColumnName"], # required
    #           additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #         },
    #         aggregation: {
    #           aggregate_columns: [ # required
    #             {
    #               column_names: ["AnalysisRuleColumnName"], # required
    #               function: "AggregateFunctionName", # required
    #             }
    #           ],
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           join_required: "JoinRequiredOption",
    #           allowed_join_operators: ["JoinOperator"],
    #           dimension_columns: ["AnalysisRuleColumnName"], # required
    #           scalar_functions: ["ScalarFunctions"], # required
    #           output_constraints: [ # required
    #             {
    #               column_name: "AnalysisRuleColumnName", # required
    #               minimum: 1, # required
    #               type: "AggregationType", # required
    #             }
    #           ],
    #           additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #         },
    #         custom: {
    #           allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #           allowed_analysis_providers: ["AccountId"],
    #           additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #           disallowed_output_columns: ["AnalysisRuleColumnName"],
    #           differential_privacy: {
    #             columns: [ # required
    #               {
    #                 name: "String", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_configured_table_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       configured_table_id: "UUID", # required
    #       configured_table_arn: "ConfiguredTableArn", # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             allowed_join_operators: ["JoinOperator"],
    #             list_columns: ["AnalysisRuleColumnName"], # required
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           aggregation: {
    #             aggregate_columns: [ # required
    #               {
    #                 column_names: ["AnalysisRuleColumnName"], # required
    #                 function: "AggregateFunctionName", # required
    #               }
    #             ],
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             join_required: "JoinRequiredOption",
    #             allowed_join_operators: ["JoinOperator"],
    #             dimension_columns: ["AnalysisRuleColumnName"], # required
    #             scalar_functions: ["ScalarFunctions"], # required
    #             output_constraints: [ # required
    #               {
    #                 column_name: "AnalysisRuleColumnName", # required
    #                 minimum: 1, # required
    #                 type: "AggregationType", # required
    #               }
    #             ],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           custom: {
    #             allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #             allowed_analysis_providers: ["AccountId"],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             disallowed_output_columns: ["AnalysisRuleColumnName"],
    #             differential_privacy: {
    #               columns: [ # required
    #                 {
    #                   name: "String", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateConfiguredTableAnalysisRuleOperationOutput]
    def create_configured_table_analysis_rule(params = {}, options = {})
      request = build_request(:create_configured_table_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Creates a configured table association. A configured table association links a configured table with a collaboration.</p>
    # @param [Hash, Types::CreateConfiguredTableAssociationOperationInput] params
    # @option params [String] :name
    #   <p>The name of the configured table association. This name is used to query the underlying configured table.</p>
    # @option params [String] :description
    #   <p>A description for the configured table association.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The configured table is associated to the collaboration that this membership belongs to. Currently accepts a membership ID.</p>
    # @option params [String] :configured_table_identifier
    #   <p>A unique identifier for the configured table to be associated to. Currently accepts a configured table ID.</p>
    # @option params [String] :role_arn
    #   <p>The service will assume this role to access catalog metadata and query the table.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TableAlias", # required
    #     description: "TableDescription",
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configured_table_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table_association: { # required
    #       arn: "ConfiguredTableAssociationArn", # required
    #       id: "UUID", # required
    #       configured_table_id: "UUID", # required
    #       configured_table_arn: "ConfiguredTableArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       role_arn: "RoleArn", # required
    #       name: "TableAlias", # required
    #       description: "TableDescription",
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]],
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateConfiguredTableAssociationOperationOutput]
    def create_configured_table_association(params = {}, options = {})
      request = build_request(:create_configured_table_association, params)
      request.send_request(options)
    end

    # <p> Creates a new analysis rule for an associated configured table.</p>
    # @param [Hash, Types::CreateConfiguredTableAssociationAnalysisRuleInput] params
    # @option params [String] :membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    # @option params [String] :configured_table_association_identifier
    #   <p> The unique ID for the configured table association. Currently accepts the configured table association ID.</p>
    # @option params [String] :analysis_rule_type
    #   <p> The type of analysis rule.</p>
    # @option params [Types::ConfiguredTableAssociationAnalysisRulePolicy] :analysis_rule_policy
    #   <p>The analysis rule policy that was created for the configured table association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #     analysis_rule_policy: { # required
    #       # One of:
    #       v1: {
    #         # One of:
    #         list: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #         },
    #         aggregation: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #         },
    #         custom: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_configured_table_association_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       membership_identifier: "MembershipIdentifier", # required
    #       configured_table_association_id: "ConfiguredTableAssociationIdentifier", # required
    #       configured_table_association_arn: "ConfiguredTableAssociationArn", # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           aggregation: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           custom: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           }
    #         }
    #       },
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateConfiguredTableAssociationAnalysisRuleOutput]
    def create_configured_table_association_analysis_rule(params = {}, options = {})
      request = build_request(:create_configured_table_association_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Creates an ID mapping table.</p>
    # @param [Hash, Types::CreateIdMappingTableInput] params
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table.</p>
    # @option params [String] :name
    #   <p>A name for the ID mapping table.</p>
    # @option params [String] :description
    #   <p>A description of the ID mapping table.</p>
    # @option params [Types::IdMappingTableInputReferenceConfig] :input_reference_config
    #   <p>The input reference configuration needed to create the ID mapping table.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key. This value is used to encrypt the mapping table data that is stored by Clean Rooms.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     name: "ResourceAlias", # required
    #     description: "ResourceDescription",
    #     input_reference_config: { # required
    #       input_reference_arn: "IdMappingTableInputReferenceArn", # required
    #       manage_resource_policies: false, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KMSKeyArn"
    #   }
    #   options = {}
    #   response = client.create_id_mapping_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_mapping_table: { # required
    #       id: "UUID", # required
    #       arn: "IdMappingTableArn", # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdMappingTableInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       description: "ResourceDescription",
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_properties: { # required
    #         id_mapping_table_input_source: [ # required
    #           {
    #             id_namespace_association_id: "String", # required
    #             type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn"
    #     }
    #   }
    # @return [Types::CreateIdMappingTableOutput]
    def create_id_mapping_table(params = {}, options = {})
      request = build_request(:create_id_mapping_table, params)
      request.send_request(options)
    end

    # <p>Creates an ID namespace association.</p>
    # @param [Hash, Types::CreateIdNamespaceAssociationInput] params
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association.</p>
    # @option params [Types::IdNamespaceAssociationInputReferenceConfig] :input_reference_config
    #   <p>The input reference configuration needed to create the ID namespace association.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @option params [String] :name
    #   <p>The name for the ID namespace association.</p>
    # @option params [String] :description
    #   <p>The description of the ID namespace association.</p>
    # @option params [Types::IdMappingConfig] :id_mapping_config
    #   <p>The configuration settings for the ID mapping table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     input_reference_config: { # required
    #       input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #       manage_resource_policies: false, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     name: "GenericResourceName", # required
    #     description: "ResourceDescription",
    #     id_mapping_config: {
    #       allow_use_as_dimension_column: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_id_namespace_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_association: { # required
    #       id: "IdNamespaceAssociationIdentifier", # required
    #       arn: "IdNamespaceAssociationArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "GenericResourceName", # required
    #       description: "ResourceDescription",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       input_reference_properties: { # required
    #         id_namespace_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         id_mapping_workflows_supported: [""null""], # required
    #       },
    #       id_mapping_config: {
    #         allow_use_as_dimension_column: false, # required
    #       }
    #     }
    #   }
    # @return [Types::CreateIdNamespaceAssociationOutput]
    def create_id_namespace_association(params = {}, options = {})
      request = build_request(:create_id_namespace_association, params)
      request.send_request(options)
    end

    # <p>Creates a membership for a specific collaboration identifier and joins the collaboration.</p>
    # @param [Hash, Types::CreateMembershipOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The unique ID for the associated collaboration.</p>
    # @option params [String] :query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    # @option params [String] :job_log_status
    #   <p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @option params [Types::MembershipProtectedQueryResultConfiguration] :default_result_configuration
    #   <p>The default protected query result configuration as specified by the member who can receive results.</p>
    # @option params [Types::MembershipProtectedJobResultConfiguration] :default_job_result_configuration
    #   <p>The default job result configuration that determines how job results are protected and managed within this membership. This configuration applies to all jobs.</p>
    # @option params [Types::MembershipPaymentConfiguration] :payment_configuration
    #   <p>The payment responsibilities accepted by the collaboration member.</p> <p>Not required if the collaboration member has the member ability to run queries. </p> <p>Required if the collaboration member doesn't have the member ability to run queries but is configured as a payer by the collaboration creator. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     default_result_configuration: {
    #       output_configuration: { # required
    #         # One of:
    #         s3: {
    #           result_format: "ResultFormat", # required
    #           bucket: "String", # required
    #           key_prefix: "KeyPrefix",
    #           single_file_output: false
    #         }
    #       },
    #       role_arn: "RoleArn"
    #     },
    #     default_job_result_configuration: {
    #       output_configuration: { # required
    #         # One of:
    #         s3: {
    #           bucket: "String", # required
    #           key_prefix: "KeyPrefix"
    #         }
    #       },
    #       role_arn: "RoleArn", # required
    #     },
    #     payment_configuration: {
    #       query_compute: { # required
    #         is_responsible: false, # required
    #       },
    #       machine_learning: {
    #         model_training: {
    #           is_responsible: false, # required
    #         },
    #         model_inference: {
    #           is_responsible: false, # required
    #         }
    #       },
    #       job_compute: {
    #         is_responsible: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership: { # required
    #       id: "UUID", # required
    #       arn: "MembershipArn", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_creator_account_id: "AccountId", # required
    #       collaboration_creator_display_name: "DisplayName", # required
    #       collaboration_name: "CollaborationName", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       status: "MembershipStatus", # required
    #       member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #       ml_member_abilities: {
    #         custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #       },
    #       query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       default_result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             result_format: "ResultFormat", # required
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix",
    #             single_file_output: false
    #           }
    #         },
    #         role_arn: "RoleArn"
    #       },
    #       default_job_result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix"
    #           }
    #         },
    #         role_arn: "RoleArn", # required
    #       },
    #       payment_configuration: { # required
    #         query_compute: { # required
    #           is_responsible: false, # required
    #         },
    #         machine_learning: {
    #           model_training: {
    #             is_responsible: false, # required
    #           },
    #           model_inference: {
    #             is_responsible: false, # required
    #           }
    #         },
    #         job_compute: {
    #           is_responsible: false, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateMembershipOperationOutput]
    def create_membership(params = {}, options = {})
      request = build_request(:create_membership, params)
      request.send_request(options)
    end

    # <p>Creates a privacy budget template for a specified collaboration. Each collaboration can have only one privacy budget template. If you need to change the privacy budget template, use the <a>UpdatePrivacyBudgetTemplate</a> operation.</p>
    # @param [Hash, Types::CreatePrivacyBudgetTemplateInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is created in the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :auto_refresh
    #   <p>How often the privacy budget refreshes.</p> <important> <p>If you plan to regularly bring new data into the collaboration, you can use <code>CALENDAR_MONTH</code> to automatically get a new privacy budget for the collaboration every calendar month. Choosing this option allows arbitrary amounts of information to be revealed about rows of the data when repeatedly queries across refreshes. Avoid choosing this if the same rows will be repeatedly queried between privacy budget refreshes.</p> </important>
    # @option params [String] :privacy_budget_type
    #   <p>Specifies the type of the privacy budget template.</p>
    # @option params [Types::PrivacyBudgetTemplateParametersInput] :parameters
    #   <p>Specifies your parameters for the privacy budget template.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An optional label that you can assign to a resource when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     auto_refresh: "CALENDAR_MONTH" # One of: ["CALENDAR_MONTH", "NONE"],
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #     parameters: { # required
    #       # One of:
    #       differential_privacy: {
    #         epsilon: 1, # required
    #         users_noise_per_query: 1, # required
    #       },
    #       access_budget: {
    #         budget_parameters: [ # required
    #           {
    #             type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #             budget: 1, # required
    #             auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ],
    #         resource_arn: "BudgetedResourceArn", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_privacy_budget_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     privacy_budget_template: { # required
    #       id: "PrivacyBudgetTemplateIdentifier", # required
    #       arn: "PrivacyBudgetTemplateArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #       auto_refresh: "CALENDAR_MONTH" # One of: ["CALENDAR_MONTH", "NONE"], # required
    #       parameters: { # required
    #         # One of:
    #         differential_privacy: {
    #           epsilon: 1, # required
    #           users_noise_per_query: 1, # required
    #         },
    #         access_budget: {
    #           budget_parameters: [ # required
    #             {
    #               type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #               budget: 1, # required
    #               auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ],
    #           resource_arn: "BudgetedResourceArn", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreatePrivacyBudgetTemplateOutput]
    def create_privacy_budget_template(params = {}, options = {})
      request = build_request(:create_privacy_budget_template, params)
      request.send_request(options)
    end

    # <p>Deletes an analysis template.</p>
    # @param [Hash, Types::DeleteAnalysisTemplateOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @option params [String] :analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     analysis_template_identifier: "AnalysisTemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_analysis_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAnalysisTemplateOperationOutput]
    def delete_analysis_template(params = {}, options = {})
      request = build_request(:delete_analysis_template, params)
      request.send_request(options)
    end

    # <p>Deletes a collaboration. It can only be called by the collaboration owner.</p>
    # @param [Hash, Types::DeleteCollaborationOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_collaboration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCollaborationOperationOutput]
    def delete_collaboration(params = {}, options = {})
      request = build_request(:delete_collaboration, params)
      request.send_request(options)
    end

    # <p>Provides the information necessary to delete a configured audience model association.</p>
    # @param [Hash, Types::DeleteConfiguredAudienceModelAssociationInput] params
    # @option params [String] :configured_audience_model_association_identifier
    #   <p>A unique identifier of the configured audience model association that you want to delete.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier of the membership that contains the audience model association that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_audience_model_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfiguredAudienceModelAssociationOutput]
    def delete_configured_audience_model_association(params = {}, options = {})
      request = build_request(:delete_configured_audience_model_association, params)
      request.send_request(options)
    end

    # <p>Deletes a configured table.</p>
    # @param [Hash, Types::DeleteConfiguredTableOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The unique ID for the configured table to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfiguredTableOperationOutput]
    def delete_configured_table(params = {}, options = {})
      request = build_request(:delete_configured_table, params)
      request.send_request(options)
    end

    # <p>Deletes a configured table analysis rule.</p>
    # @param [Hash, Types::DeleteConfiguredTableAnalysisRuleOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>
    # @option params [String] :analysis_rule_type
    #   <p>The analysis rule type to be deleted. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #   }
    #   options = {}
    #   response = client.delete_configured_table_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfiguredTableAnalysisRuleOperationOutput]
    def delete_configured_table_analysis_rule(params = {}, options = {})
      request = build_request(:delete_configured_table_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a configured table association.</p>
    # @param [Hash, Types::DeleteConfiguredTableAssociationOperationInput] params
    # @option params [String] :configured_table_association_identifier
    #   <p>The unique ID for the configured table association to be deleted. Currently accepts the configured table ID.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_table_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfiguredTableAssociationOperationOutput]
    def delete_configured_table_association(params = {}, options = {})
      request = build_request(:delete_configured_table_association, params)
      request.send_request(options)
    end

    # <p>Deletes an analysis rule for a configured table association.</p>
    # @param [Hash, Types::DeleteConfiguredTableAssociationAnalysisRuleInput] params
    # @option params [String] :membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    # @option params [String] :configured_table_association_identifier
    #   <p>The identiﬁer for the conﬁgured table association that's related to the analysis rule that you want to delete.</p>
    # @option params [String] :analysis_rule_type
    #   <p>The type of the analysis rule that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #   }
    #   options = {}
    #   response = client.delete_configured_table_association_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConfiguredTableAssociationAnalysisRuleOutput]
    def delete_configured_table_association_analysis_rule(params = {}, options = {})
      request = build_request(:delete_configured_table_association_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Deletes an ID mapping table.</p>
    # @param [Hash, Types::DeleteIdMappingTableInput] params
    # @option params [String] :id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to delete.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_id_mapping_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdMappingTableOutput]
    def delete_id_mapping_table(params = {}, options = {})
      request = build_request(:delete_id_mapping_table, params)
      request.send_request(options)
    end

    # <p>Deletes an ID namespace association.</p>
    # @param [Hash, Types::DeleteIdNamespaceAssociationInput] params
    # @option params [String] :id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to delete.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_id_namespace_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdNamespaceAssociationOutput]
    def delete_id_namespace_association(params = {}, options = {})
      request = build_request(:delete_id_namespace_association, params)
      request.send_request(options)
    end

    # <p>Removes the specified member from a collaboration. The removed member is placed in the Removed status and can't interact with the collaboration. The removed member's data is inaccessible to active members of the collaboration.</p>
    # @param [Hash, Types::DeleteMemberOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The unique identifier for the associated collaboration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the member to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     account_id: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.delete_member(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMemberOperationOutput]
    def delete_member(params = {}, options = {})
      request = build_request(:delete_member, params)
      request.send_request(options)
    end

    # <p>Deletes a specified membership. All resources under a membership must be deleted.</p>
    # @param [Hash, Types::DeleteMembershipOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMembershipOperationOutput]
    def delete_membership(params = {}, options = {})
      request = build_request(:delete_membership, params)
      request.send_request(options)
    end

    # <p>Deletes a privacy budget template for a specified collaboration.</p>
    # @param [Hash, Types::DeletePrivacyBudgetTemplateInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is deleted from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_privacy_budget_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePrivacyBudgetTemplateOutput]
    def delete_privacy_budget_template(params = {}, options = {})
      request = build_request(:delete_privacy_budget_template, params)
      request.send_request(options)
    end

    # <p>Retrieves an analysis template.</p>
    # @param [Hash, Types::GetAnalysisTemplateOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @option params [String] :analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     analysis_template_identifier: "AnalysisTemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_analysis_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_template: { # required
    #       id: "AnalysisTemplateIdentifier", # required
    #       arn: "AnalysisTemplateArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       description: "ResourceDescription",
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       schema: { # required
    #         referenced_tables: ["TableAlias"]
    #       },
    #       format: "SQL" # One of: ["SQL", "PYSPARK_1_0"], # required
    #       source: { # required
    #         # One of:
    #         text: "AnalysisTemplateText",
    #         artifacts: {
    #           entry_point: { # required
    #             location: { # required
    #               bucket: "String", # required
    #               key: "String", # required
    #             }
    #           },
    #           additional_artifacts: [
    #             {
    #               location: { # required
    #                 bucket: "String", # required
    #                 key: "String", # required
    #               }
    #             }
    #           ],
    #           role_arn: "RoleArn", # required
    #         }
    #       },
    #       source_metadata: {
    #         # One of:
    #         artifacts: {
    #           entry_point_hash: { # required
    #             sha256: "String"
    #           },
    #           additional_artifact_hashes: [
    #             {
    #               sha256: "String"
    #             }
    #           ]
    #         }
    #       },
    #       analysis_parameters: [
    #         {
    #           name: "ParameterName", # required
    #           type: "SMALLINT" # One of: ["SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"], # required
    #           default_value: "ParameterValue"
    #         }
    #       ],
    #       validations: [
    #         {
    #           type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"], # required
    #           status: "VALID" # One of: ["VALID", "INVALID", "UNABLE_TO_VALIDATE"], # required
    #           reasons: [
    #             {
    #               message: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       error_message_configuration: {
    #         type: "DETAILED" # One of: ["DETAILED"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetAnalysisTemplateOperationOutput]
    def get_analysis_template(params = {}, options = {})
      request = build_request(:get_analysis_template, params)
      request.send_request(options)
    end

    # <p>Returns metadata about a collaboration.</p>
    # @param [Hash, Types::GetCollaborationOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration: { # required
    #       id: "UUID", # required
    #       arn: "CollaborationArn", # required
    #       name: "CollaborationName", # required
    #       description: "CollaborationDescription",
    #       creator_account_id: "AccountId", # required
    #       creator_display_name: "DisplayName", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       member_status: "MemberStatus", # required
    #       membership_id: "UUID",
    #       membership_arn: "MembershipArn",
    #       data_encryption_metadata: {
    #         allow_cleartext: false, # required
    #         allow_duplicates: false, # required
    #         allow_joins_on_columns_with_different_names: false, # required
    #         preserve_nulls: false, # required
    #       },
    #       query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       analytics_engine: "SPARK" # One of: ["SPARK", "CLEAN_ROOMS_SQL"],
    #       auto_approved_change_types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]],
    #       allowed_result_regions: ["us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-east-2", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1"]]
    #     }
    #   }
    # @return [Types::GetCollaborationOperationOutput]
    def get_collaboration(params = {}, options = {})
      request = build_request(:get_collaboration, params)
      request.send_request(options)
    end

    # <p>Retrieves an analysis template within a collaboration.</p>
    # @param [Hash, Types::GetCollaborationAnalysisTemplateOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    # @option params [String] :analysis_template_arn
    #   <p>The Amazon Resource Name (ARN) associated with the analysis template within a collaboration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     analysis_template_arn: "AnalysisTemplateArn", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_analysis_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_analysis_template: { # required
    #       id: "AnalysisTemplateIdentifier", # required
    #       arn: "AnalysisTemplateArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       description: "ResourceDescription",
    #       creator_account_id: "AccountId", # required
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       schema: { # required
    #         referenced_tables: ["TableAlias"]
    #       },
    #       format: "SQL" # One of: ["SQL", "PYSPARK_1_0"], # required
    #       source: {
    #         # One of:
    #         text: "AnalysisTemplateText",
    #         artifacts: {
    #           entry_point: { # required
    #             location: { # required
    #               bucket: "String", # required
    #               key: "String", # required
    #             }
    #           },
    #           additional_artifacts: [
    #             {
    #               location: { # required
    #                 bucket: "String", # required
    #                 key: "String", # required
    #               }
    #             }
    #           ],
    #           role_arn: "RoleArn", # required
    #         }
    #       },
    #       source_metadata: {
    #         # One of:
    #         artifacts: {
    #           entry_point_hash: { # required
    #             sha256: "String"
    #           },
    #           additional_artifact_hashes: [
    #             {
    #               sha256: "String"
    #             }
    #           ]
    #         }
    #       },
    #       analysis_parameters: [
    #         {
    #           name: "ParameterName", # required
    #           type: "SMALLINT" # One of: ["SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"], # required
    #           default_value: "ParameterValue"
    #         }
    #       ],
    #       validations: [
    #         {
    #           type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"], # required
    #           status: "VALID" # One of: ["VALID", "INVALID", "UNABLE_TO_VALIDATE"], # required
    #           reasons: [
    #             {
    #               message: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       error_message_configuration: {
    #         type: "DETAILED" # One of: ["DETAILED"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetCollaborationAnalysisTemplateOperationOutput]
    def get_collaboration_analysis_template(params = {}, options = {})
      request = build_request(:get_collaboration_analysis_template, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific collaboration change request.</p>
    # @param [Hash, Types::GetCollaborationChangeRequestInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier of the collaboration that the change request is made against.</p>
    # @option params [String] :change_request_identifier
    #   <p>A unique identifier for the change request to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     change_request_identifier: "CollaborationChangeRequestIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_change_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_change_request: { # required
    #       id: "UUID", # required
    #       collaboration_id: "UUID", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       status: "PENDING" # One of: ["PENDING", "APPROVED", "CANCELLED", "DENIED", "COMMITTED"], # required
    #       is_auto_approved: false, # required
    #       changes: [ # required
    #         {
    #           specification_type: "MEMBER" # One of: ["MEMBER"], # required
    #           specification: { # required
    #             # One of:
    #             member: {
    #               account_id: "AccountId", # required
    #               member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #               display_name: "DisplayName"
    #             }
    #           },
    #           types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetCollaborationChangeRequestOutput]
    def get_collaboration_change_request(params = {}, options = {})
      request = build_request(:get_collaboration_change_request, params)
      request.send_request(options)
    end

    # <p>Retrieves a configured audience model association within a collaboration.</p>
    # @param [Hash, Types::GetCollaborationConfiguredAudienceModelAssociationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>
    # @option params [String] :configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_configured_audience_model_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_configured_audience_model_association: { # required
    #       id: "ConfiguredAudienceModelAssociationIdentifier", # required
    #       arn: "ConfiguredAudienceModelAssociationArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #       name: "ConfiguredAudienceModelAssociationName", # required
    #       description: "ResourceDescription",
    #       creator_account_id: "AccountId", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetCollaborationConfiguredAudienceModelAssociationOutput]
    def get_collaboration_configured_audience_model_association(params = {}, options = {})
      request = build_request(:get_collaboration_configured_audience_model_association, params)
      request.send_request(options)
    end

    # <p>Retrieves an ID namespace association from a specific collaboration.</p>
    # @param [Hash, Types::GetCollaborationIdNamespaceAssociationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the ID namespace association that you want to retrieve.</p>
    # @option params [String] :id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_id_namespace_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_id_namespace_association: { # required
    #       id: "IdNamespaceAssociationIdentifier", # required
    #       arn: "IdNamespaceAssociationArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "GenericResourceName", # required
    #       description: "ResourceDescription",
    #       creator_account_id: "AccountId", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       input_reference_properties: { # required
    #         id_namespace_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         id_mapping_workflows_supported: [""null""], # required
    #       },
    #       id_mapping_config: {
    #         allow_use_as_dimension_column: false, # required
    #       }
    #     }
    #   }
    # @return [Types::GetCollaborationIdNamespaceAssociationOutput]
    def get_collaboration_id_namespace_association(params = {}, options = {})
      request = build_request(:get_collaboration_id_namespace_association, params)
      request.send_request(options)
    end

    # <p>Returns details about a specified privacy budget template.</p>
    # @param [Hash, Types::GetCollaborationPrivacyBudgetTemplateInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    # @option params [String] :privacy_budget_template_identifier
    #   <p>A unique identifier for one of your privacy budget templates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_privacy_budget_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_privacy_budget_template: { # required
    #       id: "PrivacyBudgetTemplateIdentifier", # required
    #       arn: "PrivacyBudgetTemplateArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       creator_account_id: "AccountId", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #       auto_refresh: "CALENDAR_MONTH" # One of: ["CALENDAR_MONTH", "NONE"], # required
    #       parameters: { # required
    #         # One of:
    #         differential_privacy: {
    #           epsilon: 1, # required
    #           users_noise_per_query: 1, # required
    #         },
    #         access_budget: {
    #           budget_parameters: [ # required
    #             {
    #               type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #               budget: 1, # required
    #               auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ],
    #           resource_arn: "BudgetedResourceArn", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCollaborationPrivacyBudgetTemplateOutput]
    def get_collaboration_privacy_budget_template(params = {}, options = {})
      request = build_request(:get_collaboration_privacy_budget_template, params)
      request.send_request(options)
    end

    # <p>Returns information about a configured audience model association.</p>
    # @param [Hash, Types::GetConfiguredAudienceModelAssociationInput] params
    # @option params [String] :configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to retrieve.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for the membership that contains the configured audience model association that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_configured_audience_model_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_association: { # required
    #       id: "ConfiguredAudienceModelAssociationIdentifier", # required
    #       arn: "ConfiguredAudienceModelAssociationArn", # required
    #       configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "ConfiguredAudienceModelAssociationName", # required
    #       manage_resource_policies: false, # required
    #       description: "ResourceDescription",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetConfiguredAudienceModelAssociationOutput]
    def get_configured_audience_model_association(params = {}, options = {})
      request = build_request(:get_configured_audience_model_association, params)
      request.send_request(options)
    end

    # <p>Retrieves a configured table.</p>
    # @param [Hash, Types::GetConfiguredTableOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The unique ID for the configured table to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_configured_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table: { # required
    #       id: "UUID", # required
    #       arn: "ConfiguredTableArn", # required
    #       name: "DisplayName", # required
    #       description: "TableDescription",
    #       table_reference: { # required
    #         # One of:
    #         glue: {
    #           region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #           table_name: "GlueTableName", # required
    #           database_name: "GlueDatabaseName", # required
    #         },
    #         snowflake: {
    #           secret_arn: "SecretsManagerArn", # required
    #           account_identifier: "SnowflakeAccountIdentifier", # required
    #           database_name: "SnowflakeDatabaseName", # required
    #           table_name: "SnowflakeTableName", # required
    #           schema_name: "SnowflakeSchemaName", # required
    #           table_schema: { # required
    #             # One of:
    #             v1: [
    #               {
    #                 column_name: "ColumnName", # required
    #                 column_type: "ColumnTypeString", # required
    #               }
    #             ]
    #           }
    #         },
    #         athena: {
    #           region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #           work_group: "AthenaWorkGroup", # required
    #           output_location: "AthenaOutputLocation",
    #           database_name: "AthenaDatabaseName", # required
    #           table_name: "AthenaTableName", # required
    #         }
    #       },
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]], # required
    #       analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"], # required
    #       allowed_columns: ["ColumnName"], # required
    #       selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]]
    #     }
    #   }
    # @return [Types::GetConfiguredTableOperationOutput]
    def get_configured_table(params = {}, options = {})
      request = build_request(:get_configured_table, params)
      request.send_request(options)
    end

    # <p>Retrieves a configured table analysis rule.</p>
    # @param [Hash, Types::GetConfiguredTableAnalysisRuleOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The unique identifier for the configured table to retrieve. Currently accepts the configured table ID.</p>
    # @option params [String] :analysis_rule_type
    #   <p>The analysis rule to be retrieved. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #   }
    #   options = {}
    #   response = client.get_configured_table_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       configured_table_id: "UUID", # required
    #       configured_table_arn: "ConfiguredTableArn", # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             allowed_join_operators: ["JoinOperator"],
    #             list_columns: ["AnalysisRuleColumnName"], # required
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           aggregation: {
    #             aggregate_columns: [ # required
    #               {
    #                 column_names: ["AnalysisRuleColumnName"], # required
    #                 function: "AggregateFunctionName", # required
    #               }
    #             ],
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             join_required: "JoinRequiredOption",
    #             allowed_join_operators: ["JoinOperator"],
    #             dimension_columns: ["AnalysisRuleColumnName"], # required
    #             scalar_functions: ["ScalarFunctions"], # required
    #             output_constraints: [ # required
    #               {
    #                 column_name: "AnalysisRuleColumnName", # required
    #                 minimum: 1, # required
    #                 type: "AggregationType", # required
    #               }
    #             ],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           custom: {
    #             allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #             allowed_analysis_providers: ["AccountId"],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             disallowed_output_columns: ["AnalysisRuleColumnName"],
    #             differential_privacy: {
    #               columns: [ # required
    #                 {
    #                   name: "String", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetConfiguredTableAnalysisRuleOperationOutput]
    def get_configured_table_analysis_rule(params = {}, options = {})
      request = build_request(:get_configured_table_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves a configured table association.</p>
    # @param [Hash, Types::GetConfiguredTableAssociationOperationInput] params
    # @option params [String] :configured_table_association_identifier
    #   <p>The unique ID for the configured table association to retrieve. Currently accepts the configured table ID.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_configured_table_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table_association: { # required
    #       arn: "ConfiguredTableAssociationArn", # required
    #       id: "UUID", # required
    #       configured_table_id: "UUID", # required
    #       configured_table_arn: "ConfiguredTableArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       role_arn: "RoleArn", # required
    #       name: "TableAlias", # required
    #       description: "TableDescription",
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]],
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetConfiguredTableAssociationOperationOutput]
    def get_configured_table_association(params = {}, options = {})
      request = build_request(:get_configured_table_association, params)
      request.send_request(options)
    end

    # <p> Retrieves the analysis rule for a configured table association.</p>
    # @param [Hash, Types::GetConfiguredTableAssociationAnalysisRuleInput] params
    # @option params [String] :membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    # @option params [String] :configured_table_association_identifier
    #   <p> The identiﬁer for the conﬁgured table association that's related to the analysis rule.</p>
    # @option params [String] :analysis_rule_type
    #   <p> The type of analysis rule that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #   }
    #   options = {}
    #   response = client.get_configured_table_association_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       membership_identifier: "MembershipIdentifier", # required
    #       configured_table_association_id: "ConfiguredTableAssociationIdentifier", # required
    #       configured_table_association_arn: "ConfiguredTableAssociationArn", # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           aggregation: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           custom: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           }
    #         }
    #       },
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetConfiguredTableAssociationAnalysisRuleOutput]
    def get_configured_table_association_analysis_rule(params = {}, options = {})
      request = build_request(:get_configured_table_association_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves an ID mapping table.</p>
    # @param [Hash, Types::GetIdMappingTableInput] params
    # @option params [String] :id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table identifier that you want to retrieve.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_id_mapping_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_mapping_table: { # required
    #       id: "UUID", # required
    #       arn: "IdMappingTableArn", # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdMappingTableInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       description: "ResourceDescription",
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_properties: { # required
    #         id_mapping_table_input_source: [ # required
    #           {
    #             id_namespace_association_id: "String", # required
    #             type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn"
    #     }
    #   }
    # @return [Types::GetIdMappingTableOutput]
    def get_id_mapping_table(params = {}, options = {})
      request = build_request(:get_id_mapping_table, params)
      request.send_request(options)
    end

    # <p>Retrieves an ID namespace association.</p>
    # @param [Hash, Types::GetIdNamespaceAssociationInput] params
    # @option params [String] :id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to retrieve.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_id_namespace_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_association: { # required
    #       id: "IdNamespaceAssociationIdentifier", # required
    #       arn: "IdNamespaceAssociationArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "GenericResourceName", # required
    #       description: "ResourceDescription",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       input_reference_properties: { # required
    #         id_namespace_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         id_mapping_workflows_supported: [""null""], # required
    #       },
    #       id_mapping_config: {
    #         allow_use_as_dimension_column: false, # required
    #       }
    #     }
    #   }
    # @return [Types::GetIdNamespaceAssociationOutput]
    def get_id_namespace_association(params = {}, options = {})
      request = build_request(:get_id_namespace_association, params)
      request.send_request(options)
    end

    # <p>Retrieves a specified membership for an identifier.</p>
    # @param [Hash, Types::GetMembershipOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership: { # required
    #       id: "UUID", # required
    #       arn: "MembershipArn", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_creator_account_id: "AccountId", # required
    #       collaboration_creator_display_name: "DisplayName", # required
    #       collaboration_name: "CollaborationName", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       status: "MembershipStatus", # required
    #       member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #       ml_member_abilities: {
    #         custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #       },
    #       query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       default_result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             result_format: "ResultFormat", # required
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix",
    #             single_file_output: false
    #           }
    #         },
    #         role_arn: "RoleArn"
    #       },
    #       default_job_result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix"
    #           }
    #         },
    #         role_arn: "RoleArn", # required
    #       },
    #       payment_configuration: { # required
    #         query_compute: { # required
    #           is_responsible: false, # required
    #         },
    #         machine_learning: {
    #           model_training: {
    #             is_responsible: false, # required
    #           },
    #           model_inference: {
    #             is_responsible: false, # required
    #           }
    #         },
    #         job_compute: {
    #           is_responsible: false, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetMembershipOperationOutput]
    def get_membership(params = {}, options = {})
      request = build_request(:get_membership, params)
      request.send_request(options)
    end

    # <p>Returns details for a specified privacy budget template.</p>
    # @param [Hash, Types::GetPrivacyBudgetTemplateInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_privacy_budget_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     privacy_budget_template: { # required
    #       id: "PrivacyBudgetTemplateIdentifier", # required
    #       arn: "PrivacyBudgetTemplateArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #       auto_refresh: "CALENDAR_MONTH" # One of: ["CALENDAR_MONTH", "NONE"], # required
    #       parameters: { # required
    #         # One of:
    #         differential_privacy: {
    #           epsilon: 1, # required
    #           users_noise_per_query: 1, # required
    #         },
    #         access_budget: {
    #           budget_parameters: [ # required
    #             {
    #               type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #               budget: 1, # required
    #               auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ],
    #           resource_arn: "BudgetedResourceArn", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetPrivacyBudgetTemplateOutput]
    def get_privacy_budget_template(params = {}, options = {})
      request = build_request(:get_privacy_budget_template, params)
      request.send_request(options)
    end

    # <p>Returns job processing metadata.</p>
    # @param [Hash, Types::GetProtectedJobInput] params
    # @option params [String] :membership_identifier
    #   <p> The identifier for a membership in a protected job instance.</p>
    # @option params [String] :protected_job_identifier
    #   <p> The identifier for the protected job instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     protected_job_identifier: "ProtectedJobIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_protected_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_job: { # required
    #       id: "ProtectedJobIdentifier", # required
    #       membership_id: "MembershipIdentifier", # required
    #       membership_arn: "MembershipArn", # required
    #       create_time: Time.now, # required
    #       job_parameters: {
    #         analysis_template_arn: "AnalysisTemplateArn"
    #       },
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS"], # required
    #       result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix"
    #           },
    #           member: {
    #             account_id: "AccountId", # required
    #           }
    #         }
    #       },
    #       statistics: {
    #         total_duration_in_millis: 1,
    #         billed_resource_utilization: {
    #           units: 1.0, # required
    #         }
    #       },
    #       result: {
    #         output: { # required
    #           # One of:
    #           s3: {
    #             location: "String", # required
    #           },
    #           member_list: [
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ]
    #         }
    #       },
    #       error: {
    #         message: "String", # required
    #         code: "String", # required
    #       },
    #       compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"], # required
    #           number: 1, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetProtectedJobOutput]
    def get_protected_job(params = {}, options = {})
      request = build_request(:get_protected_job, params)
      request.send_request(options)
    end

    # <p>Returns query processing metadata.</p>
    # @param [Hash, Types::GetProtectedQueryOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership in a protected query instance.</p>
    # @option params [String] :protected_query_identifier
    #   <p>The identifier for a protected query instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     protected_query_identifier: "ProtectedQueryIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_protected_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_query: { # required
    #       id: "UUID", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       create_time: Time.now, # required
    #       sql_parameters: {
    #         query_string: "String",
    #         analysis_template_arn: "AnalysisTemplateArn",
    #         parameters: {
    #           "ParameterName" => "ParameterValue"
    #         }
    #       },
    #       status: "ProtectedQueryStatus", # required
    #       result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             result_format: "ResultFormat", # required
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix",
    #             single_file_output: false
    #           },
    #           member: {
    #             account_id: "AccountId", # required
    #           },
    #           distribute: {
    #             locations: [{ # required
    #               # One of:
    #               s3: {
    #                 result_format: "ResultFormat", # required
    #                 bucket: "String", # required
    #                 key_prefix: "KeyPrefix",
    #                 single_file_output: false
    #               },
    #               member: {
    #                 account_id: "AccountId", # required
    #               }
    #             }]
    #           }
    #         }
    #       },
    #       statistics: {
    #         total_duration_in_millis: 1,
    #         billed_resource_utilization: {
    #           units: 1.0, # required
    #         }
    #       },
    #       result: {
    #         output: { # required
    #           # One of:
    #           s3: {
    #             location: "String", # required
    #           },
    #           member_list: [
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ],
    #           distribute: {
    #             s3: {
    #               location: "String", # required
    #             },
    #             member_list: [
    #               {
    #                 account_id: "AccountId", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       error: {
    #         message: "String", # required
    #         code: "String", # required
    #       },
    #       differential_privacy: {
    #         sensitivity_parameters: [ # required
    #           {
    #             aggregation_type: "AVG" # One of: ["AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"], # required
    #             aggregation_expression: "DifferentialPrivacyAggregationExpression", # required
    #             user_contribution_limit: 1, # required
    #             min_column_value: 1.0,
    #             max_column_value: 1.0
    #           }
    #         ]
    #       },
    #       compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #           number: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetProtectedQueryOperationOutput]
    def get_protected_query(params = {}, options = {})
      request = build_request(:get_protected_query, params)
      request.send_request(options)
    end

    # <p>Retrieves the schema for a relation within a collaboration.</p>
    # @param [Hash, Types::GetSchemaOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    # @option params [String] :name
    #   <p>The name of the relation to retrieve the schema for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     name: "TableAlias", # required
    #   }
    #   options = {}
    #   response = client.get_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema: { # required
    #       columns: [ # required
    #         {
    #           name: "ColumnName", # required
    #           type: "ColumnTypeString", # required
    #         }
    #       ],
    #       partition_keys: [ # required
    #         {
    #           name: "ColumnName", # required
    #           type: "ColumnTypeString", # required
    #         }
    #       ],
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"]], # required
    #       analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"],
    #       selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]],
    #       creator_account_id: "AccountId", # required
    #       name: "TableAlias", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       description: "TableDescription", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       type: "TABLE" # One of: ["TABLE", "ID_MAPPING_TABLE"], # required
    #       schema_status_details: [ # required
    #         {
    #           status: "READY" # One of: ["READY", "NOT_READY"], # required
    #           reasons: [
    #             {
    #               code: "ANALYSIS_RULE_MISSING" # One of: ["ANALYSIS_RULE_MISSING", "ANALYSIS_TEMPLATES_NOT_CONFIGURED", "ANALYSIS_PROVIDERS_NOT_CONFIGURED", "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED", "ID_MAPPING_TABLE_NOT_POPULATED", "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_CONFIGURED", "RESULT_RECEIVERS_NOT_CONFIGURED", "ADDITIONAL_ANALYSES_NOT_ALLOWED", "RESULT_RECEIVERS_NOT_ALLOWED", "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"], # required
    #               message: "String", # required
    #             }
    #           ],
    #           analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"],
    #           configurations: ["DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"]],
    #           analysis_type: "DIRECT_ANALYSIS" # One of: ["DIRECT_ANALYSIS", "ADDITIONAL_ANALYSIS"], # required
    #         }
    #       ],
    #       resource_arn: "SchemaResourceArn",
    #       schema_type_properties: {
    #         # One of:
    #         id_mapping_table: {
    #           id_mapping_table_input_source: [ # required
    #             {
    #               id_namespace_association_id: "String", # required
    #               type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetSchemaOperationOutput]
    def get_schema(params = {}, options = {})
      request = build_request(:get_schema, params)
      request.send_request(options)
    end

    # <p>Retrieves a schema analysis rule.</p>
    # @param [Hash, Types::GetSchemaAnalysisRuleOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    # @option params [String] :name
    #   <p>The name of the schema to retrieve the analysis rule for.</p>
    # @option params [String] :type
    #   <p>The type of the schema analysis rule to retrieve. Schema analysis rules are uniquely identified by a combination of the collaboration, the schema name, and their type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     name: "TableAlias", # required
    #     type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"], # required
    #   }
    #   options = {}
    #   response = client.get_schema_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       collaboration_id: "CollaborationIdentifier", # required
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"], # required
    #       name: "TableAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             allowed_join_operators: ["JoinOperator"],
    #             list_columns: ["AnalysisRuleColumnName"], # required
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           aggregation: {
    #             aggregate_columns: [ # required
    #               {
    #                 column_names: ["AnalysisRuleColumnName"], # required
    #                 function: "AggregateFunctionName", # required
    #               }
    #             ],
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             join_required: "JoinRequiredOption",
    #             allowed_join_operators: ["JoinOperator"],
    #             dimension_columns: ["AnalysisRuleColumnName"], # required
    #             scalar_functions: ["ScalarFunctions"], # required
    #             output_constraints: [ # required
    #               {
    #                 column_name: "AnalysisRuleColumnName", # required
    #                 minimum: 1, # required
    #                 type: "AggregationType", # required
    #               }
    #             ],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           custom: {
    #             allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #             allowed_analysis_providers: ["AccountId"],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             disallowed_output_columns: ["AnalysisRuleColumnName"],
    #             differential_privacy: {
    #               columns: [ # required
    #                 {
    #                   name: "String", # required
    #                 }
    #               ]
    #             }
    #           },
    #           id_mapping_table: {
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             query_constraints: [{ # required
    #               # One of:
    #               require_overlap: {
    #                 columns: ["AnalysisRuleColumnName"]
    #               }
    #             }],
    #             dimension_columns: ["AnalysisRuleColumnName"]
    #           }
    #         }
    #       },
    #       collaboration_policy: {
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           aggregation: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           custom: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           }
    #         }
    #       },
    #       consolidated_policy: {
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             allowed_join_operators: ["JoinOperator"],
    #             list_columns: ["AnalysisRuleColumnName"], # required
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           aggregation: {
    #             aggregate_columns: [ # required
    #               {
    #                 column_names: ["AnalysisRuleColumnName"], # required
    #                 function: "AggregateFunctionName", # required
    #               }
    #             ],
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             join_required: "JoinRequiredOption",
    #             allowed_join_operators: ["JoinOperator"],
    #             dimension_columns: ["AnalysisRuleColumnName"], # required
    #             scalar_functions: ["ScalarFunctions"], # required
    #             output_constraints: [ # required
    #               {
    #                 column_name: "AnalysisRuleColumnName", # required
    #                 minimum: 1, # required
    #                 type: "AggregationType", # required
    #               }
    #             ],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           custom: {
    #             allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #             allowed_analysis_providers: ["AccountId"],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             disallowed_output_columns: ["AnalysisRuleColumnName"],
    #             differential_privacy: {
    #               columns: [ # required
    #                 {
    #                   name: "String", # required
    #                 }
    #               ]
    #             },
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetSchemaAnalysisRuleOperationOutput]
    def get_schema_analysis_rule(params = {}, options = {})
      request = build_request(:get_schema_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Lists analysis templates that the caller owns.</p>
    # @param [Hash, Types::ListAnalysisTemplatesOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_analysis_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     analysis_template_summaries: [ # required
    #       {
    #         arn: "AnalysisTemplateArn", # required
    #         create_time: Time.now, # required
    #         id: "AnalysisTemplateIdentifier", # required
    #         name: "ResourceAlias", # required
    #         update_time: Time.now, # required
    #         membership_arn: "MembershipArn", # required
    #         membership_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListAnalysisTemplatesOperationOutput]
    def list_analysis_templates(params = {}, options = {})
      request = build_request(:list_analysis_templates, params)
      request.send_request(options)
    end

    # <p>Lists analysis templates within a collaboration.</p>
    # @param [Hash, Types::ListCollaborationAnalysisTemplatesOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the analysis templates belong to. Currently accepts collaboration ID.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collaboration_analysis_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     collaboration_analysis_template_summaries: [ # required
    #       {
    #         arn: "AnalysisTemplateArn", # required
    #         create_time: Time.now, # required
    #         id: "AnalysisTemplateIdentifier", # required
    #         name: "ResourceAlias", # required
    #         update_time: Time.now, # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         creator_account_id: "AccountId", # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationAnalysisTemplatesOperationOutput]
    def list_collaboration_analysis_templates(params = {}, options = {})
      request = build_request(:list_collaboration_analysis_templates, params)
      request.send_request(options)
    end

    # <p>Lists all change requests for a collaboration with pagination support. Returns change requests sorted by creation time.</p>
    # @param [Hash, Types::ListCollaborationChangeRequestsInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier of the collaboration that the change request is made against.</p>
    # @option params [String] :status
    #   <p>A filter to only return change requests with the specified status.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     status: "PENDING" # One of: ["PENDING", "APPROVED", "CANCELLED", "DENIED", "COMMITTED"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collaboration_change_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_change_request_summaries: [ # required
    #       {
    #         id: "UUID", # required
    #         collaboration_id: "UUID", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         status: "PENDING" # One of: ["PENDING", "APPROVED", "CANCELLED", "DENIED", "COMMITTED"], # required
    #         is_auto_approved: false, # required
    #         changes: [ # required
    #           {
    #             specification_type: "MEMBER" # One of: ["MEMBER"], # required
    #             specification: { # required
    #               # One of:
    #               member: {
    #                 account_id: "AccountId", # required
    #                 member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #                 display_name: "DisplayName"
    #               }
    #             },
    #             types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListCollaborationChangeRequestsOutput]
    def list_collaboration_change_requests(params = {}, options = {})
      request = build_request(:list_collaboration_change_requests, params)
      request.send_request(options)
    end

    # <p>Lists configured audience model associations within a collaboration.</p>
    # @param [Hash, Types::ListCollaborationConfiguredAudienceModelAssociationsInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the configured audience model association belongs to. Accepts a collaboration ID.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collaboration_configured_audience_model_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_configured_audience_model_association_summaries: [ # required
    #       {
    #         arn: "ConfiguredAudienceModelAssociationArn", # required
    #         create_time: Time.now, # required
    #         id: "ConfiguredAudienceModelAssociationIdentifier", # required
    #         name: "ConfiguredAudienceModelAssociationName", # required
    #         update_time: Time.now, # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         creator_account_id: "AccountId", # required
    #         description: "ResourceDescription"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListCollaborationConfiguredAudienceModelAssociationsOutput]
    def list_collaboration_configured_audience_model_associations(params = {}, options = {})
      request = build_request(:list_collaboration_configured_audience_model_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of the ID namespace associations in a collaboration.</p>
    # @param [Hash, Types::ListCollaborationIdNamespaceAssociationsInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The unique identifier of the collaboration that contains the ID namespace associations that you want to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.&gt;</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collaboration_id_namespace_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     collaboration_id_namespace_association_summaries: [ # required
    #       {
    #         arn: "IdNamespaceAssociationArn", # required
    #         create_time: Time.now, # required
    #         id: "IdNamespaceAssociationIdentifier", # required
    #         update_time: Time.now, # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         creator_account_id: "AccountId", # required
    #         input_reference_config: { # required
    #           input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #           manage_resource_policies: false, # required
    #         },
    #         name: "GenericResourceName", # required
    #         description: "ResourceDescription",
    #         input_reference_properties: { # required
    #           id_namespace_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationIdNamespaceAssociationsOutput]
    def list_collaboration_id_namespace_associations(params = {}, options = {})
      request = build_request(:list_collaboration_id_namespace_associations, params)
      request.send_request(options)
    end

    # <p>Returns an array that summarizes each privacy budget template in a specified collaboration.</p>
    # @param [Hash, Types::ListCollaborationPrivacyBudgetTemplatesInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collaboration_privacy_budget_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     collaboration_privacy_budget_template_summaries: [ # required
    #       {
    #         id: "PrivacyBudgetTemplateIdentifier", # required
    #         arn: "PrivacyBudgetTemplateArn", # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         creator_account_id: "AccountId", # required
    #         privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationPrivacyBudgetTemplatesOutput]
    def list_collaboration_privacy_budget_templates(params = {}, options = {})
      request = build_request(:list_collaboration_privacy_budget_templates, params)
      request.send_request(options)
    end

    # <p>Returns an array that summarizes each privacy budget in a specified collaboration. The summary includes the collaboration ARN, creation time, creating account, and privacy budget details.</p>
    # @param [Hash, Types::ListCollaborationPrivacyBudgetsInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for one of your collaborations.</p>
    # @option params [String] :privacy_budget_type
    #   <p>Specifies the type of the privacy budget.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [String] :access_budget_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Configured Table Association (ConfiguredTableAssociation) used to filter privacy budgets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     access_budget_resource_arn: "BudgetedResourceArn"
    #   }
    #   options = {}
    #   response = client.list_collaboration_privacy_budgets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration_privacy_budget_summaries: [ # required
    #       {
    #         id: "UUID", # required
    #         privacy_budget_template_id: "PrivacyBudgetTemplateIdentifier", # required
    #         privacy_budget_template_arn: "PrivacyBudgetTemplateArn", # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         creator_account_id: "AccountId", # required
    #         type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         budget: { # required
    #           # One of:
    #           differential_privacy: {
    #             aggregations: [ # required
    #               {
    #                 type: "AVG" # One of: ["AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"], # required
    #                 max_count: 1, # required
    #                 remaining_count: 1, # required
    #               }
    #             ],
    #             epsilon: 1, # required
    #           },
    #           access_budget: {
    #             resource_arn: "BudgetedResourceArn", # required
    #             details: [ # required
    #               {
    #                 start_time: Time.now, # required
    #                 end_time: Time.now,
    #                 remaining_budget: 1, # required
    #                 budget: 1, # required
    #                 budget_type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #                 auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             ],
    #             aggregate_remaining_budget: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListCollaborationPrivacyBudgetsOutput]
    def list_collaboration_privacy_budgets(params = {}, options = {})
      request = build_request(:list_collaboration_privacy_budgets, params)
      request.send_request(options)
    end

    # <p>Lists collaborations the caller owns, is active in, or has been invited to.</p>
    # @param [Hash, Types::ListCollaborationsOperationInput] params
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @option params [String] :member_status
    #   <p>The caller's status in a collaboration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     member_status: "FilterableMemberStatus"
    #   }
    #   options = {}
    #   response = client.list_collaborations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     collaboration_list: [ # required
    #       {
    #         id: "UUID", # required
    #         arn: "CollaborationArn", # required
    #         name: "CollaborationName", # required
    #         creator_account_id: "AccountId", # required
    #         creator_display_name: "DisplayName", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         member_status: "MemberStatus", # required
    #         membership_id: "UUID",
    #         membership_arn: "MembershipArn",
    #         analytics_engine: "SPARK" # One of: ["SPARK", "CLEAN_ROOMS_SQL"]
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationsOperationOutput]
    def list_collaborations(params = {}, options = {})
      request = build_request(:list_collaborations, params)
      request.send_request(options)
    end

    # <p>Lists information about requested configured audience model associations.</p>
    # @param [Hash, Types::ListConfiguredAudienceModelAssociationsInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for a membership that contains the configured audience model associations that you want to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configured_audience_model_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_association_summaries: [ # required
    #       {
    #         membership_id: "MembershipIdentifier", # required
    #         membership_arn: "MembershipArn", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         id: "UUID", # required
    #         arn: "ConfiguredAudienceModelAssociationArn", # required
    #         name: "ConfiguredAudienceModelAssociationName", # required
    #         configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #         description: "ResourceDescription"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListConfiguredAudienceModelAssociationsOutput]
    def list_configured_audience_model_associations(params = {}, options = {})
      request = build_request(:list_configured_audience_model_associations, params)
      request.send_request(options)
    end

    # <p>Lists configured table associations for a membership.</p>
    # @param [Hash, Types::ListConfiguredTableAssociationsOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for the membership to list configured table associations for. Currently accepts the membership ID.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configured_table_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table_association_summaries: [ # required
    #       {
    #         configured_table_id: "UUID", # required
    #         membership_id: "MembershipIdentifier", # required
    #         membership_arn: "MembershipArn", # required
    #         name: "TableAlias", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         id: "UUID", # required
    #         arn: "ConfiguredTableAssociationArn", # required
    #         analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListConfiguredTableAssociationsOperationOutput]
    def list_configured_table_associations(params = {}, options = {})
      request = build_request(:list_configured_table_associations, params)
      request.send_request(options)
    end

    # <p>Lists configured tables.</p>
    # @param [Hash, Types::ListConfiguredTablesOperationInput] params
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configured_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table_summaries: [ # required
    #       {
    #         id: "ConfiguredTableIdentifier", # required
    #         arn: "ConfiguredTableArn", # required
    #         name: "DisplayName", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]], # required
    #         analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"], # required
    #         selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListConfiguredTablesOperationOutput]
    def list_configured_tables(params = {}, options = {})
      request = build_request(:list_configured_tables, params)
      request.send_request(options)
    end

    # <p>Returns a list of ID mapping tables.</p>
    # @param [Hash, Types::ListIdMappingTablesInput] params
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping tables that you want to view.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_id_mapping_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_mapping_table_summaries: [ # required
    #       {
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         membership_id: "MembershipIdentifier", # required
    #         membership_arn: "MembershipArn", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         id: "UUID", # required
    #         arn: "IdMappingTableArn", # required
    #         description: "ResourceDescription",
    #         input_reference_config: { # required
    #           input_reference_arn: "IdMappingTableInputReferenceArn", # required
    #           manage_resource_policies: false, # required
    #         },
    #         name: "ResourceAlias", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListIdMappingTablesOutput]
    def list_id_mapping_tables(params = {}, options = {})
      request = build_request(:list_id_mapping_tables, params)
      request.send_request(options)
    end

    # <p>Returns a list of ID namespace associations.</p>
    # @param [Hash, Types::ListIdNamespaceAssociationsInput] params
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to view.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call. Service chooses a default if it has not been set. Service may return a nextToken even if the maximum results has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_id_namespace_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     id_namespace_association_summaries: [ # required
    #       {
    #         membership_id: "MembershipIdentifier", # required
    #         membership_arn: "MembershipArn", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "UUID", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         id: "UUID", # required
    #         arn: "IdNamespaceAssociationArn", # required
    #         input_reference_config: { # required
    #           input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #           manage_resource_policies: false, # required
    #         },
    #         name: "GenericResourceName", # required
    #         description: "ResourceDescription",
    #         input_reference_properties: { # required
    #           id_namespace_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListIdNamespaceAssociationsOutput]
    def list_id_namespace_associations(params = {}, options = {})
      request = build_request(:list_id_namespace_associations, params)
      request.send_request(options)
    end

    # <p>Lists all members within a collaboration.</p>
    # @param [Hash, Types::ListMembersOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier of the collaboration in which the members are listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     member_summaries: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         status: "MemberStatus", # required
    #         display_name: "DisplayName", # required
    #         abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #         ml_abilities: {
    #           custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #         },
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         membership_id: "UUID",
    #         membership_arn: "MembershipArn",
    #         payment_configuration: { # required
    #           query_compute: { # required
    #             is_responsible: false, # required
    #           },
    #           machine_learning: {
    #             model_training: {
    #               is_responsible: false, # required
    #             },
    #             model_inference: {
    #               is_responsible: false, # required
    #             }
    #           },
    #           job_compute: {
    #             is_responsible: false, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListMembersOperationOutput]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Lists all memberships resources within the caller's account.</p>
    # @param [Hash, Types::ListMembershipsOperationInput] params
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @option params [String] :status
    #   <p>A filter which will return only memberships in the specified status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     status: "MembershipStatus"
    #   }
    #   options = {}
    #   response = client.list_memberships(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     membership_summaries: [ # required
    #       {
    #         id: "UUID", # required
    #         arn: "MembershipArn", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         collaboration_id: "CollaborationIdentifier", # required
    #         collaboration_creator_account_id: "AccountId", # required
    #         collaboration_creator_display_name: "DisplayName", # required
    #         collaboration_name: "CollaborationName", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         status: "MembershipStatus", # required
    #         member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #         ml_member_abilities: {
    #           custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #         },
    #         payment_configuration: { # required
    #           query_compute: { # required
    #             is_responsible: false, # required
    #           },
    #           machine_learning: {
    #             model_training: {
    #               is_responsible: false, # required
    #             },
    #             model_inference: {
    #               is_responsible: false, # required
    #             }
    #           },
    #           job_compute: {
    #             is_responsible: false, # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListMembershipsOperationOutput]
    def list_memberships(params = {}, options = {})
      request = build_request(:list_memberships, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about the privacy budget templates in a specified membership.</p>
    # @param [Hash, Types::ListPrivacyBudgetTemplatesInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget templates are retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_privacy_budget_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     privacy_budget_template_summaries: [ # required
    #       {
    #         id: "PrivacyBudgetTemplateIdentifier", # required
    #         arn: "PrivacyBudgetTemplateArn", # required
    #         membership_id: "UUID", # required
    #         membership_arn: "MembershipArn", # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListPrivacyBudgetTemplatesOutput]
    def list_privacy_budget_templates(params = {}, options = {})
      request = build_request(:list_privacy_budget_templates, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about the privacy budgets in a specified membership.</p>
    # @param [Hash, Types::ListPrivacyBudgetsInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget is retrieved from the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :privacy_budget_type
    #   <p>The privacy budget type.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @option params [String] :access_budget_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the access budget resource to filter privacy budgets by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     access_budget_resource_arn: "BudgetedResourceArn"
    #   }
    #   options = {}
    #   response = client.list_privacy_budgets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     privacy_budget_summaries: [ # required
    #       {
    #         id: "UUID", # required
    #         privacy_budget_template_id: "PrivacyBudgetTemplateIdentifier", # required
    #         privacy_budget_template_arn: "PrivacyBudgetTemplateArn", # required
    #         membership_id: "MembershipIdentifier", # required
    #         membership_arn: "MembershipArn", # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         budget: { # required
    #           # One of:
    #           differential_privacy: {
    #             aggregations: [ # required
    #               {
    #                 type: "AVG" # One of: ["AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"], # required
    #                 max_count: 1, # required
    #                 remaining_count: 1, # required
    #               }
    #             ],
    #             epsilon: 1, # required
    #           },
    #           access_budget: {
    #             resource_arn: "BudgetedResourceArn", # required
    #             details: [ # required
    #               {
    #                 start_time: Time.now, # required
    #                 end_time: Time.now,
    #                 remaining_budget: 1, # required
    #                 budget: 1, # required
    #                 budget_type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #                 auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             ],
    #             aggregate_remaining_budget: 1, # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPrivacyBudgetsOutput]
    def list_privacy_budgets(params = {}, options = {})
      request = build_request(:list_privacy_budgets, params)
      request.send_request(options)
    end

    # <p>Lists protected jobs, sorted by most recent job.</p>
    # @param [Hash, Types::ListProtectedJobsInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for the membership in the collaboration.</p>
    # @option params [String] :status
    #   <p>A filter on the status of the protected job.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     status: "SUBMITTED" # One of: ["SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_protected_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     protected_jobs: [ # required
    #       {
    #         id: "UUID", # required
    #         membership_id: "MembershipIdentifier", # required
    #         membership_arn: "MembershipArn", # required
    #         create_time: Time.now, # required
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS"], # required
    #         receiver_configurations: [ # required
    #           {
    #             analysis_type: "DIRECT_ANALYSIS" # One of: ["DIRECT_ANALYSIS"], # required
    #             configuration_details: {
    #               # One of:
    #               direct_analysis_configuration_details: {
    #                 receiver_account_ids: ["AccountId"]
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListProtectedJobsOutput]
    def list_protected_jobs(params = {}, options = {})
      request = build_request(:list_protected_jobs, params)
      request.send_request(options)
    end

    # <p>Lists protected queries, sorted by the most recent query.</p>
    # @param [Hash, Types::ListProtectedQueriesOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for the membership in the collaboration.</p>
    # @option params [String] :status
    #   <p>A filter on the status of the protected query.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     status: "ProtectedQueryStatus",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_protected_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     protected_queries: [ # required
    #       {
    #         id: "UUID", # required
    #         membership_id: "UUID", # required
    #         membership_arn: "MembershipArn", # required
    #         create_time: Time.now, # required
    #         status: "ProtectedQueryStatus", # required
    #         receiver_configurations: [ # required
    #           {
    #             analysis_type: "DIRECT_ANALYSIS" # One of: ["DIRECT_ANALYSIS", "ADDITIONAL_ANALYSIS"], # required
    #             configuration_details: {
    #               # One of:
    #               direct_analysis_configuration_details: {
    #                 receiver_account_ids: ["AccountId"]
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListProtectedQueriesOperationOutput]
    def list_protected_queries(params = {}, options = {})
      request = build_request(:list_protected_queries, params)
      request.send_request(options)
    end

    # <p>Lists the schemas for relations within a collaboration.</p>
    # @param [Hash, Types::ListSchemasOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>A unique identifier for the collaboration that the schema belongs to. Currently accepts a collaboration ID.</p>
    # @option params [String] :schema_type
    #   <p>If present, filter schemas by schema type.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's used to fetch the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for an API request call. The service chooses a default number if you don't set one. The service might return a `nextToken` even if the `maxResults` value has not been met.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     schema_type: "TABLE" # One of: ["TABLE", "ID_MAPPING_TABLE"],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_summaries: [ # required
    #       {
    #         name: "TableAlias", # required
    #         type: "TABLE" # One of: ["TABLE", "ID_MAPPING_TABLE"], # required
    #         creator_account_id: "AccountId", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         collaboration_id: "UUID", # required
    #         collaboration_arn: "CollaborationArn", # required
    #         analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM", "ID_MAPPING_TABLE"]], # required
    #         analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"],
    #         resource_arn: "SchemaResourceArn",
    #         selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSchemasOperationOutput]
    def list_schemas(params = {}, options = {})
      request = build_request(:list_schemas, params)
      request.send_request(options)
    end

    # <p>Lists all of the tags that have been added to a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to list tags on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "CleanroomsArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Defines the information that's necessary to populate an ID mapping table.</p>
    # @param [Hash, Types::PopulateIdMappingTableInput] params
    # @option params [String] :id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to populate.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to populate.</p>
    # @option params [String] :job_type
    #   <p>The job type of the rule-based ID mapping job. Valid values include:</p> <p> <code>INCREMENTAL</code>: Processes only new or changed data since the last job run. This is the default job type if the ID mapping workflow was created in Entity Resolution with <code>incrementalRunConfig</code> specified.</p> <p> <code>BATCH</code>: Processes all data from the input source, regardless of previous job runs. This is the default job type if the ID mapping workflow was created in Entity Resolution but <code>incrementalRunConfig</code> wasn't specified.</p> <p> <code>DELETE_ONLY</code>: Processes only deletion requests from <code>BatchDeleteUniqueId</code>, which is set in Entity Resolution.</p> <p>For more information about <code>incrementalRunConfig</code> and <code>BatchDeleteUniqueId</code>, see the <a href="https://docs.aws.amazon.com/entityresolution/latest/apireference/Welcome.html">Entity Resolution API Reference</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     job_type: "BATCH" # One of: ["BATCH", "INCREMENTAL", "DELETE_ONLY"]
    #   }
    #   options = {}
    #   response = client.populate_id_mapping_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_mapping_job_id: "UUID", # required
    #   }
    # @return [Types::PopulateIdMappingTableOutput]
    def populate_id_mapping_table(params = {}, options = {})
      request = build_request(:populate_id_mapping_table, params)
      request.send_request(options)
    end

    # <p>An estimate of the number of aggregation functions that the member who can query can run given epsilon and noise parameters.</p>
    # @param [Hash, Types::PreviewPrivacyImpactInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. Accepts a membership ID.</p>
    # @option params [Types::PreviewPrivacyImpactParametersInput] :parameters
    #   <p>Specifies the desired epsilon and noise parameters to preview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     parameters: { # required
    #       # One of:
    #       differential_privacy: {
    #         epsilon: 1, # required
    #         users_noise_per_query: 1, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.preview_privacy_impact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     privacy_impact: { # required
    #       # One of:
    #       differential_privacy: {
    #         aggregations: [ # required
    #           {
    #             type: "AVG" # One of: ["AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"], # required
    #             max_count: 1, # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::PreviewPrivacyImpactOutput]
    def preview_privacy_impact(params = {}, options = {})
      request = build_request(:preview_privacy_impact, params)
      request.send_request(options)
    end

    # <p>Creates a protected job that is started by Clean Rooms.</p>
    # @param [Hash, Types::StartProtectedJobInput] params
    # @option params [String] :type
    #   <p> The type of protected job to start.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for the membership to run this job against. Currently accepts a membership ID.</p>
    # @option params [Types::ProtectedJobParameters] :job_parameters
    #   <p> The job parameters.</p>
    # @option params [Types::ProtectedJobResultConfigurationInput] :result_configuration
    #   <p>The details needed to write the job results.</p>
    # @option params [Types::ProtectedJobComputeConfiguration] :compute_configuration
    #   <p>The compute configuration for the protected job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "PYSPARK" # One of: ["PYSPARK"], # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     job_parameters: { # required
    #       analysis_template_arn: "AnalysisTemplateArn"
    #     },
    #     result_configuration: {
    #       output_configuration: { # required
    #         # One of:
    #         member: {
    #           account_id: "AccountId", # required
    #         }
    #       }
    #     },
    #     compute_configuration: {
    #       # One of:
    #       worker: {
    #         type: "CR.1X" # One of: ["CR.1X", "CR.4X"], # required
    #         number: 1, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_protected_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_job: { # required
    #       id: "ProtectedJobIdentifier", # required
    #       membership_id: "MembershipIdentifier", # required
    #       membership_arn: "MembershipArn", # required
    #       create_time: Time.now, # required
    #       job_parameters: {
    #         analysis_template_arn: "AnalysisTemplateArn"
    #       },
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS"], # required
    #       result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix"
    #           },
    #           member: {
    #             account_id: "AccountId", # required
    #           }
    #         }
    #       },
    #       statistics: {
    #         total_duration_in_millis: 1,
    #         billed_resource_utilization: {
    #           units: 1.0, # required
    #         }
    #       },
    #       result: {
    #         output: { # required
    #           # One of:
    #           s3: {
    #             location: "String", # required
    #           },
    #           member_list: [
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ]
    #         }
    #       },
    #       error: {
    #         message: "String", # required
    #         code: "String", # required
    #       },
    #       compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"], # required
    #           number: 1, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StartProtectedJobOutput]
    def start_protected_job(params = {}, options = {})
      request = build_request(:start_protected_job, params)
      request.send_request(options)
    end

    # <p>Creates a protected query that is started by Clean Rooms.</p>
    # @param [Hash, Types::StartProtectedQueryOperationInput] params
    # @option params [String] :type
    #   <p>The type of the protected query to be started.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for the membership to run this query against. Currently accepts a membership ID.</p>
    # @option params [Types::ProtectedQuerySQLParameters] :sql_parameters
    #   <p>The protected SQL query parameters.</p>
    # @option params [Types::ProtectedQueryResultConfiguration] :result_configuration
    #   <p>The details needed to write the query results.</p>
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   <p> The compute configuration for the protected query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "ProtectedQueryType", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     sql_parameters: { # required
    #       query_string: "String",
    #       analysis_template_arn: "AnalysisTemplateArn",
    #       parameters: {
    #         "ParameterName" => "ParameterValue"
    #       }
    #     },
    #     result_configuration: {
    #       output_configuration: { # required
    #         # One of:
    #         s3: {
    #           result_format: "ResultFormat", # required
    #           bucket: "String", # required
    #           key_prefix: "KeyPrefix",
    #           single_file_output: false
    #         },
    #         member: {
    #           account_id: "AccountId", # required
    #         },
    #         distribute: {
    #           locations: [{ # required
    #             # One of:
    #             s3: {
    #               result_format: "ResultFormat", # required
    #               bucket: "String", # required
    #               key_prefix: "KeyPrefix",
    #               single_file_output: false
    #             },
    #             member: {
    #               account_id: "AccountId", # required
    #             }
    #           }]
    #         }
    #       }
    #     },
    #     compute_configuration: {
    #       # One of:
    #       worker: {
    #         type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #         number: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_protected_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_query: { # required
    #       id: "UUID", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       create_time: Time.now, # required
    #       sql_parameters: {
    #         query_string: "String",
    #         analysis_template_arn: "AnalysisTemplateArn",
    #         parameters: {
    #           "ParameterName" => "ParameterValue"
    #         }
    #       },
    #       status: "ProtectedQueryStatus", # required
    #       result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             result_format: "ResultFormat", # required
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix",
    #             single_file_output: false
    #           },
    #           member: {
    #             account_id: "AccountId", # required
    #           },
    #           distribute: {
    #             locations: [{ # required
    #               # One of:
    #               s3: {
    #                 result_format: "ResultFormat", # required
    #                 bucket: "String", # required
    #                 key_prefix: "KeyPrefix",
    #                 single_file_output: false
    #               },
    #               member: {
    #                 account_id: "AccountId", # required
    #               }
    #             }]
    #           }
    #         }
    #       },
    #       statistics: {
    #         total_duration_in_millis: 1,
    #         billed_resource_utilization: {
    #           units: 1.0, # required
    #         }
    #       },
    #       result: {
    #         output: { # required
    #           # One of:
    #           s3: {
    #             location: "String", # required
    #           },
    #           member_list: [
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ],
    #           distribute: {
    #             s3: {
    #               location: "String", # required
    #             },
    #             member_list: [
    #               {
    #                 account_id: "AccountId", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       error: {
    #         message: "String", # required
    #         code: "String", # required
    #       },
    #       differential_privacy: {
    #         sensitivity_parameters: [ # required
    #           {
    #             aggregation_type: "AVG" # One of: ["AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"], # required
    #             aggregation_expression: "DifferentialPrivacyAggregationExpression", # required
    #             user_contribution_limit: 1, # required
    #             min_column_value: 1.0,
    #             max_column_value: 1.0
    #           }
    #         ]
    #       },
    #       compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #           number: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StartProtectedQueryOperationOutput]
    def start_protected_query(params = {}, options = {})
      request = build_request(:start_protected_query, params)
      request.send_request(options)
    end

    # <p>Tags a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of objects specifying each key name and value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "CleanroomsArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes a tag or list of tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource you want to remove the tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names of tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "CleanroomsArn", # required
    #     tag_keys: ["TagKey"], # required
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

    # <p>Updates the analysis template metadata.</p>
    # @param [Hash, Types::UpdateAnalysisTemplateOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a membership resource.</p>
    # @option params [String] :analysis_template_identifier
    #   <p>The identifier for the analysis template resource.</p>
    # @option params [String] :description
    #   <p>A new description for the analysis template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     analysis_template_identifier: "AnalysisTemplateIdentifier", # required
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.update_analysis_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_template: { # required
    #       id: "AnalysisTemplateIdentifier", # required
    #       arn: "AnalysisTemplateArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       description: "ResourceDescription",
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       schema: { # required
    #         referenced_tables: ["TableAlias"]
    #       },
    #       format: "SQL" # One of: ["SQL", "PYSPARK_1_0"], # required
    #       source: { # required
    #         # One of:
    #         text: "AnalysisTemplateText",
    #         artifacts: {
    #           entry_point: { # required
    #             location: { # required
    #               bucket: "String", # required
    #               key: "String", # required
    #             }
    #           },
    #           additional_artifacts: [
    #             {
    #               location: { # required
    #                 bucket: "String", # required
    #                 key: "String", # required
    #               }
    #             }
    #           ],
    #           role_arn: "RoleArn", # required
    #         }
    #       },
    #       source_metadata: {
    #         # One of:
    #         artifacts: {
    #           entry_point_hash: { # required
    #             sha256: "String"
    #           },
    #           additional_artifact_hashes: [
    #             {
    #               sha256: "String"
    #             }
    #           ]
    #         }
    #       },
    #       analysis_parameters: [
    #         {
    #           name: "ParameterName", # required
    #           type: "SMALLINT" # One of: ["SMALLINT", "INTEGER", "BIGINT", "DECIMAL", "REAL", "DOUBLE_PRECISION", "BOOLEAN", "CHAR", "VARCHAR", "DATE", "TIMESTAMP", "TIMESTAMPTZ", "TIME", "TIMETZ", "VARBYTE", "BINARY", "BYTE", "CHARACTER", "DOUBLE", "FLOAT", "INT", "LONG", "NUMERIC", "SHORT", "STRING", "TIMESTAMP_LTZ", "TIMESTAMP_NTZ", "TINYINT"], # required
    #           default_value: "ParameterValue"
    #         }
    #       ],
    #       validations: [
    #         {
    #           type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY"], # required
    #           status: "VALID" # One of: ["VALID", "INVALID", "UNABLE_TO_VALIDATE"], # required
    #           reasons: [
    #             {
    #               message: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       error_message_configuration: {
    #         type: "DETAILED" # One of: ["DETAILED"], # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateAnalysisTemplateOperationOutput]
    def update_analysis_template(params = {}, options = {})
      request = build_request(:update_analysis_template, params)
      request.send_request(options)
    end

    # <p>Updates collaboration metadata and can only be called by the collaboration owner.</p>
    # @param [Hash, Types::UpdateCollaborationOperationInput] params
    # @option params [String] :collaboration_identifier
    #   <p>The identifier for the collaboration.</p>
    # @option params [String] :name
    #   <p>A human-readable identifier provided by the collaboration owner. Display names are not unique.</p>
    # @option params [String] :description
    #   <p>A description of the collaboration.</p>
    # @option params [String] :analytics_engine
    #   <p>The analytics engine.</p> <note> <p>After July 16, 2025, the <code>CLEAN_ROOMS_SQL</code> parameter will no longer be available. </p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     collaboration_identifier: "CollaborationIdentifier", # required
    #     name: "CollaborationName",
    #     description: "CollaborationDescription",
    #     analytics_engine: "SPARK" # One of: ["SPARK", "CLEAN_ROOMS_SQL"]
    #   }
    #   options = {}
    #   response = client.update_collaboration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collaboration: { # required
    #       id: "UUID", # required
    #       arn: "CollaborationArn", # required
    #       name: "CollaborationName", # required
    #       description: "CollaborationDescription",
    #       creator_account_id: "AccountId", # required
    #       creator_display_name: "DisplayName", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       member_status: "MemberStatus", # required
    #       membership_id: "UUID",
    #       membership_arn: "MembershipArn",
    #       data_encryption_metadata: {
    #         allow_cleartext: false, # required
    #         allow_duplicates: false, # required
    #         allow_joins_on_columns_with_different_names: false, # required
    #         preserve_nulls: false, # required
    #       },
    #       query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       analytics_engine: "SPARK" # One of: ["SPARK", "CLEAN_ROOMS_SQL"],
    #       auto_approved_change_types: ["ADD_MEMBER" # One of: ["ADD_MEMBER"]],
    #       allowed_result_regions: ["us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-east-2", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1"]]
    #     }
    #   }
    # @return [Types::UpdateCollaborationOperationOutput]
    def update_collaboration(params = {}, options = {})
      request = build_request(:update_collaboration, params)
      request.send_request(options)
    end

    # <p>Provides the details necessary to update a configured audience model association.</p>
    # @param [Hash, Types::UpdateConfiguredAudienceModelAssociationInput] params
    # @option params [String] :configured_audience_model_association_identifier
    #   <p>A unique identifier for the configured audience model association that you want to update.</p>
    # @option params [String] :membership_identifier
    #   <p>A unique identifier of the membership that contains the configured audience model association that you want to update.</p>
    # @option params [String] :description
    #   <p>A new description for the configured audience model association.</p>
    # @option params [String] :name
    #   <p>A new name for the configured audience model association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_association_identifier: "ConfiguredAudienceModelAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     description: "ResourceDescription",
    #     name: "ConfiguredAudienceModelAssociationName"
    #   }
    #   options = {}
    #   response = client.update_configured_audience_model_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_association: { # required
    #       id: "ConfiguredAudienceModelAssociationIdentifier", # required
    #       arn: "ConfiguredAudienceModelAssociationArn", # required
    #       configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "ConfiguredAudienceModelAssociationName", # required
    #       manage_resource_policies: false, # required
    #       description: "ResourceDescription",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateConfiguredAudienceModelAssociationOutput]
    def update_configured_audience_model_association(params = {}, options = {})
      request = build_request(:update_configured_audience_model_association, params)
      request.send_request(options)
    end

    # <p>Updates a configured table.</p>
    # @param [Hash, Types::UpdateConfiguredTableOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The identifier for the configured table to update. Currently accepts the configured table ID.</p>
    # @option params [String] :name
    #   <p>A new name for the configured table.</p>
    # @option params [String] :description
    #   <p>A new description for the configured table.</p>
    # @option params [Types::TableReference] :table_reference
    #   <p>A pointer to the dataset that underlies this table.</p>
    # @option params [Array<String>] :allowed_columns
    #   <p>The columns of the underlying table that can be used by collaborations or analysis rules.</p>
    # @option params [String] :analysis_method
    #   <p> The analysis method for the configured table.</p> <p> <code>DIRECT_QUERY</code> allows SQL queries to be run directly on this table.</p> <p> <code>DIRECT_JOB</code> allows PySpark jobs to be run directly on this table.</p> <p> <code>MULTIPLE</code> allows both SQL queries and PySpark jobs to be run directly on this table.</p>
    # @option params [Array<String>] :selected_analysis_methods
    #   <p> The selected analysis methods for the table configuration update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     name: "DisplayName",
    #     description: "TableDescription",
    #     table_reference: {
    #       # One of:
    #       glue: {
    #         region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #         table_name: "GlueTableName", # required
    #         database_name: "GlueDatabaseName", # required
    #       },
    #       snowflake: {
    #         secret_arn: "SecretsManagerArn", # required
    #         account_identifier: "SnowflakeAccountIdentifier", # required
    #         database_name: "SnowflakeDatabaseName", # required
    #         table_name: "SnowflakeTableName", # required
    #         schema_name: "SnowflakeSchemaName", # required
    #         table_schema: { # required
    #           # One of:
    #           v1: [
    #             {
    #               column_name: "ColumnName", # required
    #               column_type: "ColumnTypeString", # required
    #             }
    #           ]
    #         }
    #       },
    #       athena: {
    #         region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #         work_group: "AthenaWorkGroup", # required
    #         output_location: "AthenaOutputLocation",
    #         database_name: "AthenaDatabaseName", # required
    #         table_name: "AthenaTableName", # required
    #       }
    #     },
    #     allowed_columns: ["ColumnName"],
    #     analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"],
    #     selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]]
    #   }
    #   options = {}
    #   response = client.update_configured_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table: { # required
    #       id: "UUID", # required
    #       arn: "ConfiguredTableArn", # required
    #       name: "DisplayName", # required
    #       description: "TableDescription",
    #       table_reference: { # required
    #         # One of:
    #         glue: {
    #           region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #           table_name: "GlueTableName", # required
    #           database_name: "GlueDatabaseName", # required
    #         },
    #         snowflake: {
    #           secret_arn: "SecretsManagerArn", # required
    #           account_identifier: "SnowflakeAccountIdentifier", # required
    #           database_name: "SnowflakeDatabaseName", # required
    #           table_name: "SnowflakeTableName", # required
    #           schema_name: "SnowflakeSchemaName", # required
    #           table_schema: { # required
    #             # One of:
    #             v1: [
    #               {
    #                 column_name: "ColumnName", # required
    #                 column_type: "ColumnTypeString", # required
    #               }
    #             ]
    #           }
    #         },
    #         athena: {
    #           region: "us-west-1" # One of: ["us-west-1", "us-west-2", "us-east-1", "us-east-2", "af-south-1", "ap-east-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-southeast-5", "ap-southeast-4", "ap-southeast-7", "ap-south-1", "ap-northeast-3", "ap-northeast-1", "ap-northeast-2", "ca-central-1", "ca-west-1", "eu-south-1", "eu-west-3", "eu-south-2", "eu-central-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "me-south-1", "me-central-1", "il-central-1", "sa-east-1", "mx-central-1", "ap-east-2"],
    #           work_group: "AthenaWorkGroup", # required
    #           output_location: "AthenaOutputLocation",
    #           database_name: "AthenaDatabaseName", # required
    #           table_name: "AthenaTableName", # required
    #         }
    #       },
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]], # required
    #       analysis_method: "DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB", "MULTIPLE"], # required
    #       allowed_columns: ["ColumnName"], # required
    #       selected_analysis_methods: ["DIRECT_QUERY" # One of: ["DIRECT_QUERY", "DIRECT_JOB"]]
    #     }
    #   }
    # @return [Types::UpdateConfiguredTableOperationOutput]
    def update_configured_table(params = {}, options = {})
      request = build_request(:update_configured_table, params)
      request.send_request(options)
    end

    # <p>Updates a configured table analysis rule.</p>
    # @param [Hash, Types::UpdateConfiguredTableAnalysisRuleOperationInput] params
    # @option params [String] :configured_table_identifier
    #   <p>The unique identifier for the configured table that the analysis rule applies to. Currently accepts the configured table ID.</p>
    # @option params [String] :analysis_rule_type
    #   <p>The analysis rule type to be updated. Configured table analysis rules are uniquely identified by their configured table identifier and analysis rule type.</p>
    # @option params [Types::ConfiguredTableAnalysisRulePolicy] :analysis_rule_policy
    #   <p>The new analysis rule policy for the configured table analysis rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_identifier: "ConfiguredTableIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #     analysis_rule_policy: { # required
    #       # One of:
    #       v1: {
    #         # One of:
    #         list: {
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           allowed_join_operators: ["JoinOperator"],
    #           list_columns: ["AnalysisRuleColumnName"], # required
    #           additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #         },
    #         aggregation: {
    #           aggregate_columns: [ # required
    #             {
    #               column_names: ["AnalysisRuleColumnName"], # required
    #               function: "AggregateFunctionName", # required
    #             }
    #           ],
    #           join_columns: ["AnalysisRuleColumnName"], # required
    #           join_required: "JoinRequiredOption",
    #           allowed_join_operators: ["JoinOperator"],
    #           dimension_columns: ["AnalysisRuleColumnName"], # required
    #           scalar_functions: ["ScalarFunctions"], # required
    #           output_constraints: [ # required
    #             {
    #               column_name: "AnalysisRuleColumnName", # required
    #               minimum: 1, # required
    #               type: "AggregationType", # required
    #             }
    #           ],
    #           additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #         },
    #         custom: {
    #           allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #           allowed_analysis_providers: ["AccountId"],
    #           additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #           disallowed_output_columns: ["AnalysisRuleColumnName"],
    #           differential_privacy: {
    #             columns: [ # required
    #               {
    #                 name: "String", # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_configured_table_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       configured_table_id: "UUID", # required
    #       configured_table_arn: "ConfiguredTableArn", # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             allowed_join_operators: ["JoinOperator"],
    #             list_columns: ["AnalysisRuleColumnName"], # required
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           aggregation: {
    #             aggregate_columns: [ # required
    #               {
    #                 column_names: ["AnalysisRuleColumnName"], # required
    #                 function: "AggregateFunctionName", # required
    #               }
    #             ],
    #             join_columns: ["AnalysisRuleColumnName"], # required
    #             join_required: "JoinRequiredOption",
    #             allowed_join_operators: ["JoinOperator"],
    #             dimension_columns: ["AnalysisRuleColumnName"], # required
    #             scalar_functions: ["ScalarFunctions"], # required
    #             output_constraints: [ # required
    #               {
    #                 column_name: "AnalysisRuleColumnName", # required
    #                 minimum: 1, # required
    #                 type: "AggregationType", # required
    #               }
    #             ],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"]
    #           },
    #           custom: {
    #             allowed_analyses: ["AnalysisTemplateArnOrQueryWildcard"], # required
    #             allowed_analysis_providers: ["AccountId"],
    #             additional_analyses: "ALLOWED" # One of: ["ALLOWED", "REQUIRED", "NOT_ALLOWED"],
    #             disallowed_output_columns: ["AnalysisRuleColumnName"],
    #             differential_privacy: {
    #               columns: [ # required
    #                 {
    #                   name: "String", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       },
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateConfiguredTableAnalysisRuleOperationOutput]
    def update_configured_table_analysis_rule(params = {}, options = {})
      request = build_request(:update_configured_table_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Updates a configured table association.</p>
    # @param [Hash, Types::UpdateConfiguredTableAssociationOperationInput] params
    # @option params [String] :configured_table_association_identifier
    #   <p>The unique identifier for the configured table association to update. Currently accepts the configured table association ID.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique ID for the membership that the configured table association belongs to.</p>
    # @option params [String] :description
    #   <p>A new description for the configured table association.</p>
    # @option params [String] :role_arn
    #   <p>The service will assume this role to access catalog metadata and query the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     description: "TableDescription",
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_configured_table_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_table_association: { # required
    #       arn: "ConfiguredTableAssociationArn", # required
    #       id: "UUID", # required
    #       configured_table_id: "UUID", # required
    #       configured_table_arn: "ConfiguredTableArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       role_arn: "RoleArn", # required
    #       name: "TableAlias", # required
    #       description: "TableDescription",
    #       analysis_rule_types: ["AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"]],
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateConfiguredTableAssociationOperationOutput]
    def update_configured_table_association(params = {}, options = {})
      request = build_request(:update_configured_table_association, params)
      request.send_request(options)
    end

    # <p> Updates the analysis rule for a configured table association.</p>
    # @param [Hash, Types::UpdateConfiguredTableAssociationAnalysisRuleInput] params
    # @option params [String] :membership_identifier
    #   <p> A unique identifier for the membership that the configured table association belongs to. Currently accepts the membership ID.</p>
    # @option params [String] :configured_table_association_identifier
    #   <p> The identifier for the configured table association to update.</p>
    # @option params [String] :analysis_rule_type
    #   <p> The analysis rule type that you want to update.</p>
    # @option params [Types::ConfiguredTableAssociationAnalysisRulePolicy] :analysis_rule_policy
    #   <p> The updated analysis rule policy for the conﬁgured table association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     configured_table_association_identifier: "ConfiguredTableAssociationIdentifier", # required
    #     analysis_rule_type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #     analysis_rule_policy: { # required
    #       # One of:
    #       v1: {
    #         # One of:
    #         list: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #         },
    #         aggregation: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #         },
    #         custom: {
    #           allowed_result_receivers: ["AccountId"],
    #           allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_configured_table_association_analysis_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_rule: { # required
    #       membership_identifier: "MembershipIdentifier", # required
    #       configured_table_association_id: "ConfiguredTableAssociationIdentifier", # required
    #       configured_table_association_arn: "ConfiguredTableAssociationArn", # required
    #       policy: { # required
    #         # One of:
    #         v1: {
    #           # One of:
    #           list: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           aggregation: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           },
    #           custom: {
    #             allowed_result_receivers: ["AccountId"],
    #             allowed_additional_analyses: ["AdditionalAnalysesResourceArn"]
    #           }
    #         }
    #       },
    #       type: "AGGREGATION" # One of: ["AGGREGATION", "LIST", "CUSTOM"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateConfiguredTableAssociationAnalysisRuleOutput]
    def update_configured_table_association_analysis_rule(params = {}, options = {})
      request = build_request(:update_configured_table_association_analysis_rule, params)
      request.send_request(options)
    end

    # <p>Provides the details that are necessary to update an ID mapping table.</p>
    # @param [Hash, Types::UpdateIdMappingTableInput] params
    # @option params [String] :id_mapping_table_identifier
    #   <p>The unique identifier of the ID mapping table that you want to update.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID mapping table that you want to update.</p>
    # @option params [String] :description
    #   <p>A new description for the ID mapping table.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services KMS key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_mapping_table_identifier: "UUID", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     description: "ResourceDescription",
    #     kms_key_arn: "KMSKeyArn"
    #   }
    #   options = {}
    #   response = client.update_id_mapping_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_mapping_table: { # required
    #       id: "UUID", # required
    #       arn: "IdMappingTableArn", # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdMappingTableInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       description: "ResourceDescription",
    #       name: "ResourceAlias", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_properties: { # required
    #         id_mapping_table_input_source: [ # required
    #           {
    #             id_namespace_association_id: "String", # required
    #             type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #           }
    #         ]
    #       },
    #       kms_key_arn: "KMSKeyArn"
    #     }
    #   }
    # @return [Types::UpdateIdMappingTableOutput]
    def update_id_mapping_table(params = {}, options = {})
      request = build_request(:update_id_mapping_table, params)
      request.send_request(options)
    end

    # <p>Provides the details that are necessary to update an ID namespace association.</p>
    # @param [Hash, Types::UpdateIdNamespaceAssociationInput] params
    # @option params [String] :id_namespace_association_identifier
    #   <p>The unique identifier of the ID namespace association that you want to update.</p>
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership that contains the ID namespace association that you want to update.</p>
    # @option params [String] :name
    #   <p>A new name for the ID namespace association.</p>
    # @option params [String] :description
    #   <p>A new description for the ID namespace association.</p>
    # @option params [Types::IdMappingConfig] :id_mapping_config
    #   <p>The configuration settings for the ID mapping table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_association_identifier: "IdNamespaceAssociationIdentifier", # required
    #     membership_identifier: "MembershipIdentifier", # required
    #     name: "GenericResourceName",
    #     description: "ResourceDescription",
    #     id_mapping_config: {
    #       allow_use_as_dimension_column: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_id_namespace_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_association: { # required
    #       id: "IdNamespaceAssociationIdentifier", # required
    #       arn: "IdNamespaceAssociationArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       name: "GenericResourceName", # required
    #       description: "ResourceDescription",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       input_reference_config: { # required
    #         input_reference_arn: "IdNamespaceAssociationInputReferenceArn", # required
    #         manage_resource_policies: false, # required
    #       },
    #       input_reference_properties: { # required
    #         id_namespace_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         id_mapping_workflows_supported: [""null""], # required
    #       },
    #       id_mapping_config: {
    #         allow_use_as_dimension_column: false, # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateIdNamespaceAssociationOutput]
    def update_id_namespace_association(params = {}, options = {})
      request = build_request(:update_id_namespace_association, params)
      request.send_request(options)
    end

    # <p>Updates a membership.</p>
    # @param [Hash, Types::UpdateMembershipOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The unique identifier of the membership.</p>
    # @option params [String] :query_log_status
    #   <p>An indicator as to whether query logging has been enabled or disabled for the membership.</p> <p>When <code>ENABLED</code>, Clean Rooms logs details about queries run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    # @option params [String] :job_log_status
    #   <p>An indicator as to whether job logging has been enabled or disabled for the collaboration. </p> <p>When <code>ENABLED</code>, Clean Rooms logs details about jobs run within this collaboration and those logs can be viewed in Amazon CloudWatch Logs. The default value is <code>DISABLED</code>.</p>
    # @option params [Types::MembershipProtectedQueryResultConfiguration] :default_result_configuration
    #   <p>The default protected query result configuration as specified by the member who can receive results.</p>
    # @option params [Types::MembershipProtectedJobResultConfiguration] :default_job_result_configuration
    #   <p> The default job result configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     default_result_configuration: {
    #       output_configuration: { # required
    #         # One of:
    #         s3: {
    #           result_format: "ResultFormat", # required
    #           bucket: "String", # required
    #           key_prefix: "KeyPrefix",
    #           single_file_output: false
    #         }
    #       },
    #       role_arn: "RoleArn"
    #     },
    #     default_job_result_configuration: {
    #       output_configuration: { # required
    #         # One of:
    #         s3: {
    #           bucket: "String", # required
    #           key_prefix: "KeyPrefix"
    #         }
    #       },
    #       role_arn: "RoleArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_membership(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership: { # required
    #       id: "UUID", # required
    #       arn: "MembershipArn", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_creator_account_id: "AccountId", # required
    #       collaboration_creator_display_name: "DisplayName", # required
    #       collaboration_name: "CollaborationName", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       status: "MembershipStatus", # required
    #       member_abilities: ["CAN_QUERY" # One of: ["CAN_QUERY", "CAN_RECEIVE_RESULTS", "CAN_RUN_JOB"]], # required
    #       ml_member_abilities: {
    #         custom_ml_member_abilities: ["CAN_RECEIVE_MODEL_OUTPUT" # One of: ["CAN_RECEIVE_MODEL_OUTPUT", "CAN_RECEIVE_INFERENCE_OUTPUT"]], # required
    #       },
    #       query_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       job_log_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       default_result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             result_format: "ResultFormat", # required
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix",
    #             single_file_output: false
    #           }
    #         },
    #         role_arn: "RoleArn"
    #       },
    #       default_job_result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix"
    #           }
    #         },
    #         role_arn: "RoleArn", # required
    #       },
    #       payment_configuration: { # required
    #         query_compute: { # required
    #           is_responsible: false, # required
    #         },
    #         machine_learning: {
    #           model_training: {
    #             is_responsible: false, # required
    #           },
    #           model_inference: {
    #             is_responsible: false, # required
    #           }
    #         },
    #         job_compute: {
    #           is_responsible: false, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateMembershipOperationOutput]
    def update_membership(params = {}, options = {})
      request = build_request(:update_membership, params)
      request.send_request(options)
    end

    # <p>Updates the privacy budget template for the specified collaboration.</p>
    # @param [Hash, Types::UpdatePrivacyBudgetTemplateInput] params
    # @option params [String] :membership_identifier
    #   <p>A unique identifier for one of your memberships for a collaboration. The privacy budget template is updated in the collaboration that this membership belongs to. Accepts a membership ID.</p>
    # @option params [String] :privacy_budget_template_identifier
    #   <p>A unique identifier for your privacy budget template that you want to update.</p>
    # @option params [String] :privacy_budget_type
    #   <p>Specifies the type of the privacy budget template.</p>
    # @option params [Types::PrivacyBudgetTemplateUpdateParameters] :parameters
    #   <p>Specifies the epsilon and noise parameters for the privacy budget template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     privacy_budget_template_identifier: "PrivacyBudgetTemplateIdentifier", # required
    #     privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #     parameters: {
    #       # One of:
    #       differential_privacy: {
    #         epsilon: 1,
    #         users_noise_per_query: 1
    #       },
    #       access_budget: {
    #         budget_parameters: [ # required
    #           {
    #             type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #             budget: 1, # required
    #             auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_privacy_budget_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     privacy_budget_template: { # required
    #       id: "PrivacyBudgetTemplateIdentifier", # required
    #       arn: "PrivacyBudgetTemplateArn", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       collaboration_id: "UUID", # required
    #       collaboration_arn: "CollaborationArn", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       privacy_budget_type: "DIFFERENTIAL_PRIVACY" # One of: ["DIFFERENTIAL_PRIVACY", "ACCESS_BUDGET"], # required
    #       auto_refresh: "CALENDAR_MONTH" # One of: ["CALENDAR_MONTH", "NONE"], # required
    #       parameters: { # required
    #         # One of:
    #         differential_privacy: {
    #           epsilon: 1, # required
    #           users_noise_per_query: 1, # required
    #         },
    #         access_budget: {
    #           budget_parameters: [ # required
    #             {
    #               type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #               budget: 1, # required
    #               auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ],
    #           resource_arn: "BudgetedResourceArn", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdatePrivacyBudgetTemplateOutput]
    def update_privacy_budget_template(params = {}, options = {})
      request = build_request(:update_privacy_budget_template, params)
      request.send_request(options)
    end

    # <p>Updates the processing of a currently running job.</p>
    # @param [Hash, Types::UpdateProtectedJobInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a member of a protected job instance.</p>
    # @option params [String] :protected_job_identifier
    #   <p> The identifier of the protected job to update.</p>
    # @option params [String] :target_status
    #   <p>The target status of a protected job. Used to update the execution status of a currently running job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     protected_job_identifier: "ProtectedJobIdentifier", # required
    #     target_status: "CANCELLED" # One of: ["CANCELLED"], # required
    #   }
    #   options = {}
    #   response = client.update_protected_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_job: { # required
    #       id: "ProtectedJobIdentifier", # required
    #       membership_id: "MembershipIdentifier", # required
    #       membership_arn: "MembershipArn", # required
    #       create_time: Time.now, # required
    #       job_parameters: {
    #         analysis_template_arn: "AnalysisTemplateArn"
    #       },
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "STARTED", "CANCELLED", "CANCELLING", "FAILED", "SUCCESS"], # required
    #       result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix"
    #           },
    #           member: {
    #             account_id: "AccountId", # required
    #           }
    #         }
    #       },
    #       statistics: {
    #         total_duration_in_millis: 1,
    #         billed_resource_utilization: {
    #           units: 1.0, # required
    #         }
    #       },
    #       result: {
    #         output: { # required
    #           # One of:
    #           s3: {
    #             location: "String", # required
    #           },
    #           member_list: [
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ]
    #         }
    #       },
    #       error: {
    #         message: "String", # required
    #         code: "String", # required
    #       },
    #       compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"], # required
    #           number: 1, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateProtectedJobOutput]
    def update_protected_job(params = {}, options = {})
      request = build_request(:update_protected_job, params)
      request.send_request(options)
    end

    # <p>Updates the processing of a currently running query.</p>
    # @param [Hash, Types::UpdateProtectedQueryOperationInput] params
    # @option params [String] :membership_identifier
    #   <p>The identifier for a member of a protected query instance.</p>
    # @option params [String] :protected_query_identifier
    #   <p>The identifier for a protected query instance.</p>
    # @option params [String] :target_status
    #   <p>The target status of a query. Used to update the execution status of a currently running query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "MembershipIdentifier", # required
    #     protected_query_identifier: "ProtectedQueryIdentifier", # required
    #     target_status: "TargetProtectedQueryStatus", # required
    #   }
    #   options = {}
    #   response = client.update_protected_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_query: { # required
    #       id: "UUID", # required
    #       membership_id: "UUID", # required
    #       membership_arn: "MembershipArn", # required
    #       create_time: Time.now, # required
    #       sql_parameters: {
    #         query_string: "String",
    #         analysis_template_arn: "AnalysisTemplateArn",
    #         parameters: {
    #           "ParameterName" => "ParameterValue"
    #         }
    #       },
    #       status: "ProtectedQueryStatus", # required
    #       result_configuration: {
    #         output_configuration: { # required
    #           # One of:
    #           s3: {
    #             result_format: "ResultFormat", # required
    #             bucket: "String", # required
    #             key_prefix: "KeyPrefix",
    #             single_file_output: false
    #           },
    #           member: {
    #             account_id: "AccountId", # required
    #           },
    #           distribute: {
    #             locations: [{ # required
    #               # One of:
    #               s3: {
    #                 result_format: "ResultFormat", # required
    #                 bucket: "String", # required
    #                 key_prefix: "KeyPrefix",
    #                 single_file_output: false
    #               },
    #               member: {
    #                 account_id: "AccountId", # required
    #               }
    #             }]
    #           }
    #         }
    #       },
    #       statistics: {
    #         total_duration_in_millis: 1,
    #         billed_resource_utilization: {
    #           units: 1.0, # required
    #         }
    #       },
    #       result: {
    #         output: { # required
    #           # One of:
    #           s3: {
    #             location: "String", # required
    #           },
    #           member_list: [
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ],
    #           distribute: {
    #             s3: {
    #               location: "String", # required
    #             },
    #             member_list: [
    #               {
    #                 account_id: "AccountId", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       error: {
    #         message: "String", # required
    #         code: "String", # required
    #       },
    #       differential_privacy: {
    #         sensitivity_parameters: [ # required
    #           {
    #             aggregation_type: "AVG" # One of: ["AVG", "COUNT", "COUNT_DISTINCT", "SUM", "STDDEV"], # required
    #             aggregation_expression: "DifferentialPrivacyAggregationExpression", # required
    #             user_contribution_limit: 1, # required
    #             min_column_value: 1.0,
    #             max_column_value: 1.0
    #           }
    #         ]
    #       },
    #       compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #           number: 1
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateProtectedQueryOperationOutput]
    def update_protected_query(params = {}, options = {})
      request = build_request(:update_protected_query, params)
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
      context[:gem_name] = 'aws-sdk-cleanrooms'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end

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

module Aws::MigrationHubStrategy
  # An API client for Aws::MigrationHubStrategy.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMigrationHubStrategyRecommendation

    add_plugin(::Aws::MigrationHubStrategy::Plugins::Endpoint)
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
    # @option options [Aws::MigrationHubStrategy::EndpointProvider] :endpoint_provider
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

    # <p> Retrieves details about an application component. </p>
    # @param [Hash, Types::GetApplicationComponentDetailsInput] params
    # @option params [String] :application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_component_id: "ApplicationComponentId", # required
    #   }
    #   options = {}
    #   response = client.get_application_component_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_component_detail: {
    #       id: "ResourceId",
    #       name: "ResourceName",
    #       recommendation_set: {
    #         transformation_tool: {
    #           name: "TransformationToolName",
    #           description: "TranformationToolDescription",
    #           tranformation_tool_installation_link: "TranformationToolInstallationLink"
    #         },
    #         target_destination: "TargetDestination",
    #         strategy: "Strategy"
    #       },
    #       analysis_status: "SrcCodeOrDbAnalysisStatus",
    #       status_message: "StatusMessage",
    #       list_antipattern_severity_summary: [
    #         {
    #           severity: "Severity",
    #           count: 1
    #         }
    #       ],
    #       database_config_detail: {
    #         secret_name: "String"
    #       },
    #       source_code_repositories: [
    #         {
    #           repository: "String",
    #           branch: "String",
    #           version_control_type: "String",
    #           project_name: "String"
    #         }
    #       ],
    #       app_type: "AppType",
    #       resource_sub_type: "ResourceSubType",
    #       inclusion_status: "InclusionStatus",
    #       antipattern_report_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3key: "S3Key"
    #       },
    #       antipattern_report_status: "AntipatternReportStatus",
    #       antipattern_report_status_message: "StatusMessage",
    #       os_version: "String",
    #       os_driver: "String",
    #       last_analyzed_timestamp: Time.now,
    #       associated_server_id: "ServerId",
    #       more_server_association_exists: false,
    #       runtime_status: "RuntimeAnalysisStatus",
    #       runtime_status_message: "StatusMessage",
    #       app_unit_error: {
    #         app_unit_error_category: "AppUnitErrorCategory"
    #       },
    #       result_list: [
    #         {
    #           analysis_type: "AnalysisType",
    #           analysis_status: {
    #             # One of:
    #             runtime_analysis_status: "RuntimeAnalysisStatus",
    #             src_code_or_db_analysis_status: "SrcCodeOrDbAnalysisStatus"
    #           },
    #           status_message: "StatusMessage",
    #           antipattern_report_result_list: [
    #             {
    #               analyzer_name: {
    #                 # One of:
    #                 binary_analyzer_name: "BinaryAnalyzerName",
    #                 run_time_analyzer_name: "RunTimeAnalyzerName",
    #                 source_code_analyzer_name: "SourceCodeAnalyzerName"
    #               },
    #               anti_pattern_report_s3_object: {
    #                 s3_bucket: "S3Bucket",
    #                 s3key: "S3Key"
    #               },
    #               antipattern_report_status: "AntipatternReportStatus",
    #               antipattern_report_status_message: "StatusMessage"
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     associated_applications: [
    #       {
    #         name: "String",
    #         id: "String"
    #       }
    #     ],
    #     more_application_resource: false,
    #     associated_server_ids: ["String"]
    #   }
    # @return [Types::GetApplicationComponentDetailsOutput]
    def get_application_component_details(params = {}, options = {})
      request = build_request(:get_application_component_details, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of all the recommended strategies and tools for an application component
    #       running on a server. </p>
    # @param [Hash, Types::GetApplicationComponentStrategiesInput] params
    # @option params [String] :application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_component_id: "ApplicationComponentId", # required
    #   }
    #   options = {}
    #   response = client.get_application_component_strategies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_component_strategies: [
    #       {
    #         recommendation: {
    #           transformation_tool: {
    #             name: "TransformationToolName",
    #             description: "TranformationToolDescription",
    #             tranformation_tool_installation_link: "TranformationToolInstallationLink"
    #           },
    #           target_destination: "TargetDestination",
    #           strategy: "Strategy"
    #         },
    #         status: "StrategyRecommendation",
    #         is_preferred: false
    #       }
    #     ]
    #   }
    # @return [Types::GetApplicationComponentStrategiesOutput]
    def get_application_component_strategies(params = {}, options = {})
      request = build_request(:get_application_component_strategies, params)
      request.send_request(options)
    end

    # <p> Retrieves the status of an on-going assessment. </p>
    # @param [Hash, Types::GetAssessmentInput] params
    # @option params [String] :id
    #   <p> The <code>assessmentid</code> returned by <a>StartAssessment</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "AsyncTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AsyncTaskId",
    #     data_collection_details: {
    #       status: "AssessmentStatus",
    #       servers: 1,
    #       failed: 1,
    #       success: 1,
    #       in_progress: 1,
    #       start_time: Time.now,
    #       completion_time: Time.now,
    #       status_message: "AssessmentStatusMessage"
    #     },
    #     assessment_targets: [
    #       {
    #         condition: "Condition", # required
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetAssessmentOutput]
    def get_assessment(params = {}, options = {})
      request = build_request(:get_assessment, params)
      request.send_request(options)
    end

    # <p> Retrieves the details about a specific import task. </p>
    # @param [Hash, Types::GetImportFileTaskInput] params
    # @option params [String] :id
    #   <p> The ID of the import file task. This ID is returned in the response of <a>StartImportFileTask</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_import_file_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     status: "ImportFileTaskStatus",
    #     start_time: Time.now,
    #     input_s3_bucket: "importS3Bucket",
    #     input_s3_key: "importS3Key",
    #     status_report_s3_bucket: "importS3Bucket",
    #     status_report_s3_key: "importS3Key",
    #     completion_time: Time.now,
    #     number_of_records_success: 1,
    #     number_of_records_failed: 1,
    #     import_name: "String"
    #   }
    # @return [Types::GetImportFileTaskOutput]
    def get_import_file_task(params = {}, options = {})
      request = build_request(:get_import_file_task, params)
      request.send_request(options)
    end

    # <p>Retrieve the latest ID of a specific assessment task.</p>
    # @param [Hash, Types::GetLatestAssessmentIdInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_latest_assessment_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AsyncTaskId"
    #   }
    # @return [Types::GetLatestAssessmentIdOutput]
    def get_latest_assessment_id(params = {}, options = {})
      request = build_request(:get_latest_assessment_id, params)
      request.send_request(options)
    end

    # <p> Retrieves your migration and modernization preferences. </p>
    # @param [Hash, Types::GetPortfolioPreferencesInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_portfolio_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prioritize_business_goals: {
    #       business_goals: {
    #         speed_of_migration: 1,
    #         reduce_operational_overhead_with_managed_services: 1,
    #         modernize_infrastructure_with_cloud_native_technologies: 1,
    #         license_cost_reduction: 1
    #       }
    #     },
    #     application_preferences: {
    #       management_preference: {
    #         # One of:
    #         aws_managed_resources: {
    #           target_destination: ["AwsManagedTargetDestination"], # required
    #         },
    #         self_manage_resources: {
    #           target_destination: ["SelfManageTargetDestination"], # required
    #         },
    #         no_preference: {
    #           target_destination: ["NoPreferenceTargetDestination"], # required
    #         }
    #       }
    #     },
    #     database_preferences: {
    #       database_management_preference: "DatabaseManagementPreference",
    #       database_migration_preference: {
    #         # One of:
    #         heterogeneous: {
    #           target_database_engine: ["HeterogeneousTargetDatabaseEngine"], # required
    #         },
    #         homogeneous: {
    #           target_database_engine: ["HomogeneousTargetDatabaseEngine"]
    #         },
    #         no_preference: {
    #           target_database_engine: ["TargetDatabaseEngine"], # required
    #         }
    #       }
    #     },
    #     application_mode: "ApplicationMode"
    #   }
    # @return [Types::GetPortfolioPreferencesOutput]
    def get_portfolio_preferences(params = {}, options = {})
      request = build_request(:get_portfolio_preferences, params)
      request.send_request(options)
    end

    # <p> Retrieves overall summary including the number of servers to rehost and the overall
    #       number of anti-patterns. </p>
    # @param [Hash, Types::GetPortfolioSummaryInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_portfolio_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_summary: {
    #       list_server_strategy_summary: [
    #         {
    #           strategy: "Strategy",
    #           count: 1
    #         }
    #       ],
    #       list_application_component_strategy_summary: [
    #         {
    #           strategy: "Strategy",
    #           count: 1
    #         }
    #       ],
    #       list_antipattern_severity_summary: [
    #         {
    #           severity: "Severity",
    #           count: 1
    #         }
    #       ],
    #       list_application_component_summary: [
    #         {
    #           app_type: "AppType",
    #           count: 1
    #         }
    #       ],
    #       list_server_summary: [
    #         {
    #           server_os_type: "ServerOsType",
    #           count: 1
    #         }
    #       ],
    #       antipattern_report_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3key: "S3Key"
    #       },
    #       antipattern_report_status: "AntipatternReportStatus",
    #       antipattern_report_status_message: "StatusMessage",
    #       last_analyzed_timestamp: Time.now,
    #       list_application_component_status_summary: [
    #         {
    #           src_code_or_db_analysis_status: "SrcCodeOrDbAnalysisStatus",
    #           count: 1
    #         }
    #       ],
    #       list_server_status_summary: [
    #         {
    #           run_time_assessment_status: "RunTimeAssessmentStatus",
    #           count: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetPortfolioSummaryOutput]
    def get_portfolio_summary(params = {}, options = {})
      request = build_request(:get_portfolio_summary, params)
      request.send_request(options)
    end

    # <p> Retrieves detailed information about the specified recommendation report. </p>
    # @param [Hash, Types::GetRecommendationReportDetailsInput] params
    # @option params [String] :id
    #   <p> The recommendation report generation task <code>id</code> returned by <a>StartRecommendationReportGeneration</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RecommendationTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_recommendation_report_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "RecommendationTaskId",
    #     recommendation_report_details: {
    #       status: "RecommendationReportStatus",
    #       status_message: "RecommendationReportStatusMessage",
    #       start_time: Time.now,
    #       completion_time: Time.now,
    #       s3_bucket: "String",
    #       s3_keys: ["String"]
    #     }
    #   }
    # @return [Types::GetRecommendationReportDetailsOutput]
    def get_recommendation_report_details(params = {}, options = {})
      request = build_request(:get_recommendation_report_details, params)
      request.send_request(options)
    end

    # <p> Retrieves detailed information about a specified server. </p>
    # @param [Hash, Types::GetServerDetailsInput] params
    # @option params [String] :server_id
    #   <p> The ID of the server. </p>
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_server_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     server_detail: {
    #       id: "ResourceId",
    #       name: "ResourceName",
    #       recommendation_set: {
    #         transformation_tool: {
    #           name: "TransformationToolName",
    #           description: "TranformationToolDescription",
    #           tranformation_tool_installation_link: "TranformationToolInstallationLink"
    #         },
    #         target_destination: "TargetDestination",
    #         strategy: "Strategy"
    #       },
    #       data_collection_status: "RunTimeAssessmentStatus",
    #       status_message: "StatusMessage",
    #       list_antipattern_severity_summary: [
    #         {
    #           severity: "Severity",
    #           count: 1
    #         }
    #       ],
    #       system_info: {
    #         os_info: {
    #           type: "OSType",
    #           version: "OSVersion"
    #         },
    #         file_system_type: "String",
    #         network_info_list: [
    #           {
    #             interface_name: "InterfaceName", # required
    #             ip_address: "IPAddress", # required
    #             mac_address: "MacAddress", # required
    #             net_mask: "NetMask", # required
    #           }
    #         ],
    #         cpu_architecture: "String"
    #       },
    #       application_component_strategy_summary: [
    #         {
    #           strategy: "Strategy",
    #           count: 1
    #         }
    #       ],
    #       antipattern_report_s3_object: {
    #         s3_bucket: "S3Bucket",
    #         s3key: "S3Key"
    #       },
    #       antipattern_report_status: "AntipatternReportStatus",
    #       antipattern_report_status_message: "StatusMessage",
    #       server_type: "String",
    #       last_analyzed_timestamp: Time.now,
    #       server_error: {
    #         server_error_category: "ServerErrorCategory"
    #       }
    #     },
    #     associated_applications: [
    #       {
    #         name: "String",
    #         id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetServerDetailsOutput]
    def get_server_details(params = {}, options = {})
      request = build_request(:get_server_details, params)
      request.send_request(options)
    end

    # <p> Retrieves recommended strategies and tools for the specified server. </p>
    # @param [Hash, Types::GetServerStrategiesInput] params
    # @option params [String] :server_id
    #   <p> The ID of the server. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #   }
    #   options = {}
    #   response = client.get_server_strategies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_strategies: [
    #       {
    #         recommendation: {
    #           transformation_tool: {
    #             name: "TransformationToolName",
    #             description: "TranformationToolDescription",
    #             tranformation_tool_installation_link: "TranformationToolInstallationLink"
    #           },
    #           target_destination: "TargetDestination",
    #           strategy: "Strategy"
    #         },
    #         status: "StrategyRecommendation",
    #         number_of_application_components: 1,
    #         is_preferred: false
    #       }
    #     ]
    #   }
    # @return [Types::GetServerStrategiesOutput]
    def get_server_strategies(params = {}, options = {})
      request = build_request(:get_server_strategies, params)
      request.send_request(options)
    end

    # Retrieves a list of all the servers fetched from customer vCenter using Strategy Recommendation Collector.
    # @param [Hash, Types::ListAnalyzableServersRequest] params
    # @option params [String] :sort
    #   Specifies whether to sort by ascending (ASC) or descending (DESC) order.
    # @option params [String] :next_token
    #   The token from a previous call that you use to retrieve the next set of results. For example, if a previous call to this action returned 100 items, but you set maxResults to 10. You'll receive a set of 10 results along with a token. You then use the returned token to retrieve the next set of 10.
    # @option params [Integer] :max_results
    #   The maximum number of items to include in the response. The maximum value is 100.
    # @example Invoke ListAnalyzableServers
    #   # Example operation for list_analyzable_servers
    #   params = {
    #     max_results: 100,
    #     sort: "ASC"
    #   }
    #   options = {}
    #   response = client.list_analyzable_servers(params, options)
    #   response.to_h #=>
    #   {
    #     analyzable_servers: [
    #       {
    #         hostname: "Ubuntu 1",
    #         ip_address: "1.1.1.1",
    #         source: "Application Discover Service",
    #         vm_id: "vm-1"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     sort: "SortOrder",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_analyzable_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analyzable_servers: [
    #       {
    #         hostname: "String",
    #         ip_address: "String",
    #         source: "String",
    #         vm_id: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnalyzableServersResponse]
    def list_analyzable_servers(params = {}, options = {})
      request = build_request(:list_analyzable_servers, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of all the application components (processes). </p>
    # @param [Hash, Types::ListApplicationComponentsInput] params
    # @option params [String] :application_component_criteria
    #   <p> Criteria for filtering the list of application components. </p>
    # @option params [String] :filter_value
    #   <p> Specify the value based on the application component criteria type. For example, if
    #           <code>applicationComponentCriteria</code> is set to <code>SERVER_ID</code> and
    #           <code>filterValue</code> is set to <code>server1</code>, then <a>ListApplicationComponents</a> returns all the application components running on
    #         server1. </p>
    # @option params [String] :sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #           (<code>DESC</code>) order. </p>
    # @option params [Array<Types::Group>] :group_id_filter
    #   <p> The group ID specified in to filter on. </p>
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_component_criteria: "ApplicationComponentCriteria",
    #     filter_value: "String",
    #     sort: "SortOrder",
    #     group_id_filter: [
    #       {
    #         name: "GroupName",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_application_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_component_infos: [
    #       {
    #         id: "ResourceId",
    #         name: "ResourceName",
    #         recommendation_set: {
    #           transformation_tool: {
    #             name: "TransformationToolName",
    #             description: "TranformationToolDescription",
    #             tranformation_tool_installation_link: "TranformationToolInstallationLink"
    #           },
    #           target_destination: "TargetDestination",
    #           strategy: "Strategy"
    #         },
    #         analysis_status: "SrcCodeOrDbAnalysisStatus",
    #         status_message: "StatusMessage",
    #         list_antipattern_severity_summary: [
    #           {
    #             severity: "Severity",
    #             count: 1
    #           }
    #         ],
    #         database_config_detail: {
    #           secret_name: "String"
    #         },
    #         source_code_repositories: [
    #           {
    #             repository: "String",
    #             branch: "String",
    #             version_control_type: "String",
    #             project_name: "String"
    #           }
    #         ],
    #         app_type: "AppType",
    #         resource_sub_type: "ResourceSubType",
    #         inclusion_status: "InclusionStatus",
    #         antipattern_report_s3_object: {
    #           s3_bucket: "S3Bucket",
    #           s3key: "S3Key"
    #         },
    #         antipattern_report_status: "AntipatternReportStatus",
    #         antipattern_report_status_message: "StatusMessage",
    #         os_version: "String",
    #         os_driver: "String",
    #         last_analyzed_timestamp: Time.now,
    #         associated_server_id: "ServerId",
    #         more_server_association_exists: false,
    #         runtime_status: "RuntimeAnalysisStatus",
    #         runtime_status_message: "StatusMessage",
    #         app_unit_error: {
    #           app_unit_error_category: "AppUnitErrorCategory"
    #         },
    #         result_list: [
    #           {
    #             analysis_type: "AnalysisType",
    #             analysis_status: {
    #               # One of:
    #               runtime_analysis_status: "RuntimeAnalysisStatus",
    #               src_code_or_db_analysis_status: "SrcCodeOrDbAnalysisStatus"
    #             },
    #             status_message: "StatusMessage",
    #             antipattern_report_result_list: [
    #               {
    #                 analyzer_name: {
    #                   # One of:
    #                   binary_analyzer_name: "BinaryAnalyzerName",
    #                   run_time_analyzer_name: "RunTimeAnalyzerName",
    #                   source_code_analyzer_name: "SourceCodeAnalyzerName"
    #                 },
    #                 anti_pattern_report_s3_object: {
    #                   s3_bucket: "S3Bucket",
    #                   s3key: "S3Key"
    #                 },
    #                 antipattern_report_status: "AntipatternReportStatus",
    #                 antipattern_report_status_message: "StatusMessage"
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationComponentsOutput]
    def list_application_components(params = {}, options = {})
      request = build_request(:list_application_components, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of all the installed collectors. </p>
    # @param [Hash, Types::ListCollectorsInput] params
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collectors: [
    #       {
    #         collector_id: "String",
    #         ip_address: "String",
    #         host_name: "String",
    #         collector_health: "CollectorHealth",
    #         collector_version: "String",
    #         registered_time_stamp: "String",
    #         last_activity_time_stamp: "String",
    #         configuration_summary: {
    #           vcenter_based_remote_info_list: [
    #             {
    #               vcenter_configuration_time_stamp: "String",
    #               os_type: "OSType"
    #             }
    #           ],
    #           ip_address_based_remote_info_list: [
    #             {
    #               ip_address_configuration_time_stamp: "String",
    #               auth_type: "AuthType",
    #               os_type: "OSType"
    #             }
    #           ],
    #           version_control_info_list: [
    #             {
    #               version_control_type: "VersionControlType",
    #               version_control_configuration_time_stamp: "String"
    #             }
    #           ],
    #           pipeline_info_list: [
    #             {
    #               pipeline_type: "PipelineType",
    #               pipeline_configuration_time_stamp: "String"
    #             }
    #           ],
    #           remote_source_code_analysis_server_info: {
    #             remote_source_code_analysis_server_configuration_timestamp: "String"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCollectorsOutput]
    def list_collectors(params = {}, options = {})
      request = build_request(:list_collectors, params)
      request.send_request(options)
    end

    # <p> Retrieves a list of all the imports performed. </p>
    # @param [Hash, Types::ListImportFileTaskInput] params
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    # @option params [Integer] :max_results
    #   <p> The total number of items to return. The maximum value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_import_file_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_infos: [
    #       {
    #         id: "String",
    #         status: "ImportFileTaskStatus",
    #         start_time: Time.now,
    #         input_s3_bucket: "importS3Bucket",
    #         input_s3_key: "importS3Key",
    #         status_report_s3_bucket: "importS3Bucket",
    #         status_report_s3_key: "importS3Key",
    #         completion_time: Time.now,
    #         number_of_records_success: 1,
    #         number_of_records_failed: 1,
    #         import_name: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListImportFileTaskOutput]
    def list_import_file_task(params = {}, options = {})
      request = build_request(:list_import_file_task, params)
      request.send_request(options)
    end

    # <p> Returns a list of all the servers. </p>
    # @param [Hash, Types::ListServersInput] params
    # @option params [String] :server_criteria
    #   <p> Criteria for filtering servers. </p>
    # @option params [String] :filter_value
    #   <p> Specifies the filter value, which is based on the type of server criteria. For example,
    #         if <code>serverCriteria</code> is <code>OS_NAME</code>, and the <code>filterValue</code> is
    #         equal to <code>WindowsServer</code>, then <code>ListServers</code> returns all of the servers
    #         matching the OS name <code>WindowsServer</code>. </p>
    # @option params [String] :sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #           (<code>DESC</code>) order. </p>
    # @option params [Array<Types::Group>] :group_id_filter
    #   <p> Specifies the group ID to filter on. </p>
    # @option params [String] :next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_criteria: "ServerCriteria",
    #     filter_value: "String",
    #     sort: "SortOrder",
    #     group_id_filter: [
    #       {
    #         name: "GroupName",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_infos: [
    #       {
    #         id: "ResourceId",
    #         name: "ResourceName",
    #         recommendation_set: {
    #           transformation_tool: {
    #             name: "TransformationToolName",
    #             description: "TranformationToolDescription",
    #             tranformation_tool_installation_link: "TranformationToolInstallationLink"
    #           },
    #           target_destination: "TargetDestination",
    #           strategy: "Strategy"
    #         },
    #         data_collection_status: "RunTimeAssessmentStatus",
    #         status_message: "StatusMessage",
    #         list_antipattern_severity_summary: [
    #           {
    #             severity: "Severity",
    #             count: 1
    #           }
    #         ],
    #         system_info: {
    #           os_info: {
    #             type: "OSType",
    #             version: "OSVersion"
    #           },
    #           file_system_type: "String",
    #           network_info_list: [
    #             {
    #               interface_name: "InterfaceName", # required
    #               ip_address: "IPAddress", # required
    #               mac_address: "MacAddress", # required
    #               net_mask: "NetMask", # required
    #             }
    #           ],
    #           cpu_architecture: "String"
    #         },
    #         application_component_strategy_summary: [
    #           {
    #             strategy: "Strategy",
    #             count: 1
    #           }
    #         ],
    #         antipattern_report_s3_object: {
    #           s3_bucket: "S3Bucket",
    #           s3key: "S3Key"
    #         },
    #         antipattern_report_status: "AntipatternReportStatus",
    #         antipattern_report_status_message: "StatusMessage",
    #         server_type: "String",
    #         last_analyzed_timestamp: Time.now,
    #         server_error: {
    #           server_error_category: "ServerErrorCategory"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServersOutput]
    def list_servers(params = {}, options = {})
      request = build_request(:list_servers, params)
      request.send_request(options)
    end

    # <p> Saves the specified migration and modernization preferences. </p>
    # @param [Hash, Types::PutPortfolioPreferencesInput] params
    # @option params [Types::PrioritizeBusinessGoals] :prioritize_business_goals
    #   <p> The rank of the business goals based on priority. </p>
    # @option params [Types::ApplicationPreferences] :application_preferences
    #   <p> The transformation preferences for non-database applications. </p>
    # @option params [Types::DatabasePreferences] :database_preferences
    #   <p> The transformation preferences for database applications. </p>
    # @option params [String] :application_mode
    #   <p>The classification for application component types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prioritize_business_goals: {
    #       business_goals: {
    #         speed_of_migration: 1,
    #         reduce_operational_overhead_with_managed_services: 1,
    #         modernize_infrastructure_with_cloud_native_technologies: 1,
    #         license_cost_reduction: 1
    #       }
    #     },
    #     application_preferences: {
    #       management_preference: {
    #         # One of:
    #         aws_managed_resources: {
    #           target_destination: ["AwsManagedTargetDestination"], # required
    #         },
    #         self_manage_resources: {
    #           target_destination: ["SelfManageTargetDestination"], # required
    #         },
    #         no_preference: {
    #           target_destination: ["NoPreferenceTargetDestination"], # required
    #         }
    #       }
    #     },
    #     database_preferences: {
    #       database_management_preference: "DatabaseManagementPreference",
    #       database_migration_preference: {
    #         # One of:
    #         heterogeneous: {
    #           target_database_engine: ["HeterogeneousTargetDatabaseEngine"], # required
    #         },
    #         homogeneous: {
    #           target_database_engine: ["HomogeneousTargetDatabaseEngine"]
    #         },
    #         no_preference: {
    #           target_database_engine: ["TargetDatabaseEngine"], # required
    #         }
    #       }
    #     },
    #     application_mode: "ApplicationMode"
    #   }
    #   options = {}
    #   response = client.put_portfolio_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutPortfolioPreferencesOutput]
    def put_portfolio_preferences(params = {}, options = {})
      request = build_request(:put_portfolio_preferences, params)
      request.send_request(options)
    end

    # <p> Starts the assessment of an on-premises environment. </p>
    # @param [Hash, Types::StartAssessmentInput] params
    # @option params [String] :s3bucket_for_analysis_data
    #   <p> The S3 bucket used by the collectors to send analysis data to the service. The bucket
    #         name must begin with <code>migrationhub-strategy-</code>. </p>
    # @option params [String] :s3bucket_for_report_data
    #   <p> The S3 bucket where all the reports generated by the service are stored. The bucket name
    #         must begin with <code>migrationhub-strategy-</code>. </p>
    # @option params [Array<Types::AssessmentTarget>] :assessment_targets
    #   <p>List of criteria for assessment.</p>
    # @option params [String] :assessment_data_source_type
    #   The data source type of an assessment to be started.
    # @example Request syntax with placeholder values
    #   params = {
    #     s3bucket_for_analysis_data: "String",
    #     s3bucket_for_report_data: "String",
    #     assessment_targets: [
    #       {
    #         condition: "Condition", # required
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     assessment_data_source_type: "AssessmentDataSourceType"
    #   }
    #   options = {}
    #   response = client.start_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_id: "AsyncTaskId"
    #   }
    # @return [Types::StartAssessmentOutput]
    def start_assessment(params = {}, options = {})
      request = build_request(:start_assessment, params)
      request.send_request(options)
    end

    # <p> Starts a file import. </p>
    # @param [Hash, Types::StartImportFileTaskInput] params
    # @option params [String] :name
    #   <p> A descriptive name for the request. </p>
    # @option params [String] :s3_bucket
    #   <p> The S3 bucket where the import file is located. The bucket name is required to begin with
    #           <code>migrationhub-strategy-</code>.</p>
    # @option params [String] :s3key
    #   <p> The Amazon S3 key name of the import file. </p>
    # @option params [String] :data_source_type
    #   <p>Specifies the source that the servers are coming from. By default, Strategy Recommendations assumes that
    #         the servers specified in the import file are available in AWS Application Discovery Service. </p>
    # @option params [Array<Types::Group>] :group_id
    #   <p>Groups the resources in the import file together with a unique name. This ID can be as
    #         filter in <code>ListApplicationComponents</code> and <code>ListServers</code>. </p>
    # @option params [String] :s3bucket_for_report_data
    #   <p> The S3 bucket where Strategy Recommendations uploads import results. The bucket name is required to
    #         begin with migrationhub-strategy-. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     s3_bucket: "importS3Bucket", # required
    #     s3key: "String", # required
    #     data_source_type: "DataSourceType",
    #     group_id: [
    #       {
    #         name: "GroupName",
    #         value: "String"
    #       }
    #     ],
    #     s3bucket_for_report_data: "String"
    #   }
    #   options = {}
    #   response = client.start_import_file_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String"
    #   }
    # @return [Types::StartImportFileTaskOutput]
    def start_import_file_task(params = {}, options = {})
      request = build_request(:start_import_file_task, params)
      request.send_request(options)
    end

    # <p> Starts generating a recommendation report. </p>
    # @param [Hash, Types::StartRecommendationReportGenerationInput] params
    # @option params [String] :output_format
    #   <p> The output format for the recommendation report file. The default format is Microsoft
    #         Excel. </p>
    # @option params [Array<Types::Group>] :group_id_filter
    #   <p> Groups the resources in the recommendation report with a unique name. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     output_format: "OutputFormat",
    #     group_id_filter: [
    #       {
    #         name: "GroupName",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_recommendation_report_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "RecommendationTaskId"
    #   }
    # @return [Types::StartRecommendationReportGenerationOutput]
    def start_recommendation_report_generation(params = {}, options = {})
      request = build_request(:start_recommendation_report_generation, params)
      request.send_request(options)
    end

    # <p> Stops the assessment of an on-premises environment. </p>
    # @param [Hash, Types::StopAssessmentInput] params
    # @option params [String] :assessment_id
    #   <p> The <code>assessmentId</code> returned by <a>StartAssessment</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_id: "AsyncTaskId", # required
    #   }
    #   options = {}
    #   response = client.stop_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopAssessmentOutput]
    def stop_assessment(params = {}, options = {})
      request = build_request(:stop_assessment, params)
      request.send_request(options)
    end

    # <p> Updates the configuration of an application component. </p>
    # @param [Hash, Types::UpdateApplicationComponentConfigInput] params
    # @option params [String] :application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account. </p>
    # @option params [String] :inclusion_status
    #   <p> Indicates whether the application component has been included for server recommendation
    #         or not. </p>
    # @option params [Types::StrategyOption] :strategy_option
    #   <p> The preferred strategy options for the application component. Use values from the <a>GetApplicationComponentStrategies</a> response. </p>
    # @option params [Array<Types::SourceCode>] :source_code_list
    #   <p> The list of source code configurations to update for the application component. </p>
    # @option params [String] :secrets_manager_key
    #   <p> Database credentials. </p>
    # @option params [Boolean] :configure_only
    #   <p>Update the configuration request of an application component. If it is set to true, the
    #         source code and/or database credentials are updated. If it is set to false, the source code
    #         and/or database credentials are updated and an analysis is initiated.</p>
    # @option params [String] :app_type
    #   <p>The type of known component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_component_id: "ApplicationComponentId", # required
    #     inclusion_status: "InclusionStatus",
    #     strategy_option: {
    #       strategy: "Strategy",
    #       tool_name: "TransformationToolName",
    #       target_destination: "TargetDestination",
    #       is_preferred: false
    #     },
    #     source_code_list: [
    #       {
    #         version_control: "VersionControl",
    #         source_version: "SourceVersion",
    #         location: "Location",
    #         project_name: "ProjectName"
    #       }
    #     ],
    #     secrets_manager_key: "SecretsManagerKey",
    #     configure_only: false,
    #     app_type: "AppType"
    #   }
    #   options = {}
    #   response = client.update_application_component_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationComponentConfigOutput]
    def update_application_component_config(params = {}, options = {})
      request = build_request(:update_application_component_config, params)
      request.send_request(options)
    end

    # <p> Updates the configuration of the specified server. </p>
    # @param [Hash, Types::UpdateServerConfigInput] params
    # @option params [String] :server_id
    #   <p> The ID of the server. </p>
    # @option params [Types::StrategyOption] :strategy_option
    #   <p> The preferred strategy options for the application component. See the response from <a>GetServerStrategies</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     strategy_option: {
    #       strategy: "Strategy",
    #       tool_name: "TransformationToolName",
    #       target_destination: "TargetDestination",
    #       is_preferred: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_server_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateServerConfigOutput]
    def update_server_config(params = {}, options = {})
      request = build_request(:update_server_config, params)
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
      context[:gem_name] = 'aws-sdk-migrationhubstrategy'
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

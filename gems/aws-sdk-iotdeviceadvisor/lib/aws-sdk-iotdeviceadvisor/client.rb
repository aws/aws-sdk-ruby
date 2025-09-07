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

module Aws::IotDeviceAdvisor
  # An API client for Aws::IotDeviceAdvisor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotSenateService

    add_plugin(::Aws::IotDeviceAdvisor::Plugins::Endpoint)
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
    # @option options [Aws::IotDeviceAdvisor::EndpointProvider] :endpoint_provider
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

    # <p>Creates a Device Advisor test suite.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateSuiteDefinition</a> action.</p>
    # @param [Hash, Types::CreateSuiteDefinitionRequest] params
    # @option params [Types::SuiteDefinitionConfiguration] :suite_definition_configuration
    #   <p>Creates a Device Advisor test suite with suite definition configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the suite definition.</p>
    # @option params [String] :client_token
    #   <p>The client token for the test suite definition creation. 
    #               This token is used for tracking test suite definition creation 
    #               using retries and obtaining its status. This parameter is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_configuration: { # required
    #       suite_definition_name: "SuiteDefinitionName", # required
    #       devices: [
    #         {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #           device_role_arn: "AmazonResourceName"
    #         }
    #       ],
    #       intended_for_qualification: false,
    #       is_long_duration_test: false,
    #       root_group: "RootGroup", # required
    #       device_permission_role_arn: "AmazonResourceName", # required
    #       protocol: "MqttV3_1_1" # One of: ["MqttV3_1_1", "MqttV5", "MqttV3_1_1_OverWebSocket", "MqttV5_OverWebSocket"]
    #     },
    #     tags: {
    #       "String128" => "String256"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_suite_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_definition_id: "UUID",
    #     suite_definition_arn: "AmazonResourceName",
    #     suite_definition_name: "SuiteDefinitionName",
    #     created_at: Time.now
    #   }
    # @return [Types::CreateSuiteDefinitionResponse]
    def create_suite_definition(params = {}, options = {})
      request = build_request(:create_suite_definition, params)
      request.send_request(options)
    end

    # <p>Deletes a Device Advisor test suite.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteSuiteDefinition</a> action.</p>
    # @param [Hash, Types::DeleteSuiteDefinitionRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_suite_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSuiteDefinitionResponse]
    def delete_suite_definition(params = {}, options = {})
      request = build_request(:delete_suite_definition, params)
      request.send_request(options)
    end

    # <p>Gets information about an Device Advisor endpoint.</p>
    # @param [Hash, Types::GetEndpointRequest] params
    # @option params [String] :thing_arn
    #   <p>The thing ARN of the device. This is an optional parameter.</p>
    # @option params [String] :certificate_arn
    #   <p>The certificate ARN of the device. This is an optional parameter.</p>
    # @option params [String] :device_role_arn
    #   <p>The device role ARN of the device. This is an optional parameter.</p>
    # @option params [String] :authentication_method
    #   <p>The authentication method used during the device connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_arn: "AmazonResourceName",
    #     certificate_arn: "AmazonResourceName",
    #     device_role_arn: "AmazonResourceName",
    #     authentication_method: "X509ClientCertificate" # One of: ["X509ClientCertificate", "SignatureVersion4"]
    #   }
    #   options = {}
    #   response = client.get_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: "Endpoint"
    #   }
    # @return [Types::GetEndpointResponse]
    def get_endpoint(params = {}, options = {})
      request = build_request(:get_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets information about a Device Advisor test suite.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetSuiteDefinition</a> action.</p>
    # @param [Hash, Types::GetSuiteDefinitionRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite to get.</p>
    # @option params [String] :suite_definition_version
    #   <p>Suite definition version of the test suite to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #     suite_definition_version: "SuiteDefinitionVersion"
    #   }
    #   options = {}
    #   response = client.get_suite_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_definition_id: "UUID",
    #     suite_definition_arn: "AmazonResourceName",
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     latest_version: "SuiteDefinitionVersion",
    #     suite_definition_configuration: {
    #       suite_definition_name: "SuiteDefinitionName", # required
    #       devices: [
    #         {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #           device_role_arn: "AmazonResourceName"
    #         }
    #       ],
    #       intended_for_qualification: false,
    #       is_long_duration_test: false,
    #       root_group: "RootGroup", # required
    #       device_permission_role_arn: "AmazonResourceName", # required
    #       protocol: "MqttV3_1_1" # One of: ["MqttV3_1_1", "MqttV5", "MqttV3_1_1_OverWebSocket", "MqttV5_OverWebSocket"]
    #     },
    #     created_at: Time.now,
    #     last_modified_at: Time.now,
    #     tags: {
    #       "String128" => "String256"
    #     }
    #   }
    # @return [Types::GetSuiteDefinitionResponse]
    def get_suite_definition(params = {}, options = {})
      request = build_request(:get_suite_definition, params)
      request.send_request(options)
    end

    # <p>Gets information about a Device Advisor test suite run.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetSuiteRun</a> action.</p>
    # @param [Hash, Types::GetSuiteRunRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID for the test suite run.</p>
    # @option params [String] :suite_run_id
    #   <p>Suite run ID for the test suite run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #     suite_run_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_suite_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_definition_id: "UUID",
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     suite_run_id: "UUID",
    #     suite_run_arn: "AmazonResourceName",
    #     suite_run_configuration: {
    #       primary_device: { # required
    #         thing_arn: "AmazonResourceName",
    #         certificate_arn: "AmazonResourceName",
    #         device_role_arn: "AmazonResourceName"
    #       },
    #       selected_test_list: ["UUID"],
    #       parallel_run: false
    #     },
    #     test_result: {
    #       groups: [
    #         {
    #           group_id: "UUID",
    #           group_name: "GroupName",
    #           tests: [
    #             {
    #               test_case_run_id: "UUID",
    #               test_case_definition_id: "UUID",
    #               test_case_definition_name: "TestCaseDefinitionName",
    #               status: "PASS" # One of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"],
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               log_url: "LogUrl",
    #               warnings: "Warnings",
    #               failure: "Failure",
    #               test_scenarios: [
    #                 {
    #                   test_case_scenario_id: "TestCaseScenarioId",
    #                   test_case_scenario_type: "Advanced" # One of: ["Advanced", "Basic"],
    #                   status: "PASS" # One of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"],
    #                   failure: "Failure",
    #                   system_message: "SystemMessage"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     status: "PASS" # One of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"],
    #     error_reason: "ErrorReason",
    #     tags: {
    #       "String128" => "String256"
    #     }
    #   }
    # @return [Types::GetSuiteRunResponse]
    def get_suite_run(params = {}, options = {})
      request = build_request(:get_suite_run, params)
      request.send_request(options)
    end

    # <p>Gets a report download link for a successful Device Advisor qualifying test suite run.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetSuiteRunReport</a> action.</p>
    # @param [Hash, Types::GetSuiteRunReportRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    # @option params [String] :suite_run_id
    #   <p>Suite run ID of the test suite run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #     suite_run_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_suite_run_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     qualification_report_download_url: "QualificationReportDownloadUrl"
    #   }
    # @return [Types::GetSuiteRunReportResponse]
    def get_suite_run_report(params = {}, options = {})
      request = build_request(:get_suite_run_report, params)
      request.send_request(options)
    end

    # <p>Lists the Device Advisor test suites you have created.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSuiteDefinitions</a> action.</p>
    # @param [Hash, Types::ListSuiteDefinitionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at once.</p>
    # @option params [String] :next_token
    #   <p>A token used to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_suite_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_definition_information_list: [
    #       {
    #         suite_definition_id: "UUID",
    #         suite_definition_name: "SuiteDefinitionName",
    #         default_devices: [
    #           {
    #             thing_arn: "AmazonResourceName",
    #             certificate_arn: "AmazonResourceName",
    #             device_role_arn: "AmazonResourceName"
    #           }
    #         ],
    #         intended_for_qualification: false,
    #         is_long_duration_test: false,
    #         protocol: "MqttV3_1_1" # One of: ["MqttV3_1_1", "MqttV5", "MqttV3_1_1_OverWebSocket", "MqttV5_OverWebSocket"],
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListSuiteDefinitionsResponse]
    def list_suite_definitions(params = {}, options = {})
      request = build_request(:list_suite_definitions, params)
      request.send_request(options)
    end

    # <p>Lists runs of the specified Device Advisor test suite. You can list all runs of the test
    #             suite, or the runs of a specific version of the test suite.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSuiteRuns</a> action.</p>
    # @param [Hash, Types::ListSuiteRunsRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Lists the test suite runs of the specified test suite based on suite definition
    #               ID.</p>
    # @option params [String] :suite_definition_version
    #   <p>Must be passed along with <code>suiteDefinitionId</code>. Lists the test suite runs of
    #               the specified test suite based on suite definition version.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at once.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID",
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_suite_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_runs_list: [
    #       {
    #         suite_definition_id: "UUID",
    #         suite_definition_version: "SuiteDefinitionVersion",
    #         suite_definition_name: "SuiteDefinitionName",
    #         suite_run_id: "UUID",
    #         created_at: Time.now,
    #         started_at: Time.now,
    #         end_at: Time.now,
    #         status: "PASS" # One of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"],
    #         passed: 1,
    #         failed: 1
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListSuiteRunsResponse]
    def list_suite_runs(params = {}, options = {})
      request = build_request(:list_suite_runs, params)
      request.send_request(options)
    end

    # <p>Lists the tags attached to an IoT Device Advisor resource.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTagsForResource</a> action.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN of the IoT Device Advisor resource. This can be SuiteDefinition ARN or
    #               SuiteRun ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String128" => "String256"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a Device Advisor test suite run.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartSuiteRun</a> action.</p>
    # @param [Hash, Types::StartSuiteRunRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    # @option params [String] :suite_definition_version
    #   <p>Suite definition version of the test suite.</p>
    # @option params [Types::SuiteRunConfiguration] :suite_run_configuration
    #   <p>Suite run configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the suite run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     suite_run_configuration: { # required
    #       primary_device: { # required
    #         thing_arn: "AmazonResourceName",
    #         certificate_arn: "AmazonResourceName",
    #         device_role_arn: "AmazonResourceName"
    #       },
    #       selected_test_list: ["UUID"],
    #       parallel_run: false
    #     },
    #     tags: {
    #       "String128" => "String256"
    #     }
    #   }
    #   options = {}
    #   response = client.start_suite_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_run_id: "UUID",
    #     suite_run_arn: "AmazonResourceName",
    #     created_at: Time.now,
    #     endpoint: "Endpoint"
    #   }
    # @return [Types::StartSuiteRunResponse]
    def start_suite_run(params = {}, options = {})
      request = build_request(:start_suite_run, params)
      request.send_request(options)
    end

    # <p>Stops a Device Advisor test suite run that is currently running.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StopSuiteRun</a> action.</p>
    # @param [Hash, Types::StopSuiteRunRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite run to be stopped.</p>
    # @option params [String] :suite_run_id
    #   <p>Suite run ID of the test suite run to be stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #     suite_run_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.stop_suite_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopSuiteRunResponse]
    def stop_suite_run(params = {}, options = {})
      request = build_request(:stop_suite_run, params)
      request.send_request(options)
    end

    # <p>Adds to and modifies existing tags of an IoT Device Advisor resource.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TagResource</a> action.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or
    #               SuiteRun ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the IoT Device Advisor resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "String128" => "String256"
    #     }
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

    # <p>Removes tags from an IoT Device Advisor resource.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UntagResource</a> action.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or
    #               SuiteRun ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>List of tag keys to remove from the IoT Device Advisor resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["String128"], # required
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

    # <p>Updates a Device Advisor test suite.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateSuiteDefinition</a> action.</p>
    # @param [Hash, Types::UpdateSuiteDefinitionRequest] params
    # @option params [String] :suite_definition_id
    #   <p>Suite definition ID of the test suite to be updated.</p>
    # @option params [Types::SuiteDefinitionConfiguration] :suite_definition_configuration
    #   <p>Updates a Device Advisor test suite with suite definition configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     suite_definition_id: "UUID", # required
    #     suite_definition_configuration: { # required
    #       suite_definition_name: "SuiteDefinitionName", # required
    #       devices: [
    #         {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #           device_role_arn: "AmazonResourceName"
    #         }
    #       ],
    #       intended_for_qualification: false,
    #       is_long_duration_test: false,
    #       root_group: "RootGroup", # required
    #       device_permission_role_arn: "AmazonResourceName", # required
    #       protocol: "MqttV3_1_1" # One of: ["MqttV3_1_1", "MqttV5", "MqttV3_1_1_OverWebSocket", "MqttV5_OverWebSocket"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_suite_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite_definition_id: "UUID",
    #     suite_definition_arn: "AmazonResourceName",
    #     suite_definition_name: "SuiteDefinitionName",
    #     suite_definition_version: "SuiteDefinitionVersion",
    #     created_at: Time.now,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::UpdateSuiteDefinitionResponse]
    def update_suite_definition(params = {}, options = {})
      request = build_request(:update_suite_definition, params)
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
      context[:gem_name] = 'aws-sdk-iotdeviceadvisor'
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

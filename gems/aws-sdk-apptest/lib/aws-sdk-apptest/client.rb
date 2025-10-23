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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:apptest)

module Aws::AppTest
  # An API client for Aws::AppTest.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsApptestControlPlaneService
    @identifier = :apptest

    add_plugin(::Aws::AppTest::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppTest::EndpointProvider)
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

    # <p>Creates a test case.</p>
    # @param [Hash, Types::CreateTestCaseRequest] params
    # @option params [String] :name
    #   <p>The name of the test case.</p>
    # @option params [String] :description
    #   <p>The description of the test case.</p>
    # @option params [Array<Types::Step>] :steps
    #   <p>The steps in the test case.</p>
    # @option params [String] :client_token
    #   <p>The client token of the test case.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The specified tags of the test case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     steps: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_case_id: "Identifier", # required
    #     test_case_version: 1, # required
    #   }
    # @return [Types::CreateTestCaseResponse]
    def create_test_case(params = {}, options = {})
      request = build_request(:create_test_case, params)
      request.send_request(options)
    end

    # <p>Creates a test configuration.</p>
    # @param [Hash, Types::CreateTestConfigurationRequest] params
    # @option params [String] :name
    #   <p>The name of the test configuration.</p>
    # @option params [String] :description
    #   <p>The description of the test configuration.</p>
    # @option params [Array<Types::Resource>] :resources
    #   <p>The defined resources of the test configuration.</p>
    # @option params [Hash<String, String>] :properties
    #   <p>The properties of the test configuration.</p>
    # @option params [String] :client_token
    #   <p>The client token of the test configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the test configuration.</p>
    # @option params [Types::ServiceSettings] :service_settings
    #   <p>The service settings of the test configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     resources: [ # required
    #       {
    #         name: "ResourceName", # required
    #         type: { # required
    #           # One of:
    #           cloud_formation: {
    #             template_location: "S3Uri", # required
    #             parameters: {
    #               "String" => "String"
    #             }
    #           },
    #           m2_managed_application: {
    #             application_id: "Variable", # required
    #             runtime: "MicroFocus" # One of: ["MicroFocus"], # required
    #             vpc_endpoint_service_name: "Variable",
    #             listener_port: "Variable"
    #           },
    #           m2_non_managed_application: {
    #             vpc_endpoint_service_name: "Variable", # required
    #             listener_port: "Variable", # required
    #             runtime: "BluAge" # One of: ["BluAge"], # required
    #             web_app_name: "Variable"
    #           }
    #         }
    #       }
    #     ],
    #     properties: {
    #       "String" => "String"
    #     },
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     service_settings: {
    #       kms_key_id: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_test_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_configuration_id: "Identifier", # required
    #     test_configuration_version: 1, # required
    #   }
    # @return [Types::CreateTestConfigurationResponse]
    def create_test_configuration(params = {}, options = {})
      request = build_request(:create_test_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a test suite.</p>
    # @param [Hash, Types::CreateTestSuiteRequest] params
    # @option params [String] :name
    #   <p>The name of the test suite.</p>
    # @option params [String] :description
    #   <p>The description of the test suite.</p>
    # @option params [Array<Types::Step>] :before_steps
    #   <p>The before steps of the test suite.</p>
    # @option params [Array<Types::Step>] :after_steps
    #   <p>The after steps of the test suite.</p>
    # @option params [Types::TestCases] :test_cases
    #   <p>The test cases in the test suite.</p>
    # @option params [String] :client_token
    #   <p>The client token of the test suite.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the test suite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     before_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     after_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     test_cases: { # required
    #       # One of:
    #       sequential: ["Identifier"]
    #     },
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_test_suite(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_suite_id: "Identifier", # required
    #     test_suite_version: 1, # required
    #   }
    # @return [Types::CreateTestSuiteResponse]
    def create_test_suite(params = {}, options = {})
      request = build_request(:create_test_suite, params)
      request.send_request(options)
    end

    # <p>Deletes a test case.</p>
    # @param [Hash, Types::DeleteTestCaseRequest] params
    # @option params [String] :test_case_id
    #   <p>The test case ID of the test case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_case_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTestCaseResponse]
    def delete_test_case(params = {}, options = {})
      request = build_request(:delete_test_case, params)
      request.send_request(options)
    end

    # <p>Deletes a test configuration.</p>
    # @param [Hash, Types::DeleteTestConfigurationRequest] params
    # @option params [String] :test_configuration_id
    #   <p>The test ID of the test configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_configuration_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_test_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTestConfigurationResponse]
    def delete_test_configuration(params = {}, options = {})
      request = build_request(:delete_test_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a test run.</p>
    # @param [Hash, Types::DeleteTestRunRequest] params
    # @option params [String] :test_run_id
    #   <p>The run ID of the test run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_test_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTestRunResponse]
    def delete_test_run(params = {}, options = {})
      request = build_request(:delete_test_run, params)
      request.send_request(options)
    end

    # <p>Deletes a test suite.</p>
    # @param [Hash, Types::DeleteTestSuiteRequest] params
    # @option params [String] :test_suite_id
    #   <p>The test ID of the test suite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_suite_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_test_suite(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTestSuiteResponse]
    def delete_test_suite(params = {}, options = {})
      request = build_request(:delete_test_suite, params)
      request.send_request(options)
    end

    # <p>Gets a test case.</p>
    # @param [Hash, Types::GetTestCaseRequest] params
    # @option params [String] :test_case_id
    #   <p>The request test ID of the test case.</p>
    # @option params [Integer] :test_case_version
    #   <p>The test case version of the test case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_case_id: "Identifier", # required
    #     test_case_version: 1
    #   }
    #   options = {}
    #   response = client.get_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_case_id: "Identifier", # required
    #     test_case_arn: "Arn", # required
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     latest_version: { # required
    #       version: 1, # required
    #       status: "Active" # One of: ["Active", "Deleting"], # required
    #       status_reason: "String"
    #     },
    #     test_case_version: 1, # required
    #     status: "Active" # One of: ["Active", "Deleting"], # required
    #     status_reason: "String",
    #     creation_time: Time.now, # required
    #     last_update_time: Time.now, # required
    #     steps: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetTestCaseResponse]
    def get_test_case(params = {}, options = {})
      request = build_request(:get_test_case, params)
      request.send_request(options)
    end

    # <p>Gets a test configuration.</p>
    # @param [Hash, Types::GetTestConfigurationRequest] params
    # @option params [String] :test_configuration_id
    #   <p>The request test configuration ID.</p>
    # @option params [Integer] :test_configuration_version
    #   <p>The test configuration version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_configuration_id: "Identifier", # required
    #     test_configuration_version: 1
    #   }
    #   options = {}
    #   response = client.get_test_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_configuration_id: "Identifier", # required
    #     name: "ResourceName", # required
    #     test_configuration_arn: "Arn", # required
    #     latest_version: { # required
    #       version: 1, # required
    #       status: "Active" # One of: ["Active", "Deleting"], # required
    #       status_reason: "String"
    #     },
    #     test_configuration_version: 1, # required
    #     status: "Active" # One of: ["Active", "Deleting"], # required
    #     status_reason: "String",
    #     creation_time: Time.now, # required
    #     last_update_time: Time.now, # required
    #     description: "ResourceDescription",
    #     resources: [ # required
    #       {
    #         name: "ResourceName", # required
    #         type: { # required
    #           # One of:
    #           cloud_formation: {
    #             template_location: "S3Uri", # required
    #             parameters: {
    #               "String" => "String"
    #             }
    #           },
    #           m2_managed_application: {
    #             application_id: "Variable", # required
    #             runtime: "MicroFocus" # One of: ["MicroFocus"], # required
    #             vpc_endpoint_service_name: "Variable",
    #             listener_port: "Variable"
    #           },
    #           m2_non_managed_application: {
    #             vpc_endpoint_service_name: "Variable", # required
    #             listener_port: "Variable", # required
    #             runtime: "BluAge" # One of: ["BluAge"], # required
    #             web_app_name: "Variable"
    #           }
    #         }
    #       }
    #     ],
    #     properties: { # required
    #       "String" => "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     service_settings: {
    #       kms_key_id: "String"
    #     }
    #   }
    # @return [Types::GetTestConfigurationResponse]
    def get_test_configuration(params = {}, options = {})
      request = build_request(:get_test_configuration, params)
      request.send_request(options)
    end

    # <p>Gets a test run step.</p>
    # @param [Hash, Types::GetTestRunStepRequest] params
    # @option params [String] :test_run_id
    #   <p>The test run ID of the test run step.</p>
    # @option params [String] :step_name
    #   <p>The step name of the test run step.</p>
    # @option params [String] :test_case_id
    #   <p>The test case ID of a test run step.</p>
    # @option params [String] :test_suite_id
    #   <p>The test suite ID of a test run step.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "Identifier", # required
    #     step_name: "ResourceName", # required
    #     test_case_id: "Identifier",
    #     test_suite_id: "Identifier"
    #   }
    #   options = {}
    #   response = client.get_test_run_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_name: "ResourceName", # required
    #     test_run_id: "Identifier", # required
    #     test_case_id: "Identifier",
    #     test_case_version: 1,
    #     test_suite_id: "Identifier",
    #     test_suite_version: 1,
    #     before_step: false,
    #     after_step: false,
    #     status: "Success" # One of: ["Success", "Failed", "Running"], # required
    #     status_reason: "String",
    #     run_start_time: Time.now, # required
    #     run_end_time: Time.now,
    #     step_run_summary: {
    #       # One of:
    #       mainframe_action: {
    #         # One of:
    #         batch: {
    #           step_input: { # required
    #             resource: { # required
    #               # One of:
    #               m2_managed_application: {
    #                 application_id: "Identifier", # required
    #                 runtime: "MicroFocus" # One of: ["MicroFocus"], # required
    #                 listener_port: 1
    #               },
    #               m2_non_managed_application: {
    #                 vpc_endpoint_service_name: "String", # required
    #                 listener_port: 1, # required
    #                 runtime: "BluAge" # One of: ["BluAge"], # required
    #                 web_app_name: "String"
    #               }
    #             },
    #             batch_job_name: "ResourceName", # required
    #             batch_job_parameters: {
    #               "String" => "String"
    #             },
    #             export_data_set_names: ["String100"],
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           step_output: {
    #             data_set_export_location: "S3Uri",
    #             dms_output_location: "S3Uri",
    #             data_set_details: [
    #               {
    #                 type: "PS" # One of: ["PS"], # required
    #                 name: "String100", # required
    #                 ccsid: "String50", # required
    #                 format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                 length: 1, # required
    #               }
    #             ]
    #           }
    #         },
    #         tn3270: {
    #           step_input: { # required
    #             resource: { # required
    #               # One of:
    #               m2_managed_application: {
    #                 application_id: "Identifier", # required
    #                 runtime: "MicroFocus" # One of: ["MicroFocus"], # required
    #                 listener_port: 1
    #               },
    #               m2_non_managed_application: {
    #                 vpc_endpoint_service_name: "String", # required
    #                 listener_port: 1, # required
    #                 runtime: "BluAge" # One of: ["BluAge"], # required
    #                 web_app_name: "String"
    #               }
    #             },
    #             script: { # required
    #               script_location: "S3Uri", # required
    #               type: "Selenium" # One of: ["Selenium"], # required
    #             },
    #             export_data_set_names: ["String100"],
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           step_output: {
    #             data_set_export_location: "S3Uri",
    #             dms_output_location: "S3Uri",
    #             data_set_details: [
    #               {
    #                 type: "PS" # One of: ["PS"], # required
    #                 name: "String100", # required
    #                 ccsid: "String50", # required
    #                 format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                 length: 1, # required
    #               }
    #             ],
    #             script_output_location: "S3Uri", # required
    #           }
    #         }
    #       },
    #       compare_action: {
    #         type: { # required
    #           # One of:
    #           file_type: {
    #             # One of:
    #             datasets: {
    #               step_input: { # required
    #                 source_location: "S3Uri", # required
    #                 target_location: "S3Uri", # required
    #                 source_data_sets: [ # required
    #                   {
    #                     type: "PS" # One of: ["PS"], # required
    #                     name: "String100", # required
    #                     ccsid: "String50", # required
    #                     format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                     length: 1, # required
    #                   }
    #                 ],
    #                 target_data_sets: [ # required
    #                   {
    #                     type: "PS" # One of: ["PS"], # required
    #                     name: "String100", # required
    #                     ccsid: "String50", # required
    #                     format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                     length: 1, # required
    #                   }
    #                 ]
    #               },
    #               step_output: {
    #                 comparison_output_location: "S3Uri", # required
    #                 comparison_status: "Different" # One of: ["Different", "Equivalent", "Equal"], # required
    #               }
    #             },
    #             database_cdc: {
    #               step_input: { # required
    #                 source_location: "String", # required
    #                 target_location: "String", # required
    #                 output_location: "String",
    #                 source_metadata: { # required
    #                   type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                   capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                 },
    #                 target_metadata: { # required
    #                   type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                   capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                 }
    #               },
    #               step_output: {
    #                 comparison_output_location: "String", # required
    #                 comparison_status: "Different" # One of: ["Different", "Equivalent", "Equal"], # required
    #               }
    #             }
    #           }
    #         }
    #       },
    #       resource_action: {
    #         # One of:
    #         cloud_formation: {
    #           # One of:
    #           create_cloudformation: {
    #             step_input: { # required
    #               template_location: "S3Uri", # required
    #               parameters: {
    #                 "String" => "String"
    #               }
    #             },
    #             step_output: {
    #               stack_id: "String", # required
    #               exports: {
    #                 "String" => "String"
    #               }
    #             }
    #           },
    #           delete_cloudformation: {
    #             step_input: { # required
    #               stack_id: "String", # required
    #             },
    #             step_output: {
    #             }
    #           }
    #         },
    #         m2_managed_application: {
    #           step_input: { # required
    #             application_id: "String", # required
    #             runtime: "String", # required
    #             vpc_endpoint_service_name: "String",
    #             listener_port: 1,
    #             action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             properties: {
    #               force_stop: false,
    #               import_data_set_location: "Variable"
    #             }
    #           },
    #           step_output: {
    #             import_data_set_summary: {
    #               "String" => "String"
    #             }
    #           }
    #         },
    #         m2_non_managed_application: {
    #           step_input: { # required
    #             vpc_endpoint_service_name: "String", # required
    #             listener_port: 1, # required
    #             runtime: "BluAge" # One of: ["BluAge"], # required
    #             web_app_name: "String",
    #             action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #           },
    #           step_output: {
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetTestRunStepResponse]
    def get_test_run_step(params = {}, options = {})
      request = build_request(:get_test_run_step, params)
      request.send_request(options)
    end

    # <p>Gets a test suite.</p>
    # @param [Hash, Types::GetTestSuiteRequest] params
    # @option params [String] :test_suite_id
    #   <p>The ID of the test suite.</p>
    # @option params [Integer] :test_suite_version
    #   <p>The version of the test suite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_suite_id: "Identifier", # required
    #     test_suite_version: 1
    #   }
    #   options = {}
    #   response = client.get_test_suite(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_suite_id: "Identifier", # required
    #     name: "ResourceName", # required
    #     latest_version: { # required
    #       version: 1, # required
    #       status: "Creating" # One of: ["Creating", "Updating", "Active", "Failed", "Deleting"], # required
    #       status_reason: "String"
    #     },
    #     test_suite_version: 1, # required
    #     status: "Creating" # One of: ["Creating", "Updating", "Active", "Failed", "Deleting"],
    #     status_reason: "String",
    #     test_suite_arn: "Arn", # required
    #     creation_time: Time.now, # required
    #     last_update_time: Time.now, # required
    #     description: "ResourceDescription",
    #     before_steps: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     after_steps: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     test_cases: { # required
    #       # One of:
    #       sequential: ["Identifier"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetTestSuiteResponse]
    def get_test_suite(params = {}, options = {})
      request = build_request(:get_test_suite, params)
      request.send_request(options)
    end

    # <p>Lists tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists test cases.</p>
    # @param [Hash, Types::ListTestCasesRequest] params
    # @option params [Array<String>] :test_case_ids
    #   <p>The IDs of the test cases.</p>
    # @option params [String] :next_token
    #   <p>The next token of the test cases.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum results of the test case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_case_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_test_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_cases: [ # required
    #       {
    #         test_case_id: "Identifier", # required
    #         test_case_arn: "Arn", # required
    #         name: "ResourceName", # required
    #         status_reason: "String",
    #         latest_version: 1, # required
    #         status: "Active" # One of: ["Active", "Deleting"], # required
    #         creation_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestCasesResponse]
    def list_test_cases(params = {}, options = {})
      request = build_request(:list_test_cases, params)
      request.send_request(options)
    end

    # <p>Lists test configurations.</p>
    # @param [Hash, Types::ListTestConfigurationsRequest] params
    # @option params [Array<String>] :test_configuration_ids
    #   <p>The configuration IDs of the test configurations.</p>
    # @option params [String] :next_token
    #   <p>The next token for the test configurations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum results of the test configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_configuration_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_test_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_configurations: [ # required
    #       {
    #         test_configuration_id: "Identifier", # required
    #         name: "ResourceName", # required
    #         status_reason: "String",
    #         latest_version: 1, # required
    #         test_configuration_arn: "Arn", # required
    #         status: "Active" # One of: ["Active", "Deleting"], # required
    #         creation_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestConfigurationsResponse]
    def list_test_configurations(params = {}, options = {})
      request = build_request(:list_test_configurations, params)
      request.send_request(options)
    end

    # <p>Lists test run steps.</p>
    # @param [Hash, Types::ListTestRunStepsRequest] params
    # @option params [String] :test_run_id
    #   <p>The test run ID of the test run steps.</p>
    # @option params [String] :test_case_id
    #   <p>The test case ID of the test run steps.</p>
    # @option params [String] :test_suite_id
    #   <p>The test suite ID of the test run steps.</p>
    # @option params [String] :next_token
    #   <p>The token from a previous step to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of test run steps to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "Identifier", # required
    #     test_case_id: "Identifier",
    #     test_suite_id: "Identifier",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_test_run_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_steps: [ # required
    #       {
    #         step_name: "ResourceName", # required
    #         test_run_id: "Identifier", # required
    #         test_case_id: "Identifier",
    #         test_case_version: 1,
    #         test_suite_id: "Identifier",
    #         test_suite_version: 1,
    #         before_step: false,
    #         after_step: false,
    #         status: "Success" # One of: ["Success", "Failed", "Running"], # required
    #         status_reason: "String",
    #         run_start_time: Time.now, # required
    #         run_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunStepsResponse]
    def list_test_run_steps(params = {}, options = {})
      request = build_request(:list_test_run_steps, params)
      request.send_request(options)
    end

    # <p>Lists test run test cases.</p>
    # @param [Hash, Types::ListTestRunTestCasesRequest] params
    # @option params [String] :test_run_id
    #   <p>The test run ID of the test cases.</p>
    # @option params [String] :next_token
    #   <p>The token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of test run test cases to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_run_id: "Identifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_test_run_test_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_test_cases: [ # required
    #       {
    #         test_case_id: "Identifier", # required
    #         test_case_version: 1, # required
    #         test_run_id: "Identifier", # required
    #         status: "Success" # One of: ["Success", "Running", "Failed"], # required
    #         status_reason: "String",
    #         run_start_time: Time.now, # required
    #         run_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunTestCasesResponse]
    def list_test_run_test_cases(params = {}, options = {})
      request = build_request(:list_test_run_test_cases, params)
      request.send_request(options)
    end

    # <p>Lists test runs.</p>
    # @param [Hash, Types::ListTestRunsRequest] params
    # @option params [String] :test_suite_id
    #   <p>The test suite ID of the test runs.</p>
    # @option params [Array<String>] :test_run_ids
    #   <p>The test run IDs of the test runs.</p>
    # @option params [String] :next_token
    #   <p>The token from the previous request to retrieve the next page of test run results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of test runs to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_suite_id: "Identifier",
    #     test_run_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_test_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_runs: [ # required
    #       {
    #         test_run_id: "Identifier", # required
    #         test_run_arn: "Arn", # required
    #         test_suite_id: "Identifier", # required
    #         test_suite_version: 1, # required
    #         test_configuration_id: "Identifier",
    #         test_configuration_version: 1,
    #         status: "Success" # One of: ["Success", "Running", "Failed", "Deleting"], # required
    #         status_reason: "String",
    #         run_start_time: Time.now, # required
    #         run_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestRunsResponse]
    def list_test_runs(params = {}, options = {})
      request = build_request(:list_test_runs, params)
      request.send_request(options)
    end

    # <p>Lists test suites.</p>
    # @param [Hash, Types::ListTestSuitesRequest] params
    # @option params [Array<String>] :test_suite_ids
    #   <p>The suite ID of the test suites.</p>
    # @option params [String] :next_token
    #   <p>The token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of test suites to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_suite_ids: ["Identifier"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_test_suites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_suites: [ # required
    #       {
    #         test_suite_id: "Identifier", # required
    #         name: "ResourceName", # required
    #         status_reason: "String",
    #         latest_version: 1, # required
    #         test_suite_arn: "Arn", # required
    #         status: "Creating" # One of: ["Creating", "Updating", "Active", "Failed", "Deleting"], # required
    #         creation_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTestSuitesResponse]
    def list_test_suites(params = {}, options = {})
      request = build_request(:list_test_suites, params)
      request.send_request(options)
    end

    # <p>Starts a test run.</p>
    # @param [Hash, Types::StartTestRunRequest] params
    # @option params [String] :test_suite_id
    #   <p>The test suite ID of the test run.</p>
    # @option params [String] :test_configuration_id
    #   <p>The configuration ID of the test run.</p>
    # @option params [String] :client_token
    #   <p>The client token of the test run.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the test run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_suite_id: "Identifier", # required
    #     test_configuration_id: "Identifier",
    #     client_token: "IdempotencyTokenString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_test_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_run_id: "Identifier", # required
    #     test_run_status: "Success" # One of: ["Success", "Running", "Failed", "Deleting"], # required
    #   }
    # @return [Types::StartTestRunResponse]
    def start_test_run(params = {}, options = {})
      request = build_request(:start_test_run, params)
      request.send_request(options)
    end

    # <p>Specifies tags of a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tag resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Untags a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Updates a test case.</p>
    # @param [Hash, Types::UpdateTestCaseRequest] params
    # @option params [String] :test_case_id
    #   <p>The test case ID of the test case.</p>
    # @option params [String] :description
    #   <p>The description of the test case.</p>
    # @option params [Array<Types::Step>] :steps
    #   <p>The steps of the test case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_case_id: "Identifier", # required
    #     description: "ResourceDescription",
    #     steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_test_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_case_id: "Identifier", # required
    #     test_case_version: 1, # required
    #   }
    # @return [Types::UpdateTestCaseResponse]
    def update_test_case(params = {}, options = {})
      request = build_request(:update_test_case, params)
      request.send_request(options)
    end

    # <p>Updates a test configuration.</p>
    # @param [Hash, Types::UpdateTestConfigurationRequest] params
    # @option params [String] :test_configuration_id
    #   <p>The test configuration ID of the test configuration.</p>
    # @option params [String] :description
    #   <p>The description of the test configuration.</p>
    # @option params [Array<Types::Resource>] :resources
    #   <p>The resources of the test configuration.</p>
    # @option params [Hash<String, String>] :properties
    #   <p>The properties of the test configuration.</p>
    # @option params [Types::ServiceSettings] :service_settings
    #   <p>The service settings of the test configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_configuration_id: "Identifier", # required
    #     description: "ResourceDescription",
    #     resources: [
    #       {
    #         name: "ResourceName", # required
    #         type: { # required
    #           # One of:
    #           cloud_formation: {
    #             template_location: "S3Uri", # required
    #             parameters: {
    #               "String" => "String"
    #             }
    #           },
    #           m2_managed_application: {
    #             application_id: "Variable", # required
    #             runtime: "MicroFocus" # One of: ["MicroFocus"], # required
    #             vpc_endpoint_service_name: "Variable",
    #             listener_port: "Variable"
    #           },
    #           m2_non_managed_application: {
    #             vpc_endpoint_service_name: "Variable", # required
    #             listener_port: "Variable", # required
    #             runtime: "BluAge" # One of: ["BluAge"], # required
    #             web_app_name: "Variable"
    #           }
    #         }
    #       }
    #     ],
    #     properties: {
    #       "String" => "String"
    #     },
    #     service_settings: {
    #       kms_key_id: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_test_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_configuration_id: "Identifier", # required
    #     test_configuration_version: 1, # required
    #   }
    # @return [Types::UpdateTestConfigurationResponse]
    def update_test_configuration(params = {}, options = {})
      request = build_request(:update_test_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a test suite.</p>
    # @param [Hash, Types::UpdateTestSuiteRequest] params
    # @option params [String] :test_suite_id
    #   <p>The test suite ID of the test suite.</p>
    # @option params [String] :description
    #   <p>The description of the test suite.</p>
    # @option params [Array<Types::Step>] :before_steps
    #   <p>The before steps for the test suite.</p>
    # @option params [Array<Types::Step>] :after_steps
    #   <p>The after steps of the test suite.</p>
    # @option params [Types::TestCases] :test_cases
    #   <p>The test cases in the test suite.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     test_suite_id: "Identifier", # required
    #     description: "ResourceDescription",
    #     before_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     after_steps: [
    #       {
    #         name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         action: { # required
    #           # One of:
    #           resource_action: {
    #             # One of:
    #             m2_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #               properties: {
    #                 force_stop: false,
    #                 import_data_set_location: "Variable"
    #               }
    #             },
    #             m2_non_managed_application_action: {
    #               resource: "Variable", # required
    #               action_type: "Configure" # One of: ["Configure", "Deconfigure"], # required
    #             },
    #             cloud_formation_action: {
    #               resource: "Variable", # required
    #               action_type: "Create" # One of: ["Create", "Delete"]
    #             }
    #           },
    #           mainframe_action: {
    #             resource: "Variable", # required
    #             action_type: { # required
    #               # One of:
    #               batch: {
    #                 batch_job_name: "Variable", # required
    #                 batch_job_parameters: {
    #                   "String" => "String"
    #                 },
    #                 export_data_set_names: ["String100"]
    #               },
    #               tn3270: {
    #                 script: { # required
    #                   script_location: "S3Uri", # required
    #                   type: "Selenium" # One of: ["Selenium"], # required
    #                 },
    #                 export_data_set_names: ["String100"]
    #               }
    #             },
    #             properties: {
    #               dms_task_arn: "Variable"
    #             }
    #           },
    #           compare_action: {
    #             input: { # required
    #               # One of:
    #               file: {
    #                 source_location: "Variable", # required
    #                 target_location: "Variable", # required
    #                 file_metadata: { # required
    #                   # One of:
    #                   data_sets: [
    #                     {
    #                       type: "PS" # One of: ["PS"], # required
    #                       name: "String100", # required
    #                       ccsid: "String50", # required
    #                       format: "FIXED" # One of: ["FIXED", "VARIABLE", "LINE_SEQUENTIAL"], # required
    #                       length: 1, # required
    #                     }
    #                   ],
    #                   database_cdc: {
    #                     source_metadata: { # required
    #                       type: "z/OS-DB2" # One of: ["z/OS-DB2"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     },
    #                     target_metadata: { # required
    #                       type: "PostgreSQL" # One of: ["PostgreSQL"], # required
    #                       capture_tool: "Precisely" # One of: ["Precisely", "AWS DMS"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             output: {
    #               # One of:
    #               file: {
    #                 file_location: "S3Uri"
    #               }
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     test_cases: {
    #       # One of:
    #       sequential: ["Identifier"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_test_suite(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_suite_id: "Identifier", # required
    #     test_suite_version: 1
    #   }
    # @return [Types::UpdateTestSuiteResponse]
    def update_test_suite(params = {}, options = {})
      request = build_request(:update_test_suite, params)
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
      context[:gem_name] = 'aws-sdk-apptest'
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

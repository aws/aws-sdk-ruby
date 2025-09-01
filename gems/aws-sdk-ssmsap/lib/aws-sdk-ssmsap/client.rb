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
require 'aws-sdk-core/plugins/rest_json'

module Aws::SsmSap
  # An API client for Aws::SsmSap.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SsmSap

    add_plugin(::Aws::SsmSap::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJson)

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
    # @option options [Aws::SsmSap::EndpointProvider] :endpoint_provider
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

    # <p>Removes permissions associated with the target database.</p>
    # @param [Hash, Types::DeleteResourcePermissionOperationInput] params
    # @option params [String] :action_type
    #   <p>Delete or restore the permissions on the target database.</p>
    # @option params [String] :source_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the source resource.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: "RESTORE" # One of: ["RESTORE"],
    #     source_resource_arn: "Arn",
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String"
    #   }
    # @return [Types::DeleteResourcePermissionOperationOutput]
    def delete_resource_permission(params = {}, options = {})
      request = build_request(:delete_resource_permission, params)
      request.send_request(options)
    end

    # <p>Deregister an SAP application with AWS Systems Manager for SAP. This action does not
    #          aﬀect the existing setup of your SAP workloads on Amazon EC2.</p>
    # @param [Hash, Types::DeregisterApplicationOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.deregister_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterApplicationOperationOutput]
    def deregister_application(params = {}, options = {})
      request = build_request(:deregister_application, params)
      request.send_request(options)
    end

    # <p>Gets an application registered with AWS Systems Manager for SAP. It also returns the
    #          components of the application.</p>
    # @param [Hash, Types::GetApplicationOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :application_arn
    #   <p>The Amazon Resource Name (ARN) of the application. </p>
    # @option params [String] :app_registry_arn
    #   <p>The Amazon Resource Name (ARN) of the application registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId",
    #     application_arn: "SsmSapArn",
    #     app_registry_arn: "AppRegistryArn"
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       id: "ApplicationId",
    #       type: "HANA" # One of: ["HANA", "SAP_ABAP"],
    #       arn: "SsmSapArn",
    #       app_registry_arn: "AppRegistryArn",
    #       status: "ACTIVATED" # One of: ["ACTIVATED", "STARTING", "STOPPED", "STOPPING", "FAILED", "REGISTERING", "DELETING", "UNKNOWN"],
    #       discovery_status: "SUCCESS" # One of: ["SUCCESS", "REGISTRATION_FAILED", "REFRESH_FAILED", "REGISTERING", "DELETING"],
    #       components: ["ComponentId"],
    #       last_updated: Time.now,
    #       status_message: "String",
    #       associated_application_arns: ["SsmSapArn"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetApplicationOperationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Gets the component of an application registered with AWS Systems Manager for
    #          SAP.</p>
    # @param [Hash, Types::GetComponentOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :component_id
    #   <p>The ID of the component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     component_id: "ComponentId", # required
    #   }
    #   options = {}
    #   response = client.get_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: {
    #       component_id: "ComponentId",
    #       sid: "SID",
    #       system_number: "SAPInstanceNumber",
    #       parent_component: "ComponentId",
    #       child_components: ["ComponentId"],
    #       application_id: "ApplicationId",
    #       component_type: "HANA" # One of: ["HANA", "HANA_NODE", "ABAP", "ASCS", "DIALOG", "WEBDISP", "WD", "ERS"],
    #       status: "ACTIVATED" # One of: ["ACTIVATED", "STARTING", "STOPPED", "STOPPING", "RUNNING", "RUNNING_WITH_ERROR", "UNDEFINED"],
    #       sap_hostname: "String",
    #       sap_feature: "String",
    #       sap_kernel_version: "String",
    #       hdb_version: "String",
    #       resilience: {
    #         hsr_tier: "String",
    #         hsr_replication_mode: "PRIMARY" # One of: ["PRIMARY", "NONE", "SYNC", "SYNCMEM", "ASYNC"],
    #         hsr_operation_mode: "PRIMARY" # One of: ["PRIMARY", "LOGREPLAY", "DELTA_DATASHIPPING", "LOGREPLAY_READACCESS", "NONE"],
    #         cluster_status: "ONLINE" # One of: ["ONLINE", "STANDBY", "MAINTENANCE", "OFFLINE", "NONE"],
    #         enqueue_replication: false
    #       },
    #       associated_host: {
    #         hostname: "String",
    #         ec2_instance_id: "String",
    #         ip_addresses: [
    #           {
    #             ip_address: "String",
    #             primary: false,
    #             allocation_type: "VPC_SUBNET" # One of: ["VPC_SUBNET", "ELASTIC_IP", "OVERLAY", "UNKNOWN"]
    #           }
    #         ],
    #         os_version: "String"
    #       },
    #       databases: ["DatabaseId"],
    #       hosts: [
    #         {
    #           host_name: "String",
    #           host_ip: "String",
    #           ec2_instance_id: "String",
    #           instance_id: "String",
    #           host_role: "LEADER" # One of: ["LEADER", "WORKER", "STANDBY", "UNKNOWN"],
    #           os_version: "String"
    #         }
    #       ],
    #       primary_host: "String",
    #       database_connection: {
    #         database_connection_method: "DIRECT" # One of: ["DIRECT", "OVERLAY"],
    #         database_arn: "SsmSapArn",
    #         connection_ip: "String"
    #       },
    #       last_updated: Time.now,
    #       arn: "SsmSapArn"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetComponentOperationOutput]
    def get_component(params = {}, options = {})
      request = build_request(:get_component, params)
      request.send_request(options)
    end

    # <p>Gets the SAP HANA database of an application registered with AWS Systems Manager for
    #          SAP.</p>
    # @param [Hash, Types::GetDatabaseOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :component_id
    #   <p>The ID of the component.</p>
    # @option params [String] :database_id
    #   <p>The ID of the database.</p>
    # @option params [String] :database_arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId",
    #     component_id: "ComponentId",
    #     database_id: "DatabaseId",
    #     database_arn: "SsmSapArn"
    #   }
    #   options = {}
    #   response = client.get_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database: {
    #       application_id: "ApplicationId",
    #       component_id: "ComponentId",
    #       credentials: [
    #         {
    #           database_name: "DatabaseName", # required
    #           credential_type: "ADMIN" # One of: ["ADMIN"], # required
    #           secret_id: "SecretId", # required
    #         }
    #       ],
    #       database_id: "DatabaseId",
    #       database_name: "String",
    #       database_type: "SYSTEM" # One of: ["SYSTEM", "TENANT"],
    #       arn: "SsmSapArn",
    #       status: "RUNNING" # One of: ["RUNNING", "STARTING", "STOPPED", "WARNING", "UNKNOWN", "ERROR"],
    #       primary_host: "String",
    #       sql_port: 1,
    #       last_updated: Time.now,
    #       connected_component_arns: ["SsmSapArn"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDatabaseOperationOutput]
    def get_database(params = {}, options = {})
      request = build_request(:get_database, params)
      request.send_request(options)
    end

    # <p>Gets the details of an operation by specifying the operation ID.</p>
    # @param [Hash, Types::GetOperationOperationInput] params
    # @option params [String] :operation_id
    #   <p>The ID of the operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_id: "OperationId", # required
    #   }
    #   options = {}
    #   response = client.get_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "OperationId",
    #       type: "OperationType",
    #       status: "INPROGRESS" # One of: ["INPROGRESS", "SUCCESS", "ERROR"],
    #       status_message: "String",
    #       properties: {
    #         "String" => "String"
    #       },
    #       resource_type: "ResourceType",
    #       resource_id: "ResourceId",
    #       resource_arn: "Arn",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::GetOperationOperationOutput]
    def get_operation(params = {}, options = {})
      request = build_request(:get_operation, params)
      request.send_request(options)
    end

    # <p>Gets permissions associated with the target database.</p>
    # @param [Hash, Types::GetResourcePermissionOperationInput] params
    # @option params [String] :action_type
    #   <p/>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: "RESTORE" # One of: ["RESTORE"],
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String"
    #   }
    # @return [Types::GetResourcePermissionOperationOutput]
    def get_resource_permission(params = {}, options = {})
      request = build_request(:get_resource_permission, params)
      request.send_request(options)
    end

    # <p>Lists all the applications registered with AWS Systems Manager for SAP.</p>
    # @param [Hash, Types::ListApplicationsOperationInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filter of name, value, and operator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         value: "FilterValue", # required
    #         operator: "Equals" # One of: ["Equals", "GreaterThanOrEquals", "LessThanOrEquals"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         id: "ApplicationId",
    #         discovery_status: "SUCCESS" # One of: ["SUCCESS", "REGISTRATION_FAILED", "REFRESH_FAILED", "REGISTERING", "DELETING"],
    #         type: "HANA" # One of: ["HANA", "SAP_ABAP"],
    #         arn: "SsmSapArn",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsOperationOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists all the components registered with AWS Systems Manager for SAP.</p>
    # @param [Hash, Types::ListComponentsOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value.</p>
    #            <p>If you do not specify a value for MaxResults, the request returns 50 items per page by
    #            default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     components: [
    #       {
    #         application_id: "ApplicationId",
    #         component_id: "ComponentId",
    #         component_type: "HANA" # One of: ["HANA", "HANA_NODE", "ABAP", "ASCS", "DIALOG", "WEBDISP", "WD", "ERS"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         arn: "SsmSapArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComponentsOperationOutput]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p>Lists the SAP HANA databases of an application registered with AWS Systems Manager for
    #          SAP.</p>
    # @param [Hash, Types::ListDatabasesOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :component_id
    #   <p>The ID of the component.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value. If you do not specify a value
    #            for MaxResults, the request returns 50 items per page by default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId",
    #     component_id: "ComponentId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     databases: [
    #       {
    #         application_id: "ApplicationId",
    #         component_id: "ComponentId",
    #         database_id: "DatabaseId",
    #         database_type: "SYSTEM" # One of: ["SYSTEM", "TENANT"],
    #         arn: "SsmSapArn",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatabasesOperationOutput]
    def list_databases(params = {}, options = {})
      request = build_request(:list_databases, params)
      request.send_request(options)
    end

    # <p>Returns a list of operations events.</p>
    #          <p>Available parameters include <code>OperationID</code>, as well as optional parameters
    #             <code>MaxResults</code>, <code>NextToken</code>, and <code>Filters</code>.</p>
    # @param [Hash, Types::ListOperationEventsInput] params
    # @option params [String] :operation_id
    #   <p>The ID of the operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value.</p>
    #            <p>If you do not specify a value for <code>MaxResults</code>, the request returns 50 items
    #            per page by default.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Optionally specify filters to narrow the returned operation event items.</p>
    #            <p>Valid filter names include <code>status</code>, <code>resourceID</code>, and
    #               <code>resourceType</code>. The valid operator for all three filters is
    #               <code>Equals</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_id: "OperationId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         value: "FilterValue", # required
    #         operator: "Equals" # One of: ["Equals", "GreaterThanOrEquals", "LessThanOrEquals"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_operation_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_events: [
    #       {
    #         description: "String",
    #         resource: {
    #           resource_arn: "Arn",
    #           resource_type: "OperationEventResourceType"
    #         },
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #         status_message: "String",
    #         timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOperationEventsOutput]
    def list_operation_events(params = {}, options = {})
      request = build_request(:list_operation_events, params)
      request.send_request(options)
    end

    # <p>Lists the operations performed by AWS Systems Manager for SAP.</p>
    # @param [Hash, Types::ListOperationsOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #            results, make another call with the returned nextToken value. If you do not specify a value
    #            for MaxResults, the request returns 50 items per page by default.</p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results. </p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filters of an operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         value: "FilterValue", # required
    #         operator: "Equals" # One of: ["Equals", "GreaterThanOrEquals", "LessThanOrEquals"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "OperationId",
    #         type: "OperationType",
    #         status: "INPROGRESS" # One of: ["INPROGRESS", "SUCCESS", "ERROR"],
    #         status_message: "String",
    #         properties: {
    #           "String" => "String"
    #         },
    #         resource_type: "ResourceType",
    #         resource_id: "ResourceId",
    #         resource_arn: "Arn",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOperationsOperationOutput]
    def list_operations(params = {}, options = {})
      request = build_request(:list_operations, params)
      request.send_request(options)
    end

    # <p>Lists all tags on an SAP HANA application and/or database registered with AWS Systems
    #          Manager for SAP.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SsmSapArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds permissions to the target database.</p>
    # @param [Hash, Types::PutResourcePermissionOperationInput] params
    # @option params [String] :action_type
    #   <p/>
    # @option params [String] :source_resource_arn
    #   <p/>
    # @option params [String] :resource_arn
    #   <p/>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: "RESTORE" # One of: ["RESTORE"], # required
    #     source_resource_arn: "Arn", # required
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.put_resource_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "String"
    #   }
    # @return [Types::PutResourcePermissionOperationOutput]
    def put_resource_permission(params = {}, options = {})
      request = build_request(:put_resource_permission, params)
      request.send_request(options)
    end

    # <p>Register an SAP application with AWS Systems Manager for SAP. You must meet the
    #          following requirements before registering. </p>
    #          <p>The SAP application you want to register with AWS Systems Manager for SAP is running
    #          on Amazon EC2.</p>
    #          <p>AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the required
    #          IAM permissions.</p>
    #          <p>Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets Manager to
    #          manage SAP applications and components.</p>
    # @param [Hash, Types::RegisterApplicationOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :application_type
    #   <p>The type of the application.</p>
    # @option params [Array<String>] :instances
    #   <p>The Amazon EC2 instances on which your SAP application is running.</p>
    # @option params [String] :sap_instance_number
    #   <p>The SAP instance number of the application.</p>
    # @option params [String] :sid
    #   <p>The System ID of the application.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be attached to the SAP application.</p>
    # @option params [Array<Types::ApplicationCredential>] :credentials
    #   <p>The credentials of the SAP application.</p>
    # @option params [String] :database_arn
    #   <p>The Amazon Resource Name of the SAP HANA database.</p>
    # @option params [Array<Types::ComponentInfo>] :components_info
    #   <p>This is an optional parameter for component details 
    #            to which the SAP ABAP application is attached, 
    #            such as Web Dispatcher.</p>
    #            <p>This is an array of ApplicationComponent objects. 
    #            You may input 0 to 5 items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     application_type: "HANA" # One of: ["HANA", "SAP_ABAP"], # required
    #     instances: ["InstanceId"], # required
    #     sap_instance_number: "SAPInstanceNumber",
    #     sid: "SID",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     credentials: [
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN" # One of: ["ADMIN"], # required
    #         secret_id: "SecretId", # required
    #       }
    #     ],
    #     database_arn: "SsmSapArn",
    #     components_info: [
    #       {
    #         component_type: "HANA" # One of: ["HANA", "HANA_NODE", "ABAP", "ASCS", "DIALOG", "WEBDISP", "WD", "ERS"], # required
    #         sid: "SID", # required
    #         ec2_instance_id: "InstanceId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       id: "ApplicationId",
    #       type: "HANA" # One of: ["HANA", "SAP_ABAP"],
    #       arn: "SsmSapArn",
    #       app_registry_arn: "AppRegistryArn",
    #       status: "ACTIVATED" # One of: ["ACTIVATED", "STARTING", "STOPPED", "STOPPING", "FAILED", "REGISTERING", "DELETING", "UNKNOWN"],
    #       discovery_status: "SUCCESS" # One of: ["SUCCESS", "REGISTRATION_FAILED", "REFRESH_FAILED", "REGISTERING", "DELETING"],
    #       components: ["ComponentId"],
    #       last_updated: Time.now,
    #       status_message: "String",
    #       associated_application_arns: ["SsmSapArn"]
    #     },
    #     operation_id: "OperationId"
    #   }
    # @return [Types::RegisterApplicationOperationOutput]
    def register_application(params = {}, options = {})
      request = build_request(:register_application, params)
      request.send_request(options)
    end

    # <p>Request is an operation which starts an application.</p>
    #          <p>Parameter <code>ApplicationId</code> is required.</p>
    # @param [Hash, Types::StartApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.start_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::StartApplicationOutput]
    def start_application(params = {}, options = {})
      request = build_request(:start_application, params)
      request.send_request(options)
    end

    # <p>Refreshes a registered application.</p>
    # @param [Hash, Types::StartApplicationRefreshInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.start_application_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::StartApplicationRefreshOutput]
    def start_application_refresh(params = {}, options = {})
      request = build_request(:start_application_refresh, params)
      request.send_request(options)
    end

    # <p>Request is an operation to stop an application.</p>
    #          <p>Parameter <code>ApplicationId</code> is required. Parameters
    #             <code>StopConnectedEntity</code> and <code>IncludeEc2InstanceShutdown</code> are
    #          optional.</p>
    # @param [Hash, Types::StopApplicationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [String] :stop_connected_entity
    #   <p>Specify the <code>ConnectedEntityType</code>. Accepted type is <code>DBMS</code>.</p>
    #            <p>If this parameter is included, the connected DBMS (Database Management System) will be
    #            stopped.</p>
    # @option params [Boolean] :include_ec2_instance_shutdown
    #   <p>Boolean. If included and if set to <code>True</code>, the StopApplication operation will
    #            shut down the associated Amazon EC2 instance in addition to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     stop_connected_entity: "DBMS" # One of: ["DBMS"],
    #     include_ec2_instance_shutdown: false
    #   }
    #   options = {}
    #   response = client.stop_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::StopApplicationOutput]
    def stop_application(params = {}, options = {})
      request = build_request(:stop_application, params)
      request.send_request(options)
    end

    # <p>Creates tag for a resource by specifying the ARN.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags on a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SsmSapArn", # required
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

    # <p>Delete the tags for a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Adds/updates or removes credentials for applications registered with AWS Systems
    #            Manager for SAP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "SsmSapArn", # required
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

    # <p>Updates the settings of an application registered with AWS Systems Manager for
    #          SAP.</p>
    # @param [Hash, Types::UpdateApplicationSettingsOperationInput] params
    # @option params [String] :application_id
    #   <p>The ID of the application.</p>
    # @option params [Array<Types::ApplicationCredential>] :credentials_to_add_or_update
    #   <p>The credentials to be added or updated.</p>
    # @option params [Array<Types::ApplicationCredential>] :credentials_to_remove
    #   <p>The credentials to be removed.</p>
    # @option params [Types::BackintConfig] :backint
    #   <p>Installation of AWS Backint Agent for SAP HANA.</p>
    # @option params [String] :database_arn
    #   <p>The Amazon Resource Name of the SAP HANA database that replaces the current SAP HANA
    #            connection with the SAP_ABAP application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     credentials_to_add_or_update: [
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN" # One of: ["ADMIN"], # required
    #         secret_id: "SecretId", # required
    #       }
    #     ],
    #     credentials_to_remove: [
    #       {
    #         database_name: "DatabaseName", # required
    #         credential_type: "ADMIN" # One of: ["ADMIN"], # required
    #         secret_id: "SecretId", # required
    #       }
    #     ],
    #     backint: {
    #       backint_mode: "AWSBackup" # One of: ["AWSBackup"], # required
    #       ensure_no_backup_in_process: false, # required
    #     },
    #     database_arn: "SsmSapArn"
    #   }
    #   options = {}
    #   response = client.update_application_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String",
    #     operation_ids: ["OperationId"]
    #   }
    # @return [Types::UpdateApplicationSettingsOperationOutput]
    def update_application_settings(params = {}, options = {})
      request = build_request(:update_application_settings, params)
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
      context[:gem_name] = 'aws-sdk-ssmsap'
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

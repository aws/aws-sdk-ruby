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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::SMS
  # An API client for Aws::SMS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSServerMigrationServiceV20161024

    add_plugin(::Aws::SMS::Plugins::Endpoint)
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SMS::EndpointProvider)
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

    # <p>Creates an application. An application consists of one or more server groups. Each
    #             server group contain one or more servers.</p>
    # @param [Hash, Types::CreateAppRequest] params
    # @option params [String] :name
    #   <p>The name of the new application.</p>
    # @option params [String] :description
    #   <p>The description of the new application</p>
    # @option params [String] :role_name
    #   <p>The name of the service role in the customer's account to be used by Server Migration Service.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of
    #               application creation.</p>
    # @option params [Array<Types::ServerGroup>] :server_groups
    #   <p>The server groups to include in the application.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be associated with the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppName",
    #     description: "AppDescription",
    #     role_name: "RoleName",
    #     client_token: "ClientToken",
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId"
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #               vm_path: "VmPath"
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_summary: {
    #       app_id: "AppId",
    #       imported_app_id: "ImportedAppId",
    #       name: "AppName",
    #       description: "AppDescription",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #       status_message: "AppStatusMessage",
    #       replication_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #       replication_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"],
    #       replication_status_message: "AppReplicationStatusMessage",
    #       latest_replication_time: Time.now,
    #       launch_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #       launch_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"],
    #       launch_status_message: "AppLaunchStatusMessage",
    #       launch_details: {
    #         latest_launch_time: Time.now,
    #         stack_name: "StackName",
    #         stack_id: "StackId"
    #       },
    #       creation_time: Time.now,
    #       last_modified: Time.now,
    #       role_name: "RoleName",
    #       total_server_groups: 1,
    #       total_servers: 1
    #     },
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId"
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #               vm_path: "VmPath"
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::CreateAppResponse]
    def create_app(params = {}, options = {})
      request = build_request(:create_app, params)
      request.send_request(options)
    end

    # <p>Creates a replication job. The replication job schedules periodic replication runs
    #             to replicate your server to Amazon Web Services. Each replication run creates an Amazon Machine Image
    #             (AMI).</p>
    # @param [Hash, Types::CreateReplicationJobRequest] params
    # @option params [String] :server_id
    #   <p>The ID of the server.</p>
    # @option params [Time] :seed_replication_time
    #   <p>The seed replication time.</p>
    # @option params [Integer] :frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    # @option params [Boolean] :run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    # @option params [String] :license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    # @option params [String] :role_name
    #   <p>The name of the IAM role to be used by the Server Migration Service.</p>
    # @option params [String] :description
    #   <p>The description of the replication job.</p>
    # @option params [Integer] :number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    # @option params [Boolean] :encrypted
    #   <p>Indicates whether the replication job produces encrypted AMIs.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_id: "ServerId", # required
    #     seed_replication_time: Time.now, # required
    #     frequency: 1,
    #     run_once: false,
    #     license_type: "AWS" # One of: ["AWS", "BYOL"],
    #     role_name: "RoleName",
    #     description: "Description",
    #     number_of_recent_amis_to_keep: 1,
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.create_replication_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_job_id: "ReplicationJobId"
    #   }
    # @return [Types::CreateReplicationJobResponse]
    def create_replication_job(params = {}, options = {})
      request = build_request(:create_replication_job, params)
      request.send_request(options)
    end

    # <p>Deletes the specified application. Optionally deletes the launched stack associated with
    #             the application and all Server Migration Service replication jobs for servers in the application.</p>
    # @param [Hash, Types::DeleteAppRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [Boolean] :force_stop_app_replication
    #   <p>Indicates whether to stop all replication jobs corresponding to the servers
    #               in the application while deleting the application.</p>
    # @option params [Boolean] :force_terminate_app
    #   <p>Indicates whether to terminate the stack corresponding to the
    #               application while deleting the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId",
    #     force_stop_app_replication: false,
    #     force_terminate_app: false
    #   }
    #   options = {}
    #   response = client.delete_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppResponse]
    def delete_app(params = {}, options = {})
      request = build_request(:delete_app, params)
      request.send_request(options)
    end

    # <p>Deletes the launch configuration for the specified application.</p>
    # @param [Hash, Types::DeleteAppLaunchConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.delete_app_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppLaunchConfigurationResponse]
    def delete_app_launch_configuration(params = {}, options = {})
      request = build_request(:delete_app_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the replication configuration for the specified application.</p>
    # @param [Hash, Types::DeleteAppReplicationConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.delete_app_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppReplicationConfigurationResponse]
    def delete_app_replication_configuration(params = {}, options = {})
      request = build_request(:delete_app_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the validation configuration for the specified application.</p>
    # @param [Hash, Types::DeleteAppValidationConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppIdWithValidation", # required
    #   }
    #   options = {}
    #   response = client.delete_app_validation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppValidationConfigurationResponse]
    def delete_app_validation_configuration(params = {}, options = {})
      request = build_request(:delete_app_validation_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified replication job.</p>
    #          <p>After you delete a replication job, there are no further replication runs. Amazon Web Services
    #             deletes the contents of the Amazon S3 bucket used to store Server Migration Service artifacts. The AMIs created
    #             by the replication runs are not deleted.</p>
    # @param [Hash, Types::DeleteReplicationJobRequest] params
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_job_id: "ReplicationJobId", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReplicationJobResponse]
    def delete_replication_job(params = {}, options = {})
      request = build_request(:delete_replication_job, params)
      request.send_request(options)
    end

    # <p>Deletes all servers from your server catalog.</p>
    # @param [Hash, Types::DeleteServerCatalogRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_server_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServerCatalogResponse]
    def delete_server_catalog(params = {}, options = {})
      request = build_request(:delete_server_catalog, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified connector from Server Migration Service.</p>
    #          <p>After you disassociate a connector, it is no longer available to support
    #             replication jobs.</p>
    # @param [Hash, Types::DisassociateConnectorRequest] params
    # @option params [String] :connector_id
    #   <p>The ID of the connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateConnectorResponse]
    def disassociate_connector(params = {}, options = {})
      request = build_request(:disassociate_connector, params)
      request.send_request(options)
    end

    # <p>Generates a target change set for a currently launched stack and writes it to an Amazon S3
    #             object in the customer’s Amazon S3 bucket.</p>
    # @param [Hash, Types::GenerateChangeSetRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application associated with the change set.</p>
    # @option params [String] :changeset_format
    #   <p>The format for the change set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId",
    #     changeset_format: "JSON" # One of: ["JSON", "YAML"]
    #   }
    #   options = {}
    #   response = client.generate_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_location: {
    #       bucket: "S3BucketName",
    #       key: "S3KeyName"
    #     }
    #   }
    # @return [Types::GenerateChangeSetResponse]
    def generate_change_set(params = {}, options = {})
      request = build_request(:generate_change_set, params)
      request.send_request(options)
    end

    # <p>Generates an CloudFormation template based on the current launch configuration and writes it to
    #             an Amazon S3 object in the customer’s Amazon S3 bucket.</p>
    # @param [Hash, Types::GenerateTemplateRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application associated with the CloudFormation template.</p>
    # @option params [String] :template_format
    #   <p>The format for generating the CloudFormation template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId",
    #     template_format: "JSON" # One of: ["JSON", "YAML"]
    #   }
    #   options = {}
    #   response = client.generate_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_location: {
    #       bucket: "S3BucketName",
    #       key: "S3KeyName"
    #     }
    #   }
    # @return [Types::GenerateTemplateResponse]
    def generate_template(params = {}, options = {})
      request = build_request(:generate_template, params)
      request.send_request(options)
    end

    # <p>Retrieve information about the specified application.</p>
    # @param [Hash, Types::GetAppRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.get_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_summary: {
    #       app_id: "AppId",
    #       imported_app_id: "ImportedAppId",
    #       name: "AppName",
    #       description: "AppDescription",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #       status_message: "AppStatusMessage",
    #       replication_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #       replication_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"],
    #       replication_status_message: "AppReplicationStatusMessage",
    #       latest_replication_time: Time.now,
    #       launch_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #       launch_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"],
    #       launch_status_message: "AppLaunchStatusMessage",
    #       launch_details: {
    #         latest_launch_time: Time.now,
    #         stack_name: "StackName",
    #         stack_id: "StackId"
    #       },
    #       creation_time: Time.now,
    #       last_modified: Time.now,
    #       role_name: "RoleName",
    #       total_server_groups: 1,
    #       total_servers: 1
    #     },
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId"
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #               vm_path: "VmPath"
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::GetAppResponse]
    def get_app(params = {}, options = {})
      request = build_request(:get_app, params)
      request.send_request(options)
    end

    # <p>Retrieves the application launch configuration associated with the specified application.</p>
    # @param [Hash, Types::GetAppLaunchConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.get_app_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "AppId",
    #     role_name: "RoleName",
    #     auto_launch: false,
    #     server_group_launch_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         launch_order: 1,
    #         server_launch_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId"
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #                 vm_path: "VmPath"
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false
    #             },
    #             logical_id: "LogicalId",
    #             vpc: "VPC",
    #             subnet: "Subnet",
    #             security_group: "SecurityGroup",
    #             ec2_key_name: "EC2KeyName",
    #             user_data: {
    #               s3_location: {
    #                 bucket: "S3BucketName",
    #                 key: "S3KeyName"
    #               }
    #             },
    #             instance_type: "InstanceType",
    #             associate_public_ip_address: false,
    #             iam_instance_profile_name: "RoleName",
    #             configure_script: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName"
    #             },
    #             configure_script_type: "SHELL_SCRIPT" # One of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetAppLaunchConfigurationResponse]
    def get_app_launch_configuration(params = {}, options = {})
      request = build_request(:get_app_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the application replication configuration associated with the specified
    #             application.</p>
    # @param [Hash, Types::GetAppReplicationConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.get_app_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_group_replication_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_replication_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId"
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #                 vm_path: "VmPath"
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false
    #             },
    #             server_replication_parameters: {
    #               seed_time: Time.now,
    #               frequency: 1,
    #               run_once: false,
    #               license_type: "AWS" # One of: ["AWS", "BYOL"],
    #               number_of_recent_amis_to_keep: 1,
    #               encrypted: false,
    #               kms_key_id: "KmsKeyId"
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetAppReplicationConfigurationResponse]
    def get_app_replication_configuration(params = {}, options = {})
      request = build_request(:get_app_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a configuration for validating an application.</p>
    # @param [Hash, Types::GetAppValidationConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppIdWithValidation", # required
    #   }
    #   options = {}
    #   response = client.get_app_validation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_validation_configurations: [
    #       {
    #         validation_id: "ValidationId",
    #         name: "NonEmptyStringWithMaxLen255",
    #         app_validation_strategy: "SSM" # One of: ["SSM"],
    #         ssm_validation_parameters: {
    #           source: {
    #             s3_location: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName"
    #             }
    #           },
    #           instance_id: "InstanceId",
    #           script_type: "SHELL_SCRIPT" # One of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"],
    #           command: "Command",
    #           execution_timeout_seconds: 1,
    #           output_s3_bucket_name: "BucketName"
    #         }
    #       }
    #     ],
    #     server_group_validation_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_validation_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId"
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #                 vm_path: "VmPath"
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false
    #             },
    #             validation_id: "ValidationId",
    #             name: "NonEmptyStringWithMaxLen255",
    #             server_validation_strategy: "USERDATA" # One of: ["USERDATA"],
    #             user_data_validation_parameters: {
    #               source: {
    #                 s3_location: {
    #                   bucket: "S3BucketName",
    #                   key: "S3KeyName"
    #                 }
    #               },
    #               script_type: "SHELL_SCRIPT" # One of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetAppValidationConfigurationResponse]
    def get_app_validation_configuration(params = {}, options = {})
      request = build_request(:get_app_validation_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves output from validating an application.</p>
    # @param [Hash, Types::GetAppValidationOutputRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppIdWithValidation", # required
    #   }
    #   options = {}
    #   response = client.get_app_validation_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_output_list: [
    #       {
    #         validation_id: "ValidationId",
    #         name: "NonEmptyStringWithMaxLen255",
    #         status: "READY_FOR_VALIDATION" # One of: ["READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #         status_message: "ValidationStatusMessage",
    #         latest_validation_time: Time.now,
    #         app_validation_output: {
    #           ssm_output: {
    #             s3_location: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName"
    #             }
    #           }
    #         },
    #         server_validation_output: {
    #           server: {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId"
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #               vm_path: "VmPath"
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetAppValidationOutputResponse]
    def get_app_validation_output(params = {}, options = {})
      request = build_request(:get_app_validation_output, params)
      request.send_request(options)
    end

    # <p>Describes the connectors registered with the Server Migration Service.</p>
    # @param [Hash, Types::GetConnectorsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_list: [
    #       {
    #         connector_id: "ConnectorId",
    #         version: "ConnectorVersion",
    #         status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         capability_list: ["VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER", "SNAPSHOT_BATCHING", "SMS_OPTIMIZED"]],
    #         vm_manager_name: "VmManagerName",
    #         vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #         vm_manager_id: "VmManagerId",
    #         ip_address: "IpAddress",
    #         mac_address: "MacAddress",
    #         associated_on: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetConnectorsResponse]
    def get_connectors(params = {}, options = {})
      request = build_request(:get_connectors, params)
      request.send_request(options)
    end

    # <p>Describes the specified replication job or all of your replication jobs.</p>
    # @param [Hash, Types::GetReplicationJobsRequest] params
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_job_id: "ReplicationJobId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_replication_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_job_list: [
    #       {
    #         replication_job_id: "ReplicationJobId",
    #         server_id: "ServerId",
    #         server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #         vm_server: {
    #           vm_server_address: {
    #             vm_manager_id: "VmManagerId",
    #             vm_id: "VmId"
    #           },
    #           vm_name: "VmName",
    #           vm_manager_name: "VmManagerName",
    #           vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #           vm_path: "VmPath"
    #         },
    #         seed_replication_time: Time.now,
    #         frequency: 1,
    #         run_once: false,
    #         next_replication_run_start_time: Time.now,
    #         license_type: "AWS" # One of: ["AWS", "BYOL"],
    #         role_name: "RoleName",
    #         latest_ami_id: "AmiId",
    #         state: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"],
    #         status_message: "ReplicationJobStatusMessage",
    #         description: "Description",
    #         number_of_recent_amis_to_keep: 1,
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId",
    #         replication_run_list: [
    #           {
    #             replication_run_id: "ReplicationRunId",
    #             state: "PENDING" # One of: ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"],
    #             type: "ON_DEMAND" # One of: ["ON_DEMAND", "AUTOMATIC"],
    #             stage_details: {
    #               stage: "ReplicationRunStage",
    #               stage_progress: "ReplicationRunStageProgress"
    #             },
    #             status_message: "ReplicationRunStatusMessage",
    #             ami_id: "AmiId",
    #             scheduled_start_time: Time.now,
    #             completed_time: Time.now,
    #             description: "Description",
    #             encrypted: false,
    #             kms_key_id: "KmsKeyId"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetReplicationJobsResponse]
    def get_replication_jobs(params = {}, options = {})
      request = build_request(:get_replication_jobs, params)
      request.send_request(options)
    end

    # <p>Describes the replication runs for the specified replication job.</p>
    # @param [Hash, Types::GetReplicationRunsRequest] params
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_job_id: "ReplicationJobId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_replication_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_job: {
    #       replication_job_id: "ReplicationJobId",
    #       server_id: "ServerId",
    #       server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #       vm_server: {
    #         vm_server_address: {
    #           vm_manager_id: "VmManagerId",
    #           vm_id: "VmId"
    #         },
    #         vm_name: "VmName",
    #         vm_manager_name: "VmManagerName",
    #         vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #         vm_path: "VmPath"
    #       },
    #       seed_replication_time: Time.now,
    #       frequency: 1,
    #       run_once: false,
    #       next_replication_run_start_time: Time.now,
    #       license_type: "AWS" # One of: ["AWS", "BYOL"],
    #       role_name: "RoleName",
    #       latest_ami_id: "AmiId",
    #       state: "PENDING" # One of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"],
    #       status_message: "ReplicationJobStatusMessage",
    #       description: "Description",
    #       number_of_recent_amis_to_keep: 1,
    #       encrypted: false,
    #       kms_key_id: "KmsKeyId",
    #       replication_run_list: [
    #         {
    #           replication_run_id: "ReplicationRunId",
    #           state: "PENDING" # One of: ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"],
    #           type: "ON_DEMAND" # One of: ["ON_DEMAND", "AUTOMATIC"],
    #           stage_details: {
    #             stage: "ReplicationRunStage",
    #             stage_progress: "ReplicationRunStageProgress"
    #           },
    #           status_message: "ReplicationRunStatusMessage",
    #           ami_id: "AmiId",
    #           scheduled_start_time: Time.now,
    #           completed_time: Time.now,
    #           description: "Description",
    #           encrypted: false,
    #           kms_key_id: "KmsKeyId"
    #         }
    #       ]
    #     },
    #     replication_run_list: [
    #       {
    #         replication_run_id: "ReplicationRunId",
    #         state: "PENDING" # One of: ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"],
    #         type: "ON_DEMAND" # One of: ["ON_DEMAND", "AUTOMATIC"],
    #         stage_details: {
    #           stage: "ReplicationRunStage",
    #           stage_progress: "ReplicationRunStageProgress"
    #         },
    #         status_message: "ReplicationRunStatusMessage",
    #         ami_id: "AmiId",
    #         scheduled_start_time: Time.now,
    #         completed_time: Time.now,
    #         description: "Description",
    #         encrypted: false,
    #         kms_key_id: "KmsKeyId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetReplicationRunsResponse]
    def get_replication_runs(params = {}, options = {})
      request = build_request(:get_replication_runs, params)
      request.send_request(options)
    end

    # <p>Describes the servers in your server catalog.</p>
    #          <p>Before you can describe your servers, you must import them using <a>ImportServerCatalog</a>.</p>
    # @param [Hash, Types::GetServersRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    # @option params [Array<Types::VmServerAddress>] :vm_server_address_list
    #   <p>The server addresses.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     vm_server_address_list: [
    #       {
    #         vm_manager_id: "VmManagerId",
    #         vm_id: "VmId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_modified_on: Time.now,
    #     server_catalog_status: "NOT_IMPORTED" # One of: ["NOT_IMPORTED", "IMPORTING", "AVAILABLE", "DELETED", "EXPIRED"],
    #     server_list: [
    #       {
    #         server_id: "ServerId",
    #         server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #         vm_server: {
    #           vm_server_address: {
    #             vm_manager_id: "VmManagerId",
    #             vm_id: "VmId"
    #           },
    #           vm_name: "VmName",
    #           vm_manager_name: "VmManagerName",
    #           vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #           vm_path: "VmPath"
    #         },
    #         replication_job_id: "ReplicationJobId",
    #         replication_job_terminated: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetServersResponse]
    def get_servers(params = {}, options = {})
      request = build_request(:get_servers, params)
      request.send_request(options)
    end

    # <p>Allows application import from Migration Hub.</p>
    # @param [Hash, Types::ImportAppCatalogRequest] params
    # @option params [String] :role_name
    #   <p>The name of the service role. If you omit this parameter, we create a service-linked role
    #               for Migration Hub in your account. Otherwise, the role that you provide must have the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed">policy
    #                   and trust policy</a> described in the <i>Migration Hub User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "RoleName"
    #   }
    #   options = {}
    #   response = client.import_app_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ImportAppCatalogResponse]
    def import_app_catalog(params = {}, options = {})
      request = build_request(:import_app_catalog, params)
      request.send_request(options)
    end

    # <p>Gathers a complete list of on-premises servers. Connectors must be installed and
    #             monitoring all servers to import.</p>
    #          <p>This call returns immediately, but might take additional time to retrieve all the
    #             servers.</p>
    # @param [Hash, Types::ImportServerCatalogRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.import_server_catalog(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ImportServerCatalogResponse]
    def import_server_catalog(params = {}, options = {})
      request = build_request(:import_server_catalog, params)
      request.send_request(options)
    end

    # <p>Launches the specified application as a stack in CloudFormation.</p>
    # @param [Hash, Types::LaunchAppRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.launch_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::LaunchAppResponse]
    def launch_app(params = {}, options = {})
      request = build_request(:launch_app, params)
      request.send_request(options)
    end

    # <p>Retrieves summaries for all applications.</p>
    # @param [Hash, Types::ListAppsRequest] params
    # @option params [Array<String>] :app_ids
    #   <p>The unique application IDs.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 100. To
    #               retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_ids: ["AppId"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps: [
    #       {
    #         app_id: "AppId",
    #         imported_app_id: "ImportedAppId",
    #         name: "AppName",
    #         description: "AppDescription",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #         status_message: "AppStatusMessage",
    #         replication_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #         replication_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"],
    #         replication_status_message: "AppReplicationStatusMessage",
    #         latest_replication_time: Time.now,
    #         launch_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #         launch_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"],
    #         launch_status_message: "AppLaunchStatusMessage",
    #         launch_details: {
    #           latest_launch_time: Time.now,
    #           stack_name: "StackName",
    #           stack_id: "StackId"
    #         },
    #         creation_time: Time.now,
    #         last_modified: Time.now,
    #         role_name: "RoleName",
    #         total_server_groups: 1,
    #         total_servers: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppsResponse]
    def list_apps(params = {}, options = {})
      request = build_request(:list_apps, params)
      request.send_request(options)
    end

    # <p>Provides information to Server Migration Service about whether application validation is successful.</p>
    # @param [Hash, Types::NotifyAppValidationOutputRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [Types::NotificationContext] :notification_context
    #   <p>The notification information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppIdWithValidation", # required
    #     notification_context: {
    #       validation_id: "ValidationId",
    #       status: "READY_FOR_VALIDATION" # One of: ["READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #       status_message: "ValidationStatusMessage"
    #     }
    #   }
    #   options = {}
    #   response = client.notify_app_validation_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyAppValidationOutputResponse]
    def notify_app_validation_output(params = {}, options = {})
      request = build_request(:notify_app_validation_output, params)
      request.send_request(options)
    end

    # <p>Creates or updates the launch configuration for the specified application.</p>
    # @param [Hash, Types::PutAppLaunchConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [String] :role_name
    #   <p>The name of service role in the customer's account that CloudFormation uses to launch the
    #               application.</p>
    # @option params [Boolean] :auto_launch
    #   <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    # @option params [Array<Types::ServerGroupLaunchConfiguration>] :server_group_launch_configurations
    #   <p>Information about the launch configurations for server groups in the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId",
    #     role_name: "RoleName",
    #     auto_launch: false,
    #     server_group_launch_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         launch_order: 1,
    #         server_launch_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId"
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #                 vm_path: "VmPath"
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false
    #             },
    #             logical_id: "LogicalId",
    #             vpc: "VPC",
    #             subnet: "Subnet",
    #             security_group: "SecurityGroup",
    #             ec2_key_name: "EC2KeyName",
    #             user_data: {
    #               s3_location: {
    #                 bucket: "S3BucketName",
    #                 key: "S3KeyName"
    #               }
    #             },
    #             instance_type: "InstanceType",
    #             associate_public_ip_address: false,
    #             iam_instance_profile_name: "RoleName",
    #             configure_script: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName"
    #             },
    #             configure_script_type: "SHELL_SCRIPT" # One of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_app_launch_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAppLaunchConfigurationResponse]
    def put_app_launch_configuration(params = {}, options = {})
      request = build_request(:put_app_launch_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates the replication configuration for the specified application.</p>
    # @param [Hash, Types::PutAppReplicationConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [Array<Types::ServerGroupReplicationConfiguration>] :server_group_replication_configurations
    #   <p>Information about the replication configurations for server groups in the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId",
    #     server_group_replication_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_replication_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId"
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #                 vm_path: "VmPath"
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false
    #             },
    #             server_replication_parameters: {
    #               seed_time: Time.now,
    #               frequency: 1,
    #               run_once: false,
    #               license_type: "AWS" # One of: ["AWS", "BYOL"],
    #               number_of_recent_amis_to_keep: 1,
    #               encrypted: false,
    #               kms_key_id: "KmsKeyId"
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_app_replication_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAppReplicationConfigurationResponse]
    def put_app_replication_configuration(params = {}, options = {})
      request = build_request(:put_app_replication_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates a validation configuration for the specified application.</p>
    # @param [Hash, Types::PutAppValidationConfigurationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [Array<Types::AppValidationConfiguration>] :app_validation_configurations
    #   <p>The configuration for application validation.</p>
    # @option params [Array<Types::ServerGroupValidationConfiguration>] :server_group_validation_configurations
    #   <p>The configuration for instance validation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppIdWithValidation", # required
    #     app_validation_configurations: [
    #       {
    #         validation_id: "ValidationId",
    #         name: "NonEmptyStringWithMaxLen255",
    #         app_validation_strategy: "SSM" # One of: ["SSM"],
    #         ssm_validation_parameters: {
    #           source: {
    #             s3_location: {
    #               bucket: "S3BucketName",
    #               key: "S3KeyName"
    #             }
    #           },
    #           instance_id: "InstanceId",
    #           script_type: "SHELL_SCRIPT" # One of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"],
    #           command: "Command",
    #           execution_timeout_seconds: 1,
    #           output_s3_bucket_name: "BucketName"
    #         }
    #       }
    #     ],
    #     server_group_validation_configurations: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         server_validation_configurations: [
    #           {
    #             server: {
    #               server_id: "ServerId",
    #               server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: "VmManagerId",
    #                   vm_id: "VmId"
    #                 },
    #                 vm_name: "VmName",
    #                 vm_manager_name: "VmManagerName",
    #                 vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #                 vm_path: "VmPath"
    #               },
    #               replication_job_id: "ReplicationJobId",
    #               replication_job_terminated: false
    #             },
    #             validation_id: "ValidationId",
    #             name: "NonEmptyStringWithMaxLen255",
    #             server_validation_strategy: "USERDATA" # One of: ["USERDATA"],
    #             user_data_validation_parameters: {
    #               source: {
    #                 s3_location: {
    #                   bucket: "S3BucketName",
    #                   key: "S3KeyName"
    #                 }
    #               },
    #               script_type: "SHELL_SCRIPT" # One of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_app_validation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAppValidationConfigurationResponse]
    def put_app_validation_configuration(params = {}, options = {})
      request = build_request(:put_app_validation_configuration, params)
      request.send_request(options)
    end

    # <p>Starts replicating the specified application by creating replication jobs for each server in the
    #             application.</p>
    # @param [Hash, Types::StartAppReplicationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.start_app_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartAppReplicationResponse]
    def start_app_replication(params = {}, options = {})
      request = build_request(:start_app_replication, params)
      request.send_request(options)
    end

    # <p>Starts an on-demand replication run for the specified application.</p>
    # @param [Hash, Types::StartOnDemandAppReplicationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [String] :description
    #   <p>The description of the replication run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.start_on_demand_app_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartOnDemandAppReplicationResponse]
    def start_on_demand_app_replication(params = {}, options = {})
      request = build_request(:start_on_demand_app_replication, params)
      request.send_request(options)
    end

    # <p>Starts an on-demand replication run for the specified replication job. This
    #             replication run starts immediately. This replication run is in addition to the ones
    #             already scheduled.</p>
    #          <p>There is a limit on the number of on-demand replications runs that you can request
    #             in a 24-hour period.</p>
    # @param [Hash, Types::StartOnDemandReplicationRunRequest] params
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    # @option params [String] :description
    #   <p>The description of the replication run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_job_id: "ReplicationJobId", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.start_on_demand_replication_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_run_id: "ReplicationRunId"
    #   }
    # @return [Types::StartOnDemandReplicationRunResponse]
    def start_on_demand_replication_run(params = {}, options = {})
      request = build_request(:start_on_demand_replication_run, params)
      request.send_request(options)
    end

    # <p>Stops replicating the specified application by deleting the replication job for each server in
    #             the application.</p>
    # @param [Hash, Types::StopAppReplicationRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.stop_app_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopAppReplicationResponse]
    def stop_app_replication(params = {}, options = {})
      request = build_request(:stop_app_replication, params)
      request.send_request(options)
    end

    # <p>Terminates the stack for the specified application.</p>
    # @param [Hash, Types::TerminateAppRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId"
    #   }
    #   options = {}
    #   response = client.terminate_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TerminateAppResponse]
    def terminate_app(params = {}, options = {})
      request = build_request(:terminate_app, params)
      request.send_request(options)
    end

    # <p>Updates the specified application.</p>
    # @param [Hash, Types::UpdateAppRequest] params
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    # @option params [String] :name
    #   <p>The new name of the application.</p>
    # @option params [String] :description
    #   <p>The new description of the application.</p>
    # @option params [String] :role_name
    #   <p>The name of the service role in the customer's account used by Server Migration Service.</p>
    # @option params [Array<Types::ServerGroup>] :server_groups
    #   <p>The server groups in the application to update.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId",
    #     name: "AppName",
    #     description: "AppDescription",
    #     role_name: "RoleName",
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId"
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #               vm_path: "VmPath"
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_summary: {
    #       app_id: "AppId",
    #       imported_app_id: "ImportedAppId",
    #       name: "AppName",
    #       description: "AppDescription",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #       status_message: "AppStatusMessage",
    #       replication_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #       replication_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"],
    #       replication_status_message: "AppReplicationStatusMessage",
    #       latest_replication_time: Time.now,
    #       launch_configuration_status: "NOT_CONFIGURED" # One of: ["NOT_CONFIGURED", "CONFIGURED"],
    #       launch_status: "READY_FOR_CONFIGURATION" # One of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"],
    #       launch_status_message: "AppLaunchStatusMessage",
    #       launch_details: {
    #         latest_launch_time: Time.now,
    #         stack_name: "StackName",
    #         stack_id: "StackId"
    #       },
    #       creation_time: Time.now,
    #       last_modified: Time.now,
    #       role_name: "RoleName",
    #       total_server_groups: 1,
    #       total_servers: 1
    #     },
    #     server_groups: [
    #       {
    #         server_group_id: "ServerGroupId",
    #         name: "ServerGroupName",
    #         server_list: [
    #           {
    #             server_id: "ServerId",
    #             server_type: "VIRTUAL_MACHINE" # One of: ["VIRTUAL_MACHINE"],
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: "VmManagerId",
    #                 vm_id: "VmId"
    #               },
    #               vm_name: "VmName",
    #               vm_manager_name: "VmManagerName",
    #               vm_manager_type: "VSPHERE" # One of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"],
    #               vm_path: "VmPath"
    #             },
    #             replication_job_id: "ReplicationJobId",
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateAppResponse]
    def update_app(params = {}, options = {})
      request = build_request(:update_app, params)
      request.send_request(options)
    end

    # <p>Updates the specified settings for the specified replication job.</p>
    # @param [Hash, Types::UpdateReplicationJobRequest] params
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    # @option params [Integer] :frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    # @option params [Time] :next_replication_run_start_time
    #   <p>The start time of the next replication run.</p>
    # @option params [String] :license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    # @option params [String] :role_name
    #   <p>The name of the IAM role to be used by Server Migration Service.</p>
    # @option params [String] :description
    #   <p>The description of the replication job.</p>
    # @option params [Integer] :number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    # @option params [Boolean] :encrypted
    #   <p>When true, the replication job produces encrypted AMIs. For more information,
    #                   <code>KmsKeyId</code>.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs. 
    #               This value can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #            <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replication_job_id: "ReplicationJobId", # required
    #     frequency: 1,
    #     next_replication_run_start_time: Time.now,
    #     license_type: "AWS" # One of: ["AWS", "BYOL"],
    #     role_name: "RoleName",
    #     description: "Description",
    #     number_of_recent_amis_to_keep: 1,
    #     encrypted: false,
    #     kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.update_replication_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateReplicationJobResponse]
    def update_replication_job(params = {}, options = {})
      request = build_request(:update_replication_job, params)
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
      context[:gem_name] = 'aws-sdk-sms'
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

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

module Aws::CodeConnections
  # An API client for Aws::CodeConnections.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeConnections20231201

    add_plugin(::Aws::CodeConnections::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeConnections::EndpointProvider)
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

    # <p>Creates a connection that can then be given to other Amazon Web Services services like CodePipeline so
    #       that it can access third-party code repositories. The connection is in pending status until
    #       the third-party connection handshake is completed from the console.</p>
    # @param [Hash, Types::CreateConnectionInput] params
    # @option params [String] :provider_type
    #   <p>The name of the external provider where your third-party code repository is
    #         configured.</p>
    # @option params [String] :connection_name
    #   <p>The name of the connection to be created.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value pair to use when tagging the resource.</p>
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"],
    #     connection_name: "ConnectionName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     host_arn: "HostArn"
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_arn: "ConnectionArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateConnectionOutput]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Creates a resource that represents the infrastructure where a third-party provider is
    #       installed. The host is used when you create connections to an installed third-party provider
    #       type, such as GitHub Enterprise Server. You create one host for all connections to that
    #       provider.</p>
    #          <note>
    #             <p>A host created through the CLI or the SDK is in `PENDING` status by
    #         default. You can make its status `AVAILABLE` by setting up the host in the console.</p>
    #          </note>
    # @param [Hash, Types::CreateHostInput] params
    # @option params [String] :name
    #   <p>The name of the host to be created.</p>
    # @option params [String] :provider_type
    #   <p>The name of the installed provider to be associated with your connection. The host
    #         resource represents the infrastructure where your provider type is installed. The valid
    #         provider type is GitHub Enterprise Server.</p>
    # @option params [String] :provider_endpoint
    #   <p>The endpoint of the infrastructure to be represented by the host after it is
    #         created.</p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>The VPC configuration to be provisioned for the host. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags for the host to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "HostName", # required
    #     provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #     provider_endpoint: "Url", # required
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #       tls_certificate: "TlsCertificate"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_host(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     host_arn: "HostArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateHostOutput]
    def create_host(params = {}, options = {})
      request = build_request(:create_host, params)
      request.send_request(options)
    end

    # <p>Creates a link to a specified external Git repository. A repository link allows Git sync to monitor and sync changes to files in a specified Git repository.</p>
    # @param [Hash, Types::CreateRepositoryLinkInput] params
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be associated with the repository link.</p>
    # @option params [String] :owner_id
    #   <p>The owner ID for the repository associated with a specific sync configuration, such as
    #         the owner ID in GitHub.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository to be associated with the repository link.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) encryption key for the repository to be associated with the repository link.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags for the repository to be associated with the repository link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_arn: "ConnectionArn", # required
    #     owner_id: "OwnerId", # required
    #     repository_name: "RepositoryName", # required
    #     encryption_key_arn: "KmsKeyArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_repository_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_link_info: { # required
    #       connection_arn: "ConnectionArn", # required
    #       encryption_key_arn: "KmsKeyArn",
    #       owner_id: "OwnerId", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       repository_link_arn: "RepositoryLinkArn", # required
    #       repository_link_id: "RepositoryLinkId", # required
    #       repository_name: "RepositoryName", # required
    #     }
    #   }
    # @return [Types::CreateRepositoryLinkOutput]
    def create_repository_link(params = {}, options = {})
      request = build_request(:create_repository_link, params)
      request.send_request(options)
    end

    # <p>Creates a sync configuration which allows Amazon Web Services to sync content from a Git
    #       repository to update a specified Amazon Web Services resource. Parameters for the sync
    #       configuration are determined by the sync type.</p>
    # @param [Hash, Types::CreateSyncConfigurationInput] params
    # @option params [String] :branch
    #   <p>The branch in the repository from which changes will be synced.</p>
    # @option params [String] :config_file
    #   <p>The file name of the configuration file that manages syncing between the connection and the repository. This configuration file is stored in the repository.</p>
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link created for the connection. A repository link allows Git
    #         sync to monitor and sync changes to files in a specified Git repository.</p>
    # @option params [String] :resource_name
    #   <p>The name of the Amazon Web Services resource (for example, a CloudFormation stack in the
    #         case of CFN_STACK_SYNC) that will be synchronized from the linked repository.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that grants permission for Amazon Web Services to use Git sync to
    #         update a given Amazon Web Services resource on your behalf.</p>
    # @option params [String] :sync_type
    #   <p>The type of sync configuration.</p>
    # @option params [String] :publish_deployment_status
    #   <p>Whether to enable or disable publishing of deployment status to source providers.</p>
    # @option params [String] :trigger_resource_update_on
    #   <p>When to trigger Git sync to begin the stack update.</p>
    # @option params [String] :pull_request_comment
    #   <p>A toggle that specifies whether to enable or disable pull request comments for the sync configuration to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     branch: "BranchName", # required
    #     config_file: "DeploymentFilePath", # required
    #     repository_link_id: "RepositoryLinkId", # required
    #     resource_name: "ResourceName", # required
    #     role_arn: "IamRoleArn", # required
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #     publish_deployment_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     trigger_resource_update_on: "ANY_CHANGE" # One of: ["ANY_CHANGE", "FILE_CHANGE"],
    #     pull_request_comment: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.create_sync_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_configuration: { # required
    #       branch: "BranchName", # required
    #       config_file: "DeploymentFilePath",
    #       owner_id: "OwnerId", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       repository_link_id: "RepositoryLinkId", # required
    #       repository_name: "RepositoryName", # required
    #       resource_name: "ResourceName", # required
    #       role_arn: "IamRoleArn", # required
    #       sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #       publish_deployment_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       trigger_resource_update_on: "ANY_CHANGE" # One of: ["ANY_CHANGE", "FILE_CHANGE"],
    #       pull_request_comment: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::CreateSyncConfigurationOutput]
    def create_sync_configuration(params = {}, options = {})
      request = build_request(:create_sync_configuration, params)
      request.send_request(options)
    end

    # <p>The connection to be deleted.</p>
    # @param [Hash, Types::DeleteConnectionInput] params
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be deleted.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_arn: "ConnectionArn", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConnectionOutput]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.</p>
    #          <note>
    #             <p>A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.</p>
    #          </note>
    # @param [Hash, Types::DeleteHostInput] params
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     host_arn: "HostArn", # required
    #   }
    #   options = {}
    #   response = client.delete_host(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteHostOutput]
    def delete_host(params = {}, options = {})
      request = build_request(:delete_host, params)
      request.send_request(options)
    end

    # <p>Deletes the association between your connection and a specified external Git repository.</p>
    # @param [Hash, Types::DeleteRepositoryLinkInput] params
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_link_id: "RepositoryLinkId", # required
    #   }
    #   options = {}
    #   response = client.delete_repository_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRepositoryLinkOutput]
    def delete_repository_link(params = {}, options = {})
      request = build_request(:delete_repository_link, params)
      request.send_request(options)
    end

    # <p>Deletes the sync configuration for a specified repository and connection.</p>
    # @param [Hash, Types::DeleteSyncConfigurationInput] params
    # @option params [String] :sync_type
    #   <p>The type of sync configuration to be deleted.</p>
    # @option params [String] :resource_name
    #   <p>The name of the Amazon Web Services resource associated with the sync configuration to be
    #         deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_sync_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSyncConfigurationOutput]
    def delete_sync_configuration(params = {}, options = {})
      request = build_request(:delete_sync_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the connection ARN and details such as status, owner, and provider type.</p>
    # @param [Hash, Types::GetConnectionInput] params
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of a connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_arn: "ConnectionArn", # required
    #   }
    #   options = {}
    #   response = client.get_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection: {
    #       connection_name: "ConnectionName",
    #       connection_arn: "ConnectionArn",
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"],
    #       owner_account_id: "AccountId",
    #       connection_status: "PENDING" # One of: ["PENDING", "AVAILABLE", "ERROR"],
    #       host_arn: "HostArn"
    #     }
    #   }
    # @return [Types::GetConnectionOutput]
    def get_connection(params = {}, options = {})
      request = build_request(:get_connection, params)
      request.send_request(options)
    end

    # <p>Returns the host ARN and details such as status, provider type, endpoint, and, if
    #       applicable, the VPC configuration.</p>
    # @param [Hash, Types::GetHostInput] params
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the requested host.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     host_arn: "HostArn", # required
    #   }
    #   options = {}
    #   response = client.get_host(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "HostName",
    #     status: "HostStatus",
    #     provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"],
    #     provider_endpoint: "Url",
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #       tls_certificate: "TlsCertificate"
    #     }
    #   }
    # @return [Types::GetHostOutput]
    def get_host(params = {}, options = {})
      request = build_request(:get_host, params)
      request.send_request(options)
    end

    # <p>Returns details about a repository link. A repository link allows Git sync to monitor
    #       and sync changes from files in a specified Git repository.</p>
    # @param [Hash, Types::GetRepositoryLinkInput] params
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_link_id: "RepositoryLinkId", # required
    #   }
    #   options = {}
    #   response = client.get_repository_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_link_info: { # required
    #       connection_arn: "ConnectionArn", # required
    #       encryption_key_arn: "KmsKeyArn",
    #       owner_id: "OwnerId", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       repository_link_arn: "RepositoryLinkArn", # required
    #       repository_link_id: "RepositoryLinkId", # required
    #       repository_name: "RepositoryName", # required
    #     }
    #   }
    # @return [Types::GetRepositoryLinkOutput]
    def get_repository_link(params = {}, options = {})
      request = build_request(:get_repository_link, params)
      request.send_request(options)
    end

    # <p>Returns details about the sync status for a repository. A repository sync uses Git sync
    #       to push and pull changes from your remote repository.</p>
    # @param [Hash, Types::GetRepositorySyncStatusInput] params
    # @option params [String] :branch
    #   <p>The branch of the repository link for the requested repository sync status.</p>
    # @option params [String] :repository_link_id
    #   <p>The repository link ID for the requested repository sync status.</p>
    # @option params [String] :sync_type
    #   <p>The sync type of the requested sync status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     branch: "BranchName", # required
    #     repository_link_id: "RepositoryLinkId", # required
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #   }
    #   options = {}
    #   response = client.get_repository_sync_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     latest_sync: { # required
    #       started_at: Time.now, # required
    #       status: "FAILED" # One of: ["FAILED", "INITIATED", "IN_PROGRESS", "SUCCEEDED", "QUEUED"], # required
    #       events: [ # required
    #         {
    #           event: "Event", # required
    #           external_id: "ExternalId",
    #           time: Time.now, # required
    #           type: "Type", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetRepositorySyncStatusOutput]
    def get_repository_sync_status(params = {}, options = {})
      request = build_request(:get_repository_sync_status, params)
      request.send_request(options)
    end

    # <p>Returns the status of the sync with the Git repository for a specific Amazon Web Services
    #       resource.</p>
    # @param [Hash, Types::GetResourceSyncStatusInput] params
    # @option params [String] :resource_name
    #   <p>The name of the Amazon Web Services resource for the sync status with the Git
    #         repository.</p>
    # @option params [String] :sync_type
    #   <p>The sync type for the sync status with the Git repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "ResourceName", # required
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #   }
    #   options = {}
    #   response = client.get_resource_sync_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     desired_state: {
    #       branch: "BranchName", # required
    #       directory: "Directory", # required
    #       owner_id: "OwnerId", # required
    #       repository_name: "RepositoryName", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       sha: "SHA", # required
    #     },
    #     latest_successful_sync: {
    #       events: [ # required
    #         {
    #           event: "Event", # required
    #           external_id: "ExternalId",
    #           time: Time.now, # required
    #           type: "Type", # required
    #         }
    #       ],
    #       initial_revision: { # required
    #         branch: "BranchName", # required
    #         directory: "Directory", # required
    #         owner_id: "OwnerId", # required
    #         repository_name: "RepositoryName", # required
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #         sha: "SHA", # required
    #       },
    #       started_at: Time.now, # required
    #       status: "FAILED" # One of: ["FAILED", "INITIATED", "IN_PROGRESS", "SUCCEEDED"], # required
    #       target_revision: { # required
    #         branch: "BranchName", # required
    #         directory: "Directory", # required
    #         owner_id: "OwnerId", # required
    #         repository_name: "RepositoryName", # required
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #         sha: "SHA", # required
    #       },
    #       target: "Target", # required
    #     },
    #     latest_sync: { # required
    #       events: [ # required
    #         {
    #           event: "Event", # required
    #           external_id: "ExternalId",
    #           time: Time.now, # required
    #           type: "Type", # required
    #         }
    #       ],
    #       initial_revision: { # required
    #         branch: "BranchName", # required
    #         directory: "Directory", # required
    #         owner_id: "OwnerId", # required
    #         repository_name: "RepositoryName", # required
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #         sha: "SHA", # required
    #       },
    #       started_at: Time.now, # required
    #       status: "FAILED" # One of: ["FAILED", "INITIATED", "IN_PROGRESS", "SUCCEEDED"], # required
    #       target_revision: { # required
    #         branch: "BranchName", # required
    #         directory: "Directory", # required
    #         owner_id: "OwnerId", # required
    #         repository_name: "RepositoryName", # required
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #         sha: "SHA", # required
    #       },
    #       target: "Target", # required
    #     }
    #   }
    # @return [Types::GetResourceSyncStatusOutput]
    def get_resource_sync_status(params = {}, options = {})
      request = build_request(:get_resource_sync_status, params)
      request.send_request(options)
    end

    # <p>Returns a list of the most recent sync blockers.</p>
    # @param [Hash, Types::GetSyncBlockerSummaryInput] params
    # @option params [String] :sync_type
    #   <p>The sync type for the sync blocker summary.</p>
    # @option params [String] :resource_name
    #   <p>The name of the Amazon Web Services resource currently blocked from automatically being synced from a Git repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_sync_blocker_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_blocker_summary: { # required
    #       resource_name: "ResourceName", # required
    #       parent_resource_name: "ResourceName",
    #       latest_blockers: [
    #         {
    #           id: "Id", # required
    #           type: "AUTOMATED" # One of: ["AUTOMATED"], # required
    #           status: "ACTIVE" # One of: ["ACTIVE", "RESOLVED"], # required
    #           created_reason: "CreatedReason", # required
    #           created_at: Time.now, # required
    #           contexts: [
    #             {
    #               key: "SyncBlockerContextKey", # required
    #               value: "SyncBlockerContextValue", # required
    #             }
    #           ],
    #           resolved_reason: "ResolvedReason",
    #           resolved_at: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetSyncBlockerSummaryOutput]
    def get_sync_blocker_summary(params = {}, options = {})
      request = build_request(:get_sync_blocker_summary, params)
      request.send_request(options)
    end

    # <p>Returns details about a sync configuration, including the sync type and resource name. A sync configuration allows the configuration to sync (push and pull) changes from the remote repository for a specified branch in a Git repository.</p>
    # @param [Hash, Types::GetSyncConfigurationInput] params
    # @option params [String] :sync_type
    #   <p>The sync type for the sync configuration for which you want to retrieve information.</p>
    # @option params [String] :resource_name
    #   <p>The name of the Amazon Web Services resource for the sync configuration for which you
    #         want to retrieve information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #     resource_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_sync_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_configuration: { # required
    #       branch: "BranchName", # required
    #       config_file: "DeploymentFilePath",
    #       owner_id: "OwnerId", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       repository_link_id: "RepositoryLinkId", # required
    #       repository_name: "RepositoryName", # required
    #       resource_name: "ResourceName", # required
    #       role_arn: "IamRoleArn", # required
    #       sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #       publish_deployment_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       trigger_resource_update_on: "ANY_CHANGE" # One of: ["ANY_CHANGE", "FILE_CHANGE"],
    #       pull_request_comment: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::GetSyncConfigurationOutput]
    def get_sync_configuration(params = {}, options = {})
      request = build_request(:get_sync_configuration, params)
      request.send_request(options)
    end

    # <p>Lists the connections associated with your account.</p>
    # @param [Hash, Types::ListConnectionsInput] params
    # @option params [String] :provider_type_filter
    #   <p>Filters the list of connections to those associated with a specified provider, such as
    #         Bitbucket.</p>
    # @option params [String] :host_arn_filter
    #   <p>Filters the list of connections to those associated with a specified host.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListConnections</code> call, which
    #         can be used to return the next set of connections in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider_type_filter: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"],
    #     host_arn_filter: "HostArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         connection_name: "ConnectionName",
    #         connection_arn: "ConnectionArn",
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"],
    #         owner_account_id: "AccountId",
    #         connection_status: "PENDING" # One of: ["PENDING", "AVAILABLE", "ERROR"],
    #         host_arn: "HostArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectionsOutput]
    def list_connections(params = {}, options = {})
      request = build_request(:list_connections, params)
      request.send_request(options)
    end

    # <p>Lists the hosts associated with your account.</p>
    # @param [Hash, Types::ListHostsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListHosts</code> call, which can be
    #         used to return the next set of hosts in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_hosts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hosts: [
    #       {
    #         name: "HostName",
    #         host_arn: "HostArn",
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"],
    #         provider_endpoint: "Url",
    #         vpc_configuration: {
    #           vpc_id: "VpcId", # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #           tls_certificate: "TlsCertificate"
    #         },
    #         status: "HostStatus",
    #         status_message: "HostStatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHostsOutput]
    def list_hosts(params = {}, options = {})
      request = build_request(:list_hosts, params)
      request.send_request(options)
    end

    # <p>Lists the repository links created for connections in your account.</p>
    # @param [Hash, Types::ListRepositoryLinksInput] params
    # @option params [Integer] :max_results
    #   <p>
    #   A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @option params [String] :next_token
    #   <p>
    #   An enumeration token that, when provided in a request, returns the next batch of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "SharpNextToken"
    #   }
    #   options = {}
    #   response = client.list_repository_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_links: [ # required
    #       {
    #         connection_arn: "ConnectionArn", # required
    #         encryption_key_arn: "KmsKeyArn",
    #         owner_id: "OwnerId", # required
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #         repository_link_arn: "RepositoryLinkArn", # required
    #         repository_link_id: "RepositoryLinkId", # required
    #         repository_name: "RepositoryName", # required
    #       }
    #     ],
    #     next_token: "SharpNextToken"
    #   }
    # @return [Types::ListRepositoryLinksOutput]
    def list_repository_links(params = {}, options = {})
      request = build_request(:list_repository_links, params)
      request.send_request(options)
    end

    # <p>Lists the repository sync definitions for repository links in your account.</p>
    # @param [Hash, Types::ListRepositorySyncDefinitionsInput] params
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link for the sync definition for which you want to retrieve information.</p>
    # @option params [String] :sync_type
    #   <p>The sync type of the repository link for the the sync definition for which you want to retrieve information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_link_id: "RepositoryLinkId", # required
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #   }
    #   options = {}
    #   response = client.list_repository_sync_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_sync_definitions: [ # required
    #       {
    #         branch: "BranchName", # required
    #         directory: "Directory", # required
    #         parent: "Parent", # required
    #         target: "Target", # required
    #       }
    #     ],
    #     next_token: "SharpNextToken"
    #   }
    # @return [Types::ListRepositorySyncDefinitionsOutput]
    def list_repository_sync_definitions(params = {}, options = {})
      request = build_request(:list_repository_sync_definitions, params)
      request.send_request(options)
    end

    # <p>Returns a list of sync configurations for a specified repository.</p>
    # @param [Hash, Types::ListSyncConfigurationsInput] params
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    # @option params [String] :next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation.</p>
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link for the requested list of sync configurations.</p>
    # @option params [String] :sync_type
    #   <p>The sync type for the requested list of sync configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "SharpNextToken",
    #     repository_link_id: "RepositoryLinkId", # required
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #   }
    #   options = {}
    #   response = client.list_sync_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_configurations: [ # required
    #       {
    #         branch: "BranchName", # required
    #         config_file: "DeploymentFilePath",
    #         owner_id: "OwnerId", # required
    #         provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #         repository_link_id: "RepositoryLinkId", # required
    #         repository_name: "RepositoryName", # required
    #         resource_name: "ResourceName", # required
    #         role_arn: "IamRoleArn", # required
    #         sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #         publish_deployment_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         trigger_resource_update_on: "ANY_CHANGE" # One of: ["ANY_CHANGE", "FILE_CHANGE"],
    #         pull_request_comment: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     next_token: "SharpNextToken"
    #   }
    # @return [Types::ListSyncConfigurationsOutput]
    def list_sync_configurations(params = {}, options = {})
      request = build_request(:list_sync_configurations, params)
      request.send_request(options)
    end

    # <p>Gets the set of key-value pairs (metadata) that are used to manage the resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used
    #       to manage a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags you want to modify or add to the resource.</p>
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from an Amazon Web Services resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
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
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a specified host with the provided configurations.</p>
    # @param [Hash, Types::UpdateHostInput] params
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be updated.</p>
    # @option params [String] :provider_endpoint
    #   <p>The URL or endpoint of the host to be updated.</p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>The VPC configuration of the host to be updated. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     host_arn: "HostArn", # required
    #     provider_endpoint: "Url",
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #       tls_certificate: "TlsCertificate"
    #     }
    #   }
    #   options = {}
    #   response = client.update_host(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateHostOutput]
    def update_host(params = {}, options = {})
      request = build_request(:update_host, params)
      request.send_request(options)
    end

    # <p>Updates the association between your connection and a specified external Git repository.
    #       A repository link allows Git sync to monitor and sync changes to files in a specified Git
    #       repository.</p>
    # @param [Hash, Types::UpdateRepositoryLinkInput] params
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection for the repository link to be updated. The updated connection ARN must have the same providerType (such as GitHub) as the original connection ARN for the repo link.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the encryption key for the repository link to be updated.</p>
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connection_arn: "ConnectionArn",
    #     encryption_key_arn: "KmsKeyArn",
    #     repository_link_id: "RepositoryLinkId", # required
    #   }
    #   options = {}
    #   response = client.update_repository_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_link_info: { # required
    #       connection_arn: "ConnectionArn", # required
    #       encryption_key_arn: "KmsKeyArn",
    #       owner_id: "OwnerId", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       repository_link_arn: "RepositoryLinkArn", # required
    #       repository_link_id: "RepositoryLinkId", # required
    #       repository_name: "RepositoryName", # required
    #     }
    #   }
    # @return [Types::UpdateRepositoryLinkOutput]
    def update_repository_link(params = {}, options = {})
      request = build_request(:update_repository_link, params)
      request.send_request(options)
    end

    # <p>Allows you to update the status of a sync blocker, resolving the blocker and allowing syncing to continue.</p>
    # @param [Hash, Types::UpdateSyncBlockerInput] params
    # @option params [String] :id
    #   <p>The ID of the sync blocker to be updated.</p>
    # @option params [String] :sync_type
    #   <p>The sync type of the sync blocker to be updated.</p>
    # @option params [String] :resource_name
    #   <p>The name of the resource for the sync blocker to be updated.</p>
    # @option params [String] :resolved_reason
    #   <p>The reason for resolving the sync blocker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Id", # required
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #     resource_name: "ResourceName", # required
    #     resolved_reason: "ResolvedReason", # required
    #   }
    #   options = {}
    #   response = client.update_sync_blocker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_name: "ResourceName", # required
    #     parent_resource_name: "ResourceName",
    #     sync_blocker: { # required
    #       id: "Id", # required
    #       type: "AUTOMATED" # One of: ["AUTOMATED"], # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "RESOLVED"], # required
    #       created_reason: "CreatedReason", # required
    #       created_at: Time.now, # required
    #       contexts: [
    #         {
    #           key: "SyncBlockerContextKey", # required
    #           value: "SyncBlockerContextValue", # required
    #         }
    #       ],
    #       resolved_reason: "ResolvedReason",
    #       resolved_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateSyncBlockerOutput]
    def update_sync_blocker(params = {}, options = {})
      request = build_request(:update_sync_blocker, params)
      request.send_request(options)
    end

    # <p>Updates the sync configuration for your connection and a specified external Git repository.</p>
    # @param [Hash, Types::UpdateSyncConfigurationInput] params
    # @option params [String] :branch
    #   <p>The branch for the sync configuration to be updated.</p>
    # @option params [String] :config_file
    #   <p>The configuration file for the sync configuration to be updated.</p>
    # @option params [String] :repository_link_id
    #   <p>The ID of the repository link for the sync configuration to be updated.</p>
    # @option params [String] :resource_name
    #   <p>The name of the Amazon Web Services resource for the sync configuration to be
    #         updated.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role for the sync configuration to be updated.</p>
    # @option params [String] :sync_type
    #   <p>The sync type for the sync configuration to be updated.</p>
    # @option params [String] :publish_deployment_status
    #   <p>Whether to enable or disable publishing of deployment status to source providers.</p>
    # @option params [String] :trigger_resource_update_on
    #   <p>When to trigger Git sync to begin the stack update.</p>
    # @option params [String] :pull_request_comment
    #   <p>TA toggle that specifies whether to enable or disable pull request comments for the sync configuration to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     branch: "BranchName",
    #     config_file: "DeploymentFilePath",
    #     repository_link_id: "RepositoryLinkId",
    #     resource_name: "ResourceName", # required
    #     role_arn: "IamRoleArn",
    #     sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #     publish_deployment_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     trigger_resource_update_on: "ANY_CHANGE" # One of: ["ANY_CHANGE", "FILE_CHANGE"],
    #     pull_request_comment: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_sync_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sync_configuration: { # required
    #       branch: "BranchName", # required
    #       config_file: "DeploymentFilePath",
    #       owner_id: "OwnerId", # required
    #       provider_type: "Bitbucket" # One of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer", "GitLab", "GitLabSelfManaged", "AzureDevOps"], # required
    #       repository_link_id: "RepositoryLinkId", # required
    #       repository_name: "RepositoryName", # required
    #       resource_name: "ResourceName", # required
    #       role_arn: "IamRoleArn", # required
    #       sync_type: "CFN_STACK_SYNC" # One of: ["CFN_STACK_SYNC"], # required
    #       publish_deployment_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       trigger_resource_update_on: "ANY_CHANGE" # One of: ["ANY_CHANGE", "FILE_CHANGE"],
    #       pull_request_comment: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::UpdateSyncConfigurationOutput]
    def update_sync_configuration(params = {}, options = {})
      request = build_request(:update_sync_configuration, params)
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
      context[:gem_name] = 'aws-sdk-codeconnections'
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

# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/http_bearer_auth'
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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::CodeCatalyst
  # An API client for Aws::CodeCatalyst.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeCatalyst

    add_plugin(::Aws::CodeCatalyst::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::HttpBearerAuth)
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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [String] :bearer_token
    #  The bearer token to use for authentication.
    # @option options [Smithy::Client::BearerTokenProvider] :bearer_token_provider
    #  A bearer token identity provider. This can be an instance of a {Smithy::Client::BearerTokenProvider} or any
    #  class that responds to #identity and returns a {Smithy::Client::BearerToken}.
    # @option options [Smithy::Client::BearerTokenSigner] :bearer_token_signer
    #  A signer class that signs requests with a bearer token.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeCatalyst::EndpointProvider)
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a personal access token (PAT) for the current user. A personal access token (PAT) is similar to a password. 
    #       It is associated with your user identity for use across all spaces and projects in Amazon CodeCatalyst. You use PATs to access CodeCatalyst 
    #       from resources that include integrated development environments (IDEs) and Git-based source repositories.  
    #       PATs represent you in Amazon CodeCatalyst and you can manage them in your user settings.For more information, see 
    #       <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html">Managing personal access tokens in Amazon CodeCatalyst</a>.</p>
    # @param [Hash, Types::CreateAccessTokenRequest] params
    # @option params [String] :name
    #   <p>The friendly name of the personal access token.</p>
    # @option params [Time] :expires_time
    #   <p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AccessTokenName", # required
    #     expires_time: Time.now
    #   }
    #   options = {}
    #   response = client.create_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     secret: "AccessTokenSecret", # required
    #     name: "AccessTokenName", # required
    #     expires_time: Time.now, # required
    #     access_token_id: "AccessTokenId", # required
    #   }
    # @return [Types::CreateAccessTokenResponse]
    def create_access_token(params = {}, options = {})
      request = build_request(:create_access_token, params)
      request.send_request(options)
    end

    # <p>Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development environment that you can use to quickly work on the code stored 
    #       in the source repositories of your project.       </p>
    #          <note>
    #             <p>When created in the Amazon CodeCatalyst console, by default a Dev Environment is configured to have a 2 core processor, 4GB of RAM, and 16GB of persistent storage. None of these
    #       defaults apply to a Dev Environment created programmatically.</p>
    #          </note>
    # @param [Hash, Types::CreateDevEnvironmentRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [Array<Types::RepositoryInput>] :repositories
    #   <p>The source repository that contains the branch to clone into the Dev Environment. </p>
    # @option params [String] :client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    # @option params [String] :alias
    #   <p>The user-defined alias for a Dev Environment.</p>
    # @option params [Array<Types::IdeConfiguration>] :ides
    #   <p>Information about the integrated development environment (IDE) configured for a
    #         Dev Environment.</p>
    #            <note>
    #               <p>An IDE is required to create a Dev Environment. For Dev Environment creation, this field
    #           contains configuration information and must be provided. </p>
    #            </note>
    # @option params [String] :instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    # @option params [Integer] :inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    # @option params [Types::PersistentStorageConfiguration] :persistent_storage
    #   <p>Information about the amount of storage allocated to the Dev Environment. </p>
    #            <note>
    #               <p>By default, a Dev Environment is configured to have 16GB of persistent storage when created from the Amazon CodeCatalyst console, but there is no default when programmatically
    #           creating a Dev Environment. 
    #           Valid values for persistent storage are based on memory sizes in 16GB increments. Valid
    #           values are 16, 32, and 64.</p>
    #            </note>
    # @option params [String] :vpc_connection_name
    #   <p>The name of the connection that will be used to connect to Amazon VPC, if any.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     repositories: [
    #       {
    #         repository_name: "SourceRepositoryNameString", # required
    #         branch_name: "SourceRepositoryBranchString"
    #       }
    #     ],
    #     client_token: "ClientToken",
    #     alias: "String",
    #     ides: [
    #       {
    #         runtime: "String",
    #         name: "String"
    #       }
    #     ],
    #     instance_type: "InstanceType", # required
    #     inactivity_timeout_minutes: 1,
    #     persistent_storage: { # required
    #       size_in_gi_b: 1, # required
    #     },
    #     vpc_connection_name: "NameString"
    #   }
    #   options = {}
    #   response = client.create_dev_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     vpc_connection_name: "NameString"
    #   }
    # @return [Types::CreateDevEnvironmentResponse]
    def create_dev_environment(params = {}, options = {})
      request = build_request(:create_dev_environment, params)
      request.send_request(options)
    end

    # <p>Creates a project in a specified space.</p>
    # @param [Hash, Types::CreateProjectRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :display_name
    #   <p>The friendly name of the project that will be displayed to users.</p>
    # @option params [String] :description
    #   <p>The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     display_name: "ProjectDisplayName", # required
    #     description: "ProjectDescription"
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString",
    #     name: "NameString", # required
    #     display_name: "String",
    #     description: "String"
    #   }
    # @return [Types::CreateProjectResponse]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Creates an empty Git-based source repository in a specified project. The repository is
    #       created with an initial empty commit with a default branch named <code>main</code>.</p>
    # @param [Hash, Types::CreateSourceRepositoryRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :name
    #   <p>The name of the source repository. For more information about name requirements, see <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html">Quotas for source repositories</a>.</p>
    # @option params [String] :description
    #   <p>The description of the source repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #     description: "SourceRepositoryDescriptionString"
    #   }
    #   options = {}
    #   response = client.create_source_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #     description: "SourceRepositoryDescriptionString"
    #   }
    # @return [Types::CreateSourceRepositoryResponse]
    def create_source_repository(params = {}, options = {})
      request = build_request(:create_source_repository, params)
      request.send_request(options)
    end

    # <p>Creates a branch in a specified source repository in Amazon CodeCatalyst. </p>
    #          <note>
    #             <p>This API only creates a branch in a source repository hosted in Amazon CodeCatalyst. You cannot use this API to create a branch in a linked repository.</p>
    #          </note>
    # @param [Hash, Types::CreateSourceRepositoryBranchRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :source_repository_name
    #   <p>The name of the repository where you want to create a branch.</p>
    # @option params [String] :name
    #   <p>The name for the branch you're creating.</p>
    # @option params [String] :head_commit_id
    #   <p>The commit ID in an existing branch from which you want to create the new branch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     source_repository_name: "SourceRepositoryNameString", # required
    #     name: "SourceRepositoryBranchString", # required
    #     head_commit_id: "String"
    #   }
    #   options = {}
    #   response = client.create_source_repository_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ref: "SourceRepositoryBranchRefString",
    #     name: "SourceRepositoryBranchString",
    #     last_updated_time: Time.now,
    #     head_commit_id: "String"
    #   }
    # @return [Types::CreateSourceRepositoryBranchResponse]
    def create_source_repository_branch(params = {}, options = {})
      request = build_request(:create_source_repository_branch, params)
      request.send_request(options)
    end

    # <p>Deletes a specified personal access token (PAT). A personal access token can only be deleted by the user who created it.</p>
    # @param [Hash, Types::DeleteAccessTokenRequest] params
    # @option params [String] :id
    #   <p>The ID of the personal access token to delete. You can find the IDs of all PATs associated with your Amazon Web Services Builder ID in a space by calling <a>ListAccessTokens</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "AccessTokenId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessTokenResponse]
    def delete_access_token(params = {}, options = {})
      request = build_request(:delete_access_token, params)
      request.send_request(options)
    end

    # <p>Deletes a Dev Environment.  </p>
    # @param [Hash, Types::DeleteDevEnvironmentRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment you want to delete. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_dev_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   }
    # @return [Types::DeleteDevEnvironmentResponse]
    def delete_dev_environment(params = {}, options = {})
      request = build_request(:delete_dev_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a project in a space.</p>
    # @param [Hash, Types::DeleteProjectRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :name
    #   <p>The name of the project in the space. To retrieve a list of project names, use <a>ListProjects</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #     display_name: "String"
    #   }
    # @return [Types::DeleteProjectResponse]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Deletes a source repository in Amazon CodeCatalyst. You cannot use this API to delete a linked repository. It can only be used to delete a Amazon CodeCatalyst source repository.</p>
    # @param [Hash, Types::DeleteSourceRepositoryRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :name
    #   <p>The name of the source repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #   }
    #   options = {}
    #   response = client.delete_source_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #   }
    # @return [Types::DeleteSourceRepositoryResponse]
    def delete_source_repository(params = {}, options = {})
      request = build_request(:delete_source_repository, params)
      request.send_request(options)
    end

    # <p>Deletes a space.</p>
    #          <important>
    #             <p>Deleting a space cannot be undone. Additionally, since space names must be unique across Amazon CodeCatalyst, you cannot reuse names of deleted spaces.</p>
    #          </important>
    # @param [Hash, Types::DeleteSpaceRequest] params
    # @option params [String] :name
    #   <p>The name of the space.  To retrieve a list of space names, use <a>ListSpaces</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.delete_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "NameString", # required
    #     display_name: "String"
    #   }
    # @return [Types::DeleteSpaceResponse]
    def delete_space(params = {}, options = {})
      request = build_request(:delete_space, params)
      request.send_request(options)
    end

    # <p>Returns information about a Dev Environment for a source repository in a project. Dev Environments are specific to the user who creates them.</p>
    # @param [Hash, Types::GetDevEnvironmentRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment for which you want to view information. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_dev_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     last_updated_time: Time.now, # required
    #     creator_id: "String", # required
    #     status: "DevEnvironmentStatus", # required
    #     status_reason: "StatusReason",
    #     repositories: [ # required
    #       {
    #         repository_name: "SourceRepositoryNameString", # required
    #         branch_name: "SourceRepositoryBranchString"
    #       }
    #     ],
    #     alias: "String",
    #     ides: [
    #       {
    #         runtime: "String",
    #         name: "String"
    #       }
    #     ],
    #     instance_type: "InstanceType", # required
    #     inactivity_timeout_minutes: 1, # required
    #     persistent_storage: { # required
    #       size_in_gi_b: 1, # required
    #     },
    #     vpc_connection_name: "NameString"
    #   }
    # @return [Types::GetDevEnvironmentResponse]
    def get_dev_environment(params = {}, options = {})
      request = build_request(:get_dev_environment, params)
      request.send_request(options)
    end

    # <p>Returns information about a project.</p>
    # @param [Hash, Types::GetProjectRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :name
    #   <p>The name of the project in the space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.get_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString",
    #     name: "String", # required
    #     display_name: "String",
    #     description: "String"
    #   }
    # @return [Types::GetProjectResponse]
    def get_project(params = {}, options = {})
      request = build_request(:get_project, params)
      request.send_request(options)
    end

    # <p>Returns information about a source repository.</p>
    # @param [Hash, Types::GetSourceRepositoryRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :name
    #   <p>The name of the source repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #   }
    #   options = {}
    #   response = client.get_source_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     name: "SourceRepositoryNameString", # required
    #     description: "SourceRepositoryDescriptionString",
    #     last_updated_time: Time.now, # required
    #     created_time: Time.now, # required
    #   }
    # @return [Types::GetSourceRepositoryResponse]
    def get_source_repository(params = {}, options = {})
      request = build_request(:get_source_repository, params)
      request.send_request(options)
    end

    # <p>Returns information about the URLs that can be used with a Git client to clone a source
    #       repository.</p>
    # @param [Hash, Types::GetSourceRepositoryCloneUrlsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :source_repository_name
    #   <p>The name of the source repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     source_repository_name: "SourceRepositoryNameString", # required
    #   }
    #   options = {}
    #   response = client.get_source_repository_clone_urls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     https: "String", # required
    #   }
    # @return [Types::GetSourceRepositoryCloneUrlsResponse]
    def get_source_repository_clone_urls(params = {}, options = {})
      request = build_request(:get_source_repository_clone_urls, params)
      request.send_request(options)
    end

    # <p>Returns information about an space.</p>
    # @param [Hash, Types::GetSpaceRequest] params
    # @option params [String] :name
    #   <p>The name of the space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.get_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "NameString", # required
    #     region_name: "RegionString", # required
    #     display_name: "String",
    #     description: "String"
    #   }
    # @return [Types::GetSpaceResponse]
    def get_space(params = {}, options = {})
      request = build_request(:get_space, params)
      request.send_request(options)
    end

    # <p>Returns information about the Amazon Web Services account used for billing purposes 
    #       and the billing plan for the space.</p>
    # @param [Hash, Types::GetSubscriptionRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.get_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_type: "String",
    #     aws_account_name: "NameString",
    #     pending_subscription_type: "String",
    #     pending_subscription_start_time: Time.now
    #   }
    # @return [Types::GetSubscriptionResponse]
    def get_subscription(params = {}, options = {})
      request = build_request(:get_subscription, params)
      request.send_request(options)
    end

    # <p>Returns information about a user. </p>
    # @param [Hash, Types::GetUserDetailsRequest] params
    # @option params [String] :id
    #   <p>The system-generated unique ID of the user. </p>
    # @option params [String] :user_name
    #   <p>The name of the user as displayed in Amazon CodeCatalyst.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String",
    #     user_name: "String"
    #   }
    #   options = {}
    #   response = client.get_user_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "String",
    #     user_name: "String",
    #     display_name: "String",
    #     primary_email: {
    #       email: "String",
    #       verified: false
    #     },
    #     version: "String"
    #   }
    # @return [Types::GetUserDetailsResponse]
    def get_user_details(params = {}, options = {})
      request = build_request(:get_user_details, params)
      request.send_request(options)
    end

    # <p>Returns information about a workflow.</p>
    # @param [Hash, Types::GetWorkflowRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :id
    #   <p>The ID of the workflow. To rerieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     id: "Uuid", # required
    #     project_name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     name: "String", # required
    #     source_repository_name: "SourceRepositoryNameString",
    #     source_branch_name: "SourceRepositoryBranchString",
    #     definition: { # required
    #       path: "String", # required
    #     },
    #     created_time: Time.now, # required
    #     last_updated_time: Time.now, # required
    #     run_mode: "WorkflowRunMode", # required
    #     status: "WorkflowStatus", # required
    #   }
    # @return [Types::GetWorkflowResponse]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified run of a workflow.</p>
    # @param [Hash, Types::GetWorkflowRunRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :id
    #   <p>The ID of the workflow run. To retrieve a list of workflow run IDs, use <a>ListWorkflowRuns</a>.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     id: "Uuid", # required
    #     project_name: "NameString", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     workflow_id: "Uuid", # required
    #     status: "WorkflowRunStatus", # required
    #     status_reasons: [
    #       {
    #       }
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now,
    #     last_updated_time: Time.now, # required
    #   }
    # @return [Types::GetWorkflowRunResponse]
    def get_workflow_run(params = {}, options = {})
      request = build_request(:get_workflow_run, params)
      request.send_request(options)
    end

    # <p>Lists all personal access tokens (PATs) associated with the user who calls the API. You can only list PATs associated with your Amazon Web Services Builder ID.</p>
    # @param [Hash, Types::ListAccessTokensRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_access_tokens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "AccessTokenId", # required
    #         name: "AccessTokenName", # required
    #         expires_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAccessTokensResponse]
    def list_access_tokens(params = {}, options = {})
      request = build_request(:list_access_tokens, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of active sessions for a Dev Environment in a project.</p>
    # @param [Hash, Types::ListDevEnvironmentSessionsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :dev_environment_id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     dev_environment_id: "Uuid", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dev_environment_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         space_name: "NameString", # required
    #         project_name: "NameString", # required
    #         dev_environment_id: "Uuid", # required
    #         started_time: Time.now, # required
    #         id: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDevEnvironmentSessionsResponse]
    def list_dev_environment_sessions(params = {}, options = {})
      request = build_request(:list_dev_environment_sessions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of Dev Environments in a project.</p>
    # @param [Hash, Types::ListDevEnvironmentsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Information about filters to apply to narrow the results returned in the list.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString",
    #     filters: [
    #       {
    #         key: "String", # required
    #         values: ["String"], # required
    #         comparison_operator: "String"
    #       }
    #     ],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dev_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         space_name: "NameString",
    #         project_name: "NameString",
    #         id: "Uuid", # required
    #         last_updated_time: Time.now, # required
    #         creator_id: "String", # required
    #         status: "DevEnvironmentStatus", # required
    #         status_reason: "StatusReason",
    #         repositories: [ # required
    #           {
    #             repository_name: "SourceRepositoryNameString", # required
    #             branch_name: "SourceRepositoryBranchString"
    #           }
    #         ],
    #         alias: "String",
    #         ides: [
    #           {
    #             runtime: "String",
    #             name: "String"
    #           }
    #         ],
    #         instance_type: "InstanceType", # required
    #         inactivity_timeout_minutes: 1, # required
    #         persistent_storage: { # required
    #           size_in_gi_b: 1, # required
    #         },
    #         vpc_connection_name: "NameString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDevEnvironmentsResponse]
    def list_dev_environments(params = {}, options = {})
      request = build_request(:list_dev_environments, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of events that occurred during a specific time in a space. You can
    #       use these events to audit user and system activity in a space. For more information, see
    #         <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html">Monitoring</a> in the <i>Amazon CodeCatalyst User Guide</i>.</p>
    #          <note>
    #             <p>ListEventLogs guarantees events for the last 30 days in a given space. You can also
    #         view and retrieve a list of management events over the last 90 days for Amazon CodeCatalyst in the
    #           CloudTrail console by viewing Event history, or by creating a trail to create
    #         and maintain a record of events that extends past 90 days. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html">Working with CloudTrail Event History</a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html">Working with
    #           CloudTrail trails</a>.</p>
    #          </note>
    # @param [Hash, Types::ListEventLogsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [Time] :start_time
    #   <p>The date and time when you want to start retrieving events, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    # @option params [Time] :end_time
    #   <p>The time after which you do not want any events retrieved, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    # @option params [String] :event_name
    #   <p>The name of the event.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     event_name: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_logs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         id: "String", # required
    #         event_name: "String", # required
    #         event_type: "String", # required
    #         event_category: "String", # required
    #         event_source: "String", # required
    #         event_time: Time.now, # required
    #         operation_type: "OperationType", # required
    #         user_identity: { # required
    #           user_type: "UserType", # required
    #           principal_id: "String", # required
    #           user_name: "String",
    #           aws_account_id: "String"
    #         },
    #         project_information: {
    #           name: "String",
    #           project_id: "String"
    #         },
    #         request_id: "String",
    #         request_payload: {
    #           content_type: "String",
    #           data: "String"
    #         },
    #         response_payload: {
    #           content_type: "String",
    #           data: "String"
    #         },
    #         error_code: "String",
    #         source_ip_address: "String",
    #         user_agent: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListEventLogsResponse]
    def list_event_logs(params = {}, options = {})
      request = build_request(:list_event_logs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of projects.</p>
    # @param [Hash, Types::ListProjectsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @option params [Array<Types::ProjectListFilter>] :filters
    #   <p>Information about filters to apply to narrow the results returned in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["String"], # required
    #         comparison_operator: "ComparisonOperator"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         name: "String", # required
    #         display_name: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListProjectsResponse]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of source repositories in a project.</p>
    # @param [Hash, Types::ListSourceRepositoriesRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_source_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "SourceRepositoryIdString", # required
    #         name: "SourceRepositoryNameString", # required
    #         description: "SourceRepositoryDescriptionString",
    #         last_updated_time: Time.now, # required
    #         created_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSourceRepositoriesResponse]
    def list_source_repositories(params = {}, options = {})
      request = build_request(:list_source_repositories, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of branches in a specified source repository.</p>
    # @param [Hash, Types::ListSourceRepositoryBranchesRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :source_repository_name
    #   <p>The name of the source repository.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     source_repository_name: "SourceRepositoryNameString", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_source_repository_branches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         ref: "SourceRepositoryBranchRefString",
    #         name: "SourceRepositoryBranchString",
    #         last_updated_time: Time.now,
    #         head_commit_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListSourceRepositoryBranchesResponse]
    def list_source_repository_branches(params = {}, options = {})
      request = build_request(:list_source_repository_branches, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of spaces.</p>
    # @param [Hash, Types::ListSpacesRequest] params
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_spaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         name: "NameString", # required
    #         region_name: "RegionString", # required
    #         display_name: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListSpacesResponse]
    def list_spaces(params = {}, options = {})
      request = build_request(:list_spaces, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of workflow runs of a specified workflow.</p>
    # @param [Hash, Types::ListWorkflowRunsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :workflow_id
    #   <p>The ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @option params [Array<Types::WorkflowRunSortCriteria>] :sort_by
    #   <p>Information used to sort the items in the returned list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     workflow_id: "Uuid",
    #     project_name: "NameString", # required
    #     next_token: "String",
    #     max_results: 1,
    #     sort_by: [
    #       {
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_workflow_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         id: "Uuid", # required
    #         workflow_id: "Uuid", # required
    #         workflow_name: "String", # required
    #         status: "WorkflowRunStatus", # required
    #         status_reasons: [
    #           {
    #           }
    #         ],
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         last_updated_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkflowRunsResponse]
    def list_workflow_runs(params = {}, options = {})
      request = build_request(:list_workflow_runs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of workflows in a specified project.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    # @option params [Array<Types::WorkflowSortCriteria>] :sort_by
    #   <p>Information used to sort the items in the returned list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     next_token: "String",
    #     max_results: 1,
    #     sort_by: [
    #       {
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         id: "Uuid", # required
    #         name: "String", # required
    #         source_repository_name: "SourceRepositoryNameString", # required
    #         source_branch_name: "SourceRepositoryBranchString", # required
    #         definition: { # required
    #           path: "String", # required
    #         },
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #         run_mode: "WorkflowRunMode", # required
    #         status: "WorkflowStatus", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkflowsResponse]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Starts a specified Dev Environment and puts it into an active state. </p>
    # @param [Hash, Types::StartDevEnvironmentRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    # @option params [Array<Types::IdeConfiguration>] :ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment. </p>
    # @option params [String] :instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    # @option params [Integer] :inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     ides: [
    #       {
    #         runtime: "String",
    #         name: "String"
    #       }
    #     ],
    #     instance_type: "InstanceType",
    #     inactivity_timeout_minutes: 1
    #   }
    #   options = {}
    #   response = client.start_dev_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     status: "DevEnvironmentStatus", # required
    #   }
    # @return [Types::StartDevEnvironmentResponse]
    def start_dev_environment(params = {}, options = {})
      request = build_request(:start_dev_environment, params)
      request.send_request(options)
    end

    # <p>Starts a session for a specified Dev Environment.</p>
    # @param [Hash, Types::StartDevEnvironmentSessionRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    # @option params [Types::DevEnvironmentSessionConfiguration] :session_configuration
    #   <p>Information about the configuration of a Dev Environment session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     session_configuration: { # required
    #       session_type: "DevEnvironmentSessionType", # required
    #       execute_command_session_configuration: {
    #         command: "String", # required
    #         arguments: ["String"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_dev_environment_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_details: { # required
    #       stream_url: "SensitiveString", # required
    #       token_value: "SensitiveString", # required
    #     },
    #     session_id: "String",
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   }
    # @return [Types::StartDevEnvironmentSessionResponse]
    def start_dev_environment_session(params = {}, options = {})
      request = build_request(:start_dev_environment_session, params)
      request.send_request(options)
    end

    # <p>Begins a run of a specified workflow.</p>
    # @param [Hash, Types::StartWorkflowRunRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :workflow_id
    #   <p>The system-generated unique ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    # @option params [String] :client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     workflow_id: "Uuid", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.start_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     workflow_id: "Uuid", # required
    #   }
    # @return [Types::StartWorkflowRunResponse]
    def start_workflow_run(params = {}, options = {})
      request = build_request(:start_workflow_run, params)
      request.send_request(options)
    end

    # <p>Pauses a specified Dev Environment and places it in a non-running state. Stopped Dev Environments do not consume compute minutes.</p>
    # @param [Hash, Types::StopDevEnvironmentRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.stop_dev_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     status: "DevEnvironmentStatus", # required
    #   }
    # @return [Types::StopDevEnvironmentResponse]
    def stop_dev_environment(params = {}, options = {})
      request = build_request(:stop_dev_environment, params)
      request.send_request(options)
    end

    # <p>Stops a session for a specified Dev Environment.</p>
    # @param [Hash, Types::StopDevEnvironmentSessionRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment. To obtain this ID, use <a>ListDevEnvironments</a>.</p>
    # @option params [String] :session_id
    #   <p>The system-generated unique ID of the Dev Environment session. This ID is returned by <a>StartDevEnvironmentSession</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     session_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_dev_environment_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     session_id: "String", # required
    #   }
    # @return [Types::StopDevEnvironmentSessionResponse]
    def stop_dev_environment_session(params = {}, options = {})
      request = build_request(:stop_dev_environment_session, params)
      request.send_request(options)
    end

    # <p>Changes one or more values for a Dev Environment. Updating certain values of the Dev Environment will cause a restart.</p>
    # @param [Hash, Types::UpdateDevEnvironmentRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :project_name
    #   <p>The name of the project in the space.</p>
    # @option params [String] :id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    # @option params [String] :alias
    #   <p>The user-specified alias for the Dev Environment. Changing this value will not cause a restart.</p>
    # @option params [Array<Types::IdeConfiguration>] :ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>
    # @option params [String] :instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #            <note>
    #               <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>
    #            </note>
    # @option params [Integer] :inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. 
    #         Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #            <note>
    #               <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. 
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     id: "Uuid", # required
    #     alias: "String",
    #     ides: [
    #       {
    #         runtime: "String",
    #         name: "String"
    #       }
    #     ],
    #     instance_type: "InstanceType",
    #     inactivity_timeout_minutes: 1,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_dev_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Uuid", # required
    #     space_name: "NameString", # required
    #     project_name: "NameString", # required
    #     alias: "String",
    #     ides: [
    #       {
    #         runtime: "String",
    #         name: "String"
    #       }
    #     ],
    #     instance_type: "InstanceType",
    #     inactivity_timeout_minutes: 1,
    #     client_token: "ClientToken"
    #   }
    # @return [Types::UpdateDevEnvironmentResponse]
    def update_dev_environment(params = {}, options = {})
      request = build_request(:update_dev_environment, params)
      request.send_request(options)
    end

    # <p>Changes one or more values for a project.</p>
    # @param [Hash, Types::UpdateProjectRequest] params
    # @option params [String] :space_name
    #   <p>The name of the space.</p>
    # @option params [String] :name
    #   <p>The name of the project.</p>
    # @option params [String] :description
    #   <p>The description of the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     space_name: "NameString", # required
    #     name: "NameString", # required
    #     description: "ProjectDescription"
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     space_name: "NameString",
    #     name: "NameString",
    #     display_name: "String",
    #     description: "String"
    #   }
    # @return [Types::UpdateProjectResponse]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
      request.send_request(options)
    end

    # <p>Changes one or more values for a space.</p>
    # @param [Hash, Types::UpdateSpaceRequest] params
    # @option params [String] :name
    #   <p>The name of the space.</p>
    # @option params [String] :description
    #   <p>The description of the space.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     description: "SpaceDescription"
    #   }
    #   options = {}
    #   response = client.update_space(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "NameString",
    #     display_name: "String",
    #     description: "String"
    #   }
    # @return [Types::UpdateSpaceResponse]
    def update_space(params = {}, options = {})
      request = build_request(:update_space, params)
      request.send_request(options)
    end

    # <p>Verifies whether the calling user has a valid Amazon CodeCatalyst login and session.  If successful, this returns the ID of the user in Amazon CodeCatalyst.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.verify_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity: "String"
    #   }
    # @return [Types::VerifySessionResponse]
    def verify_session(params = {}, options = {})
      request = build_request(:verify_session, params)
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
      context[:gem_name] = 'aws-sdk-codecatalyst'
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

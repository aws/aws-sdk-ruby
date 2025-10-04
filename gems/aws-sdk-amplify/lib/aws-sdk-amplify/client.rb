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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Amplify
  # An API client for Aws::Amplify.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Amplify

    add_plugin(::Aws::Amplify::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Amplify::EndpointProvider)
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
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Creates a new Amplify app. </p>
    # @param [Hash, Types::CreateAppRequest] params
    # @option params [String] :name
    #   <p>The name of the Amplify app. </p>
    # @option params [String] :description
    #   <p>The description of the Amplify app. </p>
    # @option params [String] :repository
    #   <p>The Git repository for the Amplify app. </p>
    # @option params [String] :platform
    #   <p>The platform for the Amplify app. For a static app, set the platform type to
    #                   <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform
    #               type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR
    #               support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>
    #            <p>If you are deploying an SSG only app with Next.js version 14 or later, you must set
    #               the platform type to <code>WEB_COMPUTE</code> and set the artifacts
    #                   <code>baseDirectory</code> to <code>.next</code> in the application's build
    #               settings. For an example of the build specification settings, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/deploy-nextjs-app.html#build-setting-detection-ssg-14">Amplify build settings for a Next.js 14 SSG application</a> in the
    #                   <i>Amplify Hosting User Guide</i>.</p>
    # @option params [String] :compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to an SSR app.
    #               The SSR Compute role allows the Amplify Hosting compute service to
    #               securely access specific Amazon Web Services resources based on the role's permissions.
    #               For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute
    #                   role</a> in the <i>Amplify User Guide</i>.</p>
    # @option params [String] :iam_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>
    # @option params [String] :oauth_token
    #   <p>The OAuth token for a third-party source control system for an Amplify app. The OAuth
    #               token is used to create a webhook and a read-only deploy key using SSH cloning. The
    #               OAuth token is not stored.</p>
    #            <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as
    #               Bitbucket or CodeCommit. To authorize access to GitHub as your repository provider, use
    #                   <code>accessToken</code>.</p>
    #            <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you
    #               create a new app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    # @option params [String] :access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #            <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #            <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               create a new app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>The environment variables map for an Amplify app. </p>
    #            <p>For a list of the environment variables that are accessible to Amplify by default, see
    #                   <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-console-environment-variables.html">Amplify
    #                   Environment variables</a> in the <i>Amplify Hosting User
    #               Guide</i>.</p>
    # @option params [Boolean] :enable_branch_auto_build
    #   <p>Enables the auto building of branches for an Amplify app. </p>
    # @option params [Boolean] :enable_branch_auto_deletion
    #   <p>Automatically disconnects a branch in the Amplify console when you delete a branch
    #               from your Git repository. </p>
    # @option params [Boolean] :enable_basic_auth
    #   <p>Enables basic authorization for an Amplify app. This will apply to all branches that
    #               are part of this app. </p>
    # @option params [String] :basic_auth_credentials
    #   <p>The credentials for basic authorization for an Amplify app. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    # @option params [Array<Types::CustomRule>] :custom_rules
    #   <p>The custom rewrite and redirect rules for an Amplify app. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tag for an Amplify app. </p>
    # @option params [String] :build_spec
    #   <p>The build specification (build spec) for an Amplify app. </p>
    # @option params [String] :custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    # @option params [Boolean] :enable_auto_branch_creation
    #   <p>Enables automated branch creation for an Amplify app. </p>
    # @option params [Array<String>] :auto_branch_creation_patterns
    #   <p>The automated branch creation glob patterns for an Amplify app. </p>
    # @option params [Types::AutoBranchCreationConfig] :auto_branch_creation_config
    #   <p>The automated branch creation configuration for an Amplify app. </p>
    # @option params [Types::JobConfig] :job_config
    #   <p>Describes the configuration details that apply to the jobs for an Amplify app.</p>
    # @option params [Types::CacheConfig] :cache_config
    #   <p>The cache configuration for the Amplify app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     repository: "Repository",
    #     platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"],
    #     compute_role_arn: "ComputeRoleArn",
    #     iam_service_role_arn: "ServiceRoleArn",
    #     oauth_token: "OauthToken",
    #     access_token: "AccessToken",
    #     environment_variables: {
    #       "EnvKey" => "EnvValue"
    #     },
    #     enable_branch_auto_build: false,
    #     enable_branch_auto_deletion: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     custom_rules: [
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     build_spec: "BuildSpec",
    #     custom_headers: "CustomHeaders",
    #     enable_auto_branch_creation: false,
    #     auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #     auto_branch_creation_config: {
    #       stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #       framework: "Framework",
    #       enable_auto_build: false,
    #       environment_variables: {
    #         "EnvKey" => "EnvValue"
    #       },
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       enable_basic_auth: false,
    #       enable_performance_mode: false,
    #       build_spec: "BuildSpec",
    #       enable_pull_request_preview: false,
    #       pull_request_environment_name: "PullRequestEnvironmentName"
    #     },
    #     job_config: {
    #       build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #     },
    #     cache_config: {
    #       type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_id: "AppId", # required
    #       app_arn: "AppArn", # required
    #       name: "Name", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       description: "Description", # required
    #       repository: "Repository", # required
    #       platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       compute_role_arn: "ComputeRoleArn",
    #       iam_service_role_arn: "ServiceRoleArn",
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       default_domain: "DefaultDomain", # required
    #       enable_branch_auto_build: false, # required
    #       enable_branch_auto_deletion: false,
    #       enable_basic_auth: false, # required
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       custom_rules: [
    #         {
    #           source: "Source", # required
    #           target: "Target", # required
    #           status: "Status",
    #           condition: "Condition"
    #         }
    #       ],
    #       production_branch: {
    #         last_deploy_time: Time.now,
    #         status: "Status",
    #         thumbnail_url: "ThumbnailUrl",
    #         branch_name: "BranchName"
    #       },
    #       build_spec: "BuildSpec",
    #       custom_headers: "CustomHeaders",
    #       enable_auto_branch_creation: false,
    #       auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #       auto_branch_creation_config: {
    #         stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #         framework: "Framework",
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue"
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         build_spec: "BuildSpec",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName"
    #       },
    #       repository_clone_method: "SSH" # One of: ["SSH", "TOKEN", "SIGV4"],
    #       cache_config: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #       },
    #       webhook_create_time: Time.now,
    #       waf_configuration: {
    #         web_acl_arn: "WebAclArn",
    #         waf_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"],
    #         status_reason: "StatusReason"
    #       },
    #       job_config: {
    #         build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #       }
    #     }
    #   }
    # @return [Types::CreateAppResult]
    def create_app(params = {}, options = {})
      request = build_request(:create_app, params)
      request.send_request(options)
    end

    # <p>Creates a new backend environment for an Amplify app. </p>
    #          <p>This API is available only to Amplify Gen 1 applications where the
    #             backend is created using Amplify Studio or the Amplify
    #             command line interface (CLI). This API isn’t available to Amplify Gen 2
    #             applications. When you deploy an application with Amplify Gen 2, you provision the app's
    #             backend infrastructure using Typescript code.</p>
    # @param [Hash, Types::CreateBackendEnvironmentRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :environment_name
    #   <p>The name for the backend environment. </p>
    # @option params [String] :stack_name
    #   <p>The AWS CloudFormation stack name of a backend environment. </p>
    # @option params [String] :deployment_artifacts
    #   <p>The name of deployment artifacts. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName", # required
    #     stack_name: "StackName",
    #     deployment_artifacts: "DeploymentArtifacts"
    #   }
    #   options = {}
    #   response = client.create_backend_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backend_environment: { # required
    #       backend_environment_arn: "BackendEnvironmentArn", # required
    #       environment_name: "EnvironmentName", # required
    #       stack_name: "StackName",
    #       deployment_artifacts: "DeploymentArtifacts",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateBackendEnvironmentResult]
    def create_backend_environment(params = {}, options = {})
      request = build_request(:create_backend_environment, params)
      request.send_request(options)
    end

    # <p> Creates a new branch for an Amplify app. </p>
    # @param [Hash, Types::CreateBranchRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name for the branch. </p>
    # @option params [String] :description
    #   <p>The description for the branch. </p>
    # @option params [String] :stage
    #   <p>Describes the current stage for the branch. </p>
    # @option params [String] :framework
    #   <p> The framework for the branch. </p>
    # @option params [Boolean] :enable_notification
    #   <p> Enables notifications for the branch. </p>
    # @option params [Boolean] :enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    # @option params [Boolean] :enable_skew_protection
    #   <p>Specifies whether the skew protection feature is enabled for the branch.</p>
    #            <p>Deployment skew protection is available to Amplify applications to
    #               eliminate version skew issues between client and servers in web applications. When you
    #               apply skew protection to a branch, you can ensure that your clients always interact with
    #               the correct version of server-side assets, regardless of when a deployment occurs. For
    #               more information about skew protection, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html">Skew protection for Amplify deployments</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p> The environment variables for the branch. </p>
    # @option params [String] :basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    # @option params [Boolean] :enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    # @option params [Boolean] :enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #            <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> The tag for the branch. </p>
    # @option params [String] :build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    # @option params [String] :ttl
    #   <p> The content Time To Live (TTL) for the website in seconds. </p>
    # @option params [String] :display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    # @option params [Boolean] :enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    # @option params [String] :pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    # @option params [String] :backend_environment_arn
    #   <p>The Amazon Resource Name (ARN) for a backend environment that is part of a Gen 1
    #               Amplify app. </p>
    #            <p>This field is available to Amplify Gen 1 apps only where the backend is
    #               created using Amplify Studio or the Amplify command line
    #               interface (CLI).</p>
    # @option params [Types::Backend] :backend
    #   <p>The backend for a <code>Branch</code> of an Amplify app. Use for a
    #               backend created from an CloudFormation stack.</p>
    #            <p>This field is available to Amplify Gen 2 apps only. When you deploy an
    #               application with Amplify Gen 2, you provision the app's backend infrastructure using
    #               Typescript code.</p>
    # @option params [String] :compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to a branch of
    #               an SSR app. The SSR Compute role allows the Amplify Hosting compute
    #               service to securely access specific Amazon Web Services resources based on the role's
    #               permissions. For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute role</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #     stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #     framework: "Framework",
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     enable_skew_protection: false,
    #     environment_variables: {
    #       "EnvKey" => "EnvValue"
    #     },
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     enable_basic_auth: false,
    #     enable_performance_mode: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     build_spec: "BuildSpec",
    #     ttl: "TTL",
    #     display_name: "DisplayName",
    #     enable_pull_request_preview: false,
    #     pull_request_environment_name: "PullRequestEnvironmentName",
    #     backend_environment_arn: "BackendEnvironmentArn",
    #     backend: {
    #       stack_arn: "StackArn"
    #     },
    #     compute_role_arn: "ComputeRoleArn"
    #   }
    #   options = {}
    #   response = client.create_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branch: { # required
    #       branch_arn: "BranchArn", # required
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"], # required
    #       display_name: "DisplayName", # required
    #       enable_notification: false, # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       enable_auto_build: false, # required
    #       enable_skew_protection: false,
    #       custom_domains: ["CustomDomain"], # required
    #       framework: "Framework", # required
    #       active_job_id: "ActiveJobId", # required
    #       total_number_of_jobs: "TotalNumberOfJobs", # required
    #       enable_basic_auth: false, # required
    #       enable_performance_mode: false,
    #       thumbnail_url: "ThumbnailUrl",
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       build_spec: "BuildSpec",
    #       ttl: "TTL", # required
    #       associated_resources: ["AssociatedResource"],
    #       enable_pull_request_preview: false, # required
    #       pull_request_environment_name: "PullRequestEnvironmentName",
    #       destination_branch: "BranchName",
    #       source_branch: "BranchName",
    #       backend_environment_arn: "BackendEnvironmentArn",
    #       backend: {
    #         stack_arn: "StackArn"
    #       },
    #       compute_role_arn: "ComputeRoleArn"
    #     }
    #   }
    # @return [Types::CreateBranchResult]
    def create_branch(params = {}, options = {})
      request = build_request(:create_branch, params)
      request.send_request(options)
    end

    # <p>Creates a deployment for a manually deployed Amplify app. Manually deployed apps are
    #             not connected to a Git repository. </p>
    #          <p>The maximum duration between the <code>CreateDeployment</code> call and the
    #                 <code>StartDeployment</code> call cannot exceed 8 hours. If the duration exceeds 8
    #             hours, the <code>StartDeployment</code> call and the associated <code>Job</code> will
    #             fail.</p>
    # @param [Hash, Types::CreateDeploymentRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p> The name of the branch to use for the job. </p>
    # @option params [Hash<String, String>] :file_map
    #   <p> An optional file map that contains the file name as the key and the file content md5
    #               hash as the value. If this argument is provided, the service will generate a unique
    #               upload URL per file. Otherwise, the service will only generate a single upload URL for
    #               the zipped files. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     file_map: {
    #       "FileName" => "MD5Hash"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     file_upload_urls: { # required
    #       "FileName" => "UploadUrl"
    #     },
    #     zip_upload_url: "UploadUrl", # required
    #   }
    # @return [Types::CreateDeploymentResult]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a new domain association for an Amplify app. This action associates a custom
    #             domain with the Amplify app </p>
    # @param [Hash, Types::CreateDomainAssociationRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :domain_name
    #   <p> The domain name for the domain association. </p>
    # @option params [Boolean] :enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    # @option params [Array<Types::SubDomainSetting>] :sub_domain_settings
    #   <p> The setting for the subdomain. </p>
    # @option params [Array<String>] :auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    # @option params [String] :auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    # @option params [Types::CertificateSettings] :certificate_settings
    #   <p>The type of SSL/TLS certificate to use for your custom domain. If you don't specify a
    #               certificate type, Amplify uses the default certificate that it provisions and manages
    #               for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [ # required
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       }
    #     ],
    #     auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #     auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #     certificate_settings: {
    #       type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #       custom_certificate_arn: "CertificateArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_association: { # required
    #       domain_association_arn: "DomainAssociationArn", # required
    #       domain_name: "DomainName", # required
    #       enable_auto_sub_domain: false, # required
    #       auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #       auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #       domain_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"], # required
    #       update_status: "REQUESTING_CERTIFICATE" # One of: ["REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       status_reason: "StatusReason", # required
    #       certificate_verification_dns_record: "CertificateVerificationDNSRecord",
    #       sub_domains: [ # required
    #         {
    #           sub_domain_setting: { # required
    #             prefix: "DomainPrefix", # required
    #             branch_name: "BranchName", # required
    #           },
    #           verified: false, # required
    #           dns_record: "DNSRecord", # required
    #         }
    #       ],
    #       certificate: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #         custom_certificate_arn: "CertificateArn",
    #         certificate_verification_dns_record: "CertificateVerificationDNSRecord"
    #       }
    #     }
    #   }
    # @return [Types::CreateDomainAssociationResult]
    def create_domain_association(params = {}, options = {})
      request = build_request(:create_domain_association, params)
      request.send_request(options)
    end

    # <p>Creates a new webhook on an Amplify app. </p>
    # @param [Hash, Types::CreateWebhookRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name for a branch that is part of an Amplify app. </p>
    # @option params [String] :description
    #   <p>The description for a webhook. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.create_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: { # required
    #       webhook_arn: "WebhookArn", # required
    #       webhook_id: "WebhookId", # required
    #       webhook_url: "WebhookUrl", # required
    #       app_id: "AppId",
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateWebhookResult]
    def create_webhook(params = {}, options = {})
      request = build_request(:create_webhook, params)
      request.send_request(options)
    end

    # <p>Deletes an existing Amplify app specified by an app ID. </p>
    # @param [Hash, Types::DeleteAppRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #   }
    #   options = {}
    #   response = client.delete_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_id: "AppId", # required
    #       app_arn: "AppArn", # required
    #       name: "Name", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       description: "Description", # required
    #       repository: "Repository", # required
    #       platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       compute_role_arn: "ComputeRoleArn",
    #       iam_service_role_arn: "ServiceRoleArn",
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       default_domain: "DefaultDomain", # required
    #       enable_branch_auto_build: false, # required
    #       enable_branch_auto_deletion: false,
    #       enable_basic_auth: false, # required
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       custom_rules: [
    #         {
    #           source: "Source", # required
    #           target: "Target", # required
    #           status: "Status",
    #           condition: "Condition"
    #         }
    #       ],
    #       production_branch: {
    #         last_deploy_time: Time.now,
    #         status: "Status",
    #         thumbnail_url: "ThumbnailUrl",
    #         branch_name: "BranchName"
    #       },
    #       build_spec: "BuildSpec",
    #       custom_headers: "CustomHeaders",
    #       enable_auto_branch_creation: false,
    #       auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #       auto_branch_creation_config: {
    #         stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #         framework: "Framework",
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue"
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         build_spec: "BuildSpec",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName"
    #       },
    #       repository_clone_method: "SSH" # One of: ["SSH", "TOKEN", "SIGV4"],
    #       cache_config: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #       },
    #       webhook_create_time: Time.now,
    #       waf_configuration: {
    #         web_acl_arn: "WebAclArn",
    #         waf_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"],
    #         status_reason: "StatusReason"
    #       },
    #       job_config: {
    #         build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteAppResult]
    def delete_app(params = {}, options = {})
      request = build_request(:delete_app, params)
      request.send_request(options)
    end

    # <p>Deletes a backend environment for an Amplify app. </p>
    #          <p>This API is available only to Amplify Gen 1 applications where the
    #             backend is created using Amplify Studio or the Amplify
    #             command line interface (CLI). This API isn’t available to Amplify Gen 2
    #             applications. When you deploy an application with Amplify Gen 2, you provision the app's
    #             backend infrastructure using Typescript code.</p>
    # @param [Hash, Types::DeleteBackendEnvironmentRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID of an Amplify app. </p>
    # @option params [String] :environment_name
    #   <p>The name of a backend environment of an Amplify app. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.delete_backend_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backend_environment: { # required
    #       backend_environment_arn: "BackendEnvironmentArn", # required
    #       environment_name: "EnvironmentName", # required
    #       stack_name: "StackName",
    #       deployment_artifacts: "DeploymentArtifacts",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::DeleteBackendEnvironmentResult]
    def delete_backend_environment(params = {}, options = {})
      request = build_request(:delete_backend_environment, params)
      request.send_request(options)
    end

    # <p> Deletes a branch for an Amplify app. </p>
    # @param [Hash, Types::DeleteBranchRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #   }
    #   options = {}
    #   response = client.delete_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branch: { # required
    #       branch_arn: "BranchArn", # required
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"], # required
    #       display_name: "DisplayName", # required
    #       enable_notification: false, # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       enable_auto_build: false, # required
    #       enable_skew_protection: false,
    #       custom_domains: ["CustomDomain"], # required
    #       framework: "Framework", # required
    #       active_job_id: "ActiveJobId", # required
    #       total_number_of_jobs: "TotalNumberOfJobs", # required
    #       enable_basic_auth: false, # required
    #       enable_performance_mode: false,
    #       thumbnail_url: "ThumbnailUrl",
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       build_spec: "BuildSpec",
    #       ttl: "TTL", # required
    #       associated_resources: ["AssociatedResource"],
    #       enable_pull_request_preview: false, # required
    #       pull_request_environment_name: "PullRequestEnvironmentName",
    #       destination_branch: "BranchName",
    #       source_branch: "BranchName",
    #       backend_environment_arn: "BackendEnvironmentArn",
    #       backend: {
    #         stack_arn: "StackArn"
    #       },
    #       compute_role_arn: "ComputeRoleArn"
    #     }
    #   }
    # @return [Types::DeleteBranchResult]
    def delete_branch(params = {}, options = {})
      request = build_request(:delete_branch, params)
      request.send_request(options)
    end

    # <p>Deletes a domain association for an Amplify app. </p>
    # @param [Hash, Types::DeleteDomainAssociationRequest] params
    # @option params [String] :app_id
    #   <p> The unique id for an Amplify app. </p>
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_association: { # required
    #       domain_association_arn: "DomainAssociationArn", # required
    #       domain_name: "DomainName", # required
    #       enable_auto_sub_domain: false, # required
    #       auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #       auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #       domain_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"], # required
    #       update_status: "REQUESTING_CERTIFICATE" # One of: ["REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       status_reason: "StatusReason", # required
    #       certificate_verification_dns_record: "CertificateVerificationDNSRecord",
    #       sub_domains: [ # required
    #         {
    #           sub_domain_setting: { # required
    #             prefix: "DomainPrefix", # required
    #             branch_name: "BranchName", # required
    #           },
    #           verified: false, # required
    #           dns_record: "DNSRecord", # required
    #         }
    #       ],
    #       certificate: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #         custom_certificate_arn: "CertificateArn",
    #         certificate_verification_dns_record: "CertificateVerificationDNSRecord"
    #       }
    #     }
    #   }
    # @return [Types::DeleteDomainAssociationResult]
    def delete_domain_association(params = {}, options = {})
      request = build_request(:delete_domain_association, params)
      request.send_request(options)
    end

    # <p> Deletes a job for a branch of an Amplify app. </p>
    # @param [Hash, Types::DeleteJobRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to use for the job. </p>
    # @option params [String] :job_id
    #   <p> The unique ID for the job. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.delete_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summary: { # required
    #       job_arn: "JobArn", # required
    #       job_id: "JobId", # required
    #       commit_id: "CommitId", # required
    #       commit_message: "CommitMessage", # required
    #       commit_time: Time.now, # required
    #       start_time: Time.now, # required
    #       status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #       end_time: Time.now,
    #       job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #       source_url: "SourceUrl",
    #       source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #     }
    #   }
    # @return [Types::DeleteJobResult]
    def delete_job(params = {}, options = {})
      request = build_request(:delete_job, params)
      request.send_request(options)
    end

    # <p>Deletes a webhook. </p>
    # @param [Hash, Types::DeleteWebhookRequest] params
    # @option params [String] :webhook_id
    #   <p>The unique ID for a webhook. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook_id: "WebhookId", # required
    #   }
    #   options = {}
    #   response = client.delete_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: { # required
    #       webhook_arn: "WebhookArn", # required
    #       webhook_id: "WebhookId", # required
    #       webhook_url: "WebhookUrl", # required
    #       app_id: "AppId",
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::DeleteWebhookResult]
    def delete_webhook(params = {}, options = {})
      request = build_request(:delete_webhook, params)
      request.send_request(options)
    end

    # <p>Returns the website access logs for a specific time range using a presigned URL.
    #         </p>
    # @param [Hash, Types::GenerateAccessLogsRequest] params
    # @option params [Time] :start_time
    #   <p>The time at which the logs should start. The time range specified is inclusive of the
    #               start time. </p>
    # @option params [Time] :end_time
    #   <p>The time at which the logs should end. The time range specified is inclusive of the
    #               end time. </p>
    # @option params [String] :domain_name
    #   <p>The name of the domain. </p>
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     domain_name: "DomainName", # required
    #     app_id: "AppId", # required
    #   }
    #   options = {}
    #   response = client.generate_access_logs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_url: "LogUrl"
    #   }
    # @return [Types::GenerateAccessLogsResult]
    def generate_access_logs(params = {}, options = {})
      request = build_request(:generate_access_logs, params)
      request.send_request(options)
    end

    # <p>Returns an existing Amplify app specified by an app ID.</p>
    # @param [Hash, Types::GetAppRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #   }
    #   options = {}
    #   response = client.get_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_id: "AppId", # required
    #       app_arn: "AppArn", # required
    #       name: "Name", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       description: "Description", # required
    #       repository: "Repository", # required
    #       platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       compute_role_arn: "ComputeRoleArn",
    #       iam_service_role_arn: "ServiceRoleArn",
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       default_domain: "DefaultDomain", # required
    #       enable_branch_auto_build: false, # required
    #       enable_branch_auto_deletion: false,
    #       enable_basic_auth: false, # required
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       custom_rules: [
    #         {
    #           source: "Source", # required
    #           target: "Target", # required
    #           status: "Status",
    #           condition: "Condition"
    #         }
    #       ],
    #       production_branch: {
    #         last_deploy_time: Time.now,
    #         status: "Status",
    #         thumbnail_url: "ThumbnailUrl",
    #         branch_name: "BranchName"
    #       },
    #       build_spec: "BuildSpec",
    #       custom_headers: "CustomHeaders",
    #       enable_auto_branch_creation: false,
    #       auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #       auto_branch_creation_config: {
    #         stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #         framework: "Framework",
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue"
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         build_spec: "BuildSpec",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName"
    #       },
    #       repository_clone_method: "SSH" # One of: ["SSH", "TOKEN", "SIGV4"],
    #       cache_config: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #       },
    #       webhook_create_time: Time.now,
    #       waf_configuration: {
    #         web_acl_arn: "WebAclArn",
    #         waf_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"],
    #         status_reason: "StatusReason"
    #       },
    #       job_config: {
    #         build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetAppResult]
    def get_app(params = {}, options = {})
      request = build_request(:get_app, params)
      request.send_request(options)
    end

    # <p>Returns the artifact info that corresponds to an artifact id. </p>
    # @param [Hash, Types::GetArtifactUrlRequest] params
    # @option params [String] :artifact_id
    #   <p>The unique ID for an artifact. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     artifact_id: "ArtifactId", # required
    #   }
    #   options = {}
    #   response = client.get_artifact_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifact_id: "ArtifactId", # required
    #     artifact_url: "ArtifactUrl", # required
    #   }
    # @return [Types::GetArtifactUrlResult]
    def get_artifact_url(params = {}, options = {})
      request = build_request(:get_artifact_url, params)
      request.send_request(options)
    end

    # <p>Returns a backend environment for an Amplify app. </p>
    #          <p>This API is available only to Amplify Gen 1 applications where the
    #             backend is created using Amplify Studio or the Amplify
    #             command line interface (CLI). This API isn’t available to Amplify Gen 2
    #             applications. When you deploy an application with Amplify Gen 2, you provision the app's
    #             backend infrastructure using Typescript code.</p>
    # @param [Hash, Types::GetBackendEnvironmentRequest] params
    # @option params [String] :app_id
    #   <p>The unique id for an Amplify app. </p>
    # @option params [String] :environment_name
    #   <p>The name for the backend environment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.get_backend_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backend_environment: { # required
    #       backend_environment_arn: "BackendEnvironmentArn", # required
    #       environment_name: "EnvironmentName", # required
    #       stack_name: "StackName",
    #       deployment_artifacts: "DeploymentArtifacts",
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetBackendEnvironmentResult]
    def get_backend_environment(params = {}, options = {})
      request = build_request(:get_backend_environment, params)
      request.send_request(options)
    end

    # <p> Returns a branch for an Amplify app. </p>
    # @param [Hash, Types::GetBranchRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #   }
    #   options = {}
    #   response = client.get_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branch: { # required
    #       branch_arn: "BranchArn", # required
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"], # required
    #       display_name: "DisplayName", # required
    #       enable_notification: false, # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       enable_auto_build: false, # required
    #       enable_skew_protection: false,
    #       custom_domains: ["CustomDomain"], # required
    #       framework: "Framework", # required
    #       active_job_id: "ActiveJobId", # required
    #       total_number_of_jobs: "TotalNumberOfJobs", # required
    #       enable_basic_auth: false, # required
    #       enable_performance_mode: false,
    #       thumbnail_url: "ThumbnailUrl",
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       build_spec: "BuildSpec",
    #       ttl: "TTL", # required
    #       associated_resources: ["AssociatedResource"],
    #       enable_pull_request_preview: false, # required
    #       pull_request_environment_name: "PullRequestEnvironmentName",
    #       destination_branch: "BranchName",
    #       source_branch: "BranchName",
    #       backend_environment_arn: "BackendEnvironmentArn",
    #       backend: {
    #         stack_arn: "StackArn"
    #       },
    #       compute_role_arn: "ComputeRoleArn"
    #     }
    #   }
    # @return [Types::GetBranchResult]
    def get_branch(params = {}, options = {})
      request = build_request(:get_branch, params)
      request.send_request(options)
    end

    # <p>Returns the domain information for an Amplify app. </p>
    # @param [Hash, Types::GetDomainAssociationRequest] params
    # @option params [String] :app_id
    #   <p> The unique id for an Amplify app. </p>
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.get_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_association: { # required
    #       domain_association_arn: "DomainAssociationArn", # required
    #       domain_name: "DomainName", # required
    #       enable_auto_sub_domain: false, # required
    #       auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #       auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #       domain_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"], # required
    #       update_status: "REQUESTING_CERTIFICATE" # One of: ["REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       status_reason: "StatusReason", # required
    #       certificate_verification_dns_record: "CertificateVerificationDNSRecord",
    #       sub_domains: [ # required
    #         {
    #           sub_domain_setting: { # required
    #             prefix: "DomainPrefix", # required
    #             branch_name: "BranchName", # required
    #           },
    #           verified: false, # required
    #           dns_record: "DNSRecord", # required
    #         }
    #       ],
    #       certificate: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #         custom_certificate_arn: "CertificateArn",
    #         certificate_verification_dns_record: "CertificateVerificationDNSRecord"
    #       }
    #     }
    #   }
    # @return [Types::GetDomainAssociationResult]
    def get_domain_association(params = {}, options = {})
      request = build_request(:get_domain_association, params)
      request.send_request(options)
    end

    # <p> Returns a job for a branch of an Amplify app. </p>
    # @param [Hash, Types::GetJobRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to use for the job. </p>
    # @option params [String] :job_id
    #   <p>The unique ID for the job. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: { # required
    #       summary: { # required
    #         job_arn: "JobArn", # required
    #         job_id: "JobId", # required
    #         commit_id: "CommitId", # required
    #         commit_message: "CommitMessage", # required
    #         commit_time: Time.now, # required
    #         start_time: Time.now, # required
    #         status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #         end_time: Time.now,
    #         job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #         source_url: "SourceUrl",
    #         source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #       },
    #       steps: [ # required
    #         {
    #           step_name: "StepName", # required
    #           start_time: Time.now, # required
    #           status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #           end_time: Time.now, # required
    #           log_url: "LogUrl",
    #           artifacts_url: "ArtifactsUrl",
    #           test_artifacts_url: "TestArtifactsUrl",
    #           test_config_url: "TestConfigUrl",
    #           screenshots: {
    #             "ThumbnailName" => "ThumbnailUrl"
    #           },
    #           status_reason: "StatusReason",
    #           context: "Context"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetJobResult]
    def get_job(params = {}, options = {})
      request = build_request(:get_job, params)
      request.send_request(options)
    end

    # <p>Returns the webhook information that corresponds to a specified webhook ID. </p>
    # @param [Hash, Types::GetWebhookRequest] params
    # @option params [String] :webhook_id
    #   <p>The unique ID for a webhook. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook_id: "WebhookId", # required
    #   }
    #   options = {}
    #   response = client.get_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: { # required
    #       webhook_arn: "WebhookArn", # required
    #       webhook_id: "WebhookId", # required
    #       webhook_url: "WebhookUrl", # required
    #       app_id: "AppId",
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetWebhookResult]
    def get_webhook(params = {}, options = {})
      request = build_request(:get_webhook, params)
      request.send_request(options)
    end

    # <p>Returns a list of the existing Amplify apps. </p>
    # @param [Hash, Types::ListAppsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token. If non-null, the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps: [ # required
    #       {
    #         app_id: "AppId", # required
    #         app_arn: "AppArn", # required
    #         name: "Name", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         description: "Description", # required
    #         repository: "Repository", # required
    #         platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"], # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         compute_role_arn: "ComputeRoleArn",
    #         iam_service_role_arn: "ServiceRoleArn",
    #         environment_variables: { # required
    #           "EnvKey" => "EnvValue"
    #         },
    #         default_domain: "DefaultDomain", # required
    #         enable_branch_auto_build: false, # required
    #         enable_branch_auto_deletion: false,
    #         enable_basic_auth: false, # required
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         custom_rules: [
    #           {
    #             source: "Source", # required
    #             target: "Target", # required
    #             status: "Status",
    #             condition: "Condition"
    #           }
    #         ],
    #         production_branch: {
    #           last_deploy_time: Time.now,
    #           status: "Status",
    #           thumbnail_url: "ThumbnailUrl",
    #           branch_name: "BranchName"
    #         },
    #         build_spec: "BuildSpec",
    #         custom_headers: "CustomHeaders",
    #         enable_auto_branch_creation: false,
    #         auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #         auto_branch_creation_config: {
    #           stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #           framework: "Framework",
    #           enable_auto_build: false,
    #           environment_variables: {
    #             "EnvKey" => "EnvValue"
    #           },
    #           basic_auth_credentials: "BasicAuthCredentials",
    #           enable_basic_auth: false,
    #           enable_performance_mode: false,
    #           build_spec: "BuildSpec",
    #           enable_pull_request_preview: false,
    #           pull_request_environment_name: "PullRequestEnvironmentName"
    #         },
    #         repository_clone_method: "SSH" # One of: ["SSH", "TOKEN", "SIGV4"],
    #         cache_config: {
    #           type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #         },
    #         webhook_create_time: Time.now,
    #         waf_configuration: {
    #           web_acl_arn: "WebAclArn",
    #           waf_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"],
    #           status_reason: "StatusReason"
    #         },
    #         job_config: {
    #           build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppsResult]
    def list_apps(params = {}, options = {})
      request = build_request(:list_apps, params)
      request.send_request(options)
    end

    # <p>Returns a list of end-to-end testing artifacts for a specified app, branch, and
    #             job.</p>
    #          <p>To return the build artifacts, use the <a href="https://docs.aws.amazon.com/amplify/latest/APIReference/API_GetJob.html">GetJob</a> API.</p>
    #          <p>For more information about Amplify testing support, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/running-tests.html">Setting up
    #                 end-to-end Cypress tests for your Amplify application</a> in the
    #                     <i>Amplify Hosting User Guide</i>. </p>
    # @param [Hash, Types::ListArtifactsRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of a branch that is part of an Amplify app. </p>
    # @option params [String] :job_id
    #   <p>The unique ID for a job. </p>
    # @option params [String] :next_token
    #   <p>A pagination token. Set to null to start listing artifacts from start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more artifacts.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifacts: [ # required
    #       {
    #         artifact_file_name: "ArtifactFileName", # required
    #         artifact_id: "ArtifactId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListArtifactsResult]
    def list_artifacts(params = {}, options = {})
      request = build_request(:list_artifacts, params)
      request.send_request(options)
    end

    # <p>Lists the backend environments for an Amplify app. </p>
    #          <p>This API is available only to Amplify Gen 1 applications where the
    #             backend is created using Amplify Studio or the Amplify
    #             command line interface (CLI). This API isn’t available to Amplify Gen 2
    #             applications. When you deploy an application with Amplify Gen 2, you provision the app's
    #             backend infrastructure using Typescript code.</p>
    # @param [Hash, Types::ListBackendEnvironmentsRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment </p>
    # @option params [String] :next_token
    #   <p>A pagination token. Set to null to start listing backend environments from the start.
    #               If a non-null pagination token is returned in a result, pass its value in here to list
    #               more backend environments. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_backend_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backend_environments: [ # required
    #       {
    #         backend_environment_arn: "BackendEnvironmentArn", # required
    #         environment_name: "EnvironmentName", # required
    #         stack_name: "StackName",
    #         deployment_artifacts: "DeploymentArtifacts",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBackendEnvironmentsResult]
    def list_backend_environments(params = {}, options = {})
      request = build_request(:list_backend_environments, params)
      request.send_request(options)
    end

    # <p> Lists the branches of an Amplify app. </p>
    # @param [Hash, Types::ListBranchesRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :next_token
    #   <p>A pagination token. Set to null to start listing branches from the start. If a
    #               non-null pagination token is returned in a result, pass its value in here to list more
    #               branches. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_branches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branches: [ # required
    #       {
    #         branch_arn: "BranchArn", # required
    #         branch_name: "BranchName", # required
    #         description: "Description", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"], # required
    #         display_name: "DisplayName", # required
    #         enable_notification: false, # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         environment_variables: { # required
    #           "EnvKey" => "EnvValue"
    #         },
    #         enable_auto_build: false, # required
    #         enable_skew_protection: false,
    #         custom_domains: ["CustomDomain"], # required
    #         framework: "Framework", # required
    #         active_job_id: "ActiveJobId", # required
    #         total_number_of_jobs: "TotalNumberOfJobs", # required
    #         enable_basic_auth: false, # required
    #         enable_performance_mode: false,
    #         thumbnail_url: "ThumbnailUrl",
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         build_spec: "BuildSpec",
    #         ttl: "TTL", # required
    #         associated_resources: ["AssociatedResource"],
    #         enable_pull_request_preview: false, # required
    #         pull_request_environment_name: "PullRequestEnvironmentName",
    #         destination_branch: "BranchName",
    #         source_branch: "BranchName",
    #         backend_environment_arn: "BackendEnvironmentArn",
    #         backend: {
    #           stack_arn: "StackArn"
    #         },
    #         compute_role_arn: "ComputeRoleArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBranchesResult]
    def list_branches(params = {}, options = {})
      request = build_request(:list_branches, params)
      request.send_request(options)
    end

    # <p>Returns the domain associations for an Amplify app. </p>
    # @param [Hash, Types::ListDomainAssociationsRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing apps from the start. If non-null, a
    #               pagination token is returned in a result. Pass its value in here to list more projects.
    #           </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_domain_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_associations: [ # required
    #       {
    #         domain_association_arn: "DomainAssociationArn", # required
    #         domain_name: "DomainName", # required
    #         enable_auto_sub_domain: false, # required
    #         auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #         auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #         domain_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"], # required
    #         update_status: "REQUESTING_CERTIFICATE" # One of: ["REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #         status_reason: "StatusReason", # required
    #         certificate_verification_dns_record: "CertificateVerificationDNSRecord",
    #         sub_domains: [ # required
    #           {
    #             sub_domain_setting: { # required
    #               prefix: "DomainPrefix", # required
    #               branch_name: "BranchName", # required
    #             },
    #             verified: false, # required
    #             dns_record: "DNSRecord", # required
    #           }
    #         ],
    #         certificate: {
    #           type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #           custom_certificate_arn: "CertificateArn",
    #           certificate_verification_dns_record: "CertificateVerificationDNSRecord"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDomainAssociationsResult]
    def list_domain_associations(params = {}, options = {})
      request = build_request(:list_domain_associations, params)
      request.send_request(options)
    end

    # <p> Lists the jobs for a branch of an Amplify app. </p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to use for the request. </p>
    # @option params [String] :next_token
    #   <p>A pagination token. Set to null to start listing steps from the start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more steps.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summaries: [ # required
    #       {
    #         job_arn: "JobArn", # required
    #         job_id: "JobId", # required
    #         commit_id: "CommitId", # required
    #         commit_message: "CommitMessage", # required
    #         commit_time: Time.now, # required
    #         start_time: Time.now, # required
    #         status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #         end_time: Time.now,
    #         job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #         source_url: "SourceUrl",
    #         source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobsResult]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a specified Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to list tags. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of webhooks for an Amplify app. </p>
    # @param [Hash, Types::ListWebhooksRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :next_token
    #   <p>A pagination token. Set to null to start listing webhooks from the start. If
    #               non-null,the pagination token is returned in a result. Pass its value in here to list
    #               more webhooks. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to list in a single response. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_webhooks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhooks: [ # required
    #       {
    #         webhook_arn: "WebhookArn", # required
    #         webhook_id: "WebhookId", # required
    #         webhook_url: "WebhookUrl", # required
    #         app_id: "AppId",
    #         branch_name: "BranchName", # required
    #         description: "Description", # required
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWebhooksResult]
    def list_webhooks(params = {}, options = {})
      request = build_request(:list_webhooks, params)
      request.send_request(options)
    end

    # <p>Starts a deployment for a manually deployed app. Manually deployed apps are not
    #             connected to a Git repository. </p>
    #          <p>The maximum duration between the <code>CreateDeployment</code> call and the
    #                 <code>StartDeployment</code> call cannot exceed 8 hours. If the duration exceeds 8
    #             hours, the <code>StartDeployment</code> call and the associated <code>Job</code> will
    #             fail.</p>
    # @param [Hash, Types::StartDeploymentRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to use for the deployment job. </p>
    # @option params [String] :job_id
    #   <p>The job ID for this deployment that is generated by the <code>CreateDeployment</code>
    #               request. </p>
    # @option params [String] :source_url
    #   <p>The source URL for the deployment that is used when calling
    #                   <code>StartDeployment</code> without <code>CreateDeployment</code>. The source URL
    #               can be either an HTTP GET URL that is publicly accessible and downloads a single .zip
    #               file, or an Amazon S3 bucket and prefix.</p>
    # @option params [String] :source_url_type
    #   <p>The type of source specified by the <code>sourceURL</code>. If the value is
    #                   <code>ZIP</code>, the source is a .zip file. If the value is
    #                   <code>BUCKET_PREFIX</code>, the source is an Amazon S3 bucket and prefix. If
    #               no value is specified, the default is <code>ZIP</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId",
    #     source_url: "SourceUrl",
    #     source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #   }
    #   options = {}
    #   response = client.start_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summary: { # required
    #       job_arn: "JobArn", # required
    #       job_id: "JobId", # required
    #       commit_id: "CommitId", # required
    #       commit_message: "CommitMessage", # required
    #       commit_time: Time.now, # required
    #       start_time: Time.now, # required
    #       status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #       end_time: Time.now,
    #       job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #       source_url: "SourceUrl",
    #       source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #     }
    #   }
    # @return [Types::StartDeploymentResult]
    def start_deployment(params = {}, options = {})
      request = build_request(:start_deployment, params)
      request.send_request(options)
    end

    # <p> Starts a new job for a branch of an Amplify app. </p>
    # @param [Hash, Types::StartJobRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to use for the job. </p>
    # @option params [String] :job_id
    #   <p>The unique ID for an existing job. This is required if the value of
    #                   <code>jobType</code> is <code>RETRY</code>. </p>
    # @option params [String] :job_type
    #   <p>Describes the type for the job. The job type <code>RELEASE</code> starts a new job
    #               with the latest change from the specified branch. This value is available only for apps
    #               that are connected to a repository. </p>
    #            <p>The job type <code>RETRY</code> retries an existing job. If the job type value is
    #                   <code>RETRY</code>, the <code>jobId</code> is also required. </p>
    # @option params [String] :job_reason
    #   <p>A descriptive reason for starting the job.</p>
    # @option params [String] :commit_id
    #   <p> The commit ID from a third-party repository provider for the job. </p>
    # @option params [String] :commit_message
    #   <p> The commit message from a third-party repository provider for the job. </p>
    # @option params [Time] :commit_time
    #   <p> The commit date and time for the job. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId",
    #     job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #     job_reason: "JobReason",
    #     commit_id: "CommitId",
    #     commit_message: "CommitMessage",
    #     commit_time: Time.now
    #   }
    #   options = {}
    #   response = client.start_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summary: { # required
    #       job_arn: "JobArn", # required
    #       job_id: "JobId", # required
    #       commit_id: "CommitId", # required
    #       commit_message: "CommitMessage", # required
    #       commit_time: Time.now, # required
    #       start_time: Time.now, # required
    #       status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #       end_time: Time.now,
    #       job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #       source_url: "SourceUrl",
    #       source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #     }
    #   }
    # @return [Types::StartJobResult]
    def start_job(params = {}, options = {})
      request = build_request(:start_job, params)
      request.send_request(options)
    end

    # <p> Stops a job that is in progress for a branch of an Amplify app. </p>
    # @param [Hash, Types::StopJobRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch to use for the stop job request. </p>
    # @option params [String] :job_id
    #   <p> The unique id for the job. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summary: { # required
    #       job_arn: "JobArn", # required
    #       job_id: "JobId", # required
    #       commit_id: "CommitId", # required
    #       commit_message: "CommitMessage", # required
    #       commit_time: Time.now, # required
    #       start_time: Time.now, # required
    #       status: "CREATED" # One of: ["CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"], # required
    #       end_time: Time.now,
    #       job_type: "RELEASE" # One of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"], # required
    #       source_url: "SourceUrl",
    #       source_url_type: "ZIP" # One of: ["ZIP", "BUCKET_PREFIX"]
    #     }
    #   }
    # @return [Types::StopJobResult]
    def stop_job(params = {}, options = {})
      request = build_request(:stop_job, params)
      request.send_request(options)
    end

    # <p>Tags the resource with a tag key and value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to tag a resource. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to tag the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Untags a resource with a specified Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to untag a resource. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to use to untag a resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Updates an existing Amplify app. </p>
    # @param [Hash, Types::UpdateAppRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for an Amplify app. </p>
    # @option params [String] :name
    #   <p>The name for an Amplify app. </p>
    # @option params [String] :description
    #   <p>The description for an Amplify app. </p>
    # @option params [String] :platform
    #   <p>The platform for the Amplify app. For a static app, set the platform type to
    #                   <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform
    #               type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR
    #               support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>
    #            <p>If you are deploying an SSG only app with Next.js version 14 or later, you must set
    #               the platform type to <code>WEB_COMPUTE</code>.</p>
    # @option params [String] :compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to an SSR app.
    #               The SSR Compute role allows the Amplify Hosting compute service to
    #               securely access specific Amazon Web Services resources based on the role's permissions.
    #               For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute
    #                   role</a> in the <i>Amplify User Guide</i>.</p>
    # @option params [String] :iam_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>The environment variables for an Amplify app. </p>
    # @option params [Boolean] :enable_branch_auto_build
    #   <p>Enables branch auto-building for an Amplify app. </p>
    # @option params [Boolean] :enable_branch_auto_deletion
    #   <p>Automatically disconnects a branch in the Amplify console when you delete a branch
    #               from your Git repository. </p>
    # @option params [Boolean] :enable_basic_auth
    #   <p>Enables basic authorization for an Amplify app. </p>
    # @option params [String] :basic_auth_credentials
    #   <p>The basic authorization credentials for an Amplify app. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    # @option params [Array<Types::CustomRule>] :custom_rules
    #   <p>The custom redirect and rewrite rules for an Amplify app. </p>
    # @option params [String] :build_spec
    #   <p>The build specification (build spec) for an Amplify app. </p>
    # @option params [String] :custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    # @option params [Boolean] :enable_auto_branch_creation
    #   <p>Enables automated branch creation for an Amplify app. </p>
    # @option params [Array<String>] :auto_branch_creation_patterns
    #   <p>Describes the automated branch creation glob patterns for an Amplify app. </p>
    # @option params [Types::AutoBranchCreationConfig] :auto_branch_creation_config
    #   <p>The automated branch creation configuration for an Amplify app. </p>
    # @option params [String] :repository
    #   <p>The name of the Git repository for an Amplify app.</p>
    # @option params [String] :oauth_token
    #   <p>The OAuth token for a third-party source control system for an Amplify app. The OAuth
    #               token is used to create a webhook and a read-only deploy key using SSH cloning. The
    #               OAuth token is not stored.</p>
    #            <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as
    #               Bitbucket or CodeCommit.</p>
    #            <p>To authorize access to GitHub as your repository provider, use
    #                   <code>accessToken</code>.</p>
    #            <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you
    #               update an app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    # @option params [String] :access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #            <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #            <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               update an app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    # @option params [Types::JobConfig] :job_config
    #   <p>Describes the configuration details that apply to the jobs for an Amplify app.</p>
    # @option params [Types::CacheConfig] :cache_config
    #   <p>The cache configuration for the Amplify app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     name: "Name",
    #     description: "Description",
    #     platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"],
    #     compute_role_arn: "ComputeRoleArn",
    #     iam_service_role_arn: "ServiceRoleArn",
    #     environment_variables: {
    #       "EnvKey" => "EnvValue"
    #     },
    #     enable_branch_auto_build: false,
    #     enable_branch_auto_deletion: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     custom_rules: [
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition"
    #       }
    #     ],
    #     build_spec: "BuildSpec",
    #     custom_headers: "CustomHeaders",
    #     enable_auto_branch_creation: false,
    #     auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #     auto_branch_creation_config: {
    #       stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #       framework: "Framework",
    #       enable_auto_build: false,
    #       environment_variables: {
    #         "EnvKey" => "EnvValue"
    #       },
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       enable_basic_auth: false,
    #       enable_performance_mode: false,
    #       build_spec: "BuildSpec",
    #       enable_pull_request_preview: false,
    #       pull_request_environment_name: "PullRequestEnvironmentName"
    #     },
    #     repository: "Repository",
    #     oauth_token: "OauthToken",
    #     access_token: "AccessToken",
    #     job_config: {
    #       build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #     },
    #     cache_config: {
    #       type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_id: "AppId", # required
    #       app_arn: "AppArn", # required
    #       name: "Name", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       description: "Description", # required
    #       repository: "Repository", # required
    #       platform: "WEB" # One of: ["WEB", "WEB_DYNAMIC", "WEB_COMPUTE"], # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       compute_role_arn: "ComputeRoleArn",
    #       iam_service_role_arn: "ServiceRoleArn",
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       default_domain: "DefaultDomain", # required
    #       enable_branch_auto_build: false, # required
    #       enable_branch_auto_deletion: false,
    #       enable_basic_auth: false, # required
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       custom_rules: [
    #         {
    #           source: "Source", # required
    #           target: "Target", # required
    #           status: "Status",
    #           condition: "Condition"
    #         }
    #       ],
    #       production_branch: {
    #         last_deploy_time: Time.now,
    #         status: "Status",
    #         thumbnail_url: "ThumbnailUrl",
    #         branch_name: "BranchName"
    #       },
    #       build_spec: "BuildSpec",
    #       custom_headers: "CustomHeaders",
    #       enable_auto_branch_creation: false,
    #       auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #       auto_branch_creation_config: {
    #         stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #         framework: "Framework",
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue"
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         build_spec: "BuildSpec",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName"
    #       },
    #       repository_clone_method: "SSH" # One of: ["SSH", "TOKEN", "SIGV4"],
    #       cache_config: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"], # required
    #       },
    #       webhook_create_time: Time.now,
    #       waf_configuration: {
    #         web_acl_arn: "WebAclArn",
    #         waf_status: "ASSOCIATING" # One of: ["ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"],
    #         status_reason: "StatusReason"
    #       },
    #       job_config: {
    #         build_compute_type: "STANDARD_8GB" # One of: ["STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"], # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateAppResult]
    def update_app(params = {}, options = {})
      request = build_request(:update_app, params)
      request.send_request(options)
    end

    # <p> Updates a branch for an Amplify app. </p>
    # @param [Hash, Types::UpdateBranchRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :branch_name
    #   <p>The name of the branch. </p>
    # @option params [String] :description
    #   <p> The description for the branch. </p>
    # @option params [String] :framework
    #   <p> The framework for the branch. </p>
    # @option params [String] :stage
    #   <p> Describes the current stage for the branch. </p>
    # @option params [Boolean] :enable_notification
    #   <p> Enables notifications for the branch. </p>
    # @option params [Boolean] :enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    # @option params [Boolean] :enable_skew_protection
    #   <p>Specifies whether the skew protection feature is enabled for the branch.</p>
    #            <p>Deployment skew protection is available to Amplify applications to
    #               eliminate version skew issues between client and servers in web applications. When you
    #               apply skew protection to a branch, you can ensure that your clients always interact with
    #               the correct version of server-side assets, regardless of when a deployment occurs. For
    #               more information about skew protection, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html">Skew protection for Amplify deployments</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p> The environment variables for the branch. </p>
    # @option params [String] :basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    # @option params [Boolean] :enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    # @option params [Boolean] :enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #            <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    # @option params [String] :build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    # @option params [String] :ttl
    #   <p> The content Time to Live (TTL) for the website in seconds. </p>
    # @option params [String] :display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    # @option params [Boolean] :enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    # @option params [String] :pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    # @option params [String] :backend_environment_arn
    #   <p>The Amazon Resource Name (ARN) for a backend environment that is part of a Gen 1
    #               Amplify app. </p>
    #            <p>This field is available to Amplify Gen 1 apps only where the backend is
    #               created using Amplify Studio or the Amplify command line
    #               interface (CLI).</p>
    # @option params [Types::Backend] :backend
    #   <p>The backend for a <code>Branch</code> of an Amplify app. Use for a
    #               backend created from an CloudFormation stack.</p>
    #            <p>This field is available to Amplify Gen 2 apps only. When you deploy an
    #               application with Amplify Gen 2, you provision the app's backend infrastructure using
    #               Typescript code.</p>
    # @option params [String] :compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to a branch of
    #               an SSR app. The SSR Compute role allows the Amplify Hosting compute
    #               service to securely access specific Amazon Web Services resources based on the role's
    #               permissions. For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute role</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #     framework: "Framework",
    #     stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"],
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     enable_skew_protection: false,
    #     environment_variables: {
    #       "EnvKey" => "EnvValue"
    #     },
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     enable_basic_auth: false,
    #     enable_performance_mode: false,
    #     build_spec: "BuildSpec",
    #     ttl: "TTL",
    #     display_name: "DisplayName",
    #     enable_pull_request_preview: false,
    #     pull_request_environment_name: "PullRequestEnvironmentName",
    #     backend_environment_arn: "BackendEnvironmentArn",
    #     backend: {
    #       stack_arn: "StackArn"
    #     },
    #     compute_role_arn: "ComputeRoleArn"
    #   }
    #   options = {}
    #   response = client.update_branch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     branch: { # required
    #       branch_arn: "BranchArn", # required
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       stage: "PRODUCTION" # One of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"], # required
    #       display_name: "DisplayName", # required
    #       enable_notification: false, # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #       environment_variables: { # required
    #         "EnvKey" => "EnvValue"
    #       },
    #       enable_auto_build: false, # required
    #       enable_skew_protection: false,
    #       custom_domains: ["CustomDomain"], # required
    #       framework: "Framework", # required
    #       active_job_id: "ActiveJobId", # required
    #       total_number_of_jobs: "TotalNumberOfJobs", # required
    #       enable_basic_auth: false, # required
    #       enable_performance_mode: false,
    #       thumbnail_url: "ThumbnailUrl",
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       build_spec: "BuildSpec",
    #       ttl: "TTL", # required
    #       associated_resources: ["AssociatedResource"],
    #       enable_pull_request_preview: false, # required
    #       pull_request_environment_name: "PullRequestEnvironmentName",
    #       destination_branch: "BranchName",
    #       source_branch: "BranchName",
    #       backend_environment_arn: "BackendEnvironmentArn",
    #       backend: {
    #         stack_arn: "StackArn"
    #       },
    #       compute_role_arn: "ComputeRoleArn"
    #     }
    #   }
    # @return [Types::UpdateBranchResult]
    def update_branch(params = {}, options = {})
      request = build_request(:update_branch, params)
      request.send_request(options)
    end

    # <p>Creates a new domain association for an Amplify app.</p>
    # @param [Hash, Types::UpdateDomainAssociationRequest] params
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    # @option params [Boolean] :enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    # @option params [Array<Types::SubDomainSetting>] :sub_domain_settings
    #   <p> Describes the settings for the subdomain. </p>
    # @option params [Array<String>] :auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    # @option params [String] :auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    # @option params [Types::CertificateSettings] :certificate_settings
    #   <p>The type of SSL/TLS certificate to use for your custom domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       }
    #     ],
    #     auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #     auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #     certificate_settings: {
    #       type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #       custom_certificate_arn: "CertificateArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_association: { # required
    #       domain_association_arn: "DomainAssociationArn", # required
    #       domain_name: "DomainName", # required
    #       enable_auto_sub_domain: false, # required
    #       auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #       auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #       domain_status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"], # required
    #       update_status: "REQUESTING_CERTIFICATE" # One of: ["REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       status_reason: "StatusReason", # required
    #       certificate_verification_dns_record: "CertificateVerificationDNSRecord",
    #       sub_domains: [ # required
    #         {
    #           sub_domain_setting: { # required
    #             prefix: "DomainPrefix", # required
    #             branch_name: "BranchName", # required
    #           },
    #           verified: false, # required
    #           dns_record: "DNSRecord", # required
    #         }
    #       ],
    #       certificate: {
    #         type: "AMPLIFY_MANAGED" # One of: ["AMPLIFY_MANAGED", "CUSTOM"], # required
    #         custom_certificate_arn: "CertificateArn",
    #         certificate_verification_dns_record: "CertificateVerificationDNSRecord"
    #       }
    #     }
    #   }
    # @return [Types::UpdateDomainAssociationResult]
    def update_domain_association(params = {}, options = {})
      request = build_request(:update_domain_association, params)
      request.send_request(options)
    end

    # <p>Updates a webhook. </p>
    # @param [Hash, Types::UpdateWebhookRequest] params
    # @option params [String] :webhook_id
    #   <p>The unique ID for a webhook. </p>
    # @option params [String] :branch_name
    #   <p>The name for a branch that is part of an Amplify app. </p>
    # @option params [String] :description
    #   <p>The description for a webhook. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     webhook_id: "WebhookId", # required
    #     branch_name: "BranchName",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: { # required
    #       webhook_arn: "WebhookArn", # required
    #       webhook_id: "WebhookId", # required
    #       webhook_url: "WebhookUrl", # required
    #       app_id: "AppId",
    #       branch_name: "BranchName", # required
    #       description: "Description", # required
    #       create_time: Time.now, # required
    #       update_time: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateWebhookResult]
    def update_webhook(params = {}, options = {})
      request = build_request(:update_webhook, params)
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
      context[:gem_name] = 'aws-sdk-amplify'
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

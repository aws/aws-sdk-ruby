# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:proton)

module Aws::Proton
  # An API client for Aws::Proton.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsProton20200720
    @identifier = :proton

    add_plugin(::Aws::Proton::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Proton::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>In a management account, an environment account connection request is accepted. When the environment account connection request is accepted, Proton
    #       can use the associated IAM role to provision environment infrastructure resources in the associated environment account.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton User guide</i>.</p>
    # @param [Hash, Types::AcceptEnvironmentAccountConnectionOperationInput] params
    # @option params [String] :id
    #   <p>The ID of the environment account connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentAccountConnectionId", # required
    #   }
    #   options = {}
    #   response = client.accept_environment_account_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connection: { # required
    #       id: "EnvironmentAccountConnectionId", # required
    #       arn: "EnvironmentAccountConnectionArn", # required
    #       management_account_id: "AwsAccountId", # required
    #       environment_account_id: "AwsAccountId", # required
    #       role_arn: "Arn", # required
    #       environment_name: "ResourceName", # required
    #       requested_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "EnvironmentAccountConnectionStatus", # required
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::AcceptEnvironmentAccountConnectionOperationOutput]
    def accept_environment_account_connection(params = {}, options = {})
      request = build_request(:accept_environment_account_connection, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel a component deployment (for a component that is in the <code>IN_PROGRESS</code> deployment status).</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::CancelComponentDeploymentOperationInput] params
    # @option params [String] :component_name
    #   <p>The name of the component with the deployment to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     component_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.cancel_component_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ComponentArn", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now,
    #       last_deployment_succeeded_at: Time.now,
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       service_spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CancelComponentDeploymentOperationOutput]
    def cancel_component_deployment(params = {}, options = {})
      request = build_request(:cancel_component_deployment, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel an environment deployment on an <a>UpdateEnvironment</a> action, if the deployment is <code>IN_PROGRESS</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html">Update an environment</a> in the <i>Proton
    #         User guide</i>.</p>
    #          <p>The following list includes potential cancellation scenarios.</p>
    #          <ul>
    #             <li>
    #                <p>If the cancellation attempt succeeds, the resulting deployment state is <code>CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the cancellation attempt fails, the resulting deployment state is <code>FAILED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the current <a>UpdateEnvironment</a> action succeeds before the cancellation attempt starts, the resulting deployment state is
    #             <code>SUCCEEDED</code> and the cancellation attempt has no effect.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CancelEnvironmentDeploymentOperationInput] params
    # @option params [String] :environment_name
    #   <p>The name of the environment with the deployment to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.cancel_environment_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       arn: "EnvironmentArn", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       proton_service_role_arn: "Arn",
    #       environment_account_connection_id: "EnvironmentAccountConnectionId",
    #       environment_account_id: "AwsAccountId",
    #       spec: "SpecContents",
    #       provisioning: "Provisioning",
    #       provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CancelEnvironmentDeploymentOperationOutput]
    def cancel_environment_deployment(params = {}, options = {})
      request = build_request(:cancel_environment_deployment, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel a service instance deployment on an <a>UpdateServiceInstance</a> action, if the deployment is <code>IN_PROGRESS</code>. For
    #       more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html">Update a service instance</a>
    #       in the <i>Proton User guide</i>.</p>
    #          <p>The following list includes potential cancellation scenarios.</p>
    #          <ul>
    #             <li>
    #                <p>If the cancellation attempt succeeds, the resulting deployment state is
    #             <code>CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the cancellation attempt fails, the resulting deployment state is
    #             <code>FAILED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the current <a>UpdateServiceInstance</a> action succeeds before the
    #           cancellation attempt starts, the resulting deployment state is <code>SUCCEEDED</code> and
    #           the cancellation attempt has no effect.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CancelServiceInstanceDeploymentOperationInput] params
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance with the deployment to cancel.</p>
    # @option params [String] :service_name
    #   <p>The name of the service with the service instance deployment to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_instance_name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.cancel_service_instance_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_instance: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceInstanceArn", # required
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       service_name: "ResourceName", # required
    #       environment_name: "ResourceName", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CancelServiceInstanceDeploymentOperationOutput]
    def cancel_service_instance_deployment(params = {}, options = {})
      request = build_request(:cancel_service_instance_deployment, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel a service pipeline deployment on an <a>UpdateServicePipeline</a> action, if the deployment is <code>IN_PROGRESS</code>. For
    #       more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html">Update a service pipeline</a>
    #       in the <i>Proton User guide</i>.</p>
    #          <p>The following list includes potential cancellation scenarios.</p>
    #          <ul>
    #             <li>
    #                <p>If the cancellation attempt succeeds, the resulting deployment state is
    #             <code>CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the cancellation attempt fails, the resulting deployment state is
    #             <code>FAILED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the current <a>UpdateServicePipeline</a> action succeeds before the
    #           cancellation attempt starts, the resulting deployment state is <code>SUCCEEDED</code> and
    #           the cancellation attempt has no effect.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CancelServicePipelineDeploymentOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service with the service pipeline deployment to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.cancel_service_pipeline_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: { # required
    #       arn: "Arn", # required
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       spec: "SpecContents",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CancelServicePipelineDeploymentOperationOutput]
    def cancel_service_pipeline_deployment(params = {}, options = {})
      request = build_request(:cancel_service_pipeline_deployment, params)
      request.send_request(options)
    end

    # <p>Create an Proton component. A component is an infrastructure extension for a service instance.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::CreateComponentOperationInput] params
    # @option params [String] :name
    #   <p>The customer-provided name of the component.</p>
    # @option params [String] :description
    #   <p>An optional customer-provided description of the component.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. If you don't specify this, the component isn't attached to any
    #         service instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. If you don't specify this, the component isn't attached to any service
    #         instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    # @option params [String] :environment_name
    #   <p>The name of the Proton environment that you want to associate this component with. You must specify this when you don't specify
    #           <code>serviceInstanceName</code> and <code>serviceName</code>.</p>
    # @option params [String] :template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    # @option params [String] :manifest
    #   <p>A path to a manifest file that lists the Infrastructure as Code (IaC) file, template language, and rendering engine for infrastructure that a custom
    #         component provisions.</p>
    # @option params [String] :service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when you attach the component to a service
    #         instance.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton component. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>The client token for the created component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "Description",
    #     service_name: "ResourceName",
    #     service_instance_name: "ResourceName",
    #     environment_name: "ResourceName",
    #     template_file: "TemplateFileContents", # required
    #     manifest: "TemplateManifestContents", # required
    #     service_spec: "SpecContents",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ComponentArn", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now,
    #       last_deployment_succeeded_at: Time.now,
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       service_spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CreateComponentOperationOutput]
    def create_component(params = {}, options = {})
      request = build_request(:create_component, params)
      request.send_request(options)
    end

    # <p>Deploy a new environment. An Proton environment is created from an environment template that defines infrastructure and resources that can be
    #       shared across services.</p>
    #          <p class="title">
    #             <b>You can provision environments using the following methods:</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>Amazon Web Services-managed provisioning: Proton makes direct calls to provision your resources.</p>
    #             </li>
    #             <li>
    #                <p>Self-managed provisioning: Proton makes pull requests on your repository to provide compiled infrastructure as code (IaC) files that your IaC
    #           engine uses to provision resources.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html">Environments</a> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html">Provisioning methods</a> in the <i>Proton User
    #         Guide</i>.</p>
    # @param [Hash, Types::CreateEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    # @option params [String] :template_name
    #   <p>The name of the environment template. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html">Environment Templates</a> in the <i>Proton User Guide</i>.</p>
    # @option params [String] :template_major_version
    #   <p>The major version of the environment template.</p>
    # @option params [String] :template_minor_version
    #   <p>The minor version of the environment template.</p>
    # @option params [String] :description
    #   <p>A description of the environment that's being created and deployed.</p>
    # @option params [String] :spec
    #   <p>A YAML formatted string that provides inputs as defined in the environment template bundle schema file. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html">Environments</a> in the <i>Proton User
    #         Guide</i>.</p>
    # @option params [String] :proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    # @option params [String] :environment_account_connection_id
    #   <p>The ID of the environment account connection that you provide if you're provisioning your environment infrastructure resources to an environment
    #         account. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #           connections</a> in the <i>Proton User guide</i>.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @option params [Types::RepositoryBranchInput] :provisioning_repository
    #   <p>The linked repository that you use to host your rendered infrastructure templates for self-managed provisioning. A linked repository is a repository
    #         that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #            <p>To use self-managed provisioning for the environment, specify this parameter and omit the <code>environmentAccountConnectionId</code> and
    #           <code>protonServiceRoleArn</code> parameters.</p>
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with this environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @option params [String] :codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your
    #         behalf.</p>
    #            <p>To use CodeBuild-based provisioning for the environment or for any service instance running in the environment, specify either the
    #         <code>environmentAccountConnectionId</code> or <code>codebuildRoleArn</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     template_name: "ResourceName", # required
    #     template_major_version: "TemplateVersionPart", # required
    #     template_minor_version: "TemplateVersionPart",
    #     description: "Description",
    #     spec: "SpecContents", # required
    #     proton_service_role_arn: "Arn",
    #     environment_account_connection_id: "EnvironmentAccountConnectionId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     provisioning_repository: {
    #       provider: "RepositoryProvider", # required
    #       name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #     },
    #     component_role_arn: "RoleArn",
    #     codebuild_role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       arn: "EnvironmentArn", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       proton_service_role_arn: "Arn",
    #       environment_account_connection_id: "EnvironmentAccountConnectionId",
    #       environment_account_id: "AwsAccountId",
    #       spec: "SpecContents",
    #       provisioning: "Provisioning",
    #       provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CreateEnvironmentOperationOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Create an environment account connection in an environment account so that environment infrastructure resources can be provisioned in the environment
    #       account from a management account.</p>
    #          <p>An environment account connection is a secure bi-directional connection between a <i>management account</i> and an <i>environment
    #         account</i> that maintains authorization and permissions. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account connections</a> in the <i>Proton User
    #         guide</i>.</p>
    # @param [Hash, Types::CreateEnvironmentAccountConnectionOperationInput] params
    # @option params [String] :client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment account connection that the first
    #         request created.</p>
    # @option params [String] :management_account_id
    #   <p>The ID of the management account that accepts or rejects the environment account connection. You create and manage the Proton environment in this
    #         account. If the management account accepts the environment account connection, Proton can use the associated IAM role to provision environment
    #         infrastructure resources in the associated environment account.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. Proton uses this role to provision infrastructure
    #         resources in the associated environment account.</p>
    # @option params [String] :environment_name
    #   <p>The name of the Proton environment that's created in the associated management account.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment account connection. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with any environments running in this
    #         account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @option params [String] :codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources
    #         using CodeBuild-based provisioning in the associated environment account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     management_account_id: "AwsAccountId", # required
    #     role_arn: "RoleArn",
    #     environment_name: "ResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     component_role_arn: "RoleArn",
    #     codebuild_role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.create_environment_account_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connection: { # required
    #       id: "EnvironmentAccountConnectionId", # required
    #       arn: "EnvironmentAccountConnectionArn", # required
    #       management_account_id: "AwsAccountId", # required
    #       environment_account_id: "AwsAccountId", # required
    #       role_arn: "Arn", # required
    #       environment_name: "ResourceName", # required
    #       requested_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "EnvironmentAccountConnectionStatus", # required
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::CreateEnvironmentAccountConnectionOperationOutput]
    def create_environment_account_connection(params = {}, options = {})
      request = build_request(:create_environment_account_connection, params)
      request.send_request(options)
    end

    # <p>Create an environment template for Proton. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html">Environment Templates</a> in the <i>Proton User Guide</i>.</p>
    #          <p>You can create an environment template in one of the two following ways:</p>
    #          <ul>
    #             <li>
    #                <p>Register and publish a <i>standard</i> environment template that instructs Proton to deploy and manage environment
    #           infrastructure.</p>
    #             </li>
    #             <li>
    #                <p>Register and publish a <i>customer managed</i> environment template that connects Proton to your existing provisioned
    #           infrastructure that you manage. Proton <i>doesn't</i> manage your existing provisioned infrastructure. To create an environment
    #           template for customer provisioned and managed infrastructure, include the <code>provisioning</code> parameter and set the value to
    #             <code>CUSTOMER_MANAGED</code>. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/template-create.html">Register
    #             and publish an environment template</a> in the <i>Proton User Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateEnvironmentTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment template.</p>
    # @option params [String] :display_name
    #   <p>The environment template name as displayed in the developer interface.</p>
    # @option params [String] :description
    #   <p>A description of the environment template.</p>
    # @option params [String] :encryption_key
    #   <p>A customer provided encryption key that Proton uses to encrypt data.</p>
    # @option params [String] :provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     encryption_key: "Arn",
    #     provisioning: "Provisioning",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_environment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template: { # required
    #       name: "ResourceName", # required
    #       arn: "EnvironmentTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::CreateEnvironmentTemplateOperationOutput]
    def create_environment_template(params = {}, options = {})
      request = build_request(:create_environment_template, params)
      request.send_request(options)
    end

    # <p>Create a new major or minor version of an environment template. A major version of an environment template is a version that
    #         <i>isn't</i> backwards compatible. A minor version of an environment template is a version that's backwards compatible within its major
    #       version.</p>
    # @param [Hash, Types::CreateEnvironmentTemplateVersionOperationInput] params
    # @option params [String] :client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment template version that the first
    #         request created.</p>
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    # @option params [String] :description
    #   <p>A description of the new version of an environment template.</p>
    # @option params [String] :major_version
    #   <p>To create a new minor version of the environment template, include <code>major Version</code>.</p>
    #            <p>To create a new major and minor version of the environment template, exclude <code>major Version</code>.</p>
    # @option params [Types::TemplateVersionSourceInput] :source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of an template.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template version. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     template_name: "ResourceName", # required
    #     description: "Description",
    #     major_version: "TemplateVersionPart",
    #     source: { # required
    #       # One of:
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_environment_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template_version: { # required
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "EnvironmentTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       schema: "TemplateSchema"
    #     }
    #   }
    # @return [Types::CreateEnvironmentTemplateVersionOperationOutput]
    def create_environment_template_version(params = {}, options = {})
      request = build_request(:create_environment_template_version, params)
      request.send_request(options)
    end

    # <p>Create and register a link to a repository. Proton uses the link to repeatedly access the repository, to either push to it (self-managed
    #       provisioning) or pull from it (template sync). You can share a linked repository across multiple resources (like environments using self-managed
    #       provisioning, or synced templates). When you create a repository link, Proton creates a <a href="https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html">service-linked role</a> for you.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self">Self-managed provisioning</a>, <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles">Template bundles</a>, and
    #         <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html">Template sync configurations</a> in the <i>Proton
    #         User Guide</i>.</p>
    # @param [Hash, Types::CreateRepositoryOperationInput] params
    # @option params [String] :provider
    #   <p>The repository provider.</p>
    # @option params [String] :name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of your AWS CodeStar connection that connects Proton to your repository provider account. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html">Setting up for Proton</a> in the <i>Proton User
    #           Guide</i>.</p>
    # @option params [String] :encryption_key
    #   <p>The ARN of your customer Amazon Web Services Key Management Service (Amazon Web Services KMS) key.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton repository. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "RepositoryProvider", # required
    #     name: "RepositoryName", # required
    #     connection_arn: "Arn", # required
    #     encryption_key: "Arn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: { # required
    #       arn: "RepositoryArn", # required
    #       provider: "RepositoryProvider", # required
    #       name: "RepositoryName", # required
    #       connection_arn: "Arn", # required
    #       encryption_key: "Arn"
    #     }
    #   }
    # @return [Types::CreateRepositoryOperationOutput]
    def create_repository(params = {}, options = {})
      request = build_request(:create_repository, params)
      request.send_request(options)
    end

    # <p>Create an Proton service. An Proton service is an instantiation of a service
    #       template and often includes several service instances and pipeline. For more information, see
    #         <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html">Services</a>
    #       in the <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::CreateServiceOperationInput] params
    # @option params [String] :name
    #   <p>The service name.</p>
    # @option params [String] :description
    #   <p>A description of the Proton service.</p>
    # @option params [String] :template_name
    #   <p>The name of the service template that's used to create the service.</p>
    # @option params [String] :template_major_version
    #   <p>The major version of the service template that was used to create the service.</p>
    # @option params [String] :template_minor_version
    #   <p>The minor version of the service template that was used to create the service.</p>
    # @option params [String] :spec
    #   <p>A link to a spec file that provides inputs as defined in the service template bundle
    #         schema file. The spec file is in YAML format. <i>Don’t</i> include pipeline
    #         inputs in the spec if your service template <i>doesn’t</i> include a service
    #         pipeline. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-create-svc.html">Create a service</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @option params [String] :repository_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the repository connection. For more information, see
    #           <a href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol">Setting up an
    #           AWS CodeStar connection</a> in the <i>Proton User Guide</i>.
    #           <i>Don't</i> include this parameter if your service template
    #           <i>doesn't</i> include a service pipeline.</p>
    # @option params [String] :repository_id
    #   <p>The ID of the code repository. <i>Don't</i> include this parameter if your
    #         service template <i>doesn't</i> include a service pipeline.</p>
    # @option params [String] :branch_name
    #   <p>The name of the code repository branch that holds the code that's deployed in Proton.
    #           <i>Don't</i> include this parameter if your service template
    #           <i>doesn't</i> include a service pipeline.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service. A tag is
    #         a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "Description",
    #     template_name: "ResourceName", # required
    #     template_major_version: "TemplateVersionPart", # required
    #     template_minor_version: "TemplateVersionPart",
    #     spec: "SpecContents", # required
    #     repository_connection_arn: "Arn",
    #     repository_id: "RepositoryId",
    #     branch_name: "GitBranchName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ServiceArn", # required
    #       template_name: "ResourceName", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "ServiceStatus", # required
    #       status_message: "StatusMessage",
    #       spec: "SpecContents", # required
    #       pipeline: {
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now, # required
    #         last_deployment_succeeded_at: Time.now, # required
    #         template_name: "ResourceName", # required
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart", # required
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         spec: "SpecContents",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       },
    #       repository_connection_arn: "Arn",
    #       repository_id: "RepositoryId",
    #       branch_name: "GitBranchName"
    #     }
    #   }
    # @return [Types::CreateServiceOperationOutput]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Create a service instance.</p>
    # @param [Hash, Types::CreateServiceInstanceOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service instance to create.</p>
    # @option params [String] :service_name
    #   <p>The name of the service the service instance is added to.</p>
    # @option params [String] :spec
    #   <p>The spec for the service instance you want to create.</p>
    # @option params [String] :template_major_version
    #   <p>To create a new major and minor version of the service template,
    #           <i>exclude</i>
    #               <code>major Version</code>.</p>
    # @option params [String] :template_minor_version
    #   <p>To create a new minor version of the service template, include a <code>major
    #           Version</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service instance.
    #         A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @option params [String] :client_token
    #   <p>The client token of the service instance to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #     spec: "SpecContents", # required
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_service_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_instance: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceInstanceArn", # required
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       service_name: "ResourceName", # required
    #       environment_name: "ResourceName", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::CreateServiceInstanceOperationOutput]
    def create_service_instance(params = {}, options = {})
      request = build_request(:create_service_instance, params)
      request.send_request(options)
    end

    # <p>Create the Proton Ops configuration file.</p>
    # @param [Hash, Types::CreateServiceSyncConfigOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service the Proton Ops file is for.</p>
    # @option params [String] :repository_provider
    #   <p>The provider type for your repository.</p>
    # @option params [String] :repository_name
    #   <p>The repository name.</p>
    # @option params [String] :branch
    #   <p>The repository branch for your Proton Ops file.</p>
    # @option params [String] :file_path
    #   <p>The path to the Proton Ops file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     repository_provider: "RepositoryProvider", # required
    #     repository_name: "RepositoryName", # required
    #     branch: "GitBranchName", # required
    #     file_path: "OpsFilePath", # required
    #   }
    #   options = {}
    #   response = client.create_service_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_sync_config: {
    #       service_name: "ResourceName", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       file_path: "OpsFilePath", # required
    #     }
    #   }
    # @return [Types::CreateServiceSyncConfigOperationOutput]
    def create_service_sync_config(params = {}, options = {})
      request = build_request(:create_service_sync_config, params)
      request.send_request(options)
    end

    # <p>Create a service template. The administrator creates a service template to define
    #       standardized infrastructure and an optional CI/CD service pipeline. Developers, in turn,
    #       select the service template from Proton. If the selected service template includes a
    #       service pipeline definition, they provide a link to their source code repository. Proton
    #       then deploys and manages the infrastructure defined by the selected service template. For more
    #       information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html">Proton templates</a> in the <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::CreateServiceTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service template.</p>
    # @option params [String] :display_name
    #   <p>The name of the service template as displayed in the developer interface.</p>
    # @option params [String] :description
    #   <p>A description of the service template.</p>
    # @option params [String] :encryption_key
    #   <p>A customer provided encryption key that's used to encrypt data.</p>
    # @option params [String] :pipeline_provisioning
    #   <p>By default, Proton provides a service pipeline for your service. When this parameter is
    #         included, it indicates that an Proton service pipeline <i>isn't</i> provided
    #         for your service. After it's included, it <i>can't</i> be changed. For more
    #         information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles">Template
    #           bundles</a> in the <i>Proton User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template.
    #         A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     display_name: "DisplayName",
    #     description: "Description",
    #     encryption_key: "Arn",
    #     pipeline_provisioning: "Provisioning",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_service_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       pipeline_provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::CreateServiceTemplateOperationOutput]
    def create_service_template(params = {}, options = {})
      request = build_request(:create_service_template, params)
      request.send_request(options)
    end

    # <p>Create a new major or minor version of a service template. A major version of a service
    #       template is a version that <i>isn't</i> backward compatible. A minor version of
    #       a service template is a version that's backward compatible within its major version.</p>
    # @param [Hash, Types::CreateServiceTemplateVersionOperationInput] params
    # @option params [String] :client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton
    #         returns the service template version that the first request created.</p>
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    # @option params [String] :description
    #   <p>A description of the new version of a service template.</p>
    # @option params [String] :major_version
    #   <p>To create a new minor version of the service template, include a <code>major
    #           Version</code>.</p>
    #            <p>To create a new major and minor version of the service template,
    #           <i>exclude</i>
    #               <code>major Version</code>.</p>
    # @option params [Types::TemplateVersionSourceInput] :source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of
    #         a service template.</p>
    # @option params [Array<Types::CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with the new service template
    #         version. A service instance based on this service template version can run in environments
    #         based on compatible templates.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template
    #         version. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    # @option params [Array<String>] :supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached
    #         to service instances based on this service template version.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     template_name: "ResourceName", # required
    #     description: "Description",
    #     major_version: "TemplateVersionPart",
    #     source: { # required
    #       # One of:
    #       s3: {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #       }
    #     },
    #     compatible_environment_templates: [ # required
    #       {
    #         template_name: "ResourceName", # required
    #         major_version: "TemplateVersionPart", # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     supported_component_sources: ["ServiceTemplateSupportedComponentSourceType"]
    #   }
    #   options = {}
    #   response = client.create_service_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template_version: { # required
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "ServiceTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       compatible_environment_templates: [ # required
    #         {
    #           template_name: "ResourceName", # required
    #           major_version: "TemplateVersionPart", # required
    #         }
    #       ],
    #       schema: "TemplateSchema",
    #       supported_component_sources: ["ServiceTemplateSupportedComponentSourceType"]
    #     }
    #   }
    # @return [Types::CreateServiceTemplateVersionOperationOutput]
    def create_service_template_version(params = {}, options = {})
      request = build_request(:create_service_template_version, params)
      request.send_request(options)
    end

    # <p>Set up a template to create new template versions automatically by tracking a linked repository. A linked repository is a repository that has
    #    been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #          <p>When a commit is pushed to your linked repository, Proton checks for changes to your repository template bundles. If it detects a template
    #    bundle change, a new major or minor version of its template is created, if the version doesn’t already exist. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html">Template sync configurations</a> in the <i>Proton
    #     User Guide</i>.</p>
    # @param [Hash, Types::CreateTemplateSyncConfigOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of your registered template.</p>
    # @option params [String] :template_type
    #   <p>The type of the registered template.</p>
    # @option params [String] :repository_provider
    #   <p>The provider type for your repository.</p>
    # @option params [String] :repository_name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    # @option params [String] :branch
    #   <p>The repository branch for your template.</p>
    # @option params [String] :subdirectory
    #   <p>A repository subdirectory path to your template bundle directory. When included, Proton limits the template bundle search to this
    #      repository directory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     template_type: "TemplateType", # required
    #     repository_provider: "RepositoryProvider", # required
    #     repository_name: "RepositoryName", # required
    #     branch: "GitBranchName", # required
    #     subdirectory: "Subdirectory"
    #   }
    #   options = {}
    #   response = client.create_template_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_sync_config: {
    #       template_name: "ResourceName", # required
    #       template_type: "TemplateType", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       subdirectory: "Subdirectory"
    #     }
    #   }
    # @return [Types::CreateTemplateSyncConfigOperationOutput]
    def create_template_sync_config(params = {}, options = {})
      request = build_request(:create_template_sync_config, params)
      request.send_request(options)
    end

    # <p>Delete an Proton component resource.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::DeleteComponentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the component to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: {
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ComponentArn", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now,
    #       last_deployment_succeeded_at: Time.now,
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       service_spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::DeleteComponentOperationOutput]
    def delete_component(params = {}, options = {})
      request = build_request(:delete_component, params)
      request.send_request(options)
    end

    # <p>Delete the deployment.</p>
    # @param [Hash, Types::DeleteDeploymentInput] params
    # @option params [String] :id
    #   <p>The ID of the deployment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeploymentId", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment: {
    #       id: "DeploymentId", # required
    #       arn: "DeploymentArn", # required
    #       target_arn: "Arn", # required
    #       target_resource_created_at: Time.now, # required
    #       target_resource_type: "DeploymentTargetResourceType", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       component_name: "ResourceName",
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       completed_at: Time.now,
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId",
    #       initial_state: {
    #         # One of:
    #         service_instance: {
    #           spec: "SpecContents", # required
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #           last_successful_component_deployment_ids: ["DeploymentId"],
    #           last_successful_environment_deployment_id: "DeploymentId",
    #           last_successful_service_pipeline_deployment_id: "DeploymentId"
    #         },
    #         environment: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         service_pipeline: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         component: {
    #           service_name: "ResourceNameOrEmpty",
    #           service_instance_name: "ResourceNameOrEmpty",
    #           service_spec: "SpecContents",
    #           template_file: "TemplateFileContents"
    #         }
    #       },
    #       target_state: {
    #         # One of:
    #         service_instance: {
    #           spec: "SpecContents", # required
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #           last_successful_component_deployment_ids: ["DeploymentId"],
    #           last_successful_environment_deployment_id: "DeploymentId",
    #           last_successful_service_pipeline_deployment_id: "DeploymentId"
    #         },
    #         environment: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         service_pipeline: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         component: {
    #           service_name: "ResourceNameOrEmpty",
    #           service_instance_name: "ResourceNameOrEmpty",
    #           service_spec: "SpecContents",
    #           template_file: "TemplateFileContents"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteDeploymentOutput]
    def delete_deployment(params = {}, options = {})
      request = build_request(:delete_deployment, params)
      request.send_request(options)
    end

    # <p>Delete an environment.</p>
    # @param [Hash, Types::DeleteEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       name: "ResourceName", # required
    #       description: "Description",
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       arn: "EnvironmentArn", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       proton_service_role_arn: "Arn",
    #       environment_account_connection_id: "EnvironmentAccountConnectionId",
    #       environment_account_id: "AwsAccountId",
    #       spec: "SpecContents",
    #       provisioning: "Provisioning",
    #       provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::DeleteEnvironmentOperationOutput]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>In an environment account, delete an environment account connection.</p>
    #          <p>After you delete an environment account connection that’s in use by an Proton environment, Proton <i>can’t</i> manage the
    #       environment infrastructure resources until a new environment account connection is accepted for the environment account and associated environment. You're
    #       responsible for cleaning up provisioned resources that remain without an environment connection.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton User guide</i>.</p>
    # @param [Hash, Types::DeleteEnvironmentAccountConnectionOperationInput] params
    # @option params [String] :id
    #   <p>The ID of the environment account connection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentAccountConnectionId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_account_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connection: {
    #       id: "EnvironmentAccountConnectionId", # required
    #       arn: "EnvironmentAccountConnectionArn", # required
    #       management_account_id: "AwsAccountId", # required
    #       environment_account_id: "AwsAccountId", # required
    #       role_arn: "Arn", # required
    #       environment_name: "ResourceName", # required
    #       requested_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "EnvironmentAccountConnectionStatus", # required
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::DeleteEnvironmentAccountConnectionOperationOutput]
    def delete_environment_account_connection(params = {}, options = {})
      request = build_request(:delete_environment_account_connection, params)
      request.send_request(options)
    end

    # <p>If no other major or minor versions of an environment template exist, delete the environment template.</p>
    # @param [Hash, Types::DeleteEnvironmentTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template: {
    #       name: "ResourceName", # required
    #       arn: "EnvironmentTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::DeleteEnvironmentTemplateOperationOutput]
    def delete_environment_template(params = {}, options = {})
      request = build_request(:delete_environment_template, params)
      request.send_request(options)
    end

    # <p>If no other minor versions of an environment template exist, delete a major version of the environment template if it's not the
    #         <code>Recommended</code> version. Delete the <code>Recommended</code> version of the environment template if no other major versions or minor versions
    #       of the environment template exist. A major version of an environment template is a version that's not backward compatible.</p>
    #          <p>Delete a minor version of an environment template if it <i>isn't</i> the <code>Recommended</code> version. Delete a
    #         <code>Recommended</code> minor version of the environment template if no other minor versions of the environment template exist. A minor version of an
    #       environment template is a version that's backward compatible.</p>
    # @param [Hash, Types::DeleteEnvironmentTemplateVersionOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    # @option params [String] :major_version
    #   <p>The environment template major version to delete.</p>
    # @option params [String] :minor_version
    #   <p>The environment template minor version to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template_version: {
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "EnvironmentTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       schema: "TemplateSchema"
    #     }
    #   }
    # @return [Types::DeleteEnvironmentTemplateVersionOperationOutput]
    def delete_environment_template_version(params = {}, options = {})
      request = build_request(:delete_environment_template_version, params)
      request.send_request(options)
    end

    # <p>De-register and unlink your repository.</p>
    # @param [Hash, Types::DeleteRepositoryOperationInput] params
    # @option params [String] :provider
    #   <p>The repository provider.</p>
    # @option params [String] :name
    #   <p>The repository name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "RepositoryProvider", # required
    #     name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       arn: "RepositoryArn", # required
    #       provider: "RepositoryProvider", # required
    #       name: "RepositoryName", # required
    #       connection_arn: "Arn", # required
    #       encryption_key: "Arn"
    #     }
    #   }
    # @return [Types::DeleteRepositoryOperationOutput]
    def delete_repository(params = {}, options = {})
      request = build_request(:delete_repository, params)
      request.send_request(options)
    end

    # <p>Delete a service, with its instances and pipeline.</p>
    #          <note>
    #             <p>You can't delete a service if it has any service instances that have components attached
    #         to them.</p>
    #             <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::DeleteServiceOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ServiceArn", # required
    #       template_name: "ResourceName", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "ServiceStatus", # required
    #       status_message: "StatusMessage",
    #       spec: "SpecContents", # required
    #       pipeline: {
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now, # required
    #         last_deployment_succeeded_at: Time.now, # required
    #         template_name: "ResourceName", # required
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart", # required
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         spec: "SpecContents",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       },
    #       repository_connection_arn: "Arn",
    #       repository_id: "RepositoryId",
    #       branch_name: "GitBranchName"
    #     }
    #   }
    # @return [Types::DeleteServiceOperationOutput]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Delete the Proton Ops file.</p>
    # @param [Hash, Types::DeleteServiceSyncConfigOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service that you want to delete the service sync configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_service_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_sync_config: {
    #       service_name: "ResourceName", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       file_path: "OpsFilePath", # required
    #     }
    #   }
    # @return [Types::DeleteServiceSyncConfigOperationOutput]
    def delete_service_sync_config(params = {}, options = {})
      request = build_request(:delete_service_sync_config, params)
      request.send_request(options)
    end

    # <p>If no other major or minor versions of the service template exist, delete the service
    #       template.</p>
    # @param [Hash, Types::DeleteServiceTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_service_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template: {
    #       name: "ResourceName", # required
    #       arn: "ServiceTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       pipeline_provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::DeleteServiceTemplateOperationOutput]
    def delete_service_template(params = {}, options = {})
      request = build_request(:delete_service_template, params)
      request.send_request(options)
    end

    # <p>If no other minor versions of a service template exist, delete a major version of the
    #       service template if it's not the <code>Recommended</code> version. Delete the
    #         <code>Recommended</code> version of the service template if no other major versions or minor
    #       versions of the service template exist. A major version of a service template is a version
    #       that <i>isn't</i> backwards compatible.</p>
    #          <p>Delete a minor version of a service template if it's not the <code>Recommended</code>
    #       version. Delete a <code>Recommended</code> minor version of the service template if no other
    #       minor versions of the service template exist. A minor version of a service template is a
    #       version that's backwards compatible.</p>
    # @param [Hash, Types::DeleteServiceTemplateVersionOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    # @option params [String] :major_version
    #   <p>The service template major version to delete.</p>
    # @option params [String] :minor_version
    #   <p>The service template minor version to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #   }
    #   options = {}
    #   response = client.delete_service_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template_version: {
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "ServiceTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       compatible_environment_templates: [ # required
    #         {
    #           template_name: "ResourceName", # required
    #           major_version: "TemplateVersionPart", # required
    #         }
    #       ],
    #       schema: "TemplateSchema",
    #       supported_component_sources: ["ServiceTemplateSupportedComponentSourceType"]
    #     }
    #   }
    # @return [Types::DeleteServiceTemplateVersionOperationOutput]
    def delete_service_template_version(params = {}, options = {})
      request = build_request(:delete_service_template_version, params)
      request.send_request(options)
    end

    # <p>Delete a template sync configuration.</p>
    # @param [Hash, Types::DeleteTemplateSyncConfigOperationInput] params
    # @option params [String] :template_name
    #   <p>The template name.</p>
    # @option params [String] :template_type
    #   <p>The template type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     template_type: "TemplateType", # required
    #   }
    #   options = {}
    #   response = client.delete_template_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_sync_config: {
    #       template_name: "ResourceName", # required
    #       template_type: "TemplateType", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       subdirectory: "Subdirectory"
    #     }
    #   }
    # @return [Types::DeleteTemplateSyncConfigOperationOutput]
    def delete_template_sync_config(params = {}, options = {})
      request = build_request(:delete_template_sync_config, params)
      request.send_request(options)
    end

    # <p>Get detail data for Proton account-wide settings.</p>
    # @param [Hash, Types::GetAccountSettingsOperationInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       pipeline_service_role_arn: "RoleArnOrEmptyString",
    #       pipeline_provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       pipeline_codebuild_role_arn: "RoleArnOrEmptyString"
    #     }
    #   }
    # @return [Types::GetAccountSettingsOperationOutput]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a component.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::GetComponentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the component that you want to get the detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: {
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ComponentArn", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now,
    #       last_deployment_succeeded_at: Time.now,
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       service_spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::GetComponentOperationOutput]
    def get_component(params = {}, options = {})
      request = build_request(:get_component, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a deployment.</p>
    # @param [Hash, Types::GetDeploymentInput] params
    # @option params [String] :id
    #   <p>The ID of the deployment that you want to get the detailed data for.</p>
    # @option params [String] :environment_name
    #   <p>The name of a environment that you want to get the detailed data for.</p>
    # @option params [String] :service_name
    #   <p>The name of the service associated with the given deployment ID.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance associated with the given deployment ID. <code>serviceName</code> must be specified to identify the service
    #      instance.</p>
    # @option params [String] :component_name
    #   <p>The name of a component that you want to get the detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "DeploymentId", # required
    #     environment_name: "ResourceName",
    #     service_name: "ResourceName",
    #     service_instance_name: "ResourceName",
    #     component_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment: {
    #       id: "DeploymentId", # required
    #       arn: "DeploymentArn", # required
    #       target_arn: "Arn", # required
    #       target_resource_created_at: Time.now, # required
    #       target_resource_type: "DeploymentTargetResourceType", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       component_name: "ResourceName",
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       completed_at: Time.now,
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId",
    #       initial_state: {
    #         # One of:
    #         service_instance: {
    #           spec: "SpecContents", # required
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #           last_successful_component_deployment_ids: ["DeploymentId"],
    #           last_successful_environment_deployment_id: "DeploymentId",
    #           last_successful_service_pipeline_deployment_id: "DeploymentId"
    #         },
    #         environment: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         service_pipeline: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         component: {
    #           service_name: "ResourceNameOrEmpty",
    #           service_instance_name: "ResourceNameOrEmpty",
    #           service_spec: "SpecContents",
    #           template_file: "TemplateFileContents"
    #         }
    #       },
    #       target_state: {
    #         # One of:
    #         service_instance: {
    #           spec: "SpecContents", # required
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #           last_successful_component_deployment_ids: ["DeploymentId"],
    #           last_successful_environment_deployment_id: "DeploymentId",
    #           last_successful_service_pipeline_deployment_id: "DeploymentId"
    #         },
    #         environment: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         service_pipeline: {
    #           spec: "SpecContents",
    #           template_name: "ResourceName", # required
    #           template_major_version: "TemplateVersionPart", # required
    #           template_minor_version: "TemplateVersionPart", # required
    #         },
    #         component: {
    #           service_name: "ResourceNameOrEmpty",
    #           service_instance_name: "ResourceNameOrEmpty",
    #           service_spec: "SpecContents",
    #           template_file: "TemplateFileContents"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Get detailed data for an environment.</p>
    # @param [Hash, Types::GetEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment that you want to get the detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       arn: "EnvironmentArn", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       proton_service_role_arn: "Arn",
    #       environment_account_connection_id: "EnvironmentAccountConnectionId",
    #       environment_account_id: "AwsAccountId",
    #       spec: "SpecContents",
    #       provisioning: "Provisioning",
    #       provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::GetEnvironmentOperationOutput]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>In an environment account, get the detailed data for an environment account connection.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton User guide</i>.</p>
    # @param [Hash, Types::GetEnvironmentAccountConnectionOperationInput] params
    # @option params [String] :id
    #   <p>The ID of the environment account connection that you want to get the detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentAccountConnectionId", # required
    #   }
    #   options = {}
    #   response = client.get_environment_account_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connection: { # required
    #       id: "EnvironmentAccountConnectionId", # required
    #       arn: "EnvironmentAccountConnectionArn", # required
    #       management_account_id: "AwsAccountId", # required
    #       environment_account_id: "AwsAccountId", # required
    #       role_arn: "Arn", # required
    #       environment_name: "ResourceName", # required
    #       requested_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "EnvironmentAccountConnectionStatus", # required
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::GetEnvironmentAccountConnectionOperationOutput]
    def get_environment_account_connection(params = {}, options = {})
      request = build_request(:get_environment_account_connection, params)
      request.send_request(options)
    end

    # <p>Get detailed data for an environment template.</p>
    # @param [Hash, Types::GetEnvironmentTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment template that you want to get the detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_environment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template: { # required
    #       name: "ResourceName", # required
    #       arn: "EnvironmentTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::GetEnvironmentTemplateOperationOutput]
    def get_environment_template(params = {}, options = {})
      request = build_request(:get_environment_template, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a major or minor version of an environment template.</p>
    # @param [Hash, Types::GetEnvironmentTemplateVersionOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of the environment template a version of which you want to get detailed data for.</p>
    # @option params [String] :major_version
    #   <p>To get environment template major version detail data, include <code>major Version</code>.</p>
    # @option params [String] :minor_version
    #   <p>To get environment template minor version detail data, include <code>minorVersion</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #   }
    #   options = {}
    #   response = client.get_environment_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template_version: { # required
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "EnvironmentTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       schema: "TemplateSchema"
    #     }
    #   }
    # @return [Types::GetEnvironmentTemplateVersionOperationOutput]
    def get_environment_template_version(params = {}, options = {})
      request = build_request(:get_environment_template_version, params)
      request.send_request(options)
    end

    # <p>Get detail data for a linked repository.</p>
    # @param [Hash, Types::GetRepositoryOperationInput] params
    # @option params [String] :provider
    #   <p>The repository provider.</p>
    # @option params [String] :name
    #   <p>The repository name, for example <code>myrepos/myrepo</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "RepositoryProvider", # required
    #     name: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: { # required
    #       arn: "RepositoryArn", # required
    #       provider: "RepositoryProvider", # required
    #       name: "RepositoryName", # required
    #       connection_arn: "Arn", # required
    #       encryption_key: "Arn"
    #     }
    #   }
    # @return [Types::GetRepositoryOperationOutput]
    def get_repository(params = {}, options = {})
      request = build_request(:get_repository, params)
      request.send_request(options)
    end

    # <p>Get the sync status of a repository used for Proton template sync. For more information about template sync, see .</p>
    #          <note>
    #             <p>A repository sync status isn't tied to the Proton Repository resource (or any other Proton resource). Therefore, tags on an Proton Repository resource
    #         have no effect on this action. Specifically, you can't use these tags to control access to this action using Attribute-based access control
    #         (ABAC).</p>
    #             <p>For more information about ABAC, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags">ABAC</a> in the <i>Proton User
    #           Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::GetRepositorySyncStatusOperationInput] params
    # @option params [String] :repository_name
    #   <p>The repository name.</p>
    # @option params [String] :repository_provider
    #   <p>The repository provider.</p>
    # @option params [String] :branch
    #   <p>The repository branch.</p>
    # @option params [String] :sync_type
    #   <p>The repository sync type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "RepositoryProvider", # required
    #     branch: "GitBranchName", # required
    #     sync_type: "SyncType", # required
    #   }
    #   options = {}
    #   response = client.get_repository_sync_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     latest_sync: {
    #       started_at: Time.now, # required
    #       status: "RepositorySyncStatus", # required
    #       events: [ # required
    #         {
    #           type: "String", # required
    #           external_id: "String",
    #           time: Time.now, # required
    #           event: "String", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetRepositorySyncStatusOperationOutput]
    def get_repository_sync_status(params = {}, options = {})
      request = build_request(:get_repository_sync_status, params)
      request.send_request(options)
    end

    # <p>Get counts of Proton resources.</p>
    #          <p>For infrastructure-provisioning resources (environments, services, service instances, pipelines), the action returns staleness counts. A
    #    resource is stale when it's behind the recommended version of the Proton template that it uses and it needs an update to become current.</p>
    #          <p>The action returns staleness counts (counts of resources that are up-to-date, behind a template major version, or behind a template minor
    #    version), the total number of resources, and the number of resources that are in a failed state, grouped by resource type. Components,
    #    environments, and service templates return less information - see the <code>components</code>, <code>environments</code>, and
    #     <code>serviceTemplates</code> field descriptions.</p>
    #          <p>For context, the action also returns the total number of each type of Proton template in the Amazon Web Services account.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html">Proton dashboard</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::GetResourcesSummaryOperationInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_resources_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     counts: { # required
    #       components: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       },
    #       environments: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       },
    #       environment_templates: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       },
    #       service_instances: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       },
    #       services: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       },
    #       service_templates: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       },
    #       pipelines: {
    #         total: 1, # required
    #         failed: 1,
    #         up_to_date: 1,
    #         behind_major: 1,
    #         behind_minor: 1
    #       }
    #     }
    #   }
    # @return [Types::GetResourcesSummaryOperationOutput]
    def get_resources_summary(params = {}, options = {})
      request = build_request(:get_resources_summary, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a service.</p>
    # @param [Hash, Types::GetServiceOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service that you want to get the detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ServiceArn", # required
    #       template_name: "ResourceName", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "ServiceStatus", # required
    #       status_message: "StatusMessage",
    #       spec: "SpecContents", # required
    #       pipeline: {
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now, # required
    #         last_deployment_succeeded_at: Time.now, # required
    #         template_name: "ResourceName", # required
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart", # required
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         spec: "SpecContents",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       },
    #       repository_connection_arn: "Arn",
    #       repository_id: "RepositoryId",
    #       branch_name: "GitBranchName"
    #     }
    #   }
    # @return [Types::GetServiceOperationOutput]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a service instance. A service instance is an instantiation of
    #       service template and it runs in a specific environment.</p>
    # @param [Hash, Types::GetServiceInstanceOperationInput] params
    # @option params [String] :name
    #   <p>The name of a service instance that you want to get the detailed data for.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that you want the service instance input for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_service_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_instance: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceInstanceArn", # required
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       service_name: "ResourceName", # required
    #       environment_name: "ResourceName", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::GetServiceInstanceOperationOutput]
    def get_service_instance(params = {}, options = {})
      request = build_request(:get_service_instance, params)
      request.send_request(options)
    end

    # <p>Get the status of the synced service instance.</p>
    # @param [Hash, Types::GetServiceInstanceSyncStatusOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance that you want the sync status input for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     service_instance_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_service_instance_sync_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     latest_sync: {
    #       initial_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target: "String", # required
    #       started_at: Time.now, # required
    #       status: "ResourceSyncStatus", # required
    #       events: [ # required
    #         {
    #           type: "String", # required
    #           external_id: "String",
    #           time: Time.now, # required
    #           event: "String", # required
    #         }
    #       ]
    #     },
    #     latest_successful_sync: {
    #       initial_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target: "String", # required
    #       started_at: Time.now, # required
    #       status: "ResourceSyncStatus", # required
    #       events: [ # required
    #         {
    #           type: "String", # required
    #           external_id: "String",
    #           time: Time.now, # required
    #           event: "String", # required
    #         }
    #       ]
    #     },
    #     desired_state: {
    #       repository_name: "RepositoryName", # required
    #       repository_provider: "RepositoryProvider", # required
    #       sha: "SHA", # required
    #       directory: "String", # required
    #       branch: "GitBranchName", # required
    #     }
    #   }
    # @return [Types::GetServiceInstanceSyncStatusOperationOutput]
    def get_service_instance_sync_status(params = {}, options = {})
      request = build_request(:get_service_instance_sync_status, params)
      request.send_request(options)
    end

    # <p>Get detailed data for the service sync blocker summary.</p>
    # @param [Hash, Types::GetServiceSyncBlockerSummaryOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service that you want to get the service sync blocker summary for. If
    #         given only the service name, all instances are blocked.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance that you want to get the service sync blocker summary
    #         for. If given bothe the instance name and the service name, only the instance is
    #         blocked.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     service_instance_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.get_service_sync_blocker_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_sync_blocker_summary: {
    #       service_name: "String", # required
    #       service_instance_name: "String",
    #       latest_blockers: [
    #         {
    #           id: "String", # required
    #           type: "BlockerType", # required
    #           status: "BlockerStatus", # required
    #           created_reason: "String", # required
    #           created_at: Time.now, # required
    #           contexts: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             }
    #           ],
    #           resolved_reason: "String",
    #           resolved_at: Time.now
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetServiceSyncBlockerSummaryOperationOutput]
    def get_service_sync_blocker_summary(params = {}, options = {})
      request = build_request(:get_service_sync_blocker_summary, params)
      request.send_request(options)
    end

    # <p>Get detailed information for the service sync configuration.</p>
    # @param [Hash, Types::GetServiceSyncConfigOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service that you want to get the service sync configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_service_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_sync_config: {
    #       service_name: "ResourceName", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       file_path: "OpsFilePath", # required
    #     }
    #   }
    # @return [Types::GetServiceSyncConfigOperationOutput]
    def get_service_sync_config(params = {}, options = {})
      request = build_request(:get_service_sync_config, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a service template.</p>
    # @param [Hash, Types::GetServiceTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service template that you want to get detailed data for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_service_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       pipeline_provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::GetServiceTemplateOperationOutput]
    def get_service_template(params = {}, options = {})
      request = build_request(:get_service_template, params)
      request.send_request(options)
    end

    # <p>Get detailed data for a major or minor version of a service template.</p>
    # @param [Hash, Types::GetServiceTemplateVersionOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of the service template a version of which you want to get detailed data
    #         for.</p>
    # @option params [String] :major_version
    #   <p>To get service template major version detail data, include <code>major
    #         Version</code>.</p>
    # @option params [String] :minor_version
    #   <p>To get service template minor version detail data, include
    #         <code>minorVersion</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #   }
    #   options = {}
    #   response = client.get_service_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template_version: { # required
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "ServiceTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       compatible_environment_templates: [ # required
    #         {
    #           template_name: "ResourceName", # required
    #           major_version: "TemplateVersionPart", # required
    #         }
    #       ],
    #       schema: "TemplateSchema",
    #       supported_component_sources: ["ServiceTemplateSupportedComponentSourceType"]
    #     }
    #   }
    # @return [Types::GetServiceTemplateVersionOperationOutput]
    def get_service_template_version(params = {}, options = {})
      request = build_request(:get_service_template_version, params)
      request.send_request(options)
    end

    # <p>Get detail data for a template sync configuration.</p>
    # @param [Hash, Types::GetTemplateSyncConfigOperationInput] params
    # @option params [String] :template_name
    #   <p>The template name.</p>
    # @option params [String] :template_type
    #   <p>The template type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     template_type: "TemplateType", # required
    #   }
    #   options = {}
    #   response = client.get_template_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_sync_config: {
    #       template_name: "ResourceName", # required
    #       template_type: "TemplateType", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       subdirectory: "Subdirectory"
    #     }
    #   }
    # @return [Types::GetTemplateSyncConfigOperationOutput]
    def get_template_sync_config(params = {}, options = {})
      request = build_request(:get_template_sync_config, params)
      request.send_request(options)
    end

    # <p>Get the status of a template sync.</p>
    # @param [Hash, Types::GetTemplateSyncStatusOperationInput] params
    # @option params [String] :template_name
    #   <p>The template name.</p>
    # @option params [String] :template_type
    #   <p>The template type.</p>
    # @option params [String] :template_version
    #   <p>The template major version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     template_type: "TemplateType", # required
    #     template_version: "TemplateVersionPart", # required
    #   }
    #   options = {}
    #   response = client.get_template_sync_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     latest_sync: {
    #       initial_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target: "String", # required
    #       started_at: Time.now, # required
    #       status: "ResourceSyncStatus", # required
    #       events: [ # required
    #         {
    #           type: "String", # required
    #           external_id: "String",
    #           time: Time.now, # required
    #           event: "String", # required
    #         }
    #       ]
    #     },
    #     latest_successful_sync: {
    #       initial_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target_revision: { # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "RepositoryProvider", # required
    #         sha: "SHA", # required
    #         directory: "String", # required
    #         branch: "GitBranchName", # required
    #       },
    #       target: "String", # required
    #       started_at: Time.now, # required
    #       status: "ResourceSyncStatus", # required
    #       events: [ # required
    #         {
    #           type: "String", # required
    #           external_id: "String",
    #           time: Time.now, # required
    #           event: "String", # required
    #         }
    #       ]
    #     },
    #     desired_state: {
    #       repository_name: "RepositoryName", # required
    #       repository_provider: "RepositoryProvider", # required
    #       sha: "SHA", # required
    #       directory: "String", # required
    #       branch: "GitBranchName", # required
    #     }
    #   }
    # @return [Types::GetTemplateSyncStatusOperationOutput]
    def get_template_sync_status(params = {}, options = {})
      request = build_request(:get_template_sync_status, params)
      request.send_request(options)
    end

    # <p>Get a list of component Infrastructure as Code (IaC) outputs.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::ListComponentOutputsOperationInput] params
    # @option params [String] :component_name
    #   <p>The name of the component whose outputs you want.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment whose outputs you want.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     component_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #     deployment_id: "DeploymentId"
    #   }
    #   options = {}
    #   response = client.list_component_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     outputs: [ # required
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString"
    #       }
    #     ]
    #   }
    # @return [Types::ListComponentOutputsOperationOutput]
    def list_component_outputs(params = {}, options = {})
      request = build_request(:list_component_outputs, params)
      request.send_request(options)
    end

    # <p>List provisioned resources for a component with details.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::ListComponentProvisionedResourcesOperationInput] params
    # @option params [String] :component_name
    #   <p>The name of the component whose provisioned resources you want.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     component_name: "ResourceName", # required
    #     next_token: "EmptyNextToken"
    #   }
    #   options = {}
    #   response = client.list_component_provisioned_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     provisioned_resources: [ # required
    #       {
    #         name: "ProvisionedResourceName",
    #         identifier: "ProvisionedResourceIdentifier",
    #         provisioning_engine: "ProvisionedResourceEngine"
    #       }
    #     ]
    #   }
    # @return [Types::ListComponentProvisionedResourcesOperationOutput]
    def list_component_provisioned_resources(params = {}, options = {})
      request = build_request(:list_component_provisioned_resources, params)
      request.send_request(options)
    end

    # <p>List components with summary data. You can filter the result list by environment, service, or a single service instance.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::ListComponentsOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next component in the array of components, after the list of components that was previously
    #         requested.</p>
    # @option params [String] :environment_name
    #   <p>The name of an environment for result list filtering. Proton returns components associated with the environment or attached to service instances
    #         running in it.</p>
    # @option params [String] :service_name
    #   <p>The name of a service for result list filtering. Proton returns components attached to service instances of the service.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of a service instance for result list filtering. Proton returns the component attached to the service instance, if any.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of components to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     environment_name: "ResourceName",
    #     service_name: "ResourceName",
    #     service_instance_name: "ResourceName",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     components: [ # required
    #       {
    #         name: "ResourceName", # required
    #         arn: "ComponentArn", # required
    #         environment_name: "ResourceName", # required
    #         service_name: "ResourceName",
    #         service_instance_name: "ResourceName",
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now,
    #         last_deployment_succeeded_at: Time.now,
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       }
    #     ]
    #   }
    # @return [Types::ListComponentsOperationOutput]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p>List deployments. You can filter the result list by environment, service, or a single service instance.</p>
    # @param [Hash, Types::ListDeploymentsInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next deployment in the array of deployment, after the list of deployment that was previously
    #      requested.</p>
    # @option params [String] :environment_name
    #   <p>The name of an environment for result list filtering. Proton returns deployments associated with the environment.</p>
    # @option params [String] :service_name
    #   <p>The name of a service for result list filtering. Proton returns deployments associated with service instances of the service.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of a service instance for result list filtering. Proton returns the deployments associated with the service instance.</p>
    # @option params [String] :component_name
    #   <p>The name of a component for result list filtering. Proton returns deployments associated with that component.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of deployments to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     environment_name: "ResourceName",
    #     service_name: "ResourceName",
    #     service_instance_name: "ResourceName",
    #     component_name: "ResourceName",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     deployments: [ # required
    #       {
    #         id: "DeploymentId", # required
    #         arn: "DeploymentArn", # required
    #         target_arn: "Arn", # required
    #         target_resource_created_at: Time.now, # required
    #         target_resource_type: "DeploymentTargetResourceType", # required
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         completed_at: Time.now,
    #         environment_name: "ResourceName", # required
    #         service_name: "ResourceName",
    #         service_instance_name: "ResourceName",
    #         component_name: "ResourceName",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId",
    #         deployment_status: "DeploymentStatus", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListDeploymentsOutput]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>View a list of environment account connections.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton User guide</i>.</p>
    # @param [Hash, Types::ListEnvironmentAccountConnectionsOperationInput] params
    # @option params [String] :requested_by
    #   <p>The type of account making the <code>ListEnvironmentAccountConnections</code> request.</p>
    # @option params [String] :environment_name
    #   <p>The environment name that's associated with each listed environment account connection.</p>
    # @option params [Array<String>] :statuses
    #   <p>The status details for each listed environment account connection.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the list of
    #         environment account connections that was previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment account connections to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     requested_by: "EnvironmentAccountConnectionRequesterAccountType", # required
    #     environment_name: "ResourceName",
    #     statuses: ["EnvironmentAccountConnectionStatus"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environment_account_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connections: [ # required
    #       {
    #         id: "EnvironmentAccountConnectionId", # required
    #         arn: "EnvironmentAccountConnectionArn", # required
    #         management_account_id: "AwsAccountId", # required
    #         environment_account_id: "AwsAccountId", # required
    #         role_arn: "Arn", # required
    #         environment_name: "ResourceName", # required
    #         requested_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         status: "EnvironmentAccountConnectionStatus", # required
    #         component_role_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnvironmentAccountConnectionsOperationOutput]
    def list_environment_account_connections(params = {}, options = {})
      request = build_request(:list_environment_account_connections, params)
      request.send_request(options)
    end

    # <p>List the infrastructure as code outputs for your environment.</p>
    # @param [Hash, Types::ListEnvironmentOutputsOperationInput] params
    # @option params [String] :environment_name
    #   <p>The environment name.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment output in the array of environment outputs, after the list of environment outputs that was
    #         previously requested.</p>
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment whose outputs you want.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #     deployment_id: "DeploymentId"
    #   }
    #   options = {}
    #   response = client.list_environment_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     outputs: [ # required
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString"
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentOutputsOperationOutput]
    def list_environment_outputs(params = {}, options = {})
      request = build_request(:list_environment_outputs, params)
      request.send_request(options)
    end

    # <p>List the provisioned resources for your environment.</p>
    # @param [Hash, Types::ListEnvironmentProvisionedResourcesOperationInput] params
    # @option params [String] :environment_name
    #   <p>The environment name.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment provisioned resource in the array of environment provisioned resources, after the list of
    #         environment provisioned resources that was previously requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "ResourceName", # required
    #     next_token: "EmptyNextToken"
    #   }
    #   options = {}
    #   response = client.list_environment_provisioned_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     provisioned_resources: [ # required
    #       {
    #         name: "ProvisionedResourceName",
    #         identifier: "ProvisionedResourceIdentifier",
    #         provisioning_engine: "ProvisionedResourceEngine"
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentProvisionedResourcesOperationOutput]
    def list_environment_provisioned_resources(params = {}, options = {})
      request = build_request(:list_environment_provisioned_resources, params)
      request.send_request(options)
    end

    # <p>List major or minor versions of an environment template with detail data.</p>
    # @param [Hash, Types::ListEnvironmentTemplateVersionsOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the
    #         list of major or minor versions that was previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of major or minor versions of an environment template to list.</p>
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    # @option params [String] :major_version
    #   <p>To view a list of minor of versions under a major version of an environment template, include <code>major Version</code>.</p>
    #            <p>To view a list of major versions of an environment template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart"
    #   }
    #   options = {}
    #   response = client.list_environment_template_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     template_versions: [ # required
    #       {
    #         template_name: "ResourceName", # required
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         recommended_minor_version: "TemplateVersionPart",
    #         status: "TemplateVersionStatus", # required
    #         status_message: "StatusMessage",
    #         description: "Description",
    #         arn: "EnvironmentTemplateVersionArn", # required
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentTemplateVersionsOperationOutput]
    def list_environment_template_versions(params = {}, options = {})
      request = build_request(:list_environment_template_versions, params)
      request.send_request(options)
    end

    # <p>List environment templates.</p>
    # @param [Hash, Types::ListEnvironmentTemplatesOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment template in the array of environment templates, after the list of environment templates
    #         that was previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment templates to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environment_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     templates: [ # required
    #       {
    #         name: "ResourceName", # required
    #         arn: "EnvironmentTemplateArn", # required
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         display_name: "DisplayName",
    #         description: "Description",
    #         recommended_version: "FullTemplateVersionNumber",
    #         provisioning: "Provisioning"
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentTemplatesOperationOutput]
    def list_environment_templates(params = {}, options = {})
      request = build_request(:list_environment_templates, params)
      request.send_request(options)
    end

    # <p>List environments with detail data summaries.</p>
    # @param [Hash, Types::ListEnvironmentsOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next environment in the array of environments, after the list of environments that was previously
    #         requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of environments to list.</p>
    # @option params [Array<Types::EnvironmentTemplateFilter>] :environment_templates
    #   <p>An array of the versions of the environment template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     environment_templates: [
    #       {
    #         template_name: "ResourceName", # required
    #         major_version: "TemplateVersionPart", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     environments: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "Description",
    #         created_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now, # required
    #         last_deployment_succeeded_at: Time.now, # required
    #         arn: "EnvironmentArn", # required
    #         template_name: "ResourceName", # required
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart", # required
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         proton_service_role_arn: "Arn",
    #         environment_account_connection_id: "EnvironmentAccountConnectionId",
    #         environment_account_id: "AwsAccountId",
    #         provisioning: "Provisioning",
    #         component_role_arn: "Arn",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       }
    #     ]
    #   }
    # @return [Types::ListEnvironmentsOperationOutput]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>List linked repositories with detail data.</p>
    # @param [Hash, Types::ListRepositoriesOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next repository in the array of repositories, after the list of repositories previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of repositories to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     repositories: [ # required
    #       {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         connection_arn: "Arn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRepositoriesOperationOutput]
    def list_repositories(params = {}, options = {})
      request = build_request(:list_repositories, params)
      request.send_request(options)
    end

    # <p>List repository sync definitions with detail data.</p>
    # @param [Hash, Types::ListRepositorySyncDefinitionsOperationInput] params
    # @option params [String] :repository_name
    #   <p>The repository name.</p>
    # @option params [String] :repository_provider
    #   <p>The repository provider.</p>
    # @option params [String] :sync_type
    #   <p>The sync type. The only supported value is <code>TEMPLATE_SYNC</code>.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the list of repository
    #         sync definitions previously requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_name: "RepositoryName", # required
    #     repository_provider: "RepositoryProvider", # required
    #     sync_type: "SyncType", # required
    #     next_token: "EmptyNextToken"
    #   }
    #   options = {}
    #   response = client.list_repository_sync_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     sync_definitions: [ # required
    #       {
    #         target: "String", # required
    #         parent: "String", # required
    #         branch: "GitBranchName", # required
    #         directory: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRepositorySyncDefinitionsOperationOutput]
    def list_repository_sync_definitions(params = {}, options = {})
      request = build_request(:list_repository_sync_definitions, params)
      request.send_request(options)
    end

    # <p>Get a list service of instance Infrastructure as Code (IaC) outputs.</p>
    # @param [Hash, Types::ListServiceInstanceOutputsOperationInput] params
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance whose outputs you want.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the
    #         list of outputs that was previously requested.</p>
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment whose outputs you want.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_instance_name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #     deployment_id: "DeploymentId"
    #   }
    #   options = {}
    #   response = client.list_service_instance_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     outputs: [ # required
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString"
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceInstanceOutputsOperationOutput]
    def list_service_instance_outputs(params = {}, options = {})
      request = build_request(:list_service_instance_outputs, params)
      request.send_request(options)
    end

    # <p>List provisioned resources for a service instance with details.</p>
    # @param [Hash, Types::ListServiceInstanceProvisionedResourcesOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance whose provisioned resources you want.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of
    #         provisioned resources, after the list of provisioned resources that was previously
    #         requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     service_instance_name: "ResourceName", # required
    #     next_token: "EmptyNextToken"
    #   }
    #   options = {}
    #   response = client.list_service_instance_provisioned_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     provisioned_resources: [ # required
    #       {
    #         name: "ProvisionedResourceName",
    #         identifier: "ProvisionedResourceIdentifier",
    #         provisioning_engine: "ProvisionedResourceEngine"
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceInstanceProvisionedResourcesOperationOutput]
    def list_service_instance_provisioned_resources(params = {}, options = {})
      request = build_request(:list_service_instance_provisioned_resources, params)
      request.send_request(options)
    end

    # <p>List service instances with summary data. This action lists service instances of all
    #       services in the Amazon Web Services account.</p>
    # @param [Hash, Types::ListServiceInstancesOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next service in the array of service instances,
    #         after the list of service instances that was previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of service instances to list.</p>
    # @option params [Array<Types::ListServiceInstancesFilter>] :filters
    #   <p>An array of filtering criteria that scope down the result list. By default, all service
    #         instances in the Amazon Web Services account are returned.</p>
    # @option params [String] :sort_by
    #   <p>The field that the result list is sorted by.</p>
    #            <p>When you choose to sort by <code>serviceName</code>, service instances within each service
    #         are sorted by service instance name.</p>
    #            <p>Default: <code>serviceName</code>
    #            </p>
    # @option params [String] :sort_order
    #   <p>Result list sort order.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "ListServiceInstancesFilterBy",
    #         value: "ListServiceInstancesFilterValue"
    #       }
    #     ],
    #     sort_by: "ListServiceInstancesSortBy",
    #     sort_order: "SortOrder"
    #   }
    #   options = {}
    #   response = client.list_service_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     service_instances: [ # required
    #       {
    #         name: "ResourceName", # required
    #         arn: "ServiceInstanceArn", # required
    #         created_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now, # required
    #         last_deployment_succeeded_at: Time.now, # required
    #         service_name: "ResourceName", # required
    #         environment_name: "ResourceName", # required
    #         template_name: "ResourceName", # required
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart", # required
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceInstancesOperationOutput]
    def list_service_instances(params = {}, options = {})
      request = build_request(:list_service_instances, params)
      request.send_request(options)
    end

    # <p>Get a list of service pipeline Infrastructure as Code (IaC) outputs.</p>
    # @param [Hash, Types::ListServicePipelineOutputsOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service whose pipeline's outputs you want.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the
    #         list of outputs that was previously requested.</p>
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment you want the outputs for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     next_token: "EmptyNextToken",
    #     deployment_id: "DeploymentId"
    #   }
    #   options = {}
    #   response = client.list_service_pipeline_outputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     outputs: [ # required
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString"
    #       }
    #     ]
    #   }
    # @return [Types::ListServicePipelineOutputsOperationOutput]
    def list_service_pipeline_outputs(params = {}, options = {})
      request = build_request(:list_service_pipeline_outputs, params)
      request.send_request(options)
    end

    # <p>List provisioned resources for a service and pipeline with details.</p>
    # @param [Hash, Types::ListServicePipelineProvisionedResourcesOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service whose pipeline's provisioned resources you want.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of
    #         provisioned resources, after the list of provisioned resources that was previously
    #         requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     next_token: "EmptyNextToken"
    #   }
    #   options = {}
    #   response = client.list_service_pipeline_provisioned_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "EmptyNextToken",
    #     provisioned_resources: [ # required
    #       {
    #         name: "ProvisionedResourceName",
    #         identifier: "ProvisionedResourceIdentifier",
    #         provisioning_engine: "ProvisionedResourceEngine"
    #       }
    #     ]
    #   }
    # @return [Types::ListServicePipelineProvisionedResourcesOperationOutput]
    def list_service_pipeline_provisioned_resources(params = {}, options = {})
      request = build_request(:list_service_pipeline_provisioned_resources, params)
      request.send_request(options)
    end

    # <p>List major or minor versions of a service template with detail data.</p>
    # @param [Hash, Types::ListServiceTemplateVersionsOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of
    #         major or minor versions of a service template, after the list of major or minor versions that
    #         was previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of major or minor versions of a service template to list.</p>
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    # @option params [String] :major_version
    #   <p>To view a list of minor of versions under a major version of a service template, include
    #           <code>major Version</code>.</p>
    #            <p>To view a list of major versions of a service template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart"
    #   }
    #   options = {}
    #   response = client.list_service_template_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     template_versions: [ # required
    #       {
    #         template_name: "ResourceName", # required
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         recommended_minor_version: "TemplateVersionPart",
    #         status: "TemplateVersionStatus", # required
    #         status_message: "StatusMessage",
    #         description: "Description",
    #         arn: "ServiceTemplateVersionArn", # required
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceTemplateVersionsOperationOutput]
    def list_service_template_versions(params = {}, options = {})
      request = build_request(:list_service_template_versions, params)
      request.send_request(options)
    end

    # <p>List service templates with detail data.</p>
    # @param [Hash, Types::ListServiceTemplatesOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next service template in the array of service
    #         templates, after the list of service templates previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of service templates to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_service_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     templates: [ # required
    #       {
    #         name: "ResourceName", # required
    #         arn: "ServiceTemplateArn", # required
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         display_name: "DisplayName",
    #         description: "Description",
    #         recommended_version: "FullTemplateVersionNumber",
    #         pipeline_provisioning: "Provisioning"
    #       }
    #     ]
    #   }
    # @return [Types::ListServiceTemplatesOperationOutput]
    def list_service_templates(params = {}, options = {})
      request = build_request(:list_service_templates, params)
      request.send_request(options)
    end

    # <p>List services with summaries of detail data.</p>
    # @param [Hash, Types::ListServicesOperationInput] params
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next service in the array of services, after
    #         the list of services that was previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of services to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     services: [ # required
    #       {
    #         name: "ResourceName", # required
    #         description: "Description",
    #         arn: "ServiceArn", # required
    #         template_name: "ResourceName", # required
    #         created_at: Time.now, # required
    #         last_modified_at: Time.now, # required
    #         status: "ServiceStatus", # required
    #         status_message: "StatusMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ListServicesOperationOutput]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>List tags for a resource. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton
    #     resources and tagging</a> in the <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for the listed tags.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates the location of the next resource tag in the array of resource tags, after the list of resource tags that was
    #      previously requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Notify Proton of status changes to a provisioned resource when you use self-managed provisioning.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self">Self-managed provisioning</a> in the <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::NotifyResourceDeploymentStatusChangeOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The provisioned resource Amazon Resource Name (ARN).</p>
    # @option params [String] :status
    #   <p>The status of your provisioned resource.</p>
    # @option params [Array<Types::Output>] :outputs
    #   <p>The provisioned resource state change detail data that's returned by Proton.</p>
    # @option params [String] :deployment_id
    #   <p>The deployment ID for your provisioned resource.</p>
    # @option params [String] :status_message
    #   <p>The deployment status message for your provisioned resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     status: "ResourceDeploymentStatus",
    #     outputs: [
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString"
    #       }
    #     ],
    #     deployment_id: "DeploymentId",
    #     status_message: "StatusMessage"
    #   }
    #   options = {}
    #   response = client.notify_resource_deployment_status_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyResourceDeploymentStatusChangeOperationOutput]
    def notify_resource_deployment_status_change(params = {}, options = {})
      request = build_request(:notify_resource_deployment_status_change, params)
      request.send_request(options)
    end

    # <p>In a management account, reject an environment account connection from another environment account.</p>
    #          <p>After you reject an environment account connection request, you <i>can't</i> accept or use the rejected environment account
    #       connection.</p>
    #          <p>You <i>can’t</i> reject an environment account connection that's connected to an environment.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton User guide</i>.</p>
    # @param [Hash, Types::RejectEnvironmentAccountConnectionOperationInput] params
    # @option params [String] :id
    #   <p>The ID of the environment account connection to reject.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentAccountConnectionId", # required
    #   }
    #   options = {}
    #   response = client.reject_environment_account_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connection: { # required
    #       id: "EnvironmentAccountConnectionId", # required
    #       arn: "EnvironmentAccountConnectionArn", # required
    #       management_account_id: "AwsAccountId", # required
    #       environment_account_id: "AwsAccountId", # required
    #       role_arn: "Arn", # required
    #       environment_name: "ResourceName", # required
    #       requested_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "EnvironmentAccountConnectionStatus", # required
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::RejectEnvironmentAccountConnectionOperationOutput]
    def reject_environment_account_connection(params = {}, options = {})
      request = build_request(:reject_environment_account_connection, params)
      request.send_request(options)
    end

    # <p>Tag a resource. A tag is a key-value pair of metadata that you associate with an Proton resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in
    #    the <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton resource to apply customer tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of customer tags to apply to the Proton resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Remove a customer tag from a resource. A tag is a key-value pair of metadata associated with an Proton resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in
    #    the <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove customer tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of customer tag keys that indicate the customer tags to be removed from the resource.</p>
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
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update Proton settings that are used for multiple services in the Amazon Web Services account.</p>
    # @param [Hash, Types::UpdateAccountSettingsOperationInput] params
    # @option params [String] :pipeline_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed
    #      provisioning, and by customer-owned automation for self-managed provisioning.</p>
    #            <p>To remove a previously configured ARN, specify an empty string.</p>
    # @option params [Types::RepositoryBranchInput] :pipeline_provisioning_repository
    #   <p>A linked repository for pipeline provisioning. Specify it if you have environments configured for self-managed provisioning with services that
    #      include pipelines. A linked repository is a repository that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #            <p>To remove a previously configured repository, set <code>deletePipelineProvisioningRepository</code> to <code>true</code>, and don't set
    #       <code>pipelineProvisioningRepository</code>.</p>
    # @option params [Boolean] :delete_pipeline_provisioning_repository
    #   <p>Set to <code>true</code> to remove a configured pipeline repository from the account settings. Don't set this field if you are updating the
    #      configured pipeline repository.</p>
    # @option params [String] :pipeline_codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Proton assumes this role for CodeBuild-based
    #      provisioning.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_service_role_arn: "RoleArnOrEmptyString",
    #     pipeline_provisioning_repository: {
    #       provider: "RepositoryProvider", # required
    #       name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #     },
    #     delete_pipeline_provisioning_repository: false,
    #     pipeline_codebuild_role_arn: "RoleArnOrEmptyString"
    #   }
    #   options = {}
    #   response = client.update_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: { # required
    #       pipeline_service_role_arn: "RoleArnOrEmptyString",
    #       pipeline_provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       pipeline_codebuild_role_arn: "RoleArnOrEmptyString"
    #     }
    #   }
    # @return [Types::UpdateAccountSettingsOperationOutput]
    def update_account_settings(params = {}, options = {})
      request = build_request(:update_account_settings, params)
      request.send_request(options)
    end

    # <p>Update a component.</p>
    #          <p>There are a few modes for updating a component. The <code>deploymentType</code> field defines the mode.</p>
    #          <note>
    #             <p>You can't update a component while its deployment status, or the deployment status of a service instance attached to it, is
    #         <code>IN_PROGRESS</code>.</p>
    #          </note>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @param [Hash, Types::UpdateComponentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the component to update.</p>
    # @option params [String] :deployment_type
    #   <p>The deployment type. It defines the mode for updating a component, as follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated. You can only specify
    #                 <code>description</code> in this mode.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the component is deployed and updated with the new <code>serviceSpec</code>, <code>templateSource</code>, and/or <code>type</code>
    #               that you provide. Only requested parameters are updated.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :description
    #   <p>An optional customer-provided description of the component.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Don't specify to keep the component's current service instance
    #         attachment. Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    # @option params [String] :service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. Don't specify to keep the component's current service instance attachment.
    #         Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    # @option params [String] :service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when the component is attached to a service
    #         instance.</p>
    # @option params [String] :template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>The client token for the updated component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     deployment_type: "ComponentDeploymentUpdateType", # required
    #     description: "Description",
    #     service_name: "ResourceNameOrEmpty",
    #     service_instance_name: "ResourceNameOrEmpty",
    #     service_spec: "SpecContents",
    #     template_file: "TemplateFileContents",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ComponentArn", # required
    #       environment_name: "ResourceName", # required
    #       service_name: "ResourceName",
    #       service_instance_name: "ResourceName",
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now,
    #       last_deployment_succeeded_at: Time.now,
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       service_spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::UpdateComponentOperationOutput]
    def update_component(params = {}, options = {})
      request = build_request(:update_component, params)
      request.send_request(options)
    end

    # <p>Update an environment.</p>
    #          <p>If the environment is associated with an environment account connection, <i>don't</i> update or include the
    #         <code>protonServiceRoleArn</code> and <code>provisioningRepository</code> parameter to update or connect to an environment account connection.</p>
    #          <p>You can only update to a new environment account connection if that connection was created in the same environment account that the current
    #       environment account connection was created in. The account connection must also be associated with the current environment.</p>
    #          <p>If the environment <i>isn't</i> associated with an environment account connection, <i>don't</i> update or include the
    #         <code>environmentAccountConnectionId</code> parameter. You <i>can't</i> update or connect the environment to an environment account
    #       connection if it <i>isn't</i> already associated with an environment connection.</p>
    #          <p>You can update either the <code>environmentAccountConnectionId</code> or <code>protonServiceRoleArn</code> parameter and value. You can’t update
    #       both.</p>
    #          <p>If the environment was configured for Amazon Web Services-managed provisioning, omit the <code>provisioningRepository</code> parameter.</p>
    #          <p>If the environment was configured for self-managed provisioning, specify the <code>provisioningRepository</code> parameter and omit the
    #         <code>protonServiceRoleArn</code> and <code>environmentAccountConnectionId</code> parameters.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html">Environments</a> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html">Provisioning methods</a> in the <i>Proton User
    #         Guide</i>.</p>
    #          <p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>
    #          <dl>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>NONE</code>
    #                </p>
    #                <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>CURRENT_VERSION</code>
    #                </p>
    #                <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #               <i>Don’t</i> include minor or major version parameters when you use this <code>deployment-type</code>.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MINOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in
    #             use, by default. You can also specify a different minor version of the current major version in use.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MAJOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,
    #             by default. You can also specify a different major version that's higher than the major version in use and a minor version.</p>
    #             </dd>
    #          </dl>
    # @param [Hash, Types::UpdateEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment to update.</p>
    # @option params [String] :description
    #   <p>A description of the environment update.</p>
    # @option params [String] :spec
    #   <p>The formatted specification that defines the update.</p>
    # @option params [String] :template_major_version
    #   <p>The major version of the environment to update.</p>
    # @option params [String] :template_minor_version
    #   <p>The minor version of the environment to update.</p>
    # @option params [String] :proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make API calls to other services your behalf.</p>
    # @option params [String] :deployment_type
    #   <p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in
    #               use, by default. You can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,
    #               by default. You can also specify a different major version that is higher than the major version in use and a minor version (optional).</p>
    #               </dd>
    #            </dl>
    # @option params [String] :environment_account_connection_id
    #   <p>The ID of the environment account connection.</p>
    #            <p>You can only update to a new environment account connection if it was created in the same environment account that the current environment account
    #         connection was created in and is associated with the current environment.</p>
    # @option params [Types::RepositoryBranchInput] :provisioning_repository
    #   <p>The linked repository that you use to host your rendered infrastructure templates for self-managed provisioning. A linked repository is a repository
    #         that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @option params [String] :codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your
    #         behalf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "Description",
    #     spec: "SpecContents",
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #     proton_service_role_arn: "Arn",
    #     deployment_type: "DeploymentUpdateType", # required
    #     environment_account_connection_id: "EnvironmentAccountConnectionId",
    #     provisioning_repository: {
    #       provider: "RepositoryProvider", # required
    #       name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #     },
    #     component_role_arn: "RoleArn",
    #     codebuild_role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       arn: "EnvironmentArn", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       proton_service_role_arn: "Arn",
    #       environment_account_connection_id: "EnvironmentAccountConnectionId",
    #       environment_account_id: "AwsAccountId",
    #       spec: "SpecContents",
    #       provisioning: "Provisioning",
    #       provisioning_repository: {
    #         arn: "RepositoryArn", # required
    #         provider: "RepositoryProvider", # required
    #         name: "RepositoryName", # required
    #         branch: "GitBranchName", # required
    #       },
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::UpdateEnvironmentOperationOutput]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>In an environment account, update an environment account connection to use a new IAM role.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #         connections</a> in the <i>Proton User guide</i>.</p>
    # @param [Hash, Types::UpdateEnvironmentAccountConnectionOperationInput] params
    # @option params [String] :id
    #   <p>The ID of the environment account connection to update.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's associated with the environment account connection to update.</p>
    # @option params [String] :component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @option params [String] :codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources
    #         using CodeBuild-based provisioning in the associated environment account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "EnvironmentAccountConnectionId", # required
    #     role_arn: "RoleArn",
    #     component_role_arn: "RoleArn",
    #     codebuild_role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_environment_account_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_account_connection: { # required
    #       id: "EnvironmentAccountConnectionId", # required
    #       arn: "EnvironmentAccountConnectionArn", # required
    #       management_account_id: "AwsAccountId", # required
    #       environment_account_id: "AwsAccountId", # required
    #       role_arn: "Arn", # required
    #       environment_name: "ResourceName", # required
    #       requested_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "EnvironmentAccountConnectionStatus", # required
    #       component_role_arn: "RoleArn",
    #       codebuild_role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::UpdateEnvironmentAccountConnectionOperationOutput]
    def update_environment_account_connection(params = {}, options = {})
      request = build_request(:update_environment_account_connection, params)
      request.send_request(options)
    end

    # <p>Update an environment template.</p>
    # @param [Hash, Types::UpdateEnvironmentTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the environment template to update.</p>
    # @option params [String] :display_name
    #   <p>The name of the environment template to update as displayed in the developer interface.</p>
    # @option params [String] :description
    #   <p>A description of the environment template update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     display_name: "DisplayName",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_environment_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template: { # required
    #       name: "ResourceName", # required
    #       arn: "EnvironmentTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::UpdateEnvironmentTemplateOperationOutput]
    def update_environment_template(params = {}, options = {})
      request = build_request(:update_environment_template, params)
      request.send_request(options)
    end

    # <p>Update a major or minor version of an environment template.</p>
    # @param [Hash, Types::UpdateEnvironmentTemplateVersionOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of the environment template.</p>
    # @option params [String] :major_version
    #   <p>To update a major version of an environment template, include <code>major Version</code>.</p>
    # @option params [String] :minor_version
    #   <p>To update a minor version of an environment template, include <code>minorVersion</code>.</p>
    # @option params [String] :description
    #   <p>A description of environment template version to update.</p>
    # @option params [String] :status
    #   <p>The status of the environment template minor version to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     description: "Description",
    #     status: "TemplateVersionStatus"
    #   }
    #   options = {}
    #   response = client.update_environment_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_template_version: { # required
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "EnvironmentTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       schema: "TemplateSchema"
    #     }
    #   }
    # @return [Types::UpdateEnvironmentTemplateVersionOperationOutput]
    def update_environment_template_version(params = {}, options = {})
      request = build_request(:update_environment_template_version, params)
      request.send_request(options)
    end

    # <p>Edit a service description or use a spec to add and delete service instances.</p>
    #          <note>
    #             <p>Existing service instances and the service pipeline <i>can't</i> be edited
    #         using this API. They can only be deleted.</p>
    #          </note>
    #          <p>Use the <code>description</code> parameter to modify the description.</p>
    #          <p>Edit the <code>spec</code> parameter to add or delete instances.</p>
    #          <note>
    #             <p>You can't delete a service instance (remove it from the spec) if it has an attached
    #         component.</p>
    #             <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UpdateServiceOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service to edit.</p>
    # @option params [String] :description
    #   <p>The edited service description.</p>
    # @option params [String] :spec
    #   <p>Lists the service instances to add and the existing service instances to remain. Omit the
    #         existing service instances to delete from the list. <i>Don't</i> include edits
    #         to the existing service instances or pipeline. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-update.html">Edit a service</a>
    #         in the <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "Description",
    #     spec: "SpecContents"
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       name: "ResourceName", # required
    #       description: "Description",
    #       arn: "ServiceArn", # required
    #       template_name: "ResourceName", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       status: "ServiceStatus", # required
    #       status_message: "StatusMessage",
    #       spec: "SpecContents", # required
    #       pipeline: {
    #         arn: "Arn", # required
    #         created_at: Time.now, # required
    #         last_deployment_attempted_at: Time.now, # required
    #         last_deployment_succeeded_at: Time.now, # required
    #         template_name: "ResourceName", # required
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart", # required
    #         deployment_status: "DeploymentStatus", # required
    #         deployment_status_message: "StatusMessage",
    #         spec: "SpecContents",
    #         last_attempted_deployment_id: "DeploymentId",
    #         last_succeeded_deployment_id: "DeploymentId"
    #       },
    #       repository_connection_arn: "Arn",
    #       repository_id: "RepositoryId",
    #       branch_name: "GitBranchName"
    #     }
    #   }
    # @return [Types::UpdateServiceOperationOutput]
    def update_service(params = {}, options = {})
      request = build_request(:update_service, params)
      request.send_request(options)
    end

    # <p>Update a service instance.</p>
    #          <p>There are a few modes for updating a service instance. The <code>deploymentType</code>
    #       field defines the mode.</p>
    #          <note>
    #             <p>You can't update a service instance while its deployment status, or the deployment
    #         status of a component attached to it, is <code>IN_PROGRESS</code>.</p>
    #             <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UpdateServiceInstanceOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service instance to update.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    # @option params [String] :deployment_type
    #   <p>The deployment type. It defines the mode for updating a service instance, as
    #         follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested
    #               metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the new spec that
    #               you provide. Only requested parameters are updated. <i>Don’t</i> include
    #               major or minor version parameters when you use this deployment type.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published,
    #               recommended (latest) minor version of the current major version in use, by default. You
    #               can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published,
    #               recommended (latest) major and minor version of the current template, by default. You
    #               can specify a different major version that's higher than the major version in use and a
    #               minor version.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :spec
    #   <p>The formatted specification that defines the service instance update.</p>
    # @option params [String] :template_major_version
    #   <p>The major version of the service template to update.</p>
    # @option params [String] :template_minor_version
    #   <p>The minor version of the service template to update.</p>
    # @option params [String] :client_token
    #   <p>The client token of the service instance to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     service_name: "ResourceName", # required
    #     deployment_type: "DeploymentUpdateType", # required
    #     spec: "SpecContents",
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_service_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_instance: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceInstanceArn", # required
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       service_name: "ResourceName", # required
    #       environment_name: "ResourceName", # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       spec: "SpecContents",
    #       last_client_request_token: "String",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::UpdateServiceInstanceOperationOutput]
    def update_service_instance(params = {}, options = {})
      request = build_request(:update_service_instance, params)
      request.send_request(options)
    end

    # <p>Update the service pipeline.</p>
    #          <p>There are four modes for updating a service pipeline. The <code>deploymentType</code>
    #       field defines the mode.</p>
    #          <dl>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>NONE</code>
    #                </p>
    #                <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested
    #             metadata parameters are updated.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>CURRENT_VERSION</code>
    #                </p>
    #                <p>In this mode, the service pipeline is deployed and updated with the new spec that
    #             you provide. Only requested parameters are updated. <i>Don’t</i> include
    #             major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MINOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the service pipeline is deployed and updated with the published,
    #             recommended (latest) minor version of the current major version in use, by default. You
    #             can specify a different minor version of the current major version in use.</p>
    #             </dd>
    #             <dt/>
    #             <dd>
    #                <p>
    #                   <code>MAJOR_VERSION</code>
    #                </p>
    #                <p>In this mode, the service pipeline is deployed and updated with the published,
    #             recommended (latest) major and minor version of the current template by default. You can
    #             specify a different major version that's higher than the major version in use and a
    #             minor version.</p>
    #             </dd>
    #          </dl>
    # @param [Hash, Types::UpdateServicePipelineOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service to that the pipeline is associated with.</p>
    # @option params [String] :spec
    #   <p>The spec for the service pipeline to update.</p>
    # @option params [String] :deployment_type
    #   <p>The deployment type.</p>
    #            <p>There are four modes for updating a service pipeline. The <code>deploymentType</code>
    #         field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested
    #               metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the new spec that
    #               you provide. Only requested parameters are updated. <i>Don’t</i> include
    #               major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published,
    #               recommended (latest) minor version of the current major version in use, by default. You
    #               can specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published,
    #               recommended (latest) major and minor version of the current template, by default. You
    #               can specify a different major version that's higher than the major version in use and a
    #               minor version.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :template_major_version
    #   <p>The major version of the service template that was used to create the service that the
    #         pipeline is associated with.</p>
    # @option params [String] :template_minor_version
    #   <p>The minor version of the service template that was used to create the service that the
    #         pipeline is associated with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     spec: "SpecContents", # required
    #     deployment_type: "DeploymentUpdateType", # required
    #     template_major_version: "TemplateVersionPart",
    #     template_minor_version: "TemplateVersionPart"
    #   }
    #   options = {}
    #   response = client.update_service_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: { # required
    #       arn: "Arn", # required
    #       created_at: Time.now, # required
    #       last_deployment_attempted_at: Time.now, # required
    #       last_deployment_succeeded_at: Time.now, # required
    #       template_name: "ResourceName", # required
    #       template_major_version: "TemplateVersionPart", # required
    #       template_minor_version: "TemplateVersionPart", # required
    #       deployment_status: "DeploymentStatus", # required
    #       deployment_status_message: "StatusMessage",
    #       spec: "SpecContents",
    #       last_attempted_deployment_id: "DeploymentId",
    #       last_succeeded_deployment_id: "DeploymentId"
    #     }
    #   }
    # @return [Types::UpdateServicePipelineOperationOutput]
    def update_service_pipeline(params = {}, options = {})
      request = build_request(:update_service_pipeline, params)
      request.send_request(options)
    end

    # <p>Update the service sync blocker by resolving it.</p>
    # @param [Hash, Types::UpdateServiceSyncBlockerOperationInput] params
    # @option params [String] :id
    #   <p>The ID of the service sync blocker.</p>
    # @option params [String] :resolved_reason
    #   <p>The reason the service sync blocker was resolved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     resolved_reason: "String", # required
    #   }
    #   options = {}
    #   response = client.update_service_sync_blocker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_name: "ResourceName", # required
    #     service_instance_name: "ResourceName",
    #     service_sync_blocker: { # required
    #       id: "String", # required
    #       type: "BlockerType", # required
    #       status: "BlockerStatus", # required
    #       created_reason: "String", # required
    #       created_at: Time.now, # required
    #       contexts: [
    #         {
    #           key: "String", # required
    #           value: "String", # required
    #         }
    #       ],
    #       resolved_reason: "String",
    #       resolved_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateServiceSyncBlockerOperationOutput]
    def update_service_sync_blocker(params = {}, options = {})
      request = build_request(:update_service_sync_blocker, params)
      request.send_request(options)
    end

    # <p>Update the Proton Ops config file.</p>
    # @param [Hash, Types::UpdateServiceSyncConfigOperationInput] params
    # @option params [String] :service_name
    #   <p>The name of the service the Proton Ops file is for.</p>
    # @option params [String] :repository_provider
    #   <p>The name of the repository provider where the Proton Ops file is found.</p>
    # @option params [String] :repository_name
    #   <p>The name of the repository where the Proton Ops file is found.</p>
    # @option params [String] :branch
    #   <p>The name of the code repository branch where the Proton Ops file is found.</p>
    # @option params [String] :file_path
    #   <p>The path to the Proton Ops file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_name: "ResourceName", # required
    #     repository_provider: "RepositoryProvider", # required
    #     repository_name: "RepositoryName", # required
    #     branch: "GitBranchName", # required
    #     file_path: "OpsFilePath", # required
    #   }
    #   options = {}
    #   response = client.update_service_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_sync_config: {
    #       service_name: "ResourceName", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       file_path: "OpsFilePath", # required
    #     }
    #   }
    # @return [Types::UpdateServiceSyncConfigOperationOutput]
    def update_service_sync_config(params = {}, options = {})
      request = build_request(:update_service_sync_config, params)
      request.send_request(options)
    end

    # <p>Update a service template.</p>
    # @param [Hash, Types::UpdateServiceTemplateOperationInput] params
    # @option params [String] :name
    #   <p>The name of the service template to update.</p>
    # @option params [String] :display_name
    #   <p>The name of the service template to update that's displayed in the developer
    #         interface.</p>
    # @option params [String] :description
    #   <p>A description of the service template update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     display_name: "DisplayName",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_service_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template: { # required
    #       name: "ResourceName", # required
    #       arn: "ServiceTemplateArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       display_name: "DisplayName",
    #       description: "Description",
    #       recommended_version: "FullTemplateVersionNumber",
    #       encryption_key: "Arn",
    #       pipeline_provisioning: "Provisioning"
    #     }
    #   }
    # @return [Types::UpdateServiceTemplateOperationOutput]
    def update_service_template(params = {}, options = {})
      request = build_request(:update_service_template, params)
      request.send_request(options)
    end

    # <p>Update a major or minor version of a service template.</p>
    # @param [Hash, Types::UpdateServiceTemplateVersionOperationInput] params
    # @option params [String] :template_name
    #   <p>The name of the service template.</p>
    # @option params [String] :major_version
    #   <p>To update a major version of a service template, include <code>major
    #         Version</code>.</p>
    # @option params [String] :minor_version
    #   <p>To update a minor version of a service template, include <code>minorVersion</code>.</p>
    # @option params [String] :description
    #   <p>A description of a service template version to update.</p>
    # @option params [String] :status
    #   <p>The status of the service template minor version to update.</p>
    # @option params [Array<Types::CompatibleEnvironmentTemplateInput>] :compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with this service template
    #         version. A service instance based on this service template version can run in environments
    #         based on compatible templates.</p>
    # @option params [Array<String>] :supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached
    #         to service instances based on this service template version.</p>
    #            <note>
    #               <p>A change to <code>supportedComponentSources</code> doesn't impact existing component
    #           attachments to instances based on this template version. A change only affects later
    #           associations.</p>
    #            </note>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     major_version: "TemplateVersionPart", # required
    #     minor_version: "TemplateVersionPart", # required
    #     description: "Description",
    #     status: "TemplateVersionStatus",
    #     compatible_environment_templates: [
    #       {
    #         template_name: "ResourceName", # required
    #         major_version: "TemplateVersionPart", # required
    #       }
    #     ],
    #     supported_component_sources: ["ServiceTemplateSupportedComponentSourceType"]
    #   }
    #   options = {}
    #   response = client.update_service_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_template_version: { # required
    #       template_name: "ResourceName", # required
    #       major_version: "TemplateVersionPart", # required
    #       minor_version: "TemplateVersionPart", # required
    #       recommended_minor_version: "TemplateVersionPart",
    #       status: "TemplateVersionStatus", # required
    #       status_message: "StatusMessage",
    #       description: "Description",
    #       arn: "ServiceTemplateVersionArn", # required
    #       created_at: Time.now, # required
    #       last_modified_at: Time.now, # required
    #       compatible_environment_templates: [ # required
    #         {
    #           template_name: "ResourceName", # required
    #           major_version: "TemplateVersionPart", # required
    #         }
    #       ],
    #       schema: "TemplateSchema",
    #       supported_component_sources: ["ServiceTemplateSupportedComponentSourceType"]
    #     }
    #   }
    # @return [Types::UpdateServiceTemplateVersionOperationOutput]
    def update_service_template_version(params = {}, options = {})
      request = build_request(:update_service_template_version, params)
      request.send_request(options)
    end

    # <p>Update template sync configuration parameters, except for the <code>templateName</code> and <code>templateType</code>. Repository details
    #    (branch, name, and provider) should be of a linked repository. A linked repository is a repository that has been registered with Proton. For
    #    more information, see <a>CreateRepository</a>.</p>
    # @param [Hash, Types::UpdateTemplateSyncConfigOperationInput] params
    # @option params [String] :template_name
    #   <p>The synced template name.</p>
    # @option params [String] :template_type
    #   <p>The synced template type.</p>
    # @option params [String] :repository_provider
    #   <p>The repository provider.</p>
    # @option params [String] :repository_name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    # @option params [String] :branch
    #   <p>The repository branch for your template.</p>
    # @option params [String] :subdirectory
    #   <p>A subdirectory path to your template bundle version. When included, limits the template bundle search to this repository directory.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ResourceName", # required
    #     template_type: "TemplateType", # required
    #     repository_provider: "RepositoryProvider", # required
    #     repository_name: "RepositoryName", # required
    #     branch: "GitBranchName", # required
    #     subdirectory: "Subdirectory"
    #   }
    #   options = {}
    #   response = client.update_template_sync_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_sync_config: {
    #       template_name: "ResourceName", # required
    #       template_type: "TemplateType", # required
    #       repository_provider: "RepositoryProvider", # required
    #       repository_name: "RepositoryName", # required
    #       branch: "GitBranchName", # required
    #       subdirectory: "Subdirectory"
    #     }
    #   }
    # @return [Types::UpdateTemplateSyncConfigOperationOutput]
    def update_template_sync_config(params = {}, options = {})
      request = build_request(:update_template_sync_config, params)
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
      context[:gem_name] = 'aws-sdk-proton'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        component_deleted: Waiters::ComponentDeleted,
        component_deployed: Waiters::ComponentDeployed,
        environment_deployed: Waiters::EnvironmentDeployed,
        environment_template_version_registered: Waiters::EnvironmentTemplateVersionRegistered,
        service_created: Waiters::ServiceCreated,
        service_deleted: Waiters::ServiceDeleted,
        service_instance_deployed: Waiters::ServiceInstanceDeployed,
        service_pipeline_deployed: Waiters::ServicePipelineDeployed,
        service_template_version_registered: Waiters::ServiceTemplateVersionRegistered,
        service_updated: Waiters::ServiceUpdated
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end

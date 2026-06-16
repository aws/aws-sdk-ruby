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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:grafana)

module Aws::Grafana
  # An API client for Aws::Grafana.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSGrafanaControlPlane
    @identifier = :grafana

    add_plugin(::Aws::Grafana::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Grafana::EndpointProvider)
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

    # <p>Assigns a Grafana Enterprise license to a workspace. To upgrade, you must use
    #             <code>ENTERPRISE</code> for the <code>licenseType</code>, and pass in a valid
    #             Grafana Labs token for the <code>grafanaToken</code>. Upgrading to Grafana Enterprise
    #             incurs additional fees. For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html">Upgrade a
    #                 workspace to Grafana Enterprise</a>.</p>
    # @param [Hash, Types::AssociateLicenseInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to associate the license with.</p>
    # @option params [String] :license_type
    #   <p>The type of license to associate with the workspace.</p>
    #            <note>
    #               <p>Amazon Managed Grafana workspaces no longer support Grafana Enterprise free trials.</p>
    #            </note>
    # @option params [String] :grafana_token
    #   <p>A token from Grafana Labs that ties your Amazon Web Services account with a Grafana 
    #               Labs account. For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise">Link your account with Grafana Labs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     license_type: "LicenseType", # required
    #     grafana_token: "GrafanaToken"
    #   }
    #   options = {}
    #   response = client.associate_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       account_access_type: "AccountAccessType",
    #       created: Time.now, # required
    #       data_sources: ["DataSourceType"], # required
    #       description: "Description",
    #       endpoint: "Endpoint", # required
    #       grafana_version: "GrafanaVersion", # required
    #       id: "WorkspaceId", # required
    #       modified: Time.now, # required
    #       name: "WorkspaceName",
    #       organization_role_name: "OrganizationRoleName",
    #       notification_destinations: ["NotificationDestinationType"],
    #       organizational_units: ["OrganizationalUnit"],
    #       permission_type: "PermissionType",
    #       stack_set_name: "StackSetName",
    #       status: "WorkspaceStatus", # required
    #       workspace_role_arn: "IamRoleArn",
    #       license_type: "LicenseType",
    #       free_trial_consumed: false,
    #       license_expiration: Time.now,
    #       free_trial_expiration: Time.now,
    #       authentication: { # required
    #         providers: ["AuthenticationProviderTypes"], # required
    #         saml_configuration_status: "SamlConfigurationStatus"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       vpc_configuration: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       network_access_control: {
    #         prefix_list_ids: ["PrefixListId"], # required
    #         vpce_ids: ["VpceId"], # required
    #       },
    #       grafana_token: "GrafanaToken"
    #     }
    #   }
    # @return [Types::AssociateLicenseOutput]
    def associate_license(params = {}, options = {})
      request = build_request(:associate_license, params)
      request.send_request(options)
    end

    # <p>Creates a <i>workspace</i>. In a workspace, you can create Grafana
    #             dashboards and visualizations to analyze your metrics, logs, and traces. You don't have
    #             to build, package, or deploy any hardware to run the Grafana server.</p>
    #          <p>Don't use <code>CreateWorkspace</code> to modify an existing workspace. Instead, use
    #                 <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html">UpdateWorkspace</a>.</p>
    # @param [Hash, Types::CreateWorkspaceInput] params
    # @option params [String] :account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this
    #                   Amazon Web Services account only, or whether it can also access Amazon Web Services
    #               resources in other accounts in the same organization. If you specify
    #                   <code>ORGANIZATION</code>, you must specify which organizational units the workspace
    #               can access in the <code>workspaceOrganizationalUnits</code> parameter.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive, user-provided identifier to ensure the idempotency of the
    #               request.</p>
    # @option params [String] :organization_role_name
    #   <p>The name of an IAM role that already exists to use with Organizations to access Amazon Web Services data sources and notification channels in other accounts
    #               in an organization.</p>
    # @option params [String] :permission_type
    #   <p>When creating a workspace through the Amazon Web Services API, CLI or Amazon Web Services CloudFormation, you must manage IAM roles and provision the
    #               permissions that the workspace needs to use Amazon Web Services data sources and
    #               notification channels.</p>
    #            <p>You must also specify a <code>workspaceRoleArn</code> for a role that you will
    #               manage for the workspace to use when accessing those datasources and notification 
    #               channels.</p>
    #            <p>The ability for Amazon Managed Grafana to create and update IAM roles on
    #               behalf of the user is supported only in the Amazon Managed Grafana console, where this value
    #               may be set to <code>SERVICE_MANAGED</code>.</p>
    #            <note>
    #               <p>Use only the <code>CUSTOMER_MANAGED</code> permission type when creating a
    #                   workspace with the API, CLI or Amazon Web Services CloudFormation. </p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana
    #                   permissions and policies for Amazon Web Services data sources and notification
    #                   channels</a>.</p>
    # @option params [String] :stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM
    #               roles to be used for this workspace.</p>
    # @option params [Array<String>] :workspace_data_sources
    #   <p>This parameter is for internal use only, and should not be used.</p>
    # @option params [String] :workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this
    #               workspace.</p>
    #            <p>Pattern: <code>^[\\p{L}\\p{Z}\\p{N}\\p{P}]{0,2048}$</code>
    #            </p>
    # @option params [String] :workspace_name
    #   <p>The name for the workspace. It does not have to be unique.</p>
    # @option params [Array<String>] :workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this
    #               workspace. Specifying these data sources here enables Amazon Managed Grafana to create
    #                   IAM roles and permissions that allow Amazon Managed Grafana to use these
    #               channels.</p>
    # @option params [Array<String>] :workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #               from, if this workspace is in an account that is part of an organization.</p>
    # @option params [String] :workspace_role_arn
    #   <p>Specified the IAM role that grants permissions to the Amazon Web Services resources that the workspace will view data from, including both data 
    #               sources and notification channels. You are responsible for managing the permissions 
    #               for this role as new data sources or notification channels are added. </p>
    # @option params [Array<String>] :authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or both to
    #               authenticate users for using the Grafana console within a workspace. For more
    #               information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #                       Amazon Managed Grafana</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags associated with the workspace.</p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>The configuration settings for an Amazon VPC that contains data sources for
    #               your Grafana workspace to connect to.</p>
    #            <note>
    #               <p>Connecting to a private VPC is not yet available in the Asia Pacific (Seoul) 
    #                   Region (ap-northeast-2).</p>
    #            </note>
    # @option params [String] :configuration
    #   <p>The configuration string for the workspace that you create. For more information about
    #               the format and configuration options available, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working in your Grafana
    #                   workspace</a>.</p>
    # @option params [Types::NetworkAccessConfiguration] :network_access_control
    #   <p>Configuration for network access to your workspace.</p>
    #            <p>When this is configured, only listed IP addresses and VPC endpoints will be able to
    #               access your workspace. Standard Grafana authentication and authorization will still be
    #               required.</p>
    #            <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints will
    #               be allowed. Standard Grafana authentication and authorization will still be
    #               required.</p>
    # @option params [String] :grafana_version
    #   <p>Specifies the version of Grafana to support in the new workspace. If not specified, 
    #               defaults to the latest version (for example, 10.4).</p>
    #            <p>To get a list of supported versions, use the <code>ListVersions</code>
    #               operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_access_type: "AccountAccessType", # required
    #     client_token: "ClientToken",
    #     organization_role_name: "OrganizationRoleName",
    #     permission_type: "PermissionType", # required
    #     stack_set_name: "StackSetName",
    #     workspace_data_sources: ["DataSourceType"],
    #     workspace_description: "Description",
    #     workspace_name: "WorkspaceName",
    #     workspace_notification_destinations: ["NotificationDestinationType"],
    #     workspace_organizational_units: ["OrganizationalUnit"],
    #     workspace_role_arn: "IamRoleArn",
    #     authentication_providers: ["AuthenticationProviderTypes"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     vpc_configuration: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     configuration: "OverridableConfigurationJson",
    #     network_access_control: {
    #       prefix_list_ids: ["PrefixListId"], # required
    #       vpce_ids: ["VpceId"], # required
    #     },
    #     grafana_version: "GrafanaVersion"
    #   }
    #   options = {}
    #   response = client.create_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       account_access_type: "AccountAccessType",
    #       created: Time.now, # required
    #       data_sources: ["DataSourceType"], # required
    #       description: "Description",
    #       endpoint: "Endpoint", # required
    #       grafana_version: "GrafanaVersion", # required
    #       id: "WorkspaceId", # required
    #       modified: Time.now, # required
    #       name: "WorkspaceName",
    #       organization_role_name: "OrganizationRoleName",
    #       notification_destinations: ["NotificationDestinationType"],
    #       organizational_units: ["OrganizationalUnit"],
    #       permission_type: "PermissionType",
    #       stack_set_name: "StackSetName",
    #       status: "WorkspaceStatus", # required
    #       workspace_role_arn: "IamRoleArn",
    #       license_type: "LicenseType",
    #       free_trial_consumed: false,
    #       license_expiration: Time.now,
    #       free_trial_expiration: Time.now,
    #       authentication: { # required
    #         providers: ["AuthenticationProviderTypes"], # required
    #         saml_configuration_status: "SamlConfigurationStatus"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       vpc_configuration: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       network_access_control: {
    #         prefix_list_ids: ["PrefixListId"], # required
    #         vpce_ids: ["VpceId"], # required
    #       },
    #       grafana_token: "GrafanaToken"
    #     }
    #   }
    # @return [Types::CreateWorkspaceOutput]
    def create_workspace(params = {}, options = {})
      request = build_request(:create_workspace, params)
      request.send_request(options)
    end

    # <p>Creates a Grafana API key for the workspace. This key can be used to authenticate
    #             requests sent to the workspace's HTTP API. See <a href="https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html">https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html</a>
    #             for available APIs and example requests.</p>
    #          <note>
    #             <p>In workspaces compatible with Grafana version 9 or above, use workspace service 
    #                 accounts instead of API keys. API keys will be removed in a future release.</p>
    #          </note>
    # @param [Hash, Types::CreateWorkspaceApiKeyInput] params
    # @option params [String] :key_name
    #   <p>Specifies the name of the key. Keynames must be unique to the workspace.</p>
    # @option params [String] :key_role
    #   <p>Specifies the permission level of the key.</p>
    #            <p> Valid values: <code>ADMIN</code>|<code>EDITOR</code>|<code>VIEWER</code>
    #            </p>
    # @option params [Integer] :seconds_to_live
    #   <p>Specifies the time in seconds until the key expires. Keys can be valid for up to 30
    #               days.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to create an API key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_name: "ApiKeyName", # required
    #     key_role: "String", # required
    #     seconds_to_live: 1, # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.create_workspace_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_name: "ApiKeyName", # required
    #     key: "ApiKeyToken", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::CreateWorkspaceApiKeyOutput]
    def create_workspace_api_key(params = {}, options = {})
      request = build_request(:create_workspace_api_key, params)
      request.send_request(options)
    end

    # <p>Creates a service account for the workspace. A service account can be used to call 
    #             Grafana HTTP APIs, and run automated workloads. After creating the service account with
    #             the correct <code>GrafanaRole</code> for your use case, use 
    #             <code>CreateWorkspaceServiceAccountToken</code> to create a token that can be used to
    #             authenticate and authorize Grafana HTTP API calls.</p>
    #          <p>You can only create service accounts for workspaces that are compatible with Grafana
    #             version 9 and above.</p>
    #          <note>
    #             <p>For more information about service accounts, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html">Service accounts</a> in 
    #                 the <i>Amazon Managed Grafana User Guide</i>.</p>
    #             <p>For more information about the Grafana HTTP APIs, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html">Using Grafana HTTP 
    #                 APIs</a> in the <i>Amazon Managed Grafana User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateWorkspaceServiceAccountRequest] params
    # @option params [String] :name
    #   <p>A name for the service account. The name must be unique within the workspace, as it
    #               determines the ID associated with the service account.</p>
    # @option params [String] :grafana_role
    #   <p>The permission level to use for this service account.</p>
    #            <note>
    #               <p>For more information about the roles and the permissions each has, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html">User
    #                   roles</a> in the <i>Amazon Managed Grafana User Guide</i>.</p>
    #            </note>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace within which to create the service account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceAccountName", # required
    #     grafana_role: "Role", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.create_workspace_service_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String", # required
    #     name: "String", # required
    #     grafana_role: "Role", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::CreateWorkspaceServiceAccountResponse]
    def create_workspace_service_account(params = {}, options = {})
      request = build_request(:create_workspace_service_account, params)
      request.send_request(options)
    end

    # <p>Creates a token that can be used to authenticate and authorize Grafana HTTP API
    #             operations for the given <a href="https://docs.aws.amazon.com/grafana/latest/userguide/service-accounts.html">workspace service 
    #             account</a>. The service account acts as a user for the API operations, and
    #             defines the permissions that are used by the API.</p>
    #          <important>
    #             <p>When you create the service account token, you will receive a key that is used
    #                 when calling Grafana APIs. Do not lose this key, as it will not be retrievable
    #                 again.</p>
    #             <p>If you do lose the key, you can delete the token and recreate it to receive a 
    #                 new key. This will disable the initial key.</p>
    #          </important>
    #          <p>Service accounts are only available for workspaces that are compatible with Grafana
    #             version 9 and above.</p>
    # @param [Hash, Types::CreateWorkspaceServiceAccountTokenRequest] params
    # @option params [String] :name
    #   <p>A name for the token to create.</p>
    # @option params [Integer] :seconds_to_live
    #   <p>Sets how long the token will be valid, in seconds. You can set the time up to 30 
    #               days in the future.</p>
    # @option params [String] :service_account_id
    #   <p>The ID of the service account for which to create a token.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace the service account resides within.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceAccountTokenName", # required
    #     seconds_to_live: 1, # required
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.create_workspace_service_account_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_account_token: { # required
    #       id: "String", # required
    #       name: "String", # required
    #       key: "ServiceAccountTokenKey", # required
    #     },
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::CreateWorkspaceServiceAccountTokenResponse]
    def create_workspace_service_account_token(params = {}, options = {})
      request = build_request(:create_workspace_service_account_token, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Managed Grafana workspace.</p>
    # @param [Hash, Types::DeleteWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       account_access_type: "AccountAccessType",
    #       created: Time.now, # required
    #       data_sources: ["DataSourceType"], # required
    #       description: "Description",
    #       endpoint: "Endpoint", # required
    #       grafana_version: "GrafanaVersion", # required
    #       id: "WorkspaceId", # required
    #       modified: Time.now, # required
    #       name: "WorkspaceName",
    #       organization_role_name: "OrganizationRoleName",
    #       notification_destinations: ["NotificationDestinationType"],
    #       organizational_units: ["OrganizationalUnit"],
    #       permission_type: "PermissionType",
    #       stack_set_name: "StackSetName",
    #       status: "WorkspaceStatus", # required
    #       workspace_role_arn: "IamRoleArn",
    #       license_type: "LicenseType",
    #       free_trial_consumed: false,
    #       license_expiration: Time.now,
    #       free_trial_expiration: Time.now,
    #       authentication: { # required
    #         providers: ["AuthenticationProviderTypes"], # required
    #         saml_configuration_status: "SamlConfigurationStatus"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       vpc_configuration: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       network_access_control: {
    #         prefix_list_ids: ["PrefixListId"], # required
    #         vpce_ids: ["VpceId"], # required
    #       },
    #       grafana_token: "GrafanaToken"
    #     }
    #   }
    # @return [Types::DeleteWorkspaceOutput]
    def delete_workspace(params = {}, options = {})
      request = build_request(:delete_workspace, params)
      request.send_request(options)
    end

    # <p>Deletes a Grafana API key for the workspace.</p>
    #          <note>
    #             <p>In workspaces compatible with Grafana version 9 or above, use workspace service 
    #                 accounts instead of API keys. API keys will be removed in a future release.</p>
    #          </note>
    # @param [Hash, Types::DeleteWorkspaceApiKeyInput] params
    # @option params [String] :key_name
    #   <p>The name of the API key to delete.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_name: "ApiKeyName", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_name: "ApiKeyName", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::DeleteWorkspaceApiKeyOutput]
    def delete_workspace_api_key(params = {}, options = {})
      request = build_request(:delete_workspace_api_key, params)
      request.send_request(options)
    end

    # <p>Deletes a workspace service account from the workspace.</p>
    #          <p>This will delete any tokens created for the service account, as well. If the tokens
    #             are currently in use, the will fail to authenticate / authorize after they are 
    #             deleted.</p>
    #          <p>Service accounts are only available for workspaces that are compatible with Grafana
    #             version 9 and above.</p>
    # @param [Hash, Types::DeleteWorkspaceServiceAccountRequest] params
    # @option params [String] :service_account_id
    #   <p>The ID of the service account to delete.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace where the service account resides.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace_service_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::DeleteWorkspaceServiceAccountResponse]
    def delete_workspace_service_account(params = {}, options = {})
      request = build_request(:delete_workspace_service_account, params)
      request.send_request(options)
    end

    # <p>Deletes a token for the workspace service account.</p>
    #          <p>This will disable the key associated with the token. If any automation is currently 
    #             using the key, it will no longer be authenticated or authorized to perform actions with 
    #             the Grafana HTTP APIs.</p>
    #          <p>Service accounts are only available for workspaces that are compatible with Grafana
    #             version 9 and above.</p>
    # @param [Hash, Types::DeleteWorkspaceServiceAccountTokenRequest] params
    # @option params [String] :token_id
    #   <p>The ID of the token to delete.</p>
    # @option params [String] :service_account_id
    #   <p>The ID of the service account from which to delete the token.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace from which to delete the token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token_id: "String", # required
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.delete_workspace_service_account_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token_id: "String", # required
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::DeleteWorkspaceServiceAccountTokenResponse]
    def delete_workspace_service_account_token(params = {}, options = {})
      request = build_request(:delete_workspace_service_account_token, params)
      request.send_request(options)
    end

    # <p>Displays information about one Amazon Managed Grafana workspace.</p>
    # @param [Hash, Types::DescribeWorkspaceInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to display information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       account_access_type: "AccountAccessType",
    #       created: Time.now, # required
    #       data_sources: ["DataSourceType"], # required
    #       description: "Description",
    #       endpoint: "Endpoint", # required
    #       grafana_version: "GrafanaVersion", # required
    #       id: "WorkspaceId", # required
    #       modified: Time.now, # required
    #       name: "WorkspaceName",
    #       organization_role_name: "OrganizationRoleName",
    #       notification_destinations: ["NotificationDestinationType"],
    #       organizational_units: ["OrganizationalUnit"],
    #       permission_type: "PermissionType",
    #       stack_set_name: "StackSetName",
    #       status: "WorkspaceStatus", # required
    #       workspace_role_arn: "IamRoleArn",
    #       license_type: "LicenseType",
    #       free_trial_consumed: false,
    #       license_expiration: Time.now,
    #       free_trial_expiration: Time.now,
    #       authentication: { # required
    #         providers: ["AuthenticationProviderTypes"], # required
    #         saml_configuration_status: "SamlConfigurationStatus"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       vpc_configuration: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       network_access_control: {
    #         prefix_list_ids: ["PrefixListId"], # required
    #         vpce_ids: ["VpceId"], # required
    #       },
    #       grafana_token: "GrafanaToken"
    #     }
    #   }
    # @return [Types::DescribeWorkspaceOutput]
    def describe_workspace(params = {}, options = {})
      request = build_request(:describe_workspace, params)
      request.send_request(options)
    end

    # <p>Displays information about the authentication methods used in one Amazon Managed Grafana
    #             workspace.</p>
    # @param [Hash, Types::DescribeWorkspaceAuthenticationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to return authentication information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_workspace_authentication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication: { # required
    #       providers: ["AuthenticationProviderTypes"], # required
    #       saml: {
    #         status: "SamlConfigurationStatus", # required
    #         configuration: {
    #           idp_metadata: { # required
    #             # One of:
    #             url: "IdpMetadataUrl",
    #             xml: "String"
    #           },
    #           assertion_attributes: {
    #             name: "AssertionAttribute",
    #             login: "AssertionAttribute",
    #             email: "AssertionAttribute",
    #             groups: "AssertionAttribute",
    #             role: "AssertionAttribute",
    #             org: "AssertionAttribute"
    #           },
    #           role_values: {
    #             editor: ["RoleValue"],
    #             admin: ["RoleValue"]
    #           },
    #           allowed_organizations: ["AllowedOrganization"],
    #           login_validity_duration: 1
    #         }
    #       },
    #       aws_sso: {
    #         sso_client_id: "SSOClientId"
    #       }
    #     }
    #   }
    # @return [Types::DescribeWorkspaceAuthenticationOutput]
    def describe_workspace_authentication(params = {}, options = {})
      request = build_request(:describe_workspace_authentication, params)
      request.send_request(options)
    end

    # <p>Gets the current configuration string for the given workspace.</p>
    # @param [Hash, Types::DescribeWorkspaceConfigurationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to get configuration information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.describe_workspace_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: "OverridableConfigurationJson", # required
    #     grafana_version: "GrafanaVersion"
    #   }
    # @return [Types::DescribeWorkspaceConfigurationOutput]
    def describe_workspace_configuration(params = {}, options = {})
      request = build_request(:describe_workspace_configuration, params)
      request.send_request(options)
    end

    # <p>Removes the Grafana Enterprise license from a workspace.</p>
    # @param [Hash, Types::DisassociateLicenseInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to remove the Grafana Enterprise license from.</p>
    # @option params [String] :license_type
    #   <p>The type of license to remove from the workspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     license_type: "LicenseType", # required
    #   }
    #   options = {}
    #   response = client.disassociate_license(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       account_access_type: "AccountAccessType",
    #       created: Time.now, # required
    #       data_sources: ["DataSourceType"], # required
    #       description: "Description",
    #       endpoint: "Endpoint", # required
    #       grafana_version: "GrafanaVersion", # required
    #       id: "WorkspaceId", # required
    #       modified: Time.now, # required
    #       name: "WorkspaceName",
    #       organization_role_name: "OrganizationRoleName",
    #       notification_destinations: ["NotificationDestinationType"],
    #       organizational_units: ["OrganizationalUnit"],
    #       permission_type: "PermissionType",
    #       stack_set_name: "StackSetName",
    #       status: "WorkspaceStatus", # required
    #       workspace_role_arn: "IamRoleArn",
    #       license_type: "LicenseType",
    #       free_trial_consumed: false,
    #       license_expiration: Time.now,
    #       free_trial_expiration: Time.now,
    #       authentication: { # required
    #         providers: ["AuthenticationProviderTypes"], # required
    #         saml_configuration_status: "SamlConfigurationStatus"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       vpc_configuration: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       network_access_control: {
    #         prefix_list_ids: ["PrefixListId"], # required
    #         vpce_ids: ["VpceId"], # required
    #       },
    #       grafana_token: "GrafanaToken"
    #     }
    #   }
    # @return [Types::DisassociateLicenseOutput]
    def disassociate_license(params = {}, options = {})
      request = build_request(:disassociate_license, params)
      request.send_request(options)
    end

    # <p>Lists the users and groups who have the Grafana <code>Admin</code> and
    #                 <code>Editor</code> roles in this workspace. If you use this operation without
    #             specifying <code>userId</code> or <code>groupId</code>, the operation returns the roles
    #             of all users and groups. If you specify a <code>userId</code> or a <code>groupId</code>,
    #             only the roles for that user or group are returned. If you do this, you can specify only
    #             one <code>userId</code> or one <code>groupId</code>.</p>
    # @param [Hash, Types::ListPermissionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from
    #               a previous <code>ListPermissions</code> operation.</p>
    # @option params [String] :user_type
    #   <p>(Optional) If you specify <code>SSO_USER</code>, then only the permissions of IAM Identity Center users are returned. If you specify <code>SSO_GROUP</code>, only the
    #               permissions of IAM Identity Center groups are returned.</p>
    # @option params [String] :user_id
    #   <p>(Optional) Limits the results to only the user that matches this ID.</p>
    # @option params [String] :group_id
    #   <p>(Optional) Limits the results to only the group that matches this ID.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to list permissions for. This parameter is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     user_type: "UserType",
    #     user_id: "SsoId",
    #     group_id: "SsoId",
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.list_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     permissions: [ # required
    #       {
    #         user: { # required
    #           id: "SsoId", # required
    #           type: "UserType", # required
    #         },
    #         role: "Role", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListPermissionsOutput]
    def list_permissions(params = {}, options = {})
      request = build_request(:list_permissions, params)
      request.send_request(options)
    end

    # <p>The <code>ListTagsForResource</code> operation returns the tags that are associated
    #             with the Amazon Managed Service for Grafana resource specified by the
    #                 <code>resourceArn</code>. Currently, the only resource that can be tagged is a
    #             workspace. </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource the list of tags are associated with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Lists available versions of Grafana. These are available when calling 
    #             <code>CreateWorkspace</code>. Optionally, include a workspace to list the versions 
    #             to which it can be upgraded.</p>
    # @param [Hash, Types::ListVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You receive this token from
    #               a previous <code>ListVersions</code> operation.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to list the available upgrade versions. If not included, 
    #               lists all versions of Grafana that are supported for 
    #               <code>CreateWorkspace</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     workspace_id: "WorkspaceId"
    #   }
    #   options = {}
    #   response = client.list_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     grafana_versions: ["GrafanaVersion"]
    #   }
    # @return [Types::ListVersionsResponse]
    def list_versions(params = {}, options = {})
      request = build_request(:list_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of tokens for a workspace service account.</p>
    #          <note>
    #             <p>This does not return the key for each token. You cannot access keys after they
    #                 are created. To create a new key, delete the token and recreate it.</p>
    #          </note>
    #          <p>Service accounts are only available for workspaces that are compatible with Grafana
    #             version 9 and above.</p>
    # @param [Hash, Types::ListWorkspaceServiceAccountTokensRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of tokens to include in the results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of service accounts to return. (You receive this token
    #               from a previous <code>ListWorkspaceServiceAccountTokens</code> operation.)</p>
    # @option params [String] :service_account_id
    #   <p>The ID of the service account for which to return tokens.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace for which to return tokens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.list_workspace_service_account_tokens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     service_account_tokens: [ # required
    #       {
    #         id: "String", # required
    #         name: "String", # required
    #         created_at: Time.now, # required
    #         expires_at: Time.now, # required
    #         last_used_at: Time.now
    #       }
    #     ],
    #     service_account_id: "String", # required
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::ListWorkspaceServiceAccountTokensResponse]
    def list_workspace_service_account_tokens(params = {}, options = {})
      request = build_request(:list_workspace_service_account_tokens, params)
      request.send_request(options)
    end

    # <p>Returns a list of service accounts for a workspace.</p>
    #          <p>Service accounts are only available for workspaces that are compatible with Grafana
    #             version 9 and above.</p>
    # @param [Hash, Types::ListWorkspaceServiceAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of service accounts to include in the results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of service accounts to return. (You receive this token
    #               from a previous <code>ListWorkspaceServiceAccounts</code> operation.)</p>
    # @option params [String] :workspace_id
    #   <p>The workspace for which to list service accounts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.list_workspace_service_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     service_accounts: [ # required
    #       {
    #         id: "String", # required
    #         name: "String", # required
    #         is_disabled: "String", # required
    #         grafana_role: "Role", # required
    #       }
    #     ],
    #     workspace_id: "WorkspaceId", # required
    #   }
    # @return [Types::ListWorkspaceServiceAccountsResponse]
    def list_workspace_service_accounts(params = {}, options = {})
      request = build_request(:list_workspace_service_accounts, params)
      request.send_request(options)
    end

    # <p>Returns a list of Amazon Managed Grafana workspaces in the account, with some information
    #             about each workspace. For more complete information about one workspace, use <a href="https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html">DescribeWorkspace</a>.</p>
    # @param [Hash, Types::ListWorkspacesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of workspaces to include in the results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of workspaces to return. (You receive this token from a
    #               previous <code>ListWorkspaces</code> operation.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_workspaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspaces: [ # required
    #       {
    #         created: Time.now, # required
    #         description: "Description",
    #         endpoint: "Endpoint", # required
    #         grafana_version: "GrafanaVersion", # required
    #         id: "WorkspaceId", # required
    #         modified: Time.now, # required
    #         name: "WorkspaceName",
    #         notification_destinations: ["NotificationDestinationType"],
    #         status: "WorkspaceStatus", # required
    #         authentication: { # required
    #           providers: ["AuthenticationProviderTypes"], # required
    #           saml_configuration_status: "SamlConfigurationStatus"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         license_type: "LicenseType",
    #         grafana_token: "GrafanaToken"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkspacesOutput]
    def list_workspaces(params = {}, options = {})
      request = build_request(:list_workspaces, params)
      request.send_request(options)
    end

    # <p>The <code>TagResource</code> operation associates tags with an Amazon Managed Grafana
    #             resource. Currently, the only resource that can be tagged is workspaces. </p>
    #          <p>If you specify a new tag key for the resource, this tag is appended to the list of
    #             tags associated with the resource. If you specify a tag key that is already associated
    #             with the resource, the new tag value that you specify replaces the previous value for
    #             that tag.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource the tag is associated with.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tag keys and values to associate with the resource. You can associate tag
    #               keys only, tags (key and values) only or a combination of tag keys and tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>The <code>UntagResource</code> operation removes the association of the tag with the
    #             Amazon Managed Grafana resource. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource the tag association is removed from. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key values of the tag to be removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Updates which users in a workspace have the Grafana <code>Admin</code> or
    #                 <code>Editor</code> roles.</p>
    # @param [Hash, Types::UpdatePermissionsInput] params
    # @option params [Array<Types::UpdateInstruction>] :update_instruction_batch
    #   <p>An array of structures that contain the permission updates to make.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_instruction_batch: [ # required
    #       {
    #         action: "UpdateAction", # required
    #         role: "Role", # required
    #         users: [ # required
    #           {
    #             id: "SsoId", # required
    #             type: "UserType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     workspace_id: "WorkspaceId", # required
    #   }
    #   options = {}
    #   response = client.update_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         code: 1, # required
    #         message: "String", # required
    #         caused_by: { # required
    #           action: "UpdateAction", # required
    #           role: "Role", # required
    #           users: [ # required
    #             {
    #               id: "SsoId", # required
    #               type: "UserType", # required
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdatePermissionsOutput]
    def update_permissions(params = {}, options = {})
      request = build_request(:update_permissions, params)
      request.send_request(options)
    end

    # <p>Modifies an existing Amazon Managed Grafana workspace. If you use this operation and omit
    #             any optional parameters, the existing values of those parameters are not changed.</p>
    #          <p>To modify the user authentication methods that the workspace uses, such as SAML or
    #                 IAM Identity Center, use <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html">UpdateWorkspaceAuthentication</a>.</p>
    #          <p>To modify which users in the workspace have the <code>Admin</code> and
    #                 <code>Editor</code> Grafana roles, use <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html">UpdatePermissions</a>.</p>
    # @param [Hash, Types::UpdateWorkspaceInput] params
    # @option params [String] :account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this
    #                   Amazon Web Services account only, or whether it can also access Amazon Web Services
    #               resources in other accounts in the same organization. If you specify
    #                   <code>ORGANIZATION</code>, you must specify which organizational units the workspace
    #               can access in the <code>workspaceOrganizationalUnits</code> parameter.</p>
    # @option params [String] :organization_role_name
    #   <p>The name of an IAM role that already exists to use to access resources
    #               through Organizations. This can only be used with a workspace that has the 
    #               <code>permissionType</code> set to <code>CUSTOMER_MANAGED</code>.</p>
    # @option params [String] :permission_type
    #   <p>Use this parameter if you want to change a workspace from <code>SERVICE_MANAGED</code>
    #               to <code>CUSTOMER_MANAGED</code>. This allows you to manage the permissions that the 
    #               workspace uses to access datasources and notification channels. If the workspace is
    #               in a member Amazon Web Services account of an organization, and that account is not
    #               a delegated administrator account, and you want the workspace to access data sources in 
    #               other Amazon Web Services accounts in the organization, you must choose 
    #               <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>If you specify this as <code>CUSTOMER_MANAGED</code>, you must also specify a 
    #               <code>workspaceRoleArn</code> that the workspace will use for accessing Amazon Web Services
    #               resources.</p>
    #            <p>For more information on the role and permissions needed, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for Amazon Web Services data sources 
    #               and notification channels</a>
    #            </p>
    #            <note>
    #               <p>Do not use this to convert a <code>CUSTOMER_MANAGED</code> workspace to
    #                   <code>SERVICE_MANAGED</code>. Do not include this 
    #                   parameter if you want to leave the workspace as <code>SERVICE_MANAGED</code>.</p>
    #               <p>You can convert a <code>CUSTOMER_MANAGED</code> workspace to 
    #                   <code>SERVICE_MANAGED</code> using the Amazon Managed Grafana console. For more 
    #                   information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html">Managing permissions for data sources and notification channels</a>.</p>
    #            </note>
    # @option params [String] :stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM
    #               roles to be used for this workspace.</p>
    # @option params [Array<String>] :workspace_data_sources
    #   <p>This parameter is for internal use only, and should not be used.</p>
    # @option params [String] :workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this
    #               workspace.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update.</p>
    # @option params [String] :workspace_name
    #   <p>A new name for the workspace to update.</p>
    # @option params [Array<String>] :workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this
    #               workspace. Specifying these data sources here enables Amazon Managed Grafana to create
    #                   IAM roles and permissions that allow Amazon Managed Grafana to use these
    #               channels.</p>
    # @option params [Array<String>] :workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #               from, if this workspace is in an account that is part of an organization.</p>
    # @option params [String] :workspace_role_arn
    #   <p>Specifies an IAM role that grants permissions to Amazon Web Services
    #               resources that the workspace accesses, such as data sources and notification channels.
    #               If this workspace has <code>permissionType</code>
    #               <code>CUSTOMER_MANAGED</code>,
    #               then this role is required.</p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>The configuration settings for an Amazon VPC that contains data sources for
    #               your Grafana workspace to connect to.</p>
    # @option params [Boolean] :remove_vpc_configuration
    #   <p>Whether to remove the VPC configuration from the workspace.</p>
    #            <p>Setting this to <code>true</code> and providing a <code>vpcConfiguration</code> to set
    #               will return an error.</p>
    # @option params [Types::NetworkAccessConfiguration] :network_access_control
    #   <p>The configuration settings for network access to your workspace.</p>
    #            <p>When this is configured, only listed IP addresses and VPC endpoints will be able to
    #               access your workspace. Standard Grafana authentication and authorization will still be
    #               required.</p>
    #            <p>If this is not configured, or is removed, then all IP addresses and VPC endpoints will
    #               be allowed. Standard Grafana authentication and authorization will still be
    #               required.</p>
    # @option params [Boolean] :remove_network_access_configuration
    #   <p>Whether to remove the network access configuration from the workspace.</p>
    #            <p>Setting this to <code>true</code> and providing a <code>networkAccessControl</code> to
    #               set will return an error.</p>
    #            <p>If you remove this configuration by setting this to <code>true</code>, then all IP
    #               addresses and VPC endpoints will be allowed. Standard Grafana authentication and
    #               authorization will still be required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_access_type: "AccountAccessType",
    #     organization_role_name: "OrganizationRoleName",
    #     permission_type: "PermissionType",
    #     stack_set_name: "StackSetName",
    #     workspace_data_sources: ["DataSourceType"],
    #     workspace_description: "Description",
    #     workspace_id: "WorkspaceId", # required
    #     workspace_name: "WorkspaceName",
    #     workspace_notification_destinations: ["NotificationDestinationType"],
    #     workspace_organizational_units: ["OrganizationalUnit"],
    #     workspace_role_arn: "IamRoleArn",
    #     vpc_configuration: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnet_ids: ["SubnetId"], # required
    #     },
    #     remove_vpc_configuration: false,
    #     network_access_control: {
    #       prefix_list_ids: ["PrefixListId"], # required
    #       vpce_ids: ["VpceId"], # required
    #     },
    #     remove_network_access_configuration: false
    #   }
    #   options = {}
    #   response = client.update_workspace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workspace: { # required
    #       account_access_type: "AccountAccessType",
    #       created: Time.now, # required
    #       data_sources: ["DataSourceType"], # required
    #       description: "Description",
    #       endpoint: "Endpoint", # required
    #       grafana_version: "GrafanaVersion", # required
    #       id: "WorkspaceId", # required
    #       modified: Time.now, # required
    #       name: "WorkspaceName",
    #       organization_role_name: "OrganizationRoleName",
    #       notification_destinations: ["NotificationDestinationType"],
    #       organizational_units: ["OrganizationalUnit"],
    #       permission_type: "PermissionType",
    #       stack_set_name: "StackSetName",
    #       status: "WorkspaceStatus", # required
    #       workspace_role_arn: "IamRoleArn",
    #       license_type: "LicenseType",
    #       free_trial_consumed: false,
    #       license_expiration: Time.now,
    #       free_trial_expiration: Time.now,
    #       authentication: { # required
    #         providers: ["AuthenticationProviderTypes"], # required
    #         saml_configuration_status: "SamlConfigurationStatus"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       vpc_configuration: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #       },
    #       network_access_control: {
    #         prefix_list_ids: ["PrefixListId"], # required
    #         vpce_ids: ["VpceId"], # required
    #       },
    #       grafana_token: "GrafanaToken"
    #     }
    #   }
    # @return [Types::UpdateWorkspaceOutput]
    def update_workspace(params = {}, options = {})
      request = build_request(:update_workspace, params)
      request.send_request(options)
    end

    # <p>Use this operation to define the identity provider (IdP) that this workspace
    #             authenticates users from, using SAML. You can also map SAML assertion attributes to
    #             workspace user information and define which groups in the assertion attribute are to
    #             have the <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    #          <note>
    #             <p>Changes to the authentication method for a workspace may take a few minutes to
    #                 take effect.</p>
    #          </note>
    # @param [Hash, Types::UpdateWorkspaceAuthenticationInput] params
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update the authentication for.</p>
    # @option params [Array<String>] :authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or both to
    #               authenticate users for using the Grafana console within a workspace. For more
    #               information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #                       Amazon Managed Grafana</a>.</p>
    # @option params [Types::SamlConfiguration] :saml_configuration
    #   <p>If the workspace uses SAML, use this structure to map SAML assertion attributes to
    #               workspace user information and define which groups in the assertion attribute are to
    #               have the <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workspace_id: "WorkspaceId", # required
    #     authentication_providers: ["AuthenticationProviderTypes"], # required
    #     saml_configuration: {
    #       idp_metadata: { # required
    #         # One of:
    #         url: "IdpMetadataUrl",
    #         xml: "String"
    #       },
    #       assertion_attributes: {
    #         name: "AssertionAttribute",
    #         login: "AssertionAttribute",
    #         email: "AssertionAttribute",
    #         groups: "AssertionAttribute",
    #         role: "AssertionAttribute",
    #         org: "AssertionAttribute"
    #       },
    #       role_values: {
    #         editor: ["RoleValue"],
    #         admin: ["RoleValue"]
    #       },
    #       allowed_organizations: ["AllowedOrganization"],
    #       login_validity_duration: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_workspace_authentication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication: { # required
    #       providers: ["AuthenticationProviderTypes"], # required
    #       saml: {
    #         status: "SamlConfigurationStatus", # required
    #         configuration: {
    #           idp_metadata: { # required
    #             # One of:
    #             url: "IdpMetadataUrl",
    #             xml: "String"
    #           },
    #           assertion_attributes: {
    #             name: "AssertionAttribute",
    #             login: "AssertionAttribute",
    #             email: "AssertionAttribute",
    #             groups: "AssertionAttribute",
    #             role: "AssertionAttribute",
    #             org: "AssertionAttribute"
    #           },
    #           role_values: {
    #             editor: ["RoleValue"],
    #             admin: ["RoleValue"]
    #           },
    #           allowed_organizations: ["AllowedOrganization"],
    #           login_validity_duration: 1
    #         }
    #       },
    #       aws_sso: {
    #         sso_client_id: "SSOClientId"
    #       }
    #     }
    #   }
    # @return [Types::UpdateWorkspaceAuthenticationOutput]
    def update_workspace_authentication(params = {}, options = {})
      request = build_request(:update_workspace_authentication, params)
      request.send_request(options)
    end

    # <p>Updates the configuration string for the given workspace</p>
    # @param [Hash, Types::UpdateWorkspaceConfigurationInput] params
    # @option params [String] :configuration
    #   <p>The new configuration string for the workspace. For more information about the format
    #               and configuration options available, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working in your Grafana
    #                   workspace</a>.</p>
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update.</p>
    # @option params [String] :grafana_version
    #   <p>Specifies the version of Grafana to support in the workspace. If not specified, 
    #               keeps the current version of the workspace.</p>
    #            <p>Can only be used to upgrade (for example, from 8.4 to 9.4), not
    #               downgrade (for example, from 9.4 to 8.4).</p>
    #            <p>To know what versions are available to upgrade to for a specific workspace, see 
    #               the <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_ListVersions.html">ListVersions</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration: "OverridableConfigurationJson", # required
    #     workspace_id: "WorkspaceId", # required
    #     grafana_version: "GrafanaVersion"
    #   }
    #   options = {}
    #   response = client.update_workspace_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateWorkspaceConfigurationOutput]
    def update_workspace_configuration(params = {}, options = {})
      request = build_request(:update_workspace_configuration, params)
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
      context[:gem_name] = 'aws-sdk-grafana'
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

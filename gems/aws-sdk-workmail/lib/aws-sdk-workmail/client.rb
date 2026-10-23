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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:workmail)

module Aws::WorkMail
  # An API client for Aws::WorkMail.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::WorkMailService
    @identifier = :workmail

    add_plugin(::Aws::WorkMail::Plugins::Endpoint)
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
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WorkMail::EndpointProvider)
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
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Adds a member (user or group) to the resource's set of delegates.</p>
    # @param [Hash, Types::AssociateDelegateToResourceRequest] params
    # @option params [String] :organization_id
    #   <p>The organization under which the resource exists.</p>
    # @option params [String] :resource_id
    #   <p>The resource for which members (users or groups) are associated.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    # @option params [String] :entity_id
    #   <p>The member (user or group) to associate to the resource.</p>
    #            <p>The entity ID can accept <i>UserId or GroupID</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity: entity</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     resource_id: "EntityIdentifier", # required
    #     entity_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.associate_delegate_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateDelegateToResourceResponse]
    def associate_delegate_to_resource(params = {}, options = {})
      request = build_request(:associate_delegate_to_resource, params)
      request.send_request(options)
    end

    # <p>Adds a member (user or group) to the group's set.</p>
    # @param [Hash, Types::AssociateMemberToGroupRequest] params
    # @option params [String] :organization_id
    #   <p>The organization under which the group exists.</p>
    # @option params [String] :group_id
    #   <p>The group to which the member (user or group) is associated.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    # @option params [String] :member_id
    #   <p>The member (user or group) to associate to the group.</p>
    #            <p>The member ID can accept <i>UserID or GroupId</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Member: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: member@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Member name: member</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     group_id: "EntityIdentifier", # required
    #     member_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.associate_member_to_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateMemberToGroupResponse]
    def associate_member_to_group(params = {}, options = {})
      request = build_request(:associate_member_to_group, params)
      request.send_request(options)
    end

    # <p>Assumes an impersonation role for the given WorkMail organization. This method returns an
    #          authentication token you can use to make impersonated calls.</p>
    # @param [Hash, Types::AssumeImpersonationRoleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization under which the impersonation role will be assumed.</p>
    # @option params [String] :impersonation_role_id
    #   <p>The impersonation role ID to assume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     impersonation_role_id: "ImpersonationRoleId", # required
    #   }
    #   options = {}
    #   response = client.assume_impersonation_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token: "ImpersonationToken",
    #     expires_in: 1
    #   }
    # @return [Types::AssumeImpersonationRoleResponse]
    def assume_impersonation_role(params = {}, options = {})
      request = build_request(:assume_impersonation_role, params)
      request.send_request(options)
    end

    # <p>Cancels a mailbox export job.</p>
    #          <note>
    #             <p>If the mailbox export job is near completion, it might not be possible to cancel
    #             it.</p>
    #          </note>
    # @param [Hash, Types::CancelMailboxExportJobRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    # @option params [String] :job_id
    #   <p>The job ID.</p>
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyClientToken", # required
    #     job_id: "MailboxExportJobId", # required
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.cancel_mailbox_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelMailboxExportJobResponse]
    def cancel_mailbox_export_job(params = {}, options = {})
      request = build_request(:cancel_mailbox_export_job, params)
      request.send_request(options)
    end

    # <p>Adds an alias to the set of a given member (user or group) of WorkMail.</p>
    # @param [Hash, Types::CreateAliasRequest] params
    # @option params [String] :organization_id
    #   <p>The organization under which the member (user or group) exists.</p>
    # @option params [String] :entity_id
    #   <p>The member (user or group) to which this alias is added.</p>
    # @option params [String] :alias
    #   <p>The alias to add to the member set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     alias: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateAliasResponse]
    def create_alias(params = {}, options = {})
      request = build_request(:create_alias, params)
      request.send_request(options)
    end

    # <p>Creates an <code>AvailabilityConfiguration</code> for the given WorkMail organization and domain.</p>
    # @param [Hash, Types::CreateAvailabilityConfigurationRequest] params
    # @option params [String] :client_token
    #   <p>An idempotent token that ensures that an API request is executed only once.</p>
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code> will be created.</p>
    # @option params [String] :domain_name
    #   <p>The domain to which the provider applies.</p>
    # @option params [Types::EwsAvailabilityProvider] :ews_provider
    #   <p>Exchange Web Services (EWS) availability provider definition. The request must contain exactly one provider definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>.</p>
    # @option params [Types::LambdaAvailabilityProvider] :lambda_provider
    #   <p>Lambda availability provider definition. The request must contain exactly one provider definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyClientToken",
    #     organization_id: "OrganizationId", # required
    #     domain_name: "DomainName", # required
    #     ews_provider: {
    #       ews_endpoint: "Url", # required
    #       ews_username: "ExternalUserName", # required
    #       ews_password: "Password", # required
    #     },
    #     lambda_provider: {
    #       lambda_arn: "LambdaArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_availability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateAvailabilityConfigurationResponse]
    def create_availability_configuration(params = {}, options = {})
      request = build_request(:create_availability_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a group that can be used in WorkMail by calling the <a>RegisterToWorkMail</a> operation.</p>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :organization_id
    #   <p>The organization under which the group is to be created.</p>
    # @option params [String] :name
    #   <p>The name of the group.</p>
    # @option params [Boolean] :hidden_from_global_address_list
    #   <p>If this parameter is enabled, the group will be hidden from the address book.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     name: "GroupName", # required
    #     hidden_from_global_address_list: false
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_id: "WorkMailIdentifier"
    #   }
    # @return [Types::CreateGroupResponse]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>
    #          Creates the WorkMail application in IAM Identity Center that can be used later in the WorkMail - IdC integration. For more information, see PutIdentityProviderConfiguration. This action does not affect the authentication settings for any WorkMail organizations.
    #       </p>
    # @param [Hash, Types::CreateIdentityCenterApplicationRequest] params
    # @option params [String] :name
    #   <p>
    #            The name of the IAM Identity Center application.
    #            
    #            
    #         </p>
    # @option params [String] :instance_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the instance.
    #         </p>
    # @option params [String] :client_token
    #   <p>
    #            The idempotency token associated with the request.
    #            
    #            
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IdentityCenterApplicationName", # required
    #     instance_arn: "InstanceArn", # required
    #     client_token: "IdempotencyClientToken"
    #   }
    #   options = {}
    #   response = client.create_identity_center_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn"
    #   }
    # @return [Types::CreateIdentityCenterApplicationResponse]
    def create_identity_center_application(params = {}, options = {})
      request = build_request(:create_identity_center_application, params)
      request.send_request(options)
    end

    # <p>Creates an impersonation role for the given WorkMail organization.</p>
    #          <p>
    #             <i>Idempotency</i> ensures that an API request completes no more than one
    #          time. With an idempotent request, if the original request completes successfully, any
    #          subsequent retries also complete successfully without performing any further
    #          actions.</p>
    # @param [Hash, Types::CreateImpersonationRoleRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    # @option params [String] :organization_id
    #   <p>The WorkMail organization to create the new impersonation role within.</p>
    # @option params [String] :name
    #   <p>The name of the new impersonation role.</p>
    # @option params [String] :type
    #   <p>The impersonation role's type. The available impersonation role types are
    #               <code>READ_ONLY</code> or <code>FULL_ACCESS</code>.</p>
    # @option params [String] :description
    #   <p>The description of the new impersonation role.</p>
    # @option params [Array<Types::ImpersonationRule>] :rules
    #   <p>The list of rules for the impersonation role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyClientToken",
    #     organization_id: "OrganizationId", # required
    #     name: "ImpersonationRoleName", # required
    #     type: "FULL_ACCESS" # One of: ["FULL_ACCESS", "READ_ONLY"], # required
    #     description: "ImpersonationRoleDescription",
    #     rules: [ # required
    #       {
    #         impersonation_rule_id: "ImpersonationRuleId", # required
    #         name: "ImpersonationRuleName",
    #         description: "ImpersonationRuleDescription",
    #         effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         target_users: ["EntityIdentifier"],
    #         not_target_users: ["EntityIdentifier"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_impersonation_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     impersonation_role_id: "ImpersonationRoleId"
    #   }
    # @return [Types::CreateImpersonationRoleResponse]
    def create_impersonation_role(params = {}, options = {})
      request = build_request(:create_impersonation_role, params)
      request.send_request(options)
    end

    # <p>Creates a new mobile device access rule for the specified WorkMail organization.</p>
    # @param [Hash, Types::CreateMobileDeviceAccessRuleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization under which the rule will be created.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    # @option params [String] :name
    #   <p>The rule name.</p>
    # @option params [String] :description
    #   <p>The rule description.</p>
    # @option params [String] :effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    # @option params [Array<String>] :device_types
    #   <p>Device types that the rule will match.</p>
    # @option params [Array<String>] :not_device_types
    #   <p>Device types that the rule <b>will not</b> match. All other device types will match.</p>
    # @option params [Array<String>] :device_models
    #   <p>Device models that the rule will match.</p>
    # @option params [Array<String>] :not_device_models
    #   <p>Device models that the rule <b>will not</b> match. All other device models will match.</p>
    # @option params [Array<String>] :device_operating_systems
    #   <p>Device operating systems that the rule will match.</p>
    # @option params [Array<String>] :not_device_operating_systems
    #   <p>Device operating systems that the rule <b>will not</b> match. All other device operating systems will match.</p>
    # @option params [Array<String>] :device_user_agents
    #   <p>Device user agents that the rule will match.</p>
    # @option params [Array<String>] :not_device_user_agents
    #   <p>Device user agents that the rule <b>will not</b> match. All other device user agents will match.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     client_token: "IdempotencyClientToken",
    #     name: "MobileDeviceAccessRuleName", # required
    #     description: "MobileDeviceAccessRuleDescription",
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     device_types: ["DeviceType"],
    #     not_device_types: ["DeviceType"],
    #     device_models: ["DeviceModel"],
    #     not_device_models: ["DeviceModel"],
    #     device_operating_systems: ["DeviceOperatingSystem"],
    #     not_device_operating_systems: ["DeviceOperatingSystem"],
    #     device_user_agents: ["DeviceUserAgent"],
    #     not_device_user_agents: ["DeviceUserAgent"]
    #   }
    #   options = {}
    #   response = client.create_mobile_device_access_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mobile_device_access_rule_id: "MobileDeviceAccessRuleId"
    #   }
    # @return [Types::CreateMobileDeviceAccessRuleResponse]
    def create_mobile_device_access_rule(params = {}, options = {})
      request = build_request(:create_mobile_device_access_rule, params)
      request.send_request(options)
    end

    # <p>Creates a new WorkMail organization. Optionally, you can choose to associate an existing AWS Directory Service directory with your organization. If an AWS Directory Service directory ID is specified, the organization alias must match the directory alias. If you choose not to associate an existing directory with your organization, then we create a new WorkMail directory for you. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html">Adding an organization</a> in the <i>WorkMail Administrator Guide</i>.</p>
    #          <p>You can associate multiple email domains with an organization, then choose your
    #          default email domain from the WorkMail console. You can also associate a domain that is managed
    #          in an Amazon Route 53 public hosted zone. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html">Adding a
    #             domain</a> and <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html">Choosing the default domain</a>
    #          in the <i>WorkMail Administrator Guide</i>.</p>
    #          <p>Optionally, you can use a customer managed key from AWS Key Management Service (AWS
    #          KMS) to encrypt email for your organization. If you don't associate an AWS KMS key, WorkMail
    #          creates a default, AWS managed key for you.</p>
    # @param [Hash, Types::CreateOrganizationRequest] params
    # @option params [String] :directory_id
    #   <p>The AWS Directory Service directory ID.</p>
    # @option params [String] :alias
    #   <p>The organization alias.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token associated with the request.</p>
    # @option params [Array<Types::Domain>] :domains
    #   <p>The email domains to associate with the organization.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a customer managed key from AWS KMS.</p>
    # @option params [Boolean] :enable_interoperability
    #   <p>When <code>true</code>, allows organization interoperability between WorkMail and
    #            Microsoft Exchange. If <code>true</code>, you must include a AD Connector directory ID in
    #            the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     directory_id: "DirectoryId",
    #     alias: "OrganizationName", # required
    #     client_token: "IdempotencyClientToken",
    #     domains: [
    #       {
    #         domain_name: "DomainName", # required
    #         hosted_zone_id: "HostedZoneId"
    #       }
    #     ],
    #     kms_key_arn: "KmsKeyArn",
    #     enable_interoperability: false
    #   }
    #   options = {}
    #   response = client.create_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationId"
    #   }
    # @return [Types::CreateOrganizationResponse]
    def create_organization(params = {}, options = {})
      request = build_request(:create_organization, params)
      request.send_request(options)
    end

    # <p>Creates a new WorkMail resource.</p>
    # @param [Hash, Types::CreateResourceRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            created.</p>
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    # @option params [String] :type
    #   <p>The type of the new resource. The available types are <code>equipment</code> and
    #               <code>room</code>.</p>
    # @option params [String] :description
    #   <p>Resource description.</p>
    # @option params [Boolean] :hidden_from_global_address_list
    #   <p>If this parameter is enabled, the resource will be hidden from the address book.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     name: "ResourceName", # required
    #     type: "ROOM" # One of: ["ROOM", "EQUIPMENT"], # required
    #     description: "ResourceDescription",
    #     hidden_from_global_address_list: false
    #   }
    #   options = {}
    #   response = client.create_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "ResourceId"
    #   }
    # @return [Types::CreateResourceResponse]
    def create_resource(params = {}, options = {})
      request = build_request(:create_resource, params)
      request.send_request(options)
    end

    # <p>Creates a user who can be used in WorkMail by calling the <a>RegisterToWorkMail</a> operation.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier of the organization for which the user is created.</p>
    # @option params [String] :name
    #   <p>The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.</p>
    # @option params [String] :display_name
    #   <p>The display name for the new user.</p>
    # @option params [String] :password
    #   <p>The password for the new user.</p>
    # @option params [String] :role
    #   <p>The role of the new user.</p>
    #            <p>You cannot pass <i>SYSTEM_USER</i> or <i>RESOURCE</i> role in a single request. When a user role is not selected, the default role of <i>USER</i> is selected.</p>
    # @option params [String] :first_name
    #   <p>The first name of the new user.</p>
    # @option params [String] :last_name
    #   <p>The last name of the new user. </p>
    # @option params [Boolean] :hidden_from_global_address_list
    #   <p>If this parameter is enabled, the user will be hidden from the address book.</p>
    # @option params [String] :identity_provider_user_id
    #   <p>User ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     name: "UserName", # required
    #     display_name: "UserAttribute", # required
    #     password: "Password",
    #     role: "USER" # One of: ["USER", "RESOURCE", "SYSTEM_USER", "REMOTE_USER"],
    #     first_name: "UserAttribute",
    #     last_name: "UserAttribute",
    #     hidden_from_global_address_list: false,
    #     identity_provider_user_id: "IdentityProviderUserId"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "WorkMailIdentifier"
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes an access control rule for the specified WorkMail organization.</p>
    #          <note>
    #             <p>Deleting already deleted and non-existing rules does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #          </note>
    # @param [Hash, Types::DeleteAccessControlRuleRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization.</p>
    # @option params [String] :name
    #   <p>The name of the access control rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     name: "AccessControlRuleName", # required
    #   }
    #   options = {}
    #   response = client.delete_access_control_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessControlRuleResponse]
    def delete_access_control_rule(params = {}, options = {})
      request = build_request(:delete_access_control_rule, params)
      request.send_request(options)
    end

    # <p>Remove one or more specified aliases from a set of aliases for a given
    #          user.</p>
    # @param [Hash, Types::DeleteAliasRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier for the member (user or group) from which to have the aliases
    #            removed.</p>
    # @option params [String] :alias
    #   <p>The aliases to be removed from the user's set of aliases. Duplicate entries in the
    #            list are collapsed into single entries (the list is transformed into a set).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     alias: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.delete_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAliasResponse]
    def delete_alias(params = {}, options = {})
      request = build_request(:delete_alias, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>AvailabilityConfiguration</code> for the given WorkMail organization and domain.</p>
    # @param [Hash, Types::DeleteAvailabilityConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code> will be deleted.</p>
    # @option params [String] :domain_name
    #   <p>The domain for which the <code>AvailabilityConfiguration</code> will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_availability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAvailabilityConfigurationResponse]
    def delete_availability_configuration(params = {}, options = {})
      request = build_request(:delete_availability_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the email monitoring configuration for a specified organization.</p>
    # @param [Hash, Types::DeleteEmailMonitoringConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization from which the email monitoring configuration is deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.delete_email_monitoring_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEmailMonitoringConfigurationResponse]
    def delete_email_monitoring_configuration(params = {}, options = {})
      request = build_request(:delete_email_monitoring_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a group from WorkMail.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :organization_id
    #   <p>The organization that contains the group.</p>
    # @option params [String] :group_id
    #   <p>The identifier of the group to be deleted.</p>
    #            <p>The identifier can be the <i>GroupId</i>, or <i>Groupname</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     group_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResponse]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes the IAM Identity Center application from WorkMail. This action does not affect the authentication settings for any WorkMail organizations.
    #       </p>
    # @param [Hash, Types::DeleteIdentityCenterApplicationRequest] params
    # @option params [String] :application_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the application.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_center_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdentityCenterApplicationResponse]
    def delete_identity_center_application(params = {}, options = {})
      request = build_request(:delete_identity_center_application, params)
      request.send_request(options)
    end

    # <p>
    #          Disables the integration between IdC and WorkMail. Authentication will continue with the directory as it was before the IdC integration. You might have to reset your directory passwords and reconfigure your desktop and mobile email clients.
    #       </p>
    # @param [Hash, Types::DeleteIdentityProviderConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>
    #   The Organization ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_provider_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIdentityProviderConfigurationResponse]
    def delete_identity_provider_configuration(params = {}, options = {})
      request = build_request(:delete_identity_provider_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an impersonation role for the given WorkMail organization.</p>
    # @param [Hash, Types::DeleteImpersonationRoleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization from which to delete the impersonation role.</p>
    # @option params [String] :impersonation_role_id
    #   <p>The ID of the impersonation role to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     impersonation_role_id: "ImpersonationRoleId", # required
    #   }
    #   options = {}
    #   response = client.delete_impersonation_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteImpersonationRoleResponse]
    def delete_impersonation_role(params = {}, options = {})
      request = build_request(:delete_impersonation_role, params)
      request.send_request(options)
    end

    # <p>Deletes permissions granted to a member (user or group).</p>
    # @param [Hash, Types::DeleteMailboxPermissionsRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier of the organization under which the member (user or group)
    #            exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier of the entity that owns the mailbox.</p>
    #            <p>The identifier can be <i>UserId or Group Id</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [String] :grantee_id
    #   <p>The identifier of the entity for which to delete granted permissions.</p>
    #            <p>The identifier can be <i>UserId, ResourceID, or Group Id</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Grantee ID: 12345678-1234-1234-1234-123456789012,r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: grantee@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Grantee name: grantee</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     grantee_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_mailbox_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMailboxPermissionsResponse]
    def delete_mailbox_permissions(params = {}, options = {})
      request = build_request(:delete_mailbox_permissions, params)
      request.send_request(options)
    end

    # <p>Deletes the mobile device access override for the given WorkMail organization, user, and device.</p>
    #          <note>
    #             <p>Deleting already deleted and non-existing overrides does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #          </note>
    # @param [Hash, Types::DeleteMobileDeviceAccessOverrideRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the access override will be deleted.</p>
    # @option params [String] :user_id
    #   <p>The WorkMail user for which you want to delete the override. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID:  <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :device_id
    #   <p>The mobile device for which you delete the override. <code>DeviceId</code> is case insensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.delete_mobile_device_access_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMobileDeviceAccessOverrideResponse]
    def delete_mobile_device_access_override(params = {}, options = {})
      request = build_request(:delete_mobile_device_access_override, params)
      request.send_request(options)
    end

    # <p>Deletes a mobile device access rule for the specified WorkMail organization.</p>
    #          <note>
    #             <p>Deleting already deleted and non-existing rules does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #          </note>
    # @param [Hash, Types::DeleteMobileDeviceAccessRuleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization under which the rule will be deleted.</p>
    # @option params [String] :mobile_device_access_rule_id
    #   <p>The identifier of the rule to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     mobile_device_access_rule_id: "MobileDeviceAccessRuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_mobile_device_access_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMobileDeviceAccessRuleResponse]
    def delete_mobile_device_access_rule(params = {}, options = {})
      request = build_request(:delete_mobile_device_access_rule, params)
      request.send_request(options)
    end

    # <p>Deletes an WorkMail organization and all underlying AWS resources managed by WorkMail as part of the organization. You can choose whether to delete the associated directory. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html">Removing an organization</a> in the <i>WorkMail Administrator Guide</i>.</p>
    # @param [Hash, Types::DeleteOrganizationRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token associated with the request.</p>
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @option params [Boolean] :delete_directory
    #   <p>If true, deletes the AWS Directory Service directory associated with the organization.</p>
    # @option params [Boolean] :force_delete
    #   <p>Deletes a WorkMail organization even if the organization has enabled users.</p>
    # @option params [Boolean] :delete_identity_center_application
    #   <p>Deletes IAM Identity Center application for WorkMail. This action does not affect authentication settings for any organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyClientToken",
    #     organization_id: "OrganizationId", # required
    #     delete_directory: false, # required
    #     force_delete: false,
    #     delete_identity_center_application: false
    #   }
    #   options = {}
    #   response = client.delete_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationId",
    #     state: "String"
    #   }
    # @return [Types::DeleteOrganizationResponse]
    def delete_organization(params = {}, options = {})
      request = build_request(:delete_organization, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes the Personal Access Token from the provided WorkMail Organization.
    #       </p>
    # @param [Hash, Types::DeletePersonalAccessTokenRequest] params
    # @option params [String] :organization_id
    #   <p>
    #            The Organization ID. </p>
    # @option params [String] :personal_access_token_id
    #   <p>
    #           The Personal Access Token ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     personal_access_token_id: "PersonalAccessTokenId", # required
    #   }
    #   options = {}
    #   response = client.delete_personal_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePersonalAccessTokenResponse]
    def delete_personal_access_token(params = {}, options = {})
      request = build_request(:delete_personal_access_token, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource.</p>
    # @param [Hash, Types::DeleteResourceRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization from which the resource is
    #            deleted.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource to be deleted.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, or <i>Resourcename</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     resource_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourceResponse]
    def delete_resource(params = {}, options = {})
      request = build_request(:delete_resource, params)
      request.send_request(options)
    end

    # <p>Deletes the specified retention policy from the specified organization.</p>
    # @param [Hash, Types::DeleteRetentionPolicyRequest] params
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @option params [String] :id
    #   <p>The retention policy ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     id: "ShortString", # required
    #   }
    #   options = {}
    #   response = client.delete_retention_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRetentionPolicyResponse]
    def delete_retention_policy(params = {}, options = {})
      request = build_request(:delete_retention_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a user from WorkMail and all subsequent systems. Before you can delete a
    #          user, the user state must be <code>DISABLED</code>. Use the <a>DescribeUser</a>
    #          action to confirm the user state.</p>
    #          <p>Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for
    #          30 days before they are permanently removed.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :organization_id
    #   <p>The organization that contains the user to be deleted.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user to be deleted.</p>
    #            <p>The identifier can be the <i>UserId</i> or <i>Username</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserResponse]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Mark a user, group, or resource as no longer used in WorkMail. This action
    #          disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days
    #          before they are permanently removed. The functionality in the console is
    #             <i>Disable</i>.</p>
    # @param [Hash, Types::DeregisterFromWorkMailRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the WorkMail entity exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier for the member to be updated.</p>
    #            <p>The identifier can be <i>UserId, ResourceId, or Group Id</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.deregister_from_work_mail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterFromWorkMailResponse]
    def deregister_from_work_mail(params = {}, options = {})
      request = build_request(:deregister_from_work_mail, params)
      request.send_request(options)
    end

    # <p>Removes a domain from WorkMail, stops email routing to WorkMail, and removes the authorization allowing WorkMail use. SES keeps the domain because other applications may use it. You must first 
    #          remove any email address used by WorkMail entities before you remove the domain.</p>
    # @param [Hash, Types::DeregisterMailDomainRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the domain will be deregistered.</p>
    # @option params [String] :domain_name
    #   <p>The domain to deregister in WorkMail and SES.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     domain_name: "WorkMailDomainName", # required
    #   }
    #   options = {}
    #   response = client.deregister_mail_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterMailDomainResponse]
    def deregister_mail_domain(params = {}, options = {})
      request = build_request(:deregister_mail_domain, params)
      request.send_request(options)
    end

    # <p>Describes the current email monitoring configuration for a specified organization.</p>
    # @param [Hash, Types::DescribeEmailMonitoringConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.describe_email_monitoring_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_arn: "RoleArn",
    #     log_group_arn: "LogGroupArn"
    #   }
    # @return [Types::DescribeEmailMonitoringConfigurationResponse]
    def describe_email_monitoring_configuration(params = {}, options = {})
      request = build_request(:describe_email_monitoring_configuration, params)
      request.send_request(options)
    end

    # <p>Returns basic details about an entity in WorkMail. </p>
    # @param [Hash, Types::DescribeEntityRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    # @option params [String] :email
    #   <p>The email under which the entity exists.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     email: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.describe_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_id: "WorkMailIdentifier",
    #     name: "String",
    #     type: "GROUP" # One of: ["GROUP", "USER", "RESOURCE"]
    #   }
    # @return [Types::DescribeEntityResponse]
    def describe_entity(params = {}, options = {})
      request = build_request(:describe_entity, params)
      request.send_request(options)
    end

    # <p>Returns the data available for the group.</p>
    # @param [Hash, Types::DescribeGroupRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    # @option params [String] :group_id
    #   <p>The identifier for the group to be described.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     group_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.describe_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_id: "WorkMailIdentifier",
    #     name: "GroupName",
    #     email: "EmailAddress",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #     enabled_date: Time.now,
    #     disabled_date: Time.now,
    #     hidden_from_global_address_list: false
    #   }
    # @return [Types::DescribeGroupResponse]
    def describe_group(params = {}, options = {})
      request = build_request(:describe_group, params)
      request.send_request(options)
    end

    # <p>
    #          Returns detailed information on the current IdC setup for the WorkMail organization.
    #       </p>
    # @param [Hash, Types::DescribeIdentityProviderConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>
    #            The Organization ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.describe_identity_provider_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_mode: "IDENTITY_PROVIDER_ONLY" # One of: ["IDENTITY_PROVIDER_ONLY", "IDENTITY_PROVIDER_AND_DIRECTORY"],
    #     identity_center_configuration: {
    #       instance_arn: "InstanceArn", # required
    #       application_arn: "ApplicationArn", # required
    #     },
    #     personal_access_token_configuration: {
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       lifetime_in_days: 1
    #     }
    #   }
    # @return [Types::DescribeIdentityProviderConfigurationResponse]
    def describe_identity_provider_configuration(params = {}, options = {})
      request = build_request(:describe_identity_provider_configuration, params)
      request.send_request(options)
    end

    # <p>Lists the settings in a DMARC policy for a specified organization.</p>
    # @param [Hash, Types::DescribeInboundDmarcSettingsRequest] params
    # @option params [String] :organization_id
    #   <p>Lists the ID of the given organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.describe_inbound_dmarc_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     enforced: false
    #   }
    # @return [Types::DescribeInboundDmarcSettingsResponse]
    def describe_inbound_dmarc_settings(params = {}, options = {})
      request = build_request(:describe_inbound_dmarc_settings, params)
      request.send_request(options)
    end

    # <p>Describes the current status of a mailbox export job.</p>
    # @param [Hash, Types::DescribeMailboxExportJobRequest] params
    # @option params [String] :job_id
    #   <p>The mailbox export job ID.</p>
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "MailboxExportJobId", # required
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.describe_mailbox_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_id: "WorkMailIdentifier",
    #     description: "Description",
    #     role_arn: "RoleArn",
    #     kms_key_arn: "KmsKeyArn",
    #     s3_bucket_name: "S3BucketName",
    #     s3_prefix: "S3ObjectKey",
    #     s3_path: "S3ObjectKey",
    #     estimated_progress: 1,
    #     state: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED", "CANCELLED"],
    #     error_info: "MailboxExportErrorInfo",
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::DescribeMailboxExportJobResponse]
    def describe_mailbox_export_job(params = {}, options = {})
      request = build_request(:describe_mailbox_export_job, params)
      request.send_request(options)
    end

    # <p>Provides more information regarding a given organization based on its
    #          identifier.</p>
    # @param [Hash, Types::DescribeOrganizationRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.describe_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationId",
    #     alias: "OrganizationName",
    #     state: "String",
    #     directory_id: "String",
    #     directory_type: "String",
    #     default_mail_domain: "String",
    #     completed_date: Time.now,
    #     error_message: "String",
    #     arn: "AmazonResourceName",
    #     migration_admin: "WorkMailIdentifier",
    #     interoperability_enabled: false
    #   }
    # @return [Types::DescribeOrganizationResponse]
    def describe_organization(params = {}, options = {})
      request = build_request(:describe_organization, params)
      request.send_request(options)
    end

    # <p>Returns the data available for the resource.</p>
    # @param [Hash, Types::DescribeResourceRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            described.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource to be described.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     resource_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.describe_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "ResourceId",
    #     email: "EmailAddress",
    #     name: "ResourceName",
    #     type: "ROOM" # One of: ["ROOM", "EQUIPMENT"],
    #     booking_options: {
    #       auto_accept_requests: false,
    #       auto_decline_recurring_requests: false,
    #       auto_decline_conflicting_requests: false
    #     },
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #     enabled_date: Time.now,
    #     disabled_date: Time.now,
    #     description: "ResourceDescription",
    #     hidden_from_global_address_list: false
    #   }
    # @return [Types::DescribeResourceResponse]
    def describe_resource(params = {}, options = {})
      request = build_request(:describe_resource, params)
      request.send_request(options)
    end

    # <p>Provides information regarding the user.</p>
    # @param [Hash, Types::DescribeUserRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    # @option params [String] :user_id
    #   <p>The identifier for the user to be described.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    #            <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "WorkMailIdentifier",
    #     name: "UserName",
    #     email: "EmailAddress",
    #     display_name: "UserAttribute",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #     user_role: "USER" # One of: ["USER", "RESOURCE", "SYSTEM_USER", "REMOTE_USER"],
    #     enabled_date: Time.now,
    #     disabled_date: Time.now,
    #     mailbox_provisioned_date: Time.now,
    #     mailbox_deprovisioned_date: Time.now,
    #     first_name: "UserAttribute",
    #     last_name: "UserAttribute",
    #     hidden_from_global_address_list: false,
    #     initials: "UserAttribute",
    #     telephone: "UserAttribute",
    #     street: "UserAttribute",
    #     job_title: "UserAttribute",
    #     city: "UserAttribute",
    #     company: "UserAttribute",
    #     zip_code: "UserAttribute",
    #     department: "UserAttribute",
    #     country: "UserAttribute",
    #     office: "UserAttribute",
    #     identity_provider_user_id: "IdentityProviderUserId",
    #     identity_provider_identity_store_id: "IdentityProviderIdentityStoreId"
    #   }
    # @return [Types::DescribeUserResponse]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p>Removes a member from the resource's set of delegates.</p>
    # @param [Hash, Types::DisassociateDelegateFromResourceRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the resource exists.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource from which delegates' set members are removed.
    #         </p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    # @option params [String] :entity_id
    #   <p>The identifier for the member (user, group) to be removed from the resource's
    #            delegates.</p>
    #            <p>The entity ID can accept <i>UserId or GroupID</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity: entity</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     resource_id: "EntityIdentifier", # required
    #     entity_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.disassociate_delegate_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateDelegateFromResourceResponse]
    def disassociate_delegate_from_resource(params = {}, options = {})
      request = build_request(:disassociate_delegate_from_resource, params)
      request.send_request(options)
    end

    # <p>Removes a member from a group.</p>
    # @param [Hash, Types::DisassociateMemberFromGroupRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    # @option params [String] :group_id
    #   <p>The identifier for the group from which members are removed.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    # @option params [String] :member_id
    #   <p>The identifier for the member to be removed from the group.</p>
    #            <p>The member ID can accept <i>UserID or GroupId</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Member ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: member@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Member name: member</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     group_id: "EntityIdentifier", # required
    #     member_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.disassociate_member_from_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateMemberFromGroupResponse]
    def disassociate_member_from_group(params = {}, options = {})
      request = build_request(:disassociate_member_from_group, params)
      request.send_request(options)
    end

    # <p>Gets the effects of an organization's access control rules as they apply to a
    #          specified IPv4 address, access protocol action, and  user ID or impersonation role ID. You must provide either the user ID or impersonation role ID. Impersonation role ID can only be used with Action EWS.</p>
    # @param [Hash, Types::GetAccessControlEffectRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization.</p>
    # @option params [String] :ip_address
    #   <p>The IPv4 address.</p>
    # @option params [String] :action
    #   <p>The access protocol action. Valid values include <code>ActiveSync</code>,
    #               <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
    #               <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    # @option params [String] :impersonation_role_id
    #   <p>The impersonation role ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     ip_address: "IpAddress", # required
    #     action: "AccessControlRuleAction", # required
    #     user_id: "WorkMailIdentifier",
    #     impersonation_role_id: "ImpersonationRoleId"
    #   }
    #   options = {}
    #   response = client.get_access_control_effect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     matched_rules: ["AccessControlRuleName"]
    #   }
    # @return [Types::GetAccessControlEffectResponse]
    def get_access_control_effect(params = {}, options = {})
      request = build_request(:get_access_control_effect, params)
      request.send_request(options)
    end

    # <p>Gets the default retention policy details for the specified organization.</p>
    # @param [Hash, Types::GetDefaultRetentionPolicyRequest] params
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.get_default_retention_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ShortString",
    #     name: "ShortString",
    #     description: "String",
    #     folder_configurations: [
    #       {
    #         name: "INBOX" # One of: ["INBOX", "DELETED_ITEMS", "SENT_ITEMS", "DRAFTS", "JUNK_EMAIL"], # required
    #         action: "NONE" # One of: ["NONE", "DELETE", "PERMANENTLY_DELETE"], # required
    #         period: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetDefaultRetentionPolicyResponse]
    def get_default_retention_policy(params = {}, options = {})
      request = build_request(:get_default_retention_policy, params)
      request.send_request(options)
    end

    # <p>Gets the impersonation role details for the given WorkMail organization.</p>
    # @param [Hash, Types::GetImpersonationRoleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization from which to retrieve the impersonation role.</p>
    # @option params [String] :impersonation_role_id
    #   <p>The impersonation role ID to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     impersonation_role_id: "ImpersonationRoleId", # required
    #   }
    #   options = {}
    #   response = client.get_impersonation_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     impersonation_role_id: "ImpersonationRoleId",
    #     name: "ImpersonationRoleName",
    #     type: "FULL_ACCESS" # One of: ["FULL_ACCESS", "READ_ONLY"],
    #     description: "ImpersonationRoleDescription",
    #     rules: [
    #       {
    #         impersonation_rule_id: "ImpersonationRuleId", # required
    #         name: "ImpersonationRuleName",
    #         description: "ImpersonationRuleDescription",
    #         effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         target_users: ["EntityIdentifier"],
    #         not_target_users: ["EntityIdentifier"]
    #       }
    #     ],
    #     date_created: Time.now,
    #     date_modified: Time.now
    #   }
    # @return [Types::GetImpersonationRoleResponse]
    def get_impersonation_role(params = {}, options = {})
      request = build_request(:get_impersonation_role, params)
      request.send_request(options)
    end

    # <p>Tests whether the given impersonation role can impersonate a target user.</p>
    # @param [Hash, Types::GetImpersonationRoleEffectRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization where the impersonation role is defined.</p>
    # @option params [String] :impersonation_role_id
    #   <p>The impersonation role ID to test.</p>
    # @option params [String] :target_user
    #   <p>The WorkMail organization user chosen to test the impersonation role. The following identity
    #            formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     impersonation_role_id: "ImpersonationRoleId", # required
    #     target_user: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_impersonation_role_effect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: "FULL_ACCESS" # One of: ["FULL_ACCESS", "READ_ONLY"],
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     matched_rules: [
    #       {
    #         impersonation_rule_id: "ImpersonationRuleId",
    #         name: "ImpersonationRuleName"
    #       }
    #     ]
    #   }
    # @return [Types::GetImpersonationRoleEffectResponse]
    def get_impersonation_role_effect(params = {}, options = {})
      request = build_request(:get_impersonation_role_effect, params)
      request.send_request(options)
    end

    # <p>Gets details for a mail domain, including domain records required to configure your domain with recommended security.</p>
    # @param [Hash, Types::GetMailDomainRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the domain is retrieved.</p>
    # @option params [String] :domain_name
    #   <p>The domain from which you want to retrieve details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     domain_name: "WorkMailDomainName", # required
    #   }
    #   options = {}
    #   response = client.get_mail_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [
    #       {
    #         type: "String",
    #         hostname: "String",
    #         value: "String"
    #       }
    #     ],
    #     is_test_domain: false,
    #     is_default: false,
    #     ownership_verification_status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED"],
    #     dkim_verification_status: "PENDING" # One of: ["PENDING", "VERIFIED", "FAILED"]
    #   }
    # @return [Types::GetMailDomainResponse]
    def get_mail_domain(params = {}, options = {})
      request = build_request(:get_mail_domain, params)
      request.send_request(options)
    end

    # <p>Requests a user's mailbox details for a specified organization and user.</p>
    # @param [Hash, Types::GetMailboxDetailsRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization that contains the user whose mailbox details are
    #            being requested.</p>
    # @option params [String] :user_id
    #   <p>The identifier for the user whose mailbox details are being requested.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_mailbox_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mailbox_quota: 1,
    #     mailbox_size: 1.0
    #   }
    # @return [Types::GetMailboxDetailsResponse]
    def get_mailbox_details(params = {}, options = {})
      request = build_request(:get_mailbox_details, params)
      request.send_request(options)
    end

    # <p>Simulates the effect of the mobile device access rules for the given attributes of a sample access event. Use this method to test the effects of the current set of mobile device access 
    #          rules for the WorkMail organization for a particular user's attributes.</p>
    # @param [Hash, Types::GetMobileDeviceAccessEffectRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization to simulate the access effect for.</p>
    # @option params [String] :device_type
    #   <p>Device type the simulated user will report.</p>
    # @option params [String] :device_model
    #   <p>Device model the simulated user will report.</p>
    # @option params [String] :device_operating_system
    #   <p>Device operating system the simulated user will report.</p>
    # @option params [String] :device_user_agent
    #   <p>Device user agent the simulated user will report.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     device_type: "DeviceType",
    #     device_model: "DeviceModel",
    #     device_operating_system: "DeviceOperatingSystem",
    #     device_user_agent: "DeviceUserAgent"
    #   }
    #   options = {}
    #   response = client.get_mobile_device_access_effect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     matched_rules: [
    #       {
    #         mobile_device_access_rule_id: "MobileDeviceAccessRuleId",
    #         name: "MobileDeviceAccessRuleName"
    #       }
    #     ]
    #   }
    # @return [Types::GetMobileDeviceAccessEffectResponse]
    def get_mobile_device_access_effect(params = {}, options = {})
      request = build_request(:get_mobile_device_access_effect, params)
      request.send_request(options)
    end

    # <p>Gets the mobile device access override for the given WorkMail organization, user, and device.</p>
    # @param [Hash, Types::GetMobileDeviceAccessOverrideRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization to which you want to apply the override.</p>
    # @option params [String] :user_id
    #   <p>Identifies the WorkMail user for the override. Accepts the following types of user identities: </p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :device_id
    #   <p>The mobile device to which the override applies. <code>DeviceId</code> is case insensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #     device_id: "DeviceId", # required
    #   }
    #   options = {}
    #   response = client.get_mobile_device_access_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "WorkMailIdentifier",
    #     device_id: "DeviceId",
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #     description: "MobileDeviceAccessRuleDescription",
    #     date_created: Time.now,
    #     date_modified: Time.now
    #   }
    # @return [Types::GetMobileDeviceAccessOverrideResponse]
    def get_mobile_device_access_override(params = {}, options = {})
      request = build_request(:get_mobile_device_access_override, params)
      request.send_request(options)
    end

    # <p>
    #          Requests details of a specific Personal Access Token within the WorkMail organization.
    #       </p>
    # @param [Hash, Types::GetPersonalAccessTokenMetadataRequest] params
    # @option params [String] :organization_id
    #   <p>
    #            The Organization ID. </p>
    # @option params [String] :personal_access_token_id
    #   <p>
    #            The Personal Access Token ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     personal_access_token_id: "PersonalAccessTokenId", # required
    #   }
    #   options = {}
    #   response = client.get_personal_access_token_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     personal_access_token_id: "PersonalAccessTokenId",
    #     user_id: "WorkMailIdentifier",
    #     name: "PersonalAccessTokenName",
    #     date_created: Time.now,
    #     date_last_used: Time.now,
    #     expires_time: Time.now,
    #     scopes: ["PersonalAccessTokenScope"]
    #   }
    # @return [Types::GetPersonalAccessTokenMetadataResponse]
    def get_personal_access_token_metadata(params = {}, options = {})
      request = build_request(:get_personal_access_token_metadata, params)
      request.send_request(options)
    end

    # <p>Lists the access control rules for the specified organization.</p>
    # @param [Hash, Types::ListAccessControlRulesRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.list_access_control_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         name: "AccessControlRuleName",
    #         effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #         description: "AccessControlRuleDescription",
    #         ip_ranges: ["IpRange"],
    #         not_ip_ranges: ["IpRange"],
    #         actions: ["AccessControlRuleAction"],
    #         not_actions: ["AccessControlRuleAction"],
    #         user_ids: ["WorkMailIdentifier"],
    #         not_user_ids: ["WorkMailIdentifier"],
    #         date_created: Time.now,
    #         date_modified: Time.now,
    #         impersonation_role_ids: ["ImpersonationRoleId"],
    #         not_impersonation_role_ids: ["ImpersonationRoleId"]
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessControlRulesResponse]
    def list_access_control_rules(params = {}, options = {})
      request = build_request(:list_access_control_rules, params)
      request.send_request(options)
    end

    # <p>Creates a paginated call to list the aliases associated with a given
    #          entity.</p>
    # @param [Hash, Types::ListAliasesRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier for the entity for which to list the aliases.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "WorkMailIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     aliases: ["EmailAddress"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAliasesResponse]
    def list_aliases(params = {}, options = {})
      request = build_request(:list_aliases, params)
      request.send_request(options)
    end

    # <p>List all the <code>AvailabilityConfiguration</code>'s for the given WorkMail organization.</p>
    # @param [Hash, Types::ListAvailabilityConfigurationsRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code>'s will be
    #            listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_availability_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_configurations: [
    #       {
    #         domain_name: "DomainName",
    #         provider_type: "EWS" # One of: ["EWS", "LAMBDA"],
    #         ews_provider: {
    #           ews_endpoint: "Url",
    #           ews_username: "ExternalUserName"
    #         },
    #         lambda_provider: {
    #           lambda_arn: "LambdaArn", # required
    #         },
    #         date_created: Time.now,
    #         date_modified: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAvailabilityConfigurationsResponse]
    def list_availability_configurations(params = {}, options = {})
      request = build_request(:list_availability_configurations, params)
      request.send_request(options)
    end

    # <p>Returns an overview of the members of a group. Users and groups can be members of a
    #          group.</p>
    # @param [Hash, Types::ListGroupMembersRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    # @option params [String] :group_id
    #   <p>The identifier for the group to which the members (users or groups) are
    #            associated.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p> The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     group_id: "EntityIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_group_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         id: "String",
    #         name: "String",
    #         type: "GROUP" # One of: ["GROUP", "USER"],
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #         enabled_date: Time.now,
    #         disabled_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupMembersResponse]
    def list_group_members(params = {}, options = {})
      request = build_request(:list_group_members, params)
      request.send_request(options)
    end

    # <p>Returns summaries of the organization's groups.</p>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the groups exist.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [Types::ListGroupsFilters] :filters
    #   <p>Limit the search results based on the filter criteria. Only one filter per request is supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       name_prefix: "String",
    #       primary_email_prefix: "String",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         id: "WorkMailIdentifier",
    #         email: "EmailAddress",
    #         name: "GroupName",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #         enabled_date: Time.now,
    #         disabled_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Returns all the groups to which an entity belongs.</p>
    # @param [Hash, Types::ListGroupsForEntityRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier for the entity.</p>
    #            <p>The entity ID can accept <i>UserId or GroupID</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [Types::ListGroupsForEntityFilters] :filters
    #   <p>Limit the search results based on the filter criteria.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     filters: {
    #       group_name_prefix: "String"
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_groups_for_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         group_id: "WorkMailIdentifier",
    #         group_name: "GroupName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupsForEntityResponse]
    def list_groups_for_entity(params = {}, options = {})
      request = build_request(:list_groups_for_entity, params)
      request.send_request(options)
    end

    # <p>Lists all the impersonation roles for the given WorkMail organization.</p>
    # @param [Hash, Types::ListImpersonationRolesRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization to which the listed impersonation roles belong.</p>
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results. The first call doesn't require a
    #            token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_impersonation_roles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     roles: [
    #       {
    #         impersonation_role_id: "ImpersonationRoleId",
    #         name: "ImpersonationRoleName",
    #         type: "FULL_ACCESS" # One of: ["FULL_ACCESS", "READ_ONLY"],
    #         date_created: Time.now,
    #         date_modified: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListImpersonationRolesResponse]
    def list_impersonation_roles(params = {}, options = {})
      request = build_request(:list_impersonation_roles, params)
      request.send_request(options)
    end

    # <p>Lists the mail domains in a given WorkMail organization.</p>
    # @param [Hash, Types::ListMailDomainsRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which to list domains.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_mail_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mail_domains: [
    #       {
    #         domain_name: "DomainName",
    #         default_domain: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMailDomainsResponse]
    def list_mail_domains(params = {}, options = {})
      request = build_request(:list_mail_domains, params)
      request.send_request(options)
    end

    # <p>Lists the mailbox export jobs started for the specified organization within the last
    #          seven days.</p>
    # @param [Hash, Types::ListMailboxExportJobsRequest] params
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_mailbox_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_id: "MailboxExportJobId",
    #         entity_id: "WorkMailIdentifier",
    #         description: "Description",
    #         s3_bucket_name: "S3BucketName",
    #         s3_path: "S3ObjectKey",
    #         estimated_progress: 1,
    #         state: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED", "CANCELLED"],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMailboxExportJobsResponse]
    def list_mailbox_export_jobs(params = {}, options = {})
      request = build_request(:list_mailbox_export_jobs, params)
      request.send_request(options)
    end

    # <p>Lists the mailbox permissions associated with a user, group, or resource
    #          mailbox.</p>
    # @param [Hash, Types::ListMailboxPermissionsRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier of the user, or resource for which to list mailbox
    #            permissions.</p>
    #            <p>The entity ID can accept <i>UserId or ResourceId</i>, <i>Username or Resourcename</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, or r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_mailbox_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: [
    #       {
    #         grantee_id: "WorkMailIdentifier", # required
    #         grantee_type: "GROUP" # One of: ["GROUP", "USER"], # required
    #         permission_values: ["FULL_ACCESS" # One of: ["FULL_ACCESS", "SEND_AS", "SEND_ON_BEHALF"]], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMailboxPermissionsResponse]
    def list_mailbox_permissions(params = {}, options = {})
      request = build_request(:list_mailbox_permissions, params)
      request.send_request(options)
    end

    # <p>Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device.</p>
    # @param [Hash, Types::ListMobileDeviceAccessOverridesRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization under which to list mobile device access overrides.</p>
    # @option params [String] :user_id
    #   <p>The WorkMail user under which you list the mobile device access overrides. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :device_id
    #   <p>The mobile device to which the access override applies.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier",
    #     device_id: "DeviceId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_mobile_device_access_overrides(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     overrides: [
    #       {
    #         user_id: "WorkMailIdentifier",
    #         device_id: "DeviceId",
    #         effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #         description: "MobileDeviceAccessRuleDescription",
    #         date_created: Time.now,
    #         date_modified: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMobileDeviceAccessOverridesResponse]
    def list_mobile_device_access_overrides(params = {}, options = {})
      request = build_request(:list_mobile_device_access_overrides, params)
      request.send_request(options)
    end

    # <p>Lists the mobile device access rules for the specified WorkMail organization.</p>
    # @param [Hash, Types::ListMobileDeviceAccessRulesRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which to list the rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #   }
    #   options = {}
    #   response = client.list_mobile_device_access_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         mobile_device_access_rule_id: "MobileDeviceAccessRuleId",
    #         name: "MobileDeviceAccessRuleName",
    #         description: "MobileDeviceAccessRuleDescription",
    #         effect: "ALLOW" # One of: ["ALLOW", "DENY"],
    #         device_types: ["DeviceType"],
    #         not_device_types: ["DeviceType"],
    #         device_models: ["DeviceModel"],
    #         not_device_models: ["DeviceModel"],
    #         device_operating_systems: ["DeviceOperatingSystem"],
    #         not_device_operating_systems: ["DeviceOperatingSystem"],
    #         device_user_agents: ["DeviceUserAgent"],
    #         not_device_user_agents: ["DeviceUserAgent"],
    #         date_created: Time.now,
    #         date_modified: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListMobileDeviceAccessRulesResponse]
    def list_mobile_device_access_rules(params = {}, options = {})
      request = build_request(:list_mobile_device_access_rules, params)
      request.send_request(options)
    end

    # <p>Returns summaries of the customer's organizations.</p>
    # @param [Hash, Types::ListOrganizationsRequest] params
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_organizations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_summaries: [
    #       {
    #         organization_id: "OrganizationId",
    #         alias: "OrganizationName",
    #         default_mail_domain: "DomainName",
    #         error_message: "String",
    #         state: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOrganizationsResponse]
    def list_organizations(params = {}, options = {})
      request = build_request(:list_organizations, params)
      request.send_request(options)
    end

    # <p>
    #          Returns a summary of your Personal Access Tokens.
    #       </p>
    # @param [Hash, Types::ListPersonalAccessTokensRequest] params
    # @option params [String] :organization_id
    #   <p>
    #            The Organization ID. </p>
    # @option params [String] :user_id
    #   <p>
    #            The WorkMail User ID. 
    #         </p>
    # @option params [String] :next_token
    #   <p>
    #            The token from the previous response to query the next page.</p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum amount of items that should be returned in a response.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_personal_access_tokens(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     personal_access_token_summaries: [
    #       {
    #         personal_access_token_id: "PersonalAccessTokenId",
    #         user_id: "WorkMailIdentifier",
    #         name: "PersonalAccessTokenName",
    #         date_created: Time.now,
    #         date_last_used: Time.now,
    #         expires_time: Time.now,
    #         scopes: ["PersonalAccessTokenScope"]
    #       }
    #     ]
    #   }
    # @return [Types::ListPersonalAccessTokensResponse]
    def list_personal_access_tokens(params = {}, options = {})
      request = build_request(:list_personal_access_tokens, params)
      request.send_request(options)
    end

    # <p>Lists the delegates associated with a resource. Users and groups can be resource
    #          delegates and answer requests on behalf of the resource.</p>
    # @param [Hash, Types::ListResourceDelegatesRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization that contains the resource for which delegates
    #            are listed.</p>
    # @option params [String] :resource_id
    #   <p>The identifier for the resource whose delegates are listed.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token used to paginate through the delegates associated with a
    #            resource.</p>
    # @option params [Integer] :max_results
    #   <p>The number of maximum results in a page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     resource_id: "EntityIdentifier", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_delegates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delegates: [
    #       {
    #         id: "String", # required
    #         type: "GROUP" # One of: ["GROUP", "USER"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceDelegatesResponse]
    def list_resource_delegates(params = {}, options = {})
      request = build_request(:list_resource_delegates, params)
      request.send_request(options)
    end

    # <p>Returns summaries of the organization's resources.</p>
    # @param [Hash, Types::ListResourcesRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the resources exist.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [Types::ListResourcesFilters] :filters
    #   <p>Limit the resource search results based on the filter criteria. You can only use one filter per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       name_prefix: "String",
    #       primary_email_prefix: "String",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [
    #       {
    #         id: "WorkMailIdentifier",
    #         email: "EmailAddress",
    #         name: "ResourceName",
    #         type: "ROOM" # One of: ["ROOM", "EQUIPMENT"],
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #         enabled_date: Time.now,
    #         disabled_date: Time.now,
    #         description: "ResourceDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourcesResponse]
    def list_resources(params = {}, options = {})
      request = build_request(:list_resources, params)
      request.send_request(options)
    end

    # <p>Lists the tags applied to an WorkMail organization resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns summaries of the organization's users.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the users exist.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [Types::ListUsersFilters] :filters
    #   <p>Limit the user search results based on the filter criteria. You can only use one filter per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       username_prefix: "String",
    #       display_name_prefix: "UserAttribute",
    #       primary_email_prefix: "String",
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #       identity_provider_user_id_prefix: "IdentityProviderUserIdPrefix"
    #     }
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         id: "WorkMailIdentifier",
    #         email: "EmailAddress",
    #         name: "UserName",
    #         display_name: "String",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "DELETED"],
    #         user_role: "USER" # One of: ["USER", "RESOURCE", "SYSTEM_USER", "REMOTE_USER"],
    #         enabled_date: Time.now,
    #         disabled_date: Time.now,
    #         identity_provider_user_id: "IdentityProviderUserId",
    #         identity_provider_identity_store_id: "IdentityProviderIdentityStoreId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Adds a new access control rule for the specified organization. The rule allows or
    #          denies access to the organization for the specified IPv4 addresses, access protocol
    #          actions, user IDs and impersonation IDs. Adding a new rule with the same name as an existing rule replaces
    #          the older rule.</p>
    # @param [Hash, Types::PutAccessControlRuleRequest] params
    # @option params [String] :name
    #   <p>The rule name.</p>
    # @option params [String] :effect
    #   <p>The rule effect.</p>
    # @option params [String] :description
    #   <p>The rule description.</p>
    # @option params [Array<String>] :ip_ranges
    #   <p>IPv4 CIDR ranges to include in the rule.</p>
    # @option params [Array<String>] :not_ip_ranges
    #   <p>IPv4 CIDR ranges to exclude from the rule.</p>
    # @option params [Array<String>] :actions
    #   <p>Access protocol actions to include in the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    # @option params [Array<String>] :not_actions
    #   <p>Access protocol actions to exclude from the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    # @option params [Array<String>] :user_ids
    #   <p>User IDs to include in the rule.</p>
    # @option params [Array<String>] :not_user_ids
    #   <p>User IDs to exclude from the rule.</p>
    # @option params [String] :organization_id
    #   <p>The identifier of the organization.</p>
    # @option params [Array<String>] :impersonation_role_ids
    #   <p>Impersonation role IDs to include in the rule.</p>
    # @option params [Array<String>] :not_impersonation_role_ids
    #   <p>Impersonation role IDs to exclude from the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AccessControlRuleName", # required
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     description: "AccessControlRuleDescription", # required
    #     ip_ranges: ["IpRange"],
    #     not_ip_ranges: ["IpRange"],
    #     actions: ["AccessControlRuleAction"],
    #     not_actions: ["AccessControlRuleAction"],
    #     user_ids: ["WorkMailIdentifier"],
    #     not_user_ids: ["WorkMailIdentifier"],
    #     organization_id: "OrganizationId", # required
    #     impersonation_role_ids: ["ImpersonationRoleId"],
    #     not_impersonation_role_ids: ["ImpersonationRoleId"]
    #   }
    #   options = {}
    #   response = client.put_access_control_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAccessControlRuleResponse]
    def put_access_control_rule(params = {}, options = {})
      request = build_request(:put_access_control_rule, params)
      request.send_request(options)
    end

    # <p>Creates or updates the email monitoring configuration for a specified organization.</p>
    # @param [Hash, Types::PutEmailMonitoringConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is set.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role associated with the email monitoring configuration. If absent, the IAM Role Arn of AWSServiceRoleForAmazonWorkMailEvents will be used.</p>
    # @option params [String] :log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Log group associated with the email monitoring configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     role_arn: "RoleArn",
    #     log_group_arn: "LogGroupArn", # required
    #   }
    #   options = {}
    #   response = client.put_email_monitoring_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEmailMonitoringConfigurationResponse]
    def put_email_monitoring_configuration(params = {}, options = {})
      request = build_request(:put_email_monitoring_configuration, params)
      request.send_request(options)
    end

    # <p>
    #          Enables integration between IAM Identity Center (IdC) and WorkMail to proxy authentication requests for mailbox users. You can connect your IdC directory or your external directory to WorkMail through 
    #          IdC and manage access to WorkMail mailboxes in a single place. For enhanced protection, you could enable Multifactor Authentication (MFA) and Personal Access Tokens.
    #          
    #       </p>
    # @param [Hash, Types::PutIdentityProviderConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>
    #            The ID of the WorkMail Organization. </p>
    # @option params [String] :authentication_mode
    #   <p>
    #            The authentication mode used in WorkMail.</p>
    # @option params [Types::IdentityCenterConfiguration] :identity_center_configuration
    #   <p>
    #            The details of the IAM Identity Center configuration.</p>
    # @option params [Types::PersonalAccessTokenConfiguration] :personal_access_token_configuration
    #   <p>
    #            The details of the Personal Access Token configuration. 
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     authentication_mode: "IDENTITY_PROVIDER_ONLY" # One of: ["IDENTITY_PROVIDER_ONLY", "IDENTITY_PROVIDER_AND_DIRECTORY"], # required
    #     identity_center_configuration: { # required
    #       instance_arn: "InstanceArn", # required
    #       application_arn: "ApplicationArn", # required
    #     },
    #     personal_access_token_configuration: { # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       lifetime_in_days: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_identity_provider_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutIdentityProviderConfigurationResponse]
    def put_identity_provider_configuration(params = {}, options = {})
      request = build_request(:put_identity_provider_configuration, params)
      request.send_request(options)
    end

    # <p>Enables or disables a DMARC policy for a given organization.</p>
    # @param [Hash, Types::PutInboundDmarcSettingsRequest] params
    # @option params [String] :organization_id
    #   <p>The ID of the organization that you are applying the DMARC policy to.</p>
    # @option params [Boolean] :enforced
    #   <p>Enforces or suspends a policy after it's applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     enforced: false, # required
    #   }
    #   options = {}
    #   response = client.put_inbound_dmarc_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutInboundDmarcSettingsResponse]
    def put_inbound_dmarc_settings(params = {}, options = {})
      request = build_request(:put_inbound_dmarc_settings, params)
      request.send_request(options)
    end

    # <p>Sets permissions for a user, group, or resource. This replaces any pre-existing
    #          permissions.</p>
    # @param [Hash, Types::PutMailboxPermissionsRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier of the user or resource for which to update mailbox
    #            permissions.</p>
    #            <p>The identifier can be <i>UserId, ResourceID, or Group Id</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [String] :grantee_id
    #   <p>The identifier of the user, group, or resource to which to grant the
    #            permissions.</p>
    #            <p>The identifier can be <i>UserId, ResourceID, or Group Id</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Grantee ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: grantee@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Grantee name: grantee</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :permission_values
    #   <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    #            the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    #            allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    #            mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    #            access to the mailbox, irrespective of other folder-level permissions set on the
    #            mailbox.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     grantee_id: "EntityIdentifier", # required
    #     permission_values: ["FULL_ACCESS" # One of: ["FULL_ACCESS", "SEND_AS", "SEND_ON_BEHALF"]], # required
    #   }
    #   options = {}
    #   response = client.put_mailbox_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutMailboxPermissionsResponse]
    def put_mailbox_permissions(params = {}, options = {})
      request = build_request(:put_mailbox_permissions, params)
      request.send_request(options)
    end

    # <p>Creates or updates a mobile device access override for the given WorkMail organization, user, and device.</p>
    # @param [Hash, Types::PutMobileDeviceAccessOverrideRequest] params
    # @option params [String] :organization_id
    #   <p>Identifies the WorkMail organization for which you create the override.</p>
    # @option params [String] :user_id
    #   <p>The WorkMail user for which you create the override. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :device_id
    #   <p>The mobile device for which you create the override. <code>DeviceId</code> is case insensitive.</p>
    # @option params [String] :effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    # @option params [String] :description
    #   <p>A description of the override.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #     device_id: "DeviceId", # required
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     description: "MobileDeviceAccessRuleDescription"
    #   }
    #   options = {}
    #   response = client.put_mobile_device_access_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutMobileDeviceAccessOverrideResponse]
    def put_mobile_device_access_override(params = {}, options = {})
      request = build_request(:put_mobile_device_access_override, params)
      request.send_request(options)
    end

    # <p>Puts a retention policy to the specified organization.</p>
    # @param [Hash, Types::PutRetentionPolicyRequest] params
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    # @option params [String] :id
    #   <p>The retention policy ID.</p>
    # @option params [String] :name
    #   <p>The retention policy name.</p>
    # @option params [String] :description
    #   <p>The retention policy description.</p>
    # @option params [Array<Types::FolderConfiguration>] :folder_configurations
    #   <p>The retention policy folder configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     id: "ShortString",
    #     name: "ShortString", # required
    #     description: "PolicyDescription",
    #     folder_configurations: [ # required
    #       {
    #         name: "INBOX" # One of: ["INBOX", "DELETED_ITEMS", "SENT_ITEMS", "DRAFTS", "JUNK_EMAIL"], # required
    #         action: "NONE" # One of: ["NONE", "DELETE", "PERMANENTLY_DELETE"], # required
    #         period: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_retention_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutRetentionPolicyResponse]
    def put_retention_policy(params = {}, options = {})
      request = build_request(:put_retention_policy, params)
      request.send_request(options)
    end

    # <p>Registers a new domain in WorkMail and SES, and configures it for use by WorkMail. Emails received by SES for this domain are routed to the specified WorkMail organization, and WorkMail has 
    #          permanent permission to use the specified domain for sending your users' emails.</p>
    # @param [Hash, Types::RegisterMailDomainRequest] params
    # @option params [String] :client_token
    #   <p>Idempotency token used when retrying requests.</p>
    # @option params [String] :organization_id
    #   <p>The WorkMail organization under which you're creating the domain.</p>
    # @option params [String] :domain_name
    #   <p>The name of the mail domain to create in WorkMail and SES.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyClientToken",
    #     organization_id: "OrganizationId", # required
    #     domain_name: "WorkMailDomainName", # required
    #   }
    #   options = {}
    #   response = client.register_mail_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterMailDomainResponse]
    def register_mail_domain(params = {}, options = {})
      request = build_request(:register_mail_domain, params)
      request.send_request(options)
    end

    # <p>Registers an existing and disabled user, group, or resource for WorkMail use by
    #          associating a mailbox and calendaring capabilities. It performs no change if the user,
    #          group, or resource is enabled and fails if the user, group, or resource is deleted. This
    #          operation results in the accumulation of costs. For more information, see <a href="https://aws.amazon.com/workmail/pricing">Pricing</a>. The equivalent console
    #          functionality for this operation is <i>Enable</i>.</p>
    #          <p>Users can either be created by calling the <a>CreateUser</a> API operation
    #          or they can be synchronized from your directory. For more information, see <a>DeregisterFromWorkMail</a>.</p>
    # @param [Hash, Types::RegisterToWorkMailRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user, group, or resource
    #            exists.</p>
    # @option params [String] :entity_id
    #   <p>The identifier for the user, group, or resource to be updated.</p>
    #            <p>The identifier can accept <i>UserId, ResourceId, or GroupId</i>, or <i>Username, Resourcename, or Groupname</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [String] :email
    #   <p>The email for the user, group, or resource to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     email: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.register_to_work_mail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RegisterToWorkMailResponse]
    def register_to_work_mail(params = {}, options = {})
      request = build_request(:register_to_work_mail, params)
      request.send_request(options)
    end

    # <p>Allows the administrator to reset the password for a user.</p>
    # @param [Hash, Types::ResetPasswordRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier of the organization that contains the user for which the password is
    #            reset.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user for whom the password is reset.</p>
    # @option params [String] :password
    #   <p>The new password for the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "WorkMailIdentifier", # required
    #     password: "Password", # required
    #   }
    #   options = {}
    #   response = client.reset_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResetPasswordResponse]
    def reset_password(params = {}, options = {})
      request = build_request(:reset_password, params)
      request.send_request(options)
    end

    # <p>Starts a mailbox export job to export MIME-format email messages and calendar items
    #          from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3)
    #          bucket. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html">Exporting mailbox content</a> in
    #          the <i>WorkMail Administrator Guide</i>.</p>
    # @param [Hash, Types::StartMailboxExportJobRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization.</p>
    # @option params [String] :entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #            <p>The identifier can accept <i>UserId or ResourceId</i>, <i>Username or Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789
    #               , or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>The mailbox export job description.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the S3
    #            bucket.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
    #            key that encrypts the exported mailbox content.</p>
    # @option params [String] :s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    # @option params [String] :s3_prefix
    #   <p>The S3 bucket prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "IdempotencyClientToken", # required
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     kms_key_arn: "KmsKeyArn", # required
    #     s3_bucket_name: "S3BucketName", # required
    #     s3_prefix: "S3ObjectKey", # required
    #   }
    #   options = {}
    #   response = client.start_mailbox_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "MailboxExportJobId"
    #   }
    # @return [Types::StartMailboxExportJobResponse]
    def start_mailbox_export_job(params = {}, options = {})
      request = build_request(:start_mailbox_export_job, params)
      request.send_request(options)
    end

    # <p>Applies the specified tags to the specified WorkMailorganization
    #          resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key-value pairs.</p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Performs a test on an availability provider to ensure that access is allowed. For EWS, it verifies the provided credentials can be used to successfully log in. For Lambda, it verifies that the Lambda function can be invoked and that the resource access
    #          policy was configured to deny anonymous access. An anonymous invocation is one done without providing either a <code>SourceArn</code> or <code>SourceAccount</code> header.</p>
    #          <note>
    #             <p>The request must contain either one provider definition (<code>EwsProvider</code> or
    #                <code>LambdaProvider</code>) or the <code>DomainName</code> parameter. If the
    #                <code>DomainName</code> parameter is provided, the configuration stored under the
    #                <code>DomainName</code> will be tested.</p>
    #          </note>
    # @param [Hash, Types::TestAvailabilityConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization where the availability provider will be tested.</p>
    # @option params [String] :domain_name
    #   <p>The domain to which the provider applies. If this field is provided, a stored availability provider associated to this domain name will be tested.</p>
    # @option params [Types::EwsAvailabilityProvider] :ews_provider
    #   <p>Describes an EWS based availability provider. This is only used as input to the service.</p>
    # @option params [Types::LambdaAvailabilityProvider] :lambda_provider
    #   <p>Describes a Lambda based availability provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     domain_name: "DomainName",
    #     ews_provider: {
    #       ews_endpoint: "Url", # required
    #       ews_username: "ExternalUserName", # required
    #       ews_password: "Password", # required
    #     },
    #     lambda_provider: {
    #       lambda_arn: "LambdaArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.test_availability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_passed: false,
    #     failure_reason: "String"
    #   }
    # @return [Types::TestAvailabilityConfigurationResponse]
    def test_availability_configuration(params = {}, options = {})
      request = build_request(:test_availability_configuration, params)
      request.send_request(options)
    end

    # <p>Untags the specified tags from the specified WorkMail organization
    #          resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing <code>AvailabilityConfiguration</code> for the given WorkMail
    #          organization and domain.</p>
    # @param [Hash, Types::UpdateAvailabilityConfigurationRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code> will be
    #            updated.</p>
    # @option params [String] :domain_name
    #   <p>The domain to which the provider applies the availability configuration.</p>
    # @option params [Types::EwsAvailabilityProvider] :ews_provider
    #   <p>The EWS availability provider definition. The request must contain exactly one provider
    #            definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>. The previously
    #            stored provider will be overridden by the one provided.</p>
    # @option params [Types::LambdaAvailabilityProvider] :lambda_provider
    #   <p>The Lambda availability provider definition. The request must contain exactly one
    #            provider definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>. The
    #            previously stored provider will be overridden by the one provided.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     domain_name: "DomainName", # required
    #     ews_provider: {
    #       ews_endpoint: "Url", # required
    #       ews_username: "ExternalUserName", # required
    #       ews_password: "Password", # required
    #     },
    #     lambda_provider: {
    #       lambda_arn: "LambdaArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_availability_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAvailabilityConfigurationResponse]
    def update_availability_configuration(params = {}, options = {})
      request = build_request(:update_availability_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the default mail domain for an organization. The default mail domain is used by the WorkMail AWS Console to suggest an email address when enabling a mail user. You can only have one default domain.</p>
    # @param [Hash, Types::UpdateDefaultMailDomainRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization for which to list domains.</p>
    # @option params [String] :domain_name
    #   <p>The domain name that will become the default domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     domain_name: "WorkMailDomainName", # required
    #   }
    #   options = {}
    #   response = client.update_default_mail_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDefaultMailDomainResponse]
    def update_default_mail_domain(params = {}, options = {})
      request = build_request(:update_default_mail_domain, params)
      request.send_request(options)
    end

    # <p>Updates attributes in a group.</p>
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    # @option params [String] :group_id
    #   <p>The identifier for the group to be updated.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :hidden_from_global_address_list
    #   <p>If enabled, the group is hidden from the global address list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     group_id: "EntityIdentifier", # required
    #     hidden_from_global_address_list: false
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateGroupResponse]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>Updates an impersonation role for the given WorkMail organization.</p>
    # @param [Hash, Types::UpdateImpersonationRoleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization that contains the impersonation role to update.</p>
    # @option params [String] :impersonation_role_id
    #   <p>The ID of the impersonation role to update.</p>
    # @option params [String] :name
    #   <p>The updated impersonation role name.</p>
    # @option params [String] :type
    #   <p>The updated impersonation role type.</p>
    # @option params [String] :description
    #   <p>The updated impersonation role description.</p>
    # @option params [Array<Types::ImpersonationRule>] :rules
    #   <p>The updated list of rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     impersonation_role_id: "ImpersonationRoleId", # required
    #     name: "ImpersonationRoleName", # required
    #     type: "FULL_ACCESS" # One of: ["FULL_ACCESS", "READ_ONLY"], # required
    #     description: "ImpersonationRoleDescription",
    #     rules: [ # required
    #       {
    #         impersonation_rule_id: "ImpersonationRuleId", # required
    #         name: "ImpersonationRuleName",
    #         description: "ImpersonationRuleDescription",
    #         effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #         target_users: ["EntityIdentifier"],
    #         not_target_users: ["EntityIdentifier"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_impersonation_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateImpersonationRoleResponse]
    def update_impersonation_role(params = {}, options = {})
      request = build_request(:update_impersonation_role, params)
      request.send_request(options)
    end

    # <p>Updates a user's current mailbox quota for a specified organization and
    #          user.</p>
    # @param [Hash, Types::UpdateMailboxQuotaRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization that contains the user for whom to update the
    #            mailbox quota.</p>
    # @option params [String] :user_id
    #   <p>The identifer for the user for whom to update the mailbox quota.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :mailbox_quota
    #   <p>The updated mailbox quota, in MB, for the specified user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #     mailbox_quota: 1, # required
    #   }
    #   options = {}
    #   response = client.update_mailbox_quota(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMailboxQuotaResponse]
    def update_mailbox_quota(params = {}, options = {})
      request = build_request(:update_mailbox_quota, params)
      request.send_request(options)
    end

    # <p>Updates a mobile device access rule for the specified WorkMail organization.</p>
    # @param [Hash, Types::UpdateMobileDeviceAccessRuleRequest] params
    # @option params [String] :organization_id
    #   <p>The WorkMail organization under which the rule will be updated.</p>
    # @option params [String] :mobile_device_access_rule_id
    #   <p>The identifier of the rule to be updated.</p>
    # @option params [String] :name
    #   <p>The updated rule name.</p>
    # @option params [String] :description
    #   <p>The updated rule description.</p>
    # @option params [String] :effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    # @option params [Array<String>] :device_types
    #   <p>Device types that the updated rule will match.</p>
    # @option params [Array<String>] :not_device_types
    #   <p>Device types that the updated rule <b>will not</b> match. All other device types will match.</p>
    # @option params [Array<String>] :device_models
    #   <p>Device models that the updated rule will match.</p>
    # @option params [Array<String>] :not_device_models
    #   <p>Device models that the updated rule <b>will not</b> match. All other device models will match.</p>
    # @option params [Array<String>] :device_operating_systems
    #   <p>Device operating systems that the updated rule will match.</p>
    # @option params [Array<String>] :not_device_operating_systems
    #   <p>Device operating systems that the updated rule <b>will not</b> match. All other device operating systems will match.</p>
    # @option params [Array<String>] :device_user_agents
    #   <p>User agents that the updated rule will match.</p>
    # @option params [Array<String>] :not_device_user_agents
    #   <p>User agents that the updated rule <b>will not</b> match. All other user agents will match.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     mobile_device_access_rule_id: "MobileDeviceAccessRuleId", # required
    #     name: "MobileDeviceAccessRuleName", # required
    #     description: "MobileDeviceAccessRuleDescription",
    #     effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #     device_types: ["DeviceType"],
    #     not_device_types: ["DeviceType"],
    #     device_models: ["DeviceModel"],
    #     not_device_models: ["DeviceModel"],
    #     device_operating_systems: ["DeviceOperatingSystem"],
    #     not_device_operating_systems: ["DeviceOperatingSystem"],
    #     device_user_agents: ["DeviceUserAgent"],
    #     not_device_user_agents: ["DeviceUserAgent"]
    #   }
    #   options = {}
    #   response = client.update_mobile_device_access_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMobileDeviceAccessRuleResponse]
    def update_mobile_device_access_rule(params = {}, options = {})
      request = build_request(:update_mobile_device_access_rule, params)
      request.send_request(options)
    end

    # <p>Updates the primary email for a user, group, or resource. The current email is moved
    #          into the list of aliases (or swapped between an existing alias and the current primary
    #          email), and the email provided in the input is promoted as the primary.</p>
    # @param [Hash, Types::UpdatePrimaryEmailAddressRequest] params
    # @option params [String] :organization_id
    #   <p>The organization that contains the user, group, or resource to update.</p>
    # @option params [String] :entity_id
    #   <p>The user, group, or resource to update.</p>
    #            <p>The identifier can accept <i>UseriD, ResourceId, or GroupId</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    # @option params [String] :email
    #   <p>The value of the email to be updated as primary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     entity_id: "EntityIdentifier", # required
    #     email: "EmailAddress", # required
    #   }
    #   options = {}
    #   response = client.update_primary_email_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePrimaryEmailAddressResponse]
    def update_primary_email_address(params = {}, options = {})
      request = build_request(:update_primary_email_address, params)
      request.send_request(options)
    end

    # <p>Updates data for the resource. To have the latest information, it must be preceded by
    #          a <a>DescribeResource</a> call. The dataset in the request should be the one
    #          expected when performing another <code>DescribeResource</code> call.</p>
    # @param [Hash, Types::UpdateResourceRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            updated.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource to be updated.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    # @option params [String] :name
    #   <p>The name of the resource to be updated.</p>
    # @option params [Types::BookingOptions] :booking_options
    #   <p>The resource's booking options to be updated.</p>
    # @option params [String] :description
    #   <p>Updates the resource description.</p>
    # @option params [String] :type
    #   <p>Updates the resource type.</p>
    # @option params [Boolean] :hidden_from_global_address_list
    #   <p>If enabled, the resource is hidden from the global address list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     resource_id: "EntityIdentifier", # required
    #     name: "ResourceName",
    #     booking_options: {
    #       auto_accept_requests: false,
    #       auto_decline_recurring_requests: false,
    #       auto_decline_conflicting_requests: false
    #     },
    #     description: "NewResourceDescription",
    #     type: "ROOM" # One of: ["ROOM", "EQUIPMENT"],
    #     hidden_from_global_address_list: false
    #   }
    #   options = {}
    #   response = client.update_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceResponse]
    def update_resource(params = {}, options = {})
      request = build_request(:update_resource, params)
      request.send_request(options)
    end

    # <p>Updates data for the user. To have the latest information, it must be preceded by a
    #             <a>DescribeUser</a> call. The dataset in the request should be the one
    #          expected when performing another <code>DescribeUser</code> call.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    # @option params [String] :user_id
    #   <p>The identifier for the user to be updated.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    # @option params [String] :role
    #   <p>Updates the user role.</p>
    #            <p>You cannot pass <i>SYSTEM_USER</i> or <i>RESOURCE</i>.</p>
    # @option params [String] :display_name
    #   <p>Updates the display name of the user.</p>
    # @option params [String] :first_name
    #   <p>Updates the user's first name.</p>
    # @option params [String] :last_name
    #   <p>Updates the user's last name.</p>
    # @option params [Boolean] :hidden_from_global_address_list
    #   <p>If enabled, the user is hidden from the global address list.</p>
    # @option params [String] :initials
    #   <p>Updates the user's initials.</p>
    # @option params [String] :telephone
    #   <p>Updates the user's contact details.</p>
    # @option params [String] :street
    #   <p>Updates the user's street address.</p>
    # @option params [String] :job_title
    #   <p>Updates the user's job title.</p>
    # @option params [String] :city
    #   <p>Updates the user's city.</p>
    # @option params [String] :company
    #   <p>Updates the user's company.</p>
    # @option params [String] :zip_code
    #   <p>Updates the user's zip code.</p>
    # @option params [String] :department
    #   <p>Updates the user's department.</p>
    # @option params [String] :country
    #   <p>Updates the user's country.</p>
    # @option params [String] :office
    #   <p>Updates the user's office.</p>
    # @option params [String] :identity_provider_user_id
    #   <p>User ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_id: "OrganizationId", # required
    #     user_id: "EntityIdentifier", # required
    #     role: "USER" # One of: ["USER", "RESOURCE", "SYSTEM_USER", "REMOTE_USER"],
    #     display_name: "UserAttribute",
    #     first_name: "UserAttribute",
    #     last_name: "UserAttribute",
    #     hidden_from_global_address_list: false,
    #     initials: "UserAttribute",
    #     telephone: "UserAttribute",
    #     street: "UserAttribute",
    #     job_title: "UserAttribute",
    #     city: "UserAttribute",
    #     company: "UserAttribute",
    #     zip_code: "UserAttribute",
    #     department: "UserAttribute",
    #     country: "UserAttribute",
    #     office: "UserAttribute",
    #     identity_provider_user_id: "IdentityProviderUserIdForUpdate"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-workmail'
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end

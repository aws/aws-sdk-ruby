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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ssoadmin)

module Aws::SSOAdmin
  # An API client for Aws::SSOAdmin.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SWBExternalService
    @identifier = :ssoadmin

    add_plugin(::Aws::SSOAdmin::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SSOAdmin::EndpointProvider)
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

    # <p>Attaches the specified customer managed policy to the specified <a>PermissionSet</a>.</p>
    # @param [Hash, Types::AttachCustomerManagedPolicyReferenceToPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <code>PermissionSet</code>.</p>
    # @option params [Types::CustomerManagedPolicyReference] :customer_managed_policy_reference
    #   <p>Specifies the name and path of a customer managed policy. You must have an IAM policy that matches the name and path in each Amazon Web Services account where you want to deploy your permission set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     customer_managed_policy_reference: { # required
    #       name: "ManagedPolicyName", # required
    #       path: "ManagedPolicyPath"
    #     }
    #   }
    #   options = {}
    #   response = client.attach_customer_managed_policy_reference_to_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachCustomerManagedPolicyReferenceToPermissionSetResponse]
    def attach_customer_managed_policy_reference_to_permission_set(params = {}, options = {})
      request = build_request(:attach_customer_managed_policy_reference_to_permission_set, params)
      request.send_request(options)
    end

    # <p>Attaches an Amazon Web Services managed policy ARN to a permission set.</p> <note> <p>If the permission set is already referenced by one or more account assignments, you will need to call <code> <a>ProvisionPermissionSet</a> </code> after this operation. Calling <code>ProvisionPermissionSet</code> applies the corresponding IAM policy updates to all assigned accounts.</p> </note>
    # @param [Hash, Types::AttachManagedPolicyToPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> that the managed policy should be attached to.</p>
    # @option params [String] :managed_policy_arn
    #   <p>The Amazon Web Services managed policy ARN to be attached to a permission set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     managed_policy_arn: "ManagedPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.attach_managed_policy_to_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachManagedPolicyToPermissionSetResponse]
    def attach_managed_policy_to_permission_set(params = {}, options = {})
      request = build_request(:attach_managed_policy_to_permission_set, params)
      request.send_request(options)
    end

    # <p>Assigns access to a principal for a specified Amazon Web Services account using a specified permission set.</p> <note> <p>The term <i>principal</i> here refers to a user or group that is defined in IAM Identity Center.</p> </note> <note> <p>As part of a successful <code>CreateAccountAssignment</code> call, the specified permission set will automatically be provisioned to the account in the form of an IAM policy. That policy is attached to the IAM role created in IAM Identity Center. If the permission set is subsequently updated, the corresponding IAM policies attached to roles in your accounts will not be updated automatically. In this case, you must call <code> <a>ProvisionPermissionSet</a> </code> to make these updates.</p> </note> <note> <p> After a successful response, call <code>DescribeAccountAssignmentCreationStatus</code> to describe the status of an assignment creation request. </p> </note>
    # @param [Hash, Types::CreateAccountAssignmentRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :target_id
    #   <p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>
    # @option params [String] :target_type
    #   <p>The entity type for which the assignment will be created.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that the admin wants to grant the principal access to.</p>
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be created.</p>
    # @option params [String] :principal_id
    #   <p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href="/singlesignon/latest/IdentityStoreAPIReference/welcome.html">IAM Identity Center Identity Store API Reference</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     target_id: "TargetId", # required
    #     target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT"], # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     principal_id: "PrincipalId", # required
    #   }
    #   options = {}
    #   response = client.create_account_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignment_creation_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #       request_id: "UUId",
    #       failure_reason: "Reason",
    #       target_id: "TargetId",
    #       target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT"],
    #       permission_set_arn: "PermissionSetArn",
    #       principal_type: "USER" # One of: ["USER", "GROUP"],
    #       principal_id: "PrincipalId",
    #       created_date: Time.now
    #     }
    #   }
    # @return [Types::CreateAccountAssignmentResponse]
    def create_account_assignment(params = {}, options = {})
      request = build_request(:create_account_assignment, params)
      request.send_request(options)
    end

    # <p>Creates an OAuth 2.0 customer managed application in IAM Identity Center for the given application provider.</p> <note> <p>This API does not support creating SAML 2.0 customer managed applications or Amazon Web Services managed applications. To learn how to create an Amazon Web Services managed application, see the application user guide. You can create a SAML 2.0 customer managed application in the Amazon Web Services Management Console only. See <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-setup.html">Setting up customer managed SAML 2.0 applications</a>. For more information on these application types, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/awsapps.html">Amazon Web Services managed applications</a>.</p> </note>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the instance of IAM Identity Center under which the operation will run. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :application_provider_arn
    #   <p>The ARN of the application provider under which the operation will run.</p>
    # @option params [String] :name
    #   <p>The name of the .</p>
    # @option params [String] :description
    #   <p>The description of the .</p>
    # @option params [Types::PortalOptions] :portal_options
    #   <p>A structure that describes the options for the portal associated with an application.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies tags to be attached to the application.</p>
    # @option params [String] :status
    #   <p>Specifies whether the application is enabled or disabled.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     application_provider_arn: "ApplicationProviderArn", # required
    #     name: "ApplicationNameType", # required
    #     description: "Description",
    #     portal_options: {
    #       sign_in_options: {
    #         origin: "IDENTITY_CENTER" # One of: ["IDENTITY_CENTER", "APPLICATION"], # required
    #         application_url: "ApplicationUrl"
    #       },
    #       visibility: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn"
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Grant application access to a user or group.</p>
    # @param [Hash, Types::CreateApplicationAssignmentRequest] params
    # @option params [String] :application_arn
    #   <p>The ARN of the application for which the assignment is created.</p>
    # @option params [String] :principal_id
    #   <p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html">IAM Identity Center Identity Store API Reference</a>.</p>
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #   }
    #   options = {}
    #   response = client.create_application_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateApplicationAssignmentResponse]
    def create_application_assignment(params = {}, options = {})
      request = build_request(:create_application_assignment, params)
      request.send_request(options)
    end

    # <p>Creates an instance of IAM Identity Center for a standalone Amazon Web Services account that is not managed by Organizations or a member Amazon Web Services account in an organization. You can create only one instance per account and across all Amazon Web Services Regions.</p> <p>The CreateInstance request is rejected if the following apply: </p> <ul> <li> <p>The instance is created within the organization management account.</p> </li> <li> <p>An instance already exists in the same account.</p> </li> </ul>
    # @param [Hash, Types::CreateInstanceRequest] params
    # @option params [String] :name
    #   <p>The name of the instance of IAM Identity Center.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies tags to be attached to the instance of IAM Identity Center.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameType",
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_arn: "InstanceArn"
    #   }
    # @return [Types::CreateInstanceResponse]
    def create_instance(params = {}, options = {})
      request = build_request(:create_instance, params)
      request.send_request(options)
    end

    # <p>Enables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance. You can also specify new attributes to add to your ABAC configuration during the enabling process. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>IAM Identity Center User Guide</i>.</p> <note> <p>After a successful response, call <code>DescribeInstanceAccessControlAttributeConfiguration</code> to validate that <code>InstanceAccessControlAttributeConfiguration</code> was created.</p> </note>
    # @param [Hash, Types::CreateInstanceAccessControlAttributeConfigurationRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>
    # @option params [Types::InstanceAccessControlAttributeConfiguration] :instance_access_control_attribute_configuration
    #   <p>Specifies the IAM Identity Center identity store attributes to add to your ABAC configuration. When using an external identity provider as an identity source, you can pass attributes through the SAML assertion. Doing so provides an alternative to configuring attributes from the IAM Identity Center identity store. If a SAML assertion passes any of these attributes, IAM Identity Center will replace the attribute value with the value from the IAM Identity Center identity store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     instance_access_control_attribute_configuration: { # required
    #       access_control_attributes: [ # required
    #         {
    #           key: "AccessControlAttributeKey", # required
    #           value: { # required
    #             source: ["AccessControlAttributeValueSource"], # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_instance_access_control_attribute_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateInstanceAccessControlAttributeConfigurationResponse]
    def create_instance_access_control_attribute_configuration(params = {}, options = {})
      request = build_request(:create_instance_access_control_attribute_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a permission set within a specified IAM Identity Center instance.</p> <note> <p>To grant users and groups access to Amazon Web Services account resources, use <code> <a>CreateAccountAssignment</a> </code>.</p> </note>
    # @param [Hash, Types::CreatePermissionSetRequest] params
    # @option params [String] :name
    #   <p>The name of the <a>PermissionSet</a>.</p>
    # @option params [String] :description
    #   <p>The description of the <a>PermissionSet</a>.</p>
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :session_duration
    #   <p>The length of time that the application user sessions are valid in the ISO-8601 standard.</p>
    # @option params [String] :relay_state
    #   <p>Used to redirect users within the application during the federation authentication process.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the new <a>PermissionSet</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PermissionSetName", # required
    #     description: "PermissionSetDescription",
    #     instance_arn: "InstanceArn", # required
    #     session_duration: "Duration",
    #     relay_state: "RelayState",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_set: {
    #       name: "PermissionSetName",
    #       permission_set_arn: "PermissionSetArn",
    #       description: "PermissionSetDescription",
    #       created_date: Time.now,
    #       session_duration: "Duration",
    #       relay_state: "RelayState"
    #     }
    #   }
    # @return [Types::CreatePermissionSetResponse]
    def create_permission_set(params = {}, options = {})
      request = build_request(:create_permission_set, params)
      request.send_request(options)
    end

    # <p>Creates a connection to a trusted token issuer in an instance of IAM Identity Center. A trusted token issuer enables trusted identity propagation to be used with applications that authenticate outside of Amazon Web Services.</p> <p>This trusted token issuer describes an external identity provider (IdP) that can generate claims or assertions in the form of access tokens for a user. Applications enabled for IAM Identity Center can use these tokens for authentication. </p>
    # @param [Hash, Types::CreateTrustedTokenIssuerRequest] params
    # @option params [String] :instance_arn
    #   <p>Specifies the ARN of the instance of IAM Identity Center to contain the new trusted token issuer configuration.</p>
    # @option params [String] :name
    #   <p>Specifies the name of the new trusted token issuer configuration.</p>
    # @option params [String] :trusted_token_issuer_type
    #   <p>Specifies the type of the new trusted token issuer.</p>
    # @option params [Types::TrustedTokenIssuerConfiguration] :trusted_token_issuer_configuration
    #   <p>Specifies settings that apply to the new trusted token issuer configuration. The settings that are available depend on what <code>TrustedTokenIssuerType</code> you specify.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive ID that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value.</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies tags to be attached to the new trusted token issuer configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     name: "TrustedTokenIssuerName", # required
    #     trusted_token_issuer_type: "OIDC_JWT" # One of: ["OIDC_JWT"], # required
    #     trusted_token_issuer_configuration: { # required
    #       # One of:
    #       oidc_jwt_configuration: {
    #         issuer_url: "TrustedTokenIssuerUrl", # required
    #         claim_attribute_path: "ClaimAttributePath", # required
    #         identity_store_attribute_path: "JMESPath", # required
    #         jwks_retrieval_option: "OPEN_ID_DISCOVERY" # One of: ["OPEN_ID_DISCOVERY"], # required
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_trusted_token_issuer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn"
    #   }
    # @return [Types::CreateTrustedTokenIssuerResponse]
    def create_trusted_token_issuer(params = {}, options = {})
      request = build_request(:create_trusted_token_issuer, params)
      request.send_request(options)
    end

    # <p>Deletes a principal's access from a specified Amazon Web Services account using a specified permission set.</p> <note> <p>After a successful response, call <code>DescribeAccountAssignmentDeletionStatus</code> to describe the status of an assignment deletion request.</p> </note>
    # @param [Hash, Types::DeleteAccountAssignmentRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :target_id
    #   <p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>
    # @option params [String] :target_type
    #   <p>The entity type for which the assignment will be deleted.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that will be used to remove access.</p>
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be deleted.</p>
    # @option params [String] :principal_id
    #   <p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href="/singlesignon/latest/IdentityStoreAPIReference/welcome.html">IAM Identity Center Identity Store API Reference</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     target_id: "TargetId", # required
    #     target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT"], # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     principal_id: "PrincipalId", # required
    #   }
    #   options = {}
    #   response = client.delete_account_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignment_deletion_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #       request_id: "UUId",
    #       failure_reason: "Reason",
    #       target_id: "TargetId",
    #       target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT"],
    #       permission_set_arn: "PermissionSetArn",
    #       principal_type: "USER" # One of: ["USER", "GROUP"],
    #       principal_id: "PrincipalId",
    #       created_date: Time.now
    #     }
    #   }
    # @return [Types::DeleteAccountAssignmentResponse]
    def delete_account_assignment(params = {}, options = {})
      request = build_request(:delete_account_assignment, params)
      request.send_request(options)
    end

    # <p>Deletes the association with the application. The connected service resource still exists.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes an IAM Identity Center access scope from an application.</p>
    # @param [Hash, Types::DeleteApplicationAccessScopeRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the access scope to delete.</p>
    # @option params [String] :scope
    #   <p>Specifies the name of the access scope to remove from the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     scope: "Scope", # required
    #   }
    #   options = {}
    #   response = client.delete_application_access_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application_access_scope(params = {}, options = {})
      request = build_request(:delete_application_access_scope, params)
      request.send_request(options)
    end

    # <p>Revoke application access to an application by deleting application assignments for a user or group.</p>
    # @param [Hash, Types::DeleteApplicationAssignmentRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application.</p>
    # @option params [String] :principal_id
    #   <p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html">IAM Identity Center Identity Store API Reference</a>.</p>
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #   }
    #   options = {}
    #   response = client.delete_application_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationAssignmentResponse]
    def delete_application_assignment(params = {}, options = {})
      request = build_request(:delete_application_assignment, params)
      request.send_request(options)
    end

    # <p>Deletes an authentication method from an application.</p>
    # @param [Hash, Types::DeleteApplicationAuthenticationMethodRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the authentication method to delete.</p>
    # @option params [String] :authentication_method_type
    #   <p>Specifies the authentication method type to delete from the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     authentication_method_type: "IAM" # One of: ["IAM"], # required
    #   }
    #   options = {}
    #   response = client.delete_application_authentication_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application_authentication_method(params = {}, options = {})
      request = build_request(:delete_application_authentication_method, params)
      request.send_request(options)
    end

    # <p>Deletes a grant from an application.</p>
    # @param [Hash, Types::DeleteApplicationGrantRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the grant to delete.</p>
    # @option params [String] :grant_type
    #   <p>Specifies the type of grant to delete from the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     grant_type: "authorization_code" # One of: ["authorization_code", "refresh_token", "urn:ietf:params:oauth:grant-type:jwt-bearer", "urn:ietf:params:oauth:grant-type:token-exchange"], # required
    #   }
    #   options = {}
    #   response = client.delete_application_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application_grant(params = {}, options = {})
      request = build_request(:delete_application_grant, params)
      request.send_request(options)
    end

    # <p>Deletes the inline policy from a specified permission set.</p>
    # @param [Hash, Types::DeleteInlinePolicyFromPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that will be used to remove access.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   }
    #   options = {}
    #   response = client.delete_inline_policy_from_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInlinePolicyFromPermissionSetResponse]
    def delete_inline_policy_from_permission_set(params = {}, options = {})
      request = build_request(:delete_inline_policy_from_permission_set, params)
      request.send_request(options)
    end

    # <p>Deletes the instance of IAM Identity Center. Only the account that owns the instance can call this API. Neither the delegated administrator nor member account can delete the organization instance, but those roles can delete their own instance.</p>
    # @param [Hash, Types::DeleteInstanceRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the instance of IAM Identity Center under which the operation will run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInstanceResponse]
    def delete_instance(params = {}, options = {})
      request = build_request(:delete_instance, params)
      request.send_request(options)
    end

    # <p>Disables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance and deletes all of the attribute mappings that have been configured. Once deleted, any attributes that are received from an identity source and any custom attributes you have previously configured will not be passed. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>IAM Identity Center User Guide</i>.</p>
    # @param [Hash, Types::DeleteInstanceAccessControlAttributeConfigurationRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_instance_access_control_attribute_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInstanceAccessControlAttributeConfigurationResponse]
    def delete_instance_access_control_attribute_configuration(params = {}, options = {})
      request = build_request(:delete_instance_access_control_attribute_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified permission set.</p>
    # @param [Hash, Types::DeletePermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that should be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   }
    #   options = {}
    #   response = client.delete_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePermissionSetResponse]
    def delete_permission_set(params = {}, options = {})
      request = build_request(:delete_permission_set, params)
      request.send_request(options)
    end

    # <p>Deletes the permissions boundary from a specified <a>PermissionSet</a>.</p>
    # @param [Hash, Types::DeletePermissionsBoundaryFromPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <code>PermissionSet</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   }
    #   options = {}
    #   response = client.delete_permissions_boundary_from_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePermissionsBoundaryFromPermissionSetResponse]
    def delete_permissions_boundary_from_permission_set(params = {}, options = {})
      request = build_request(:delete_permissions_boundary_from_permission_set, params)
      request.send_request(options)
    end

    # <p>Deletes a trusted token issuer configuration from an instance of IAM Identity Center.</p> <note> <p>Deleting this trusted token issuer configuration will cause users to lose access to any applications that are configured to use the trusted token issuer.</p> </note>
    # @param [Hash, Types::DeleteTrustedTokenIssuerRequest] params
    # @option params [String] :trusted_token_issuer_arn
    #   <p>Specifies the ARN of the trusted token issuer configuration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn", # required
    #   }
    #   options = {}
    #   response = client.delete_trusted_token_issuer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrustedTokenIssuerResponse]
    def delete_trusted_token_issuer(params = {}, options = {})
      request = build_request(:delete_trusted_token_issuer, params)
      request.send_request(options)
    end

    # <p>Describes the status of the assignment creation request.</p>
    # @param [Hash, Types::DescribeAccountAssignmentCreationStatusRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :account_assignment_creation_request_id
    #   <p>The identifier that is used to track the request operation progress.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     account_assignment_creation_request_id: "UUId", # required
    #   }
    #   options = {}
    #   response = client.describe_account_assignment_creation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignment_creation_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #       request_id: "UUId",
    #       failure_reason: "Reason",
    #       target_id: "TargetId",
    #       target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT"],
    #       permission_set_arn: "PermissionSetArn",
    #       principal_type: "USER" # One of: ["USER", "GROUP"],
    #       principal_id: "PrincipalId",
    #       created_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeAccountAssignmentCreationStatusResponse]
    def describe_account_assignment_creation_status(params = {}, options = {})
      request = build_request(:describe_account_assignment_creation_status, params)
      request.send_request(options)
    end

    # <p>Describes the status of the assignment deletion request.</p>
    # @param [Hash, Types::DescribeAccountAssignmentDeletionStatusRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :account_assignment_deletion_request_id
    #   <p>The identifier that is used to track the request operation progress.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     account_assignment_deletion_request_id: "UUId", # required
    #   }
    #   options = {}
    #   response = client.describe_account_assignment_deletion_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignment_deletion_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #       request_id: "UUId",
    #       failure_reason: "Reason",
    #       target_id: "TargetId",
    #       target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT"],
    #       permission_set_arn: "PermissionSetArn",
    #       principal_type: "USER" # One of: ["USER", "GROUP"],
    #       principal_id: "PrincipalId",
    #       created_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeAccountAssignmentDeletionStatusResponse]
    def describe_account_assignment_deletion_status(params = {}, options = {})
      request = build_request(:describe_account_assignment_deletion_status, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of an application associated with an instance of IAM Identity Center.</p>
    # @param [Hash, Types::DescribeApplicationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ApplicationArn",
    #     application_provider_arn: "ApplicationProviderArn",
    #     name: "ApplicationNameType",
    #     application_account: "AccountId",
    #     instance_arn: "InstanceArn",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     portal_options: {
    #       sign_in_options: {
    #         origin: "IDENTITY_CENTER" # One of: ["IDENTITY_CENTER", "APPLICATION"], # required
    #         application_url: "ApplicationUrl"
    #       },
    #       visibility: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     description: "Description",
    #     created_date: Time.now
    #   }
    # @return [Types::DescribeApplicationResponse]
    def describe_application(params = {}, options = {})
      request = build_request(:describe_application, params)
      request.send_request(options)
    end

    # <p>Retrieves a direct assignment of a user or group to an application. If the user doesn’t have a direct assignment to the application, the user may still have access to the application through a group. Therefore, don’t use this API to test access to an application for a user. Instead use <a>ListApplicationAssignmentsForPrincipal</a>.</p>
    # @param [Hash, Types::DescribeApplicationAssignmentRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :principal_id
    #   <p>An identifier for an object in IAM Identity Center, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in IAM Identity Center, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html">IAM Identity Center Identity Store API Reference</a>.</p>
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #   }
    #   options = {}
    #   response = client.describe_application_assignment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principal_type: "USER" # One of: ["USER", "GROUP"],
    #     principal_id: "PrincipalId",
    #     application_arn: "ApplicationArn"
    #   }
    # @return [Types::DescribeApplicationAssignmentResponse]
    def describe_application_assignment(params = {}, options = {})
      request = build_request(:describe_application_assignment, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a provider that can be used to connect an Amazon Web Services managed application or customer managed application to IAM Identity Center.</p>
    # @param [Hash, Types::DescribeApplicationProviderRequest] params
    # @option params [String] :application_provider_arn
    #   <p>Specifies the ARN of the application provider for which you want details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_provider_arn: "ApplicationProviderArn", # required
    #   }
    #   options = {}
    #   response = client.describe_application_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_provider_arn: "ApplicationProviderArn", # required
    #     federation_protocol: "SAML" # One of: ["SAML", "OAUTH"],
    #     display_data: {
    #       display_name: "Name",
    #       icon_url: "IconUrl",
    #       description: "Description"
    #     },
    #     resource_server_config: {
    #       scopes: {
    #         "ResourceServerScope" => {
    #           long_description: "Description",
    #           detailed_title: "Description"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeApplicationProviderResponse]
    def describe_application_provider(params = {}, options = {})
      request = build_request(:describe_application_provider, params)
      request.send_request(options)
    end

    # <p>Returns the details of an instance of IAM Identity Center. The status can be one of the following:</p> <ul> <li> <p> <code>CREATE_IN_PROGRESS</code> - The instance is in the process of being created. When the instance is ready for use, DescribeInstance returns the status of <code>ACTIVE</code>. While the instance is in the <code>CREATE_IN_PROGRESS</code> state, you can call only DescribeInstance and DeleteInstance operations.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> - The instance is being deleted. Returns <code>AccessDeniedException</code> after the delete operation completes. </p> </li> <li> <p> <code>ACTIVE</code> - The instance is active.</p> </li> </ul>
    # @param [Hash, Types::DescribeInstanceRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the instance of IAM Identity Center under which the operation will run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_arn: "InstanceArn",
    #     identity_store_id: "Id",
    #     owner_account_id: "AccountId",
    #     name: "NameType",
    #     created_date: Time.now,
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "ACTIVE"],
    #     status_reason: "Reason",
    #     encryption_configuration_details: {
    #       key_type: "AWS_OWNED_KMS_KEY" # One of: ["AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KEY"],
    #       kms_key_arn: "KmsKeyArn",
    #       encryption_status: "UPDATING" # One of: ["UPDATING", "ENABLED", "UPDATE_FAILED"],
    #       encryption_status_reason: "Reason"
    #     }
    #   }
    # @return [Types::DescribeInstanceResponse]
    def describe_instance(params = {}, options = {})
      request = build_request(:describe_instance, params)
      request.send_request(options)
    end

    # <p>Returns the list of IAM Identity Center identity store attributes that have been configured to work with attributes-based access control (ABAC) for the specified IAM Identity Center instance. This will not return attributes configured and sent by an external identity provider. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>IAM Identity Center User Guide</i>.</p>
    # @param [Hash, Types::DescribeInstanceAccessControlAttributeConfigurationRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_instance_access_control_attribute_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ENABLED" # One of: ["ENABLED", "CREATION_IN_PROGRESS", "CREATION_FAILED"],
    #     status_reason: "InstanceAccessControlAttributeConfigurationStatusReason",
    #     instance_access_control_attribute_configuration: {
    #       access_control_attributes: [ # required
    #         {
    #           key: "AccessControlAttributeKey", # required
    #           value: { # required
    #             source: ["AccessControlAttributeValueSource"], # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeInstanceAccessControlAttributeConfigurationResponse]
    def describe_instance_access_control_attribute_configuration(params = {}, options = {})
      request = build_request(:describe_instance_access_control_attribute_configuration, params)
      request.send_request(options)
    end

    # <p>Gets the details of the permission set.</p>
    # @param [Hash, Types::DescribePermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   }
    #   options = {}
    #   response = client.describe_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_set: {
    #       name: "PermissionSetName",
    #       permission_set_arn: "PermissionSetArn",
    #       description: "PermissionSetDescription",
    #       created_date: Time.now,
    #       session_duration: "Duration",
    #       relay_state: "RelayState"
    #     }
    #   }
    # @return [Types::DescribePermissionSetResponse]
    def describe_permission_set(params = {}, options = {})
      request = build_request(:describe_permission_set, params)
      request.send_request(options)
    end

    # <p>Describes the status for the given permission set provisioning request.</p>
    # @param [Hash, Types::DescribePermissionSetProvisioningStatusRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :provision_permission_set_request_id
    #   <p>The identifier that is provided by the <a>ProvisionPermissionSet</a> call to retrieve the current status of the provisioning workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     provision_permission_set_request_id: "UUId", # required
    #   }
    #   options = {}
    #   response = client.describe_permission_set_provisioning_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_set_provisioning_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #       request_id: "UUId",
    #       account_id: "AccountId",
    #       permission_set_arn: "PermissionSetArn",
    #       failure_reason: "Reason",
    #       created_date: Time.now
    #     }
    #   }
    # @return [Types::DescribePermissionSetProvisioningStatusResponse]
    def describe_permission_set_provisioning_status(params = {}, options = {})
      request = build_request(:describe_permission_set_provisioning_status, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a trusted token issuer configuration stored in an instance of IAM Identity Center. Details include the name of the trusted token issuer, the issuer URL, and the path of the source attribute and the destination attribute for a trusted token issuer configuration. </p>
    # @param [Hash, Types::DescribeTrustedTokenIssuerRequest] params
    # @option params [String] :trusted_token_issuer_arn
    #   <p>Specifies the ARN of the trusted token issuer configuration that you want details about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn", # required
    #   }
    #   options = {}
    #   response = client.describe_trusted_token_issuer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn",
    #     name: "TrustedTokenIssuerName",
    #     trusted_token_issuer_type: "OIDC_JWT" # One of: ["OIDC_JWT"],
    #     trusted_token_issuer_configuration: {
    #       # One of:
    #       oidc_jwt_configuration: {
    #         issuer_url: "TrustedTokenIssuerUrl", # required
    #         claim_attribute_path: "ClaimAttributePath", # required
    #         identity_store_attribute_path: "JMESPath", # required
    #         jwks_retrieval_option: "OPEN_ID_DISCOVERY" # One of: ["OPEN_ID_DISCOVERY"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeTrustedTokenIssuerResponse]
    def describe_trusted_token_issuer(params = {}, options = {})
      request = build_request(:describe_trusted_token_issuer, params)
      request.send_request(options)
    end

    # <p>Detaches the specified customer managed policy from the specified <a>PermissionSet</a>.</p>
    # @param [Hash, Types::DetachCustomerManagedPolicyReferenceFromPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <code>PermissionSet</code>.</p>
    # @option params [Types::CustomerManagedPolicyReference] :customer_managed_policy_reference
    #   <p>Specifies the name and path of a customer managed policy. You must have an IAM policy that matches the name and path in each Amazon Web Services account where you want to deploy your permission set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     customer_managed_policy_reference: { # required
    #       name: "ManagedPolicyName", # required
    #       path: "ManagedPolicyPath"
    #     }
    #   }
    #   options = {}
    #   response = client.detach_customer_managed_policy_reference_from_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachCustomerManagedPolicyReferenceFromPermissionSetResponse]
    def detach_customer_managed_policy_reference_from_permission_set(params = {}, options = {})
      request = build_request(:detach_customer_managed_policy_reference_from_permission_set, params)
      request.send_request(options)
    end

    # <p>Detaches the attached Amazon Web Services managed policy ARN from the specified permission set.</p>
    # @param [Hash, Types::DetachManagedPolicyFromPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> from which the policy should be detached.</p>
    # @option params [String] :managed_policy_arn
    #   <p>The Amazon Web Services managed policy ARN to be detached from a permission set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     managed_policy_arn: "ManagedPolicyArn", # required
    #   }
    #   options = {}
    #   response = client.detach_managed_policy_from_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachManagedPolicyFromPermissionSetResponse]
    def detach_managed_policy_from_permission_set(params = {}, options = {})
      request = build_request(:detach_managed_policy_from_permission_set, params)
      request.send_request(options)
    end

    # <p>Retrieves the authorized targets for an IAM Identity Center access scope for an application.</p>
    # @param [Hash, Types::GetApplicationAccessScopeRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the access scope that you want to retrieve.</p>
    # @option params [String] :scope
    #   <p>Specifies the name of the access scope for which you want the authorized targets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     scope: "Scope", # required
    #   }
    #   options = {}
    #   response = client.get_application_access_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope: "Scope", # required
    #     authorized_targets: ["ScopeTarget"]
    #   }
    # @return [Types::GetApplicationAccessScopeResponse]
    def get_application_access_scope(params = {}, options = {})
      request = build_request(:get_application_access_scope, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration of <a>PutApplicationAssignmentConfiguration</a>.</p>
    # @param [Hash, Types::GetApplicationAssignmentConfigurationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.get_application_assignment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assignment_required: false, # required
    #   }
    # @return [Types::GetApplicationAssignmentConfigurationResponse]
    def get_application_assignment_configuration(params = {}, options = {})
      request = build_request(:get_application_assignment_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an authentication method used by an application.</p>
    # @param [Hash, Types::GetApplicationAuthenticationMethodRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application.</p>
    # @option params [String] :authentication_method_type
    #   <p>Specifies the type of authentication method for which you want details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     authentication_method_type: "IAM" # One of: ["IAM"], # required
    #   }
    #   options = {}
    #   response = client.get_application_authentication_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_method: {
    #       # One of:
    #       iam: {
    #         actor_policy: ""null"", # required
    #       }
    #     }
    #   }
    # @return [Types::GetApplicationAuthenticationMethodResponse]
    def get_application_authentication_method(params = {}, options = {})
      request = build_request(:get_application_authentication_method, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an application grant.</p>
    # @param [Hash, Types::GetApplicationGrantRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application that contains the grant.</p>
    # @option params [String] :grant_type
    #   <p>Specifies the type of grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     grant_type: "authorization_code" # One of: ["authorization_code", "refresh_token", "urn:ietf:params:oauth:grant-type:jwt-bearer", "urn:ietf:params:oauth:grant-type:token-exchange"], # required
    #   }
    #   options = {}
    #   response = client.get_application_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grant: { # required
    #       # One of:
    #       authorization_code: {
    #         redirect_uris: ["URI"]
    #       },
    #       jwt_bearer: {
    #         authorized_token_issuers: [
    #           {
    #             trusted_token_issuer_arn: "TrustedTokenIssuerArn",
    #             authorized_audiences: ["TokenIssuerAudience"]
    #           }
    #         ]
    #       },
    #       refresh_token: {
    #       },
    #       token_exchange: {
    #       }
    #     }
    #   }
    # @return [Types::GetApplicationGrantResponse]
    def get_application_grant(params = {}, options = {})
      request = build_request(:get_application_grant, params)
      request.send_request(options)
    end

    # <p>Retrieves the session configuration for an application in IAM Identity Center.</p> <p>The session configuration determines how users can access an application. This includes whether user background sessions are enabled. User background sessions allow users to start a job on a supported Amazon Web Services managed application without having to remain signed in to an active session while the job runs.</p>
    # @param [Hash, Types::GetApplicationSessionConfigurationRequest] params
    # @option params [String] :application_arn
    #   <p>The Amazon Resource Name (ARN) of the application for which to retrieve the session configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.get_application_session_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_background_session_application_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    # @return [Types::GetApplicationSessionConfigurationResponse]
    def get_application_session_configuration(params = {}, options = {})
      request = build_request(:get_application_session_configuration, params)
      request.send_request(options)
    end

    # <p>Obtains the inline policy assigned to the permission set.</p>
    # @param [Hash, Types::GetInlinePolicyForPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   }
    #   options = {}
    #   response = client.get_inline_policy_for_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inline_policy: "PermissionSetPolicyDocument"
    #   }
    # @return [Types::GetInlinePolicyForPermissionSetResponse]
    def get_inline_policy_for_permission_set(params = {}, options = {})
      request = build_request(:get_inline_policy_for_permission_set, params)
      request.send_request(options)
    end

    # <p>Obtains the permissions boundary for a specified <a>PermissionSet</a>.</p>
    # @param [Hash, Types::GetPermissionsBoundaryForPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <code>PermissionSet</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #   }
    #   options = {}
    #   response = client.get_permissions_boundary_for_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions_boundary: {
    #       customer_managed_policy_reference: {
    #         name: "ManagedPolicyName", # required
    #         path: "ManagedPolicyPath"
    #       },
    #       managed_policy_arn: "ManagedPolicyArn"
    #     }
    #   }
    # @return [Types::GetPermissionsBoundaryForPermissionSetResponse]
    def get_permissions_boundary_for_permission_set(params = {}, options = {})
      request = build_request(:get_permissions_boundary_for_permission_set, params)
      request.send_request(options)
    end

    # <p>Lists the status of the Amazon Web Services account assignment creation requests for a specified IAM Identity Center instance.</p>
    # @param [Hash, Types::ListAccountAssignmentCreationStatusRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @option params [Types::OperationStatusFilter] :filter
    #   <p>Filters results based on the passed attribute value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_account_assignment_creation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignments_creation_status: [
    #       {
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #         request_id: "UUId",
    #         created_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccountAssignmentCreationStatusResponse]
    def list_account_assignment_creation_status(params = {}, options = {})
      request = build_request(:list_account_assignment_creation_status, params)
      request.send_request(options)
    end

    # <p>Lists the status of the Amazon Web Services account assignment deletion requests for a specified IAM Identity Center instance.</p>
    # @param [Hash, Types::ListAccountAssignmentDeletionStatusRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @option params [Types::OperationStatusFilter] :filter
    #   <p>Filters results based on the passed attribute value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_account_assignment_deletion_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignments_deletion_status: [
    #       {
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #         request_id: "UUId",
    #         created_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccountAssignmentDeletionStatusResponse]
    def list_account_assignment_deletion_status(params = {}, options = {})
      request = build_request(:list_account_assignment_deletion_status, params)
      request.send_request(options)
    end

    # <p>Lists the assignee of the specified Amazon Web Services account with the specified permission set.</p>
    # @param [Hash, Types::ListAccountAssignmentsRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :account_id
    #   <p>The identifier of the Amazon Web Services account from which to list the assignments.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set from which to list assignments.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     account_id: "TargetId", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_account_assignments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignments: [
    #       {
    #         account_id: "AccountId",
    #         permission_set_arn: "PermissionSetArn",
    #         principal_type: "USER" # One of: ["USER", "GROUP"],
    #         principal_id: "PrincipalId"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccountAssignmentsResponse]
    def list_account_assignments(params = {}, options = {})
      request = build_request(:list_account_assignments, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the IAM Identity Center associated Amazon Web Services accounts that the principal has access to. This action must be called from the management account containing your organization instance of IAM Identity Center. This action is not valid for account instances of IAM Identity Center.</p>
    # @param [Hash, Types::ListAccountAssignmentsForPrincipalRequest] params
    # @option params [String] :instance_arn
    #   <p>Specifies the ARN of the instance of IAM Identity Center that contains the principal.</p>
    # @option params [String] :principal_id
    #   <p>Specifies the principal for which you want to retrieve the list of account assignments.</p>
    # @option params [String] :principal_type
    #   <p>Specifies the type of the principal.</p>
    # @option params [Types::ListAccountAssignmentsFilter] :filter
    #   <p>Specifies an Amazon Web Services account ID number. Results are filtered to only those that match this ID number.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     filter: {
    #       account_id: "AccountId"
    #     },
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_account_assignments_for_principal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_assignments: [
    #       {
    #         account_id: "AccountId",
    #         permission_set_arn: "PermissionSetArn",
    #         principal_id: "PrincipalId",
    #         principal_type: "USER" # One of: ["USER", "GROUP"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccountAssignmentsForPrincipalResponse]
    def list_account_assignments_for_principal(params = {}, options = {})
      request = build_request(:list_account_assignments_for_principal, params)
      request.send_request(options)
    end

    # <p>Lists all the Amazon Web Services accounts where the specified permission set is provisioned.</p>
    # @param [Hash, Types::ListAccountsForProvisionedPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> from which the associated Amazon Web Services accounts will be listed.</p>
    # @option params [String] :provisioning_status
    #   <p>The permission set provisioning status for an Amazon Web Services account.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the <a>PermissionSet</a>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED" # One of: ["LATEST_PERMISSION_SET_PROVISIONED", "LATEST_PERMISSION_SET_NOT_PROVISIONED"],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_accounts_for_provisioned_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: ["AccountId"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccountsForProvisionedPermissionSetResponse]
    def list_accounts_for_provisioned_permission_set(params = {}, options = {})
      request = build_request(:list_accounts_for_provisioned_permission_set, params)
      request.send_request(options)
    end

    # <p>Lists the access scopes and authorized targets associated with an application.</p>
    # @param [Hash, Types::ListApplicationAccessScopesRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_application_access_scopes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scopes: [ # required
    #       {
    #         scope: "Scope", # required
    #         authorized_targets: ["ScopeTarget"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationAccessScopesResponse]
    def list_application_access_scopes(params = {}, options = {})
      request = build_request(:list_application_access_scopes, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Web Services account users that are assigned to an application.</p>
    # @param [Hash, Types::ListApplicationAssignmentsRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_application_assignments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_assignments: [
    #       {
    #         application_arn: "ApplicationArn", # required
    #         principal_id: "PrincipalId", # required
    #         principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationAssignmentsResponse]
    def list_application_assignments(params = {}, options = {})
      request = build_request(:list_application_assignments, params)
      request.send_request(options)
    end

    # <p>Lists the applications to which a specified principal is assigned. You must provide a filter when calling this action from a member account against your organization instance of IAM Identity Center. A filter is not required when called from the management account against an organization instance of IAM Identity Center, or from a member account against an account instance of IAM Identity Center in the same account.</p>
    # @param [Hash, Types::ListApplicationAssignmentsForPrincipalRequest] params
    # @option params [String] :instance_arn
    #   <p>Specifies the instance of IAM Identity Center that contains principal and applications.</p>
    # @option params [String] :principal_id
    #   <p>Specifies the unique identifier of the principal for which you want to retrieve its assignments.</p>
    # @option params [String] :principal_type
    #   <p>Specifies the type of the principal for which you want to retrieve its assignments.</p>
    # @option params [Types::ListApplicationAssignmentsFilter] :filter
    #   <p>Filters the output to include only assignments associated with the application that has the specified ARN.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     principal_id: "PrincipalId", # required
    #     principal_type: "USER" # One of: ["USER", "GROUP"], # required
    #     filter: {
    #       application_arn: "ApplicationArn"
    #     },
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_application_assignments_for_principal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_assignments: [
    #       {
    #         application_arn: "ApplicationArn",
    #         principal_id: "PrincipalId",
    #         principal_type: "USER" # One of: ["USER", "GROUP"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationAssignmentsForPrincipalResponse]
    def list_application_assignments_for_principal(params = {}, options = {})
      request = build_request(:list_application_assignments_for_principal, params)
      request.send_request(options)
    end

    # <p>Lists all of the authentication methods supported by the specified application.</p>
    # @param [Hash, Types::ListApplicationAuthenticationMethodsRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the authentication methods you want to list.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_application_authentication_methods(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_methods: [
    #       {
    #         authentication_method_type: "IAM" # One of: ["IAM"],
    #         authentication_method: {
    #           # One of:
    #           iam: {
    #             actor_policy: ""null"", # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationAuthenticationMethodsResponse]
    def list_application_authentication_methods(params = {}, options = {})
      request = build_request(:list_application_authentication_methods, params)
      request.send_request(options)
    end

    # <p>List the grants associated with an application.</p>
    # @param [Hash, Types::ListApplicationGrantsRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application whose grants you want to list.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_application_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grants: [ # required
    #       {
    #         grant_type: "authorization_code" # One of: ["authorization_code", "refresh_token", "urn:ietf:params:oauth:grant-type:jwt-bearer", "urn:ietf:params:oauth:grant-type:token-exchange"], # required
    #         grant: { # required
    #           # One of:
    #           authorization_code: {
    #             redirect_uris: ["URI"]
    #           },
    #           jwt_bearer: {
    #             authorized_token_issuers: [
    #               {
    #                 trusted_token_issuer_arn: "TrustedTokenIssuerArn",
    #                 authorized_audiences: ["TokenIssuerAudience"]
    #               }
    #             ]
    #           },
    #           refresh_token: {
    #           },
    #           token_exchange: {
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationGrantsResponse]
    def list_application_grants(params = {}, options = {})
      request = build_request(:list_application_grants, params)
      request.send_request(options)
    end

    # <p>Lists the application providers configured in the IAM Identity Center identity store.</p>
    # @param [Hash, Types::ListApplicationProvidersRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_application_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_providers: [
    #       {
    #         application_provider_arn: "ApplicationProviderArn", # required
    #         federation_protocol: "SAML" # One of: ["SAML", "OAUTH"],
    #         display_data: {
    #           display_name: "Name",
    #           icon_url: "IconUrl",
    #           description: "Description"
    #         },
    #         resource_server_config: {
    #           scopes: {
    #             "ResourceServerScope" => {
    #               long_description: "Description",
    #               detailed_title: "Description"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationProvidersResponse]
    def list_application_providers(params = {}, options = {})
      request = build_request(:list_application_providers, params)
      request.send_request(options)
    end

    # <p>Lists all applications associated with the instance of IAM Identity Center. When listing applications for an organization instance in the management account, member accounts must use the <code>applicationAccount</code> parameter to filter the list to only applications created from that account. When listing applications for an account instance in the same member account, a filter is not required.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center application under which the operation will run. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @option params [Types::ListApplicationsFilter] :filter
    #   <p>Filters response results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       application_account: "AccountId",
    #       application_provider: "ApplicationProviderArn"
    #     }
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         application_arn: "ApplicationArn",
    #         application_provider_arn: "ApplicationProviderArn",
    #         name: "ApplicationNameType",
    #         application_account: "AccountId",
    #         instance_arn: "InstanceArn",
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         portal_options: {
    #           sign_in_options: {
    #             origin: "IDENTITY_CENTER" # One of: ["IDENTITY_CENTER", "APPLICATION"], # required
    #             application_url: "ApplicationUrl"
    #           },
    #           visibility: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         description: "Description",
    #         created_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists all customer managed policies attached to a specified <a>PermissionSet</a>.</p>
    # @param [Hash, Types::ListCustomerManagedPolicyReferencesInPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <code>PermissionSet</code>. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the list call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_customer_managed_policy_references_in_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     customer_managed_policy_references: [
    #       {
    #         name: "ManagedPolicyName", # required
    #         path: "ManagedPolicyPath"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListCustomerManagedPolicyReferencesInPermissionSetResponse]
    def list_customer_managed_policy_references_in_permission_set(params = {}, options = {})
      request = build_request(:list_customer_managed_policy_references_in_permission_set, params)
      request.send_request(options)
    end

    # <p>Lists the details of the organization and account instances of IAM Identity Center that were created in or visible to the account calling this API. </p>
    # @param [Hash, Types::ListInstancesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the instance.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_arn: "InstanceArn",
    #         identity_store_id: "Id",
    #         owner_account_id: "AccountId",
    #         name: "NameType",
    #         created_date: Time.now,
    #         status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "DELETE_IN_PROGRESS", "ACTIVE"],
    #         status_reason: "Reason"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListInstancesResponse]
    def list_instances(params = {}, options = {})
      request = build_request(:list_instances, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Web Services managed policy that is attached to a specified permission set.</p>
    # @param [Hash, Types::ListManagedPoliciesInPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> whose managed policies will be listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the <a>PermissionSet</a>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_managed_policies_in_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_managed_policies: [
    #       {
    #         name: "Name",
    #         arn: "ManagedPolicyArn"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListManagedPoliciesInPermissionSetResponse]
    def list_managed_policies_in_permission_set(params = {}, options = {})
      request = build_request(:list_managed_policies_in_permission_set, params)
      request.send_request(options)
    end

    # <p>Lists the status of the permission set provisioning requests for a specified IAM Identity Center instance.</p>
    # @param [Hash, Types::ListPermissionSetProvisioningStatusRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @option params [Types::OperationStatusFilter] :filter
    #   <p>Filters results based on the passed attribute value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filter: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_permission_set_provisioning_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_sets_provisioning_status: [
    #       {
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #         request_id: "UUId",
    #         created_date: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPermissionSetProvisioningStatusResponse]
    def list_permission_set_provisioning_status(params = {}, options = {})
      request = build_request(:list_permission_set_provisioning_status, params)
      request.send_request(options)
    end

    # <p>Lists the <a>PermissionSet</a>s in an IAM Identity Center instance.</p>
    # @param [Hash, Types::ListPermissionSetsRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_permission_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_sets: ["PermissionSetArn"],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPermissionSetsResponse]
    def list_permission_sets(params = {}, options = {})
      request = build_request(:list_permission_sets, params)
      request.send_request(options)
    end

    # <p>Lists all the permission sets that are provisioned to a specified Amazon Web Services account.</p>
    # @param [Hash, Types::ListPermissionSetsProvisionedToAccountRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :account_id
    #   <p>The identifier of the Amazon Web Services account from which to list the assignments.</p>
    # @option params [String] :provisioning_status
    #   <p>The status object for the permission set provisioning operation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     account_id: "AccountId", # required
    #     provisioning_status: "LATEST_PERMISSION_SET_PROVISIONED" # One of: ["LATEST_PERMISSION_SET_PROVISIONED", "LATEST_PERMISSION_SET_NOT_PROVISIONED"],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_permission_sets_provisioned_to_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     permission_sets: ["PermissionSetArn"]
    #   }
    # @return [Types::ListPermissionSetsProvisionedToAccountResponse]
    def list_permission_sets_provisioned_to_account(params = {}, options = {})
      request = build_request(:list_permission_sets_provisioned_to_account, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to a specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource with the tags to be listed.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn",
    #     resource_arn: "TaggableResourceArn", # required
    #     next_token: "Token"
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
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all the trusted token issuers configured in an instance of IAM Identity Center.</p>
    # @param [Hash, Types::ListTrustedTokenIssuersRequest] params
    # @option params [String] :instance_arn
    #   <p>Specifies the ARN of the instance of IAM Identity Center with the trusted token issuer configurations that you want to list.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included in each response. If additional items exist beyond the number you specify, the <code>NextToken</code> response element is returned with a value (not null). Include the specified value as the <code>NextToken</code> request parameter in the next call to the operation to get the next set of results. Note that the service might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid only if you received a <code>NextToken</code> response in the previous request. If you did, it indicates that more output is available. Set this parameter to the value provided by the previous call's <code>NextToken</code> response to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_trusted_token_issuers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trusted_token_issuers: [
    #       {
    #         trusted_token_issuer_arn: "TrustedTokenIssuerArn",
    #         name: "TrustedTokenIssuerName",
    #         trusted_token_issuer_type: "OIDC_JWT" # One of: ["OIDC_JWT"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListTrustedTokenIssuersResponse]
    def list_trusted_token_issuers(params = {}, options = {})
      request = build_request(:list_trusted_token_issuers, params)
      request.send_request(options)
    end

    # <p>The process by which a specified permission set is provisioned to the specified target.</p>
    # @param [Hash, Types::ProvisionPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    # @option params [String] :target_id
    #   <p>TargetID is an Amazon Web Services account identifier, (For example, 123456789012).</p>
    # @option params [String] :target_type
    #   <p>The entity type for which the assignment will be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     target_id: "TargetId",
    #     target_type: "AWS_ACCOUNT" # One of: ["AWS_ACCOUNT", "ALL_PROVISIONED_ACCOUNTS"], # required
    #   }
    #   options = {}
    #   response = client.provision_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permission_set_provisioning_status: {
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #       request_id: "UUId",
    #       account_id: "AccountId",
    #       permission_set_arn: "PermissionSetArn",
    #       failure_reason: "Reason",
    #       created_date: Time.now
    #     }
    #   }
    # @return [Types::ProvisionPermissionSetResponse]
    def provision_permission_set(params = {}, options = {})
      request = build_request(:provision_permission_set, params)
      request.send_request(options)
    end

    # <p>Adds or updates the list of authorized targets for an IAM Identity Center access scope for an application.</p>
    # @param [Hash, Types::PutApplicationAccessScopeRequest] params
    # @option params [String] :scope
    #   <p>Specifies the name of the access scope to be associated with the specified targets.</p>
    # @option params [Array<String>] :authorized_targets
    #   <p>Specifies an array list of ARNs that represent the authorized targets for this access scope.</p>
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the access scope with the targets to add or update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "Scope", # required
    #     authorized_targets: ["ScopeTarget"],
    #     application_arn: "ApplicationArn", # required
    #   }
    #   options = {}
    #   response = client.put_application_access_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_application_access_scope(params = {}, options = {})
      request = build_request(:put_application_access_scope, params)
      request.send_request(options)
    end

    # <p>Configure how users gain access to an application. If <code>AssignmentsRequired</code> is <code>true</code> (default value), users don’t have access to the application unless an assignment is created using the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html">CreateApplicationAssignment API</a>. If <code>false</code>, all users have access to the application. If an assignment is created using <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html">CreateApplicationAssignment</a>., the user retains access if <code>AssignmentsRequired</code> is set to <code>true</code>. </p>
    # @param [Hash, Types::PutApplicationAssignmentConfigurationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Boolean] :assignment_required
    #   <p>If <code>AssignmentsRequired</code> is <code>true</code> (default value), users don’t have access to the application unless an assignment is created using the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_CreateApplicationAssignment.html">CreateApplicationAssignment API</a>. If <code>false</code>, all users have access to the application. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     assignment_required: false, # required
    #   }
    #   options = {}
    #   response = client.put_application_assignment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutApplicationAssignmentConfigurationResponse]
    def put_application_assignment_configuration(params = {}, options = {})
      request = build_request(:put_application_assignment_configuration, params)
      request.send_request(options)
    end

    # <p>Adds or updates an authentication method for an application.</p>
    # @param [Hash, Types::PutApplicationAuthenticationMethodRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application with the authentication method to add or update.</p>
    # @option params [String] :authentication_method_type
    #   <p>Specifies the type of the authentication method that you want to add or update.</p>
    # @option params [Types::AuthenticationMethod] :authentication_method
    #   <p>Specifies a structure that describes the authentication method to add or update. The structure type you provide is determined by the <code>AuthenticationMethodType</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     authentication_method_type: "IAM" # One of: ["IAM"], # required
    #     authentication_method: { # required
    #       # One of:
    #       iam: {
    #         actor_policy: ""null"", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_application_authentication_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_application_authentication_method(params = {}, options = {})
      request = build_request(:put_application_authentication_method, params)
      request.send_request(options)
    end

    # <p>Creates a configuration for an application to use grants. Conceptually grants are authorization to request actions related to tokens. This configuration will be used when parties are requesting and receiving tokens during the trusted identity propagation process. For more information on the IAM Identity Center supported grant workflows, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/customermanagedapps-saml2-oauth2.html">SAML 2.0 and OAuth 2.0</a>.</p> <p>A grant is created between your applications and Identity Center instance which enables an application to use specified mechanisms to obtain tokens. These tokens are used by your applications to gain access to Amazon Web Services resources on behalf of users. The following elements are within these exchanges:</p> <ul> <li> <p> <b>Requester</b> - The application requesting access to Amazon Web Services resources.</p> </li> <li> <p> <b>Subject</b> - Typically the user that is requesting access to Amazon Web Services resources.</p> </li> <li> <p> <b>Grant</b> - Conceptually, a grant is authorization to access Amazon Web Services resources. These grants authorize token generation for authenticating access to the requester and for the request to make requests on behalf of the subjects. There are four types of grants:</p> <ul> <li> <p> <b>AuthorizationCode</b> - Allows an application to request authorization through a series of user-agent redirects.</p> </li> <li> <p> <b>JWT bearer </b> - Authorizes an application to exchange a JSON Web Token that came from an external identity provider. To learn more, see <a href="https://datatracker.ietf.org/doc/html/rfc6749">RFC 6479</a>.</p> </li> <li> <p> <b>Refresh token</b> - Enables application to request new access tokens to replace expiring or expired access tokens.</p> </li> <li> <p> <b>Exchange token</b> - A grant that requests tokens from the authorization server by providing a ‘subject’ token with access scope authorizing trusted identity propagation to this application. To learn more, see <a href="https://datatracker.ietf.org/doc/html/rfc8693">RFC 8693</a>.</p> </li> </ul> </li> <li> <p> <b>Authorization server</b> - IAM Identity Center requests tokens.</p> </li> </ul> <p>User credentials are never shared directly within these exchanges. Instead, applications use grants to request access tokens from IAM Identity Center. For more information, see <a href="https://datatracker.ietf.org/doc/html/rfc6749">RFC 6479</a>.</p> <p class="title"> <b>Use cases</b> </p> <ul> <li> <p>Connecting to custom applications.</p> </li> <li> <p>Configuring an Amazon Web Services service to make calls to another Amazon Web Services services using JWT tokens.</p> </li> </ul>
    # @param [Hash, Types::PutApplicationGrantRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application to update.</p>
    # @option params [String] :grant_type
    #   <p>Specifies the type of grant to update.</p>
    # @option params [Types::Grant] :grant
    #   <p>Specifies a structure that describes the grant to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     grant_type: "authorization_code" # One of: ["authorization_code", "refresh_token", "urn:ietf:params:oauth:grant-type:jwt-bearer", "urn:ietf:params:oauth:grant-type:token-exchange"], # required
    #     grant: { # required
    #       # One of:
    #       authorization_code: {
    #         redirect_uris: ["URI"]
    #       },
    #       jwt_bearer: {
    #         authorized_token_issuers: [
    #           {
    #             trusted_token_issuer_arn: "TrustedTokenIssuerArn",
    #             authorized_audiences: ["TokenIssuerAudience"]
    #           }
    #         ]
    #       },
    #       refresh_token: {
    #       },
    #       token_exchange: {
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_application_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_application_grant(params = {}, options = {})
      request = build_request(:put_application_grant, params)
      request.send_request(options)
    end

    # <p>Updates the session configuration for an application in IAM Identity Center.</p> <p>The session configuration determines how users can access an application. This includes whether user background sessions are enabled. User background sessions allow users to start a job on a supported Amazon Web Services managed application without having to remain signed in to an active session while the job runs.</p>
    # @param [Hash, Types::PutApplicationSessionConfigurationRequest] params
    # @option params [String] :application_arn
    #   <p>The Amazon Resource Name (ARN) of the application for which to update the session configuration.</p>
    # @option params [String] :user_background_session_application_status
    #   <p>The status of user background sessions for the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     user_background_session_application_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.put_application_session_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutApplicationSessionConfigurationResponse]
    def put_application_session_configuration(params = {}, options = {})
      request = build_request(:put_application_session_configuration, params)
      request.send_request(options)
    end

    # <p>Attaches an inline policy to a permission set.</p> <note> <p>If the permission set is already referenced by one or more account assignments, you will need to call <code> <a>ProvisionPermissionSet</a> </code> after this action to apply the corresponding IAM policy updates to all assigned accounts.</p> </note>
    # @param [Hash, Types::PutInlinePolicyToPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    # @option params [String] :inline_policy
    #   <p>The inline policy to attach to a <a>PermissionSet</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     inline_policy: "PermissionSetPolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_inline_policy_to_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutInlinePolicyToPermissionSetResponse]
    def put_inline_policy_to_permission_set(params = {}, options = {})
      request = build_request(:put_inline_policy_to_permission_set, params)
      request.send_request(options)
    end

    # <p>Attaches an Amazon Web Services managed or customer managed policy to the specified <a>PermissionSet</a> as a permissions boundary.</p>
    # @param [Hash, Types::PutPermissionsBoundaryToPermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. </p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <code>PermissionSet</code>.</p>
    # @option params [Types::PermissionsBoundary] :permissions_boundary
    #   <p>The permissions boundary that you want to attach to a <code>PermissionSet</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     permissions_boundary: { # required
    #       customer_managed_policy_reference: {
    #         name: "ManagedPolicyName", # required
    #         path: "ManagedPolicyPath"
    #       },
    #       managed_policy_arn: "ManagedPolicyArn"
    #     }
    #   }
    #   options = {}
    #   response = client.put_permissions_boundary_to_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutPermissionsBoundaryToPermissionSetResponse]
    def put_permissions_boundary_to_permission_set(params = {}, options = {})
      request = build_request(:put_permissions_boundary_to_permission_set, params)
      request.send_request(options)
    end

    # <p>Associates a set of tags with a specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource with the tags to be listed.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A set of key-value pairs that are used to manage the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn",
    #     resource_arn: "TaggableResourceArn", # required
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

    # <p>Disassociates a set of tags from a specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource with the tags to be listed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of tags that are attached to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn",
    #     resource_arn: "TaggableResourceArn", # required
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

    # <p>Updates application properties. </p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_arn
    #   <p>Specifies the ARN of the application. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :name
    #   <p>Specifies the updated name for the application.</p>
    # @option params [String] :description
    #   <p>The description of the .</p>
    # @option params [String] :status
    #   <p>Specifies whether the application is enabled or disabled.</p>
    # @option params [Types::UpdateApplicationPortalOptions] :portal_options
    #   <p>A structure that describes the options for the portal associated with an application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_arn: "ApplicationArn", # required
    #     name: "ApplicationNameType",
    #     description: "Description",
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     portal_options: {
    #       sign_in_options: {
    #         origin: "IDENTITY_CENTER" # One of: ["IDENTITY_CENTER", "APPLICATION"], # required
    #         application_url: "ApplicationUrl"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Update the details for the instance of IAM Identity Center that is owned by the Amazon Web Services account.</p>
    # @param [Hash, Types::UpdateInstanceRequest] params
    # @option params [String] :name
    #   <p>Updates the instance name.</p>
    # @option params [String] :instance_arn
    #   <p>The ARN of the instance of IAM Identity Center under which the operation will run. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>Specifies the encryption configuration for your IAM Identity Center instance. You can use this to configure customer managed KMS keys (CMK) or Amazon Web Services owned KMS keys for encrypting your instance data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameType",
    #     instance_arn: "InstanceArn", # required
    #     encryption_configuration: {
    #       key_type: "AWS_OWNED_KMS_KEY" # One of: ["AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateInstanceResponse]
    def update_instance(params = {}, options = {})
      request = build_request(:update_instance, params)
      request.send_request(options)
    end

    # <p>Updates the IAM Identity Center identity store attributes that you can use with the IAM Identity Center instance for attributes-based access control (ABAC). When using an external identity provider as an identity source, you can pass attributes through the SAML assertion as an alternative to configuring attributes from the IAM Identity Center identity store. If a SAML assertion passes any of these attributes, IAM Identity Center replaces the attribute value with the value from the IAM Identity Center identity store. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>IAM Identity Center User Guide</i>.</p>
    # @param [Hash, Types::UpdateInstanceAccessControlAttributeConfigurationRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed.</p>
    # @option params [Types::InstanceAccessControlAttributeConfiguration] :instance_access_control_attribute_configuration
    #   <p>Updates the attributes for your ABAC configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     instance_access_control_attribute_configuration: { # required
    #       access_control_attributes: [ # required
    #         {
    #           key: "AccessControlAttributeKey", # required
    #           value: { # required
    #             source: ["AccessControlAttributeValueSource"], # required
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_instance_access_control_attribute_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateInstanceAccessControlAttributeConfigurationResponse]
    def update_instance_access_control_attribute_configuration(params = {}, options = {})
      request = build_request(:update_instance_access_control_attribute_configuration, params)
      request.send_request(options)
    end

    # <p>Updates an existing permission set.</p>
    # @param [Hash, Types::UpdatePermissionSetRequest] params
    # @option params [String] :instance_arn
    #   <p>The ARN of the IAM Identity Center instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    # @option params [String] :description
    #   <p>The description of the <a>PermissionSet</a>.</p>
    # @option params [String] :session_duration
    #   <p>The length of time that the application user sessions are valid for in the ISO-8601 standard.</p>
    # @option params [String] :relay_state
    #   <p>Used to redirect users within the application during the federation authentication process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_arn: "InstanceArn", # required
    #     permission_set_arn: "PermissionSetArn", # required
    #     description: "PermissionSetDescription",
    #     session_duration: "Duration",
    #     relay_state: "RelayState"
    #   }
    #   options = {}
    #   response = client.update_permission_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePermissionSetResponse]
    def update_permission_set(params = {}, options = {})
      request = build_request(:update_permission_set, params)
      request.send_request(options)
    end

    # <p>Updates the name of the trusted token issuer, or the path of a source attribute or destination attribute for a trusted token issuer configuration.</p> <note> <p>Updating this trusted token issuer configuration might cause users to lose access to any applications that are configured to use the trusted token issuer.</p> </note>
    # @param [Hash, Types::UpdateTrustedTokenIssuerRequest] params
    # @option params [String] :trusted_token_issuer_arn
    #   <p>Specifies the ARN of the trusted token issuer configuration that you want to update.</p>
    # @option params [String] :name
    #   <p>Specifies the updated name to be applied to the trusted token issuer configuration.</p>
    # @option params [Types::TrustedTokenIssuerUpdateConfiguration] :trusted_token_issuer_configuration
    #   <p>Specifies a structure with settings to apply to the specified trusted token issuer. The settings that you can provide are determined by the type of the trusted token issuer that you are updating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trusted_token_issuer_arn: "TrustedTokenIssuerArn", # required
    #     name: "TrustedTokenIssuerName",
    #     trusted_token_issuer_configuration: {
    #       # One of:
    #       oidc_jwt_configuration: {
    #         claim_attribute_path: "ClaimAttributePath",
    #         identity_store_attribute_path: "JMESPath",
    #         jwks_retrieval_option: "OPEN_ID_DISCOVERY" # One of: ["OPEN_ID_DISCOVERY"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_trusted_token_issuer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTrustedTokenIssuerResponse]
    def update_trusted_token_issuer(params = {}, options = {})
      request = build_request(:update_trusted_token_issuer, params)
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
      context[:gem_name] = 'aws-sdk-ssoadmin'
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

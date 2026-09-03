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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:fms)

module Aws::FMS
  # An API client for Aws::FMS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSFMS20180101
    @identifier = :fms

    add_plugin(::Aws::FMS::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::FMS::EndpointProvider)
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

    # <p>Sets a Firewall Manager default administrator account. The Firewall Manager default administrator account can manage third-party firewalls and has full administrative scope that allows administration of all policy types, accounts, organizational units, and Regions. This account must be a member account of the organization in Organizations whose resources you want to protect.</p>
    #          <p>For information about working with Firewall Manager administrator accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/fms-administrators.html">Managing Firewall Manager administrators</a> in the <i>Firewall Manager Developer Guide</i>.</p>
    # @param [Hash, Types::AssociateAdminAccountRequest] params
    # @option params [String] :admin_account
    #   <p>The Amazon Web Services account ID to associate with Firewall Manager as the Firewall Manager
    #         default administrator account. This account must be
    #         a member account of the organization in Organizations whose resources you want to protect.
    #           For more information about Organizations, see
    #           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account: "AWSAccountId", # required
    #   }
    #   options = {}
    #   response = client.associate_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_admin_account(params = {}, options = {})
      request = build_request(:associate_admin_account, params)
      request.send_request(options)
    end

    # <p>Sets the Firewall Manager policy administrator as a tenant administrator of a third-party firewall service. A tenant is an instance of the third-party firewall service that's associated with your Amazon Web Services customer account.</p>
    # @param [Hash, Types::AssociateThirdPartyFirewallRequest] params
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     third_party_firewall: "PALO_ALTO_NETWORKS_CLOUD_NGFW" # One of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW", "FORTIGATE_CLOUD_NATIVE_FIREWALL"], # required
    #   }
    #   options = {}
    #   response = client.associate_third_party_firewall(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     third_party_firewall_status: "ONBOARDING" # One of: ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #   }
    # @return [Types::AssociateThirdPartyFirewallResponse]
    def associate_third_party_firewall(params = {}, options = {})
      request = build_request(:associate_third_party_firewall, params)
      request.send_request(options)
    end

    # <p>Associate resources to a Firewall Manager resource set.</p>
    # @param [Hash, Types::BatchAssociateResourceRequest] params
    # @option params [String] :resource_set_identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    # @option params [Array<String>] :items
    #   <p>The uniform resource identifiers (URIs) of resources that should be associated to the resource set. The URIs must be Amazon Resource Names (ARNs).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set_identifier: "Identifier", # required
    #     items: ["Identifier"], # required
    #   }
    #   options = {}
    #   response = client.batch_associate_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set_identifier: "Identifier", # required
    #     failed_items: [ # required
    #       {
    #         uri: "Identifier",
    #         reason: "NOT_VALID_ARN" # One of: ["NOT_VALID_ARN", "NOT_VALID_PARTITION", "NOT_VALID_REGION", "NOT_VALID_SERVICE", "NOT_VALID_RESOURCE_TYPE", "NOT_VALID_ACCOUNT_ID"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateResourceResponse]
    def batch_associate_resource(params = {}, options = {})
      request = build_request(:batch_associate_resource, params)
      request.send_request(options)
    end

    # <p>Disassociates resources from a Firewall Manager resource set.</p>
    # @param [Hash, Types::BatchDisassociateResourceRequest] params
    # @option params [String] :resource_set_identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    # @option params [Array<String>] :items
    #   <p>The uniform resource identifiers (URI) of resources that should be disassociated from the resource set. The URIs must be Amazon Resource Names (ARNs).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set_identifier: "Identifier", # required
    #     items: ["Identifier"], # required
    #   }
    #   options = {}
    #   response = client.batch_disassociate_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set_identifier: "Identifier", # required
    #     failed_items: [ # required
    #       {
    #         uri: "Identifier",
    #         reason: "NOT_VALID_ARN" # One of: ["NOT_VALID_ARN", "NOT_VALID_PARTITION", "NOT_VALID_REGION", "NOT_VALID_SERVICE", "NOT_VALID_RESOURCE_TYPE", "NOT_VALID_ACCOUNT_ID"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateResourceResponse]
    def batch_disassociate_resource(params = {}, options = {})
      request = build_request(:batch_disassociate_resource, params)
      request.send_request(options)
    end

    # <p>Permanently deletes an Firewall Manager applications list.</p>
    # @param [Hash, Types::DeleteAppsListRequest] params
    # @option params [String] :list_id
    #   <p>The ID of the applications list that you want to delete. You can retrieve this ID from
    #         <code>PutAppsList</code>, <code>ListAppsLists</code>, and <code>GetAppsList</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     list_id: "ListId", # required
    #   }
    #   options = {}
    #   response = client.delete_apps_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_apps_list(params = {}, options = {})
      request = build_request(:delete_apps_list, params)
      request.send_request(options)
    end

    # <p>Deletes an Firewall Manager association with the IAM role and the Amazon Simple
    #       Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.</p>
    # @param [Hash, Types::DeleteNotificationChannelRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_notification_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_notification_channel(params = {}, options = {})
      request = build_request(:delete_notification_channel, params)
      request.send_request(options)
    end

    # <p>Permanently deletes an Firewall Manager policy. </p>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The ID of the policy that you want to delete. You can retrieve this ID from
    #           <code>PutPolicy</code> and <code>ListPolicies</code>.</p>
    # @option params [Boolean] :delete_all_policy_resources
    #   <p>If <code>True</code>, the request performs cleanup according to the policy type. </p>
    #            <p>For WAF and Shield Advanced policies, the cleanup does the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Deletes rule groups created by Firewall Manager</p>
    #               </li>
    #               <li>
    #                  <p>Removes web ACLs from in-scope resources</p>
    #               </li>
    #               <li>
    #                  <p>Deletes web ACLs that contain no rules or rule groups</p>
    #               </li>
    #            </ul>
    #            <p>For security group policies, the cleanup does the following for each security group in
    #         the policy:</p>
    #            <ul>
    #               <li>
    #                  <p>Disassociates the security group from in-scope resources </p>
    #               </li>
    #               <li>
    #                  <p>Deletes the security group if it was created through Firewall Manager and if it's
    #             no longer associated with any resources through another policy</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For security group common policies, even if set to <code>False</code>, Firewall Manager deletes all security groups created by Firewall Manager that aren't associated with any other resources through another policy.</p>
    #            </note>
    #            <p>After the cleanup, in-scope resources are no longer protected by web ACLs in this policy.
    #         Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you
    #         create and accounts that you associate with the policy. When creating the policy, if you
    #         specify that only resources in specific accounts or with specific tags are in scope of the
    #         policy, those accounts and resources are handled by the policy. All others are out of scope.
    #         If you don't specify tags or accounts, all resources are in scope. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     delete_all_policy_resources: false
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Permanently deletes an Firewall Manager protocols list.</p>
    # @param [Hash, Types::DeleteProtocolsListRequest] params
    # @option params [String] :list_id
    #   <p>The ID of the protocols list that you want to delete. You can retrieve this ID from
    #         <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     list_id: "ListId", # required
    #   }
    #   options = {}
    #   response = client.delete_protocols_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_protocols_list(params = {}, options = {})
      request = build_request(:delete_protocols_list, params)
      request.send_request(options)
    end

    # <p>Deletes the specified <a>ResourceSet</a>.</p>
    # @param [Hash, Types::DeleteResourceSetRequest] params
    # @option params [String] :identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Base62Id", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_set(params = {}, options = {})
      request = build_request(:delete_resource_set, params)
      request.send_request(options)
    end

    # <p>Disassociates an Firewall Manager administrator account. To set a different account as an Firewall Manager administrator, submit a <a>PutAdminAccount</a> request. To set an account as a default administrator account, you must submit an <a>AssociateAdminAccount</a> request.</p>
    #          <p>Disassociation of the default administrator account follows the first in, last out principle. If you are the default administrator, all Firewall Manager administrators within the organization must first disassociate their accounts before you can disassociate your account.</p>
    # @param [Hash, Types::DisassociateAdminAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_admin_account(params = {}, options = {})
      request = build_request(:disassociate_admin_account, params)
      request.send_request(options)
    end

    # <p>Disassociates a Firewall Manager policy administrator from a third-party firewall tenant. When you call <code>DisassociateThirdPartyFirewall</code>, the third-party firewall vendor deletes all of the firewalls that are associated with the account.</p>
    # @param [Hash, Types::DisassociateThirdPartyFirewallRequest] params
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     third_party_firewall: "PALO_ALTO_NETWORKS_CLOUD_NGFW" # One of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW", "FORTIGATE_CLOUD_NATIVE_FIREWALL"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_third_party_firewall(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     third_party_firewall_status: "ONBOARDING" # One of: ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #   }
    # @return [Types::DisassociateThirdPartyFirewallResponse]
    def disassociate_third_party_firewall(params = {}, options = {})
      request = build_request(:disassociate_third_party_firewall, params)
      request.send_request(options)
    end

    # <p>Returns the Organizations account that is associated with Firewall Manager
    #       as the Firewall Manager default administrator.</p>
    # @param [Hash, Types::GetAdminAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account: "AWSAccountId",
    #     role_status: "READY" # One of: ["READY", "CREATING", "PENDING_DELETION", "DELETING", "DELETED"]
    #   }
    # @return [Types::GetAdminAccountResponse]
    def get_admin_account(params = {}, options = {})
      request = build_request(:get_admin_account, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified account's administrative scope. The administrative scope defines the resources that an Firewall Manager administrator can manage.</p>
    # @param [Hash, Types::GetAdminScopeRequest] params
    # @option params [String] :admin_account
    #   <p>The administrator account that you want to get the details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account: "AWSAccountId", # required
    #   }
    #   options = {}
    #   response = client.get_admin_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_scope: {
    #       account_scope: {
    #         accounts: ["AWSAccountId"],
    #         all_accounts_enabled: false,
    #         exclude_specified_accounts: false
    #       },
    #       organizational_unit_scope: {
    #         organizational_units: ["OrganizationalUnitId"],
    #         all_organizational_units_enabled: false,
    #         exclude_specified_organizational_units: false
    #       },
    #       region_scope: {
    #         regions: ["AWSRegion"],
    #         all_regions_enabled: false
    #       },
    #       policy_type_scope: {
    #         policy_types: ["WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"]],
    #         all_policy_types_enabled: false
    #       }
    #     },
    #     status: "ONBOARDING" # One of: ["ONBOARDING", "ONBOARDING_COMPLETE", "OFFBOARDING", "OFFBOARDING_COMPLETE"]
    #   }
    # @return [Types::GetAdminScopeResponse]
    def get_admin_scope(params = {}, options = {})
      request = build_request(:get_admin_scope, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Firewall Manager applications list.</p>
    # @param [Hash, Types::GetAppsListRequest] params
    # @option params [String] :list_id
    #   <p>The ID of the Firewall Manager applications list that you want the details for.</p>
    # @option params [Boolean] :default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     list_id: "ListId", # required
    #     default_list: false
    #   }
    #   options = {}
    #   response = client.get_apps_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps_list: {
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       apps_list: [ # required
    #         {
    #           app_name: "ResourceName", # required
    #           protocol: "Protocol", # required
    #           port: 1, # required
    #         }
    #       ],
    #       previous_apps_list: {
    #         "PreviousListVersion" => [
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           }
    #         ]
    #       }
    #     },
    #     apps_list_arn: "ResourceArn"
    #   }
    # @return [Types::GetAppsListResponse]
    def get_apps_list(params = {}, options = {})
      request = build_request(:get_apps_list, params)
      request.send_request(options)
    end

    # <p>Returns detailed compliance information about the specified member account. Details
    #       include resources that are in and out of compliance with the specified policy. </p>
    #          <p>The reasons for resources being considered compliant depend on the Firewall Manager policy type. </p>
    # @param [Hash, Types::GetComplianceDetailRequest] params
    # @option params [String] :policy_id
    #   <p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is
    #         returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>
    # @option params [String] :member_account
    #   <p>The Amazon Web Services account that owns the resources that you want to get the details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     member_account: "AWSAccountId", # required
    #   }
    #   options = {}
    #   response = client.get_compliance_detail(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_compliance_detail: {
    #       policy_owner: "AWSAccountId",
    #       policy_id: "PolicyId",
    #       member_account: "AWSAccountId",
    #       violators: [
    #         {
    #           resource_id: "ResourceId",
    #           violation_reason: "WEB_ACL_MISSING_RULE_GROUP" # One of: ["WEB_ACL_MISSING_RULE_GROUP", "RESOURCE_MISSING_WEB_ACL", "RESOURCE_INCORRECT_WEB_ACL", "RESOURCE_MISSING_SHIELD_PROTECTION", "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION", "RESOURCE_MISSING_SECURITY_GROUP", "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP", "SECURITY_GROUP_UNUSED", "SECURITY_GROUP_REDUNDANT", "FMS_CREATED_SECURITY_GROUP_EDITED", "MISSING_FIREWALL", "MISSING_FIREWALL_SUBNET_IN_AZ", "MISSING_EXPECTED_ROUTE_TABLE", "NETWORK_FIREWALL_POLICY_MODIFIED", "FIREWALL_SUBNET_IS_OUT_OF_SCOPE", "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE", "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE", "UNEXPECTED_FIREWALL_ROUTES", "UNEXPECTED_TARGET_GATEWAY_ROUTES", "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY", "INVALID_ROUTE_CONFIGURATION", "MISSING_TARGET_GATEWAY", "INTERNET_TRAFFIC_NOT_INSPECTED", "BLACK_HOLE_ROUTE_DETECTED", "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET", "RESOURCE_MISSING_DNS_FIREWALL", "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT", "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT", "INVALID_NETWORK_ACL_ENTRY", "WEB_ACL_CONFIGURATION_OR_SCOPE_OF_USE"],
    #           resource_type: "ResourceType",
    #           metadata: {
    #             "LengthBoundedString" => "LengthBoundedString"
    #           }
    #         }
    #       ],
    #       evaluation_limit_exceeded: false,
    #       expired_at: Time.now,
    #       issue_info_map: {
    #         "DependentServiceName" => "DetailedInfo"
    #       }
    #     }
    #   }
    # @return [Types::GetComplianceDetailResponse]
    def get_compliance_detail(params = {}, options = {})
      request = build_request(:get_compliance_detail, params)
      request.send_request(options)
    end

    # <p>Information
    #       about the Amazon Simple Notification Service (SNS) topic that is used to
    #       record Firewall Manager SNS logs.</p>
    # @param [Hash, Types::GetNotificationChannelRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_notification_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sns_topic_arn: "ResourceArn",
    #     sns_role_name: "ResourceArn"
    #   }
    # @return [Types::GetNotificationChannelResponse]
    def get_notification_channel(params = {}, options = {})
      request = build_request(:get_notification_channel, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Firewall Manager policy.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_id: "PolicyId",
    #       policy_name: "ResourceName", # required
    #       policy_update_token: "PolicyUpdateToken",
    #       security_service_policy_data: { # required
    #         type: "WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"], # required
    #         managed_service_data: "ManagedServiceData",
    #         policy_option: {
    #           network_firewall_policy: {
    #             firewall_deployment_model: "CENTRALIZED" # One of: ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           third_party_firewall_policy: {
    #             firewall_deployment_model: "CENTRALIZED" # One of: ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           network_acl_common_policy: {
    #             network_acl_entry_set: { # required
    #               first_entries: [
    #                 {
    #                   icmp_type_code: {
    #                     code: 1,
    #                     type: 1
    #                   },
    #                   protocol: "LengthBoundedString", # required
    #                   port_range: {
    #                     from: 1,
    #                     to: 1
    #                   },
    #                   cidr_block: "LengthBoundedNonEmptyString",
    #                   ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                   rule_action: "allow" # One of: ["allow", "deny"], # required
    #                   egress: false, # required
    #                 }
    #               ],
    #               force_remediate_for_first_entries: false, # required
    #               last_entries: [
    #                 {
    #                   icmp_type_code: {
    #                     code: 1,
    #                     type: 1
    #                   },
    #                   protocol: "LengthBoundedString", # required
    #                   port_range: {
    #                     from: 1,
    #                     to: 1
    #                   },
    #                   cidr_block: "LengthBoundedNonEmptyString",
    #                   ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                   rule_action: "allow" # One of: ["allow", "deny"], # required
    #                   egress: false, # required
    #                 }
    #               ],
    #               force_remediate_for_last_entries: false, # required
    #             }
    #           }
    #         }
    #       },
    #       resource_type: "ResourceType", # required
    #       resource_type_list: ["ResourceType"],
    #       resource_tags: [
    #         {
    #           key: "ResourceTagKey", # required
    #           value: "ResourceTagValue"
    #         }
    #       ],
    #       exclude_resource_tags: false, # required
    #       remediation_enabled: false, # required
    #       delete_unused_fm_managed_resources: false,
    #       include_map: {
    #         "CustomerPolicyScopeIdType" => ["CustomerPolicyScopeId"]
    #       },
    #       exclude_map: {
    #         "CustomerPolicyScopeIdType" => ["CustomerPolicyScopeId"]
    #       },
    #       resource_set_ids: ["Base62Id"],
    #       policy_description: "ResourceDescription",
    #       policy_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"],
    #       resource_tag_logical_operator: "AND" # One of: ["AND", "OR"]
    #     },
    #     policy_arn: "ResourceArn"
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>If you created a Shield Advanced policy, returns policy-level attack summary information
    #          in the event of a potential DDoS attack. Other policy types are currently unsupported.</p>
    # @param [Hash, Types::GetProtectionStatusRequest] params
    # @option params [String] :policy_id
    #   <p>The ID of the policy for which you want to get the attack information.</p>
    # @option params [String] :member_account_id
    #   <p>The Amazon Web Services account that is in scope of the policy that you want to get the details
    #            for.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #             request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #            request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more objects than the number that you specify
    #            for <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the response, which you can use to retrieve another group of
    #            objects. For the second and subsequent <code>GetProtectionStatus</code> requests, specify the value of <code>NextToken</code>
    #            from the previous response to get information about another batch of objects.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the number of objects that you want Firewall Manager to return for this request. If you have more
    #           objects than the number that you specify for <code>MaxResults</code>, the response includes a
    #            <code>NextToken</code> value that you can use to get another batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     member_account_id: "AWSAccountId",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_protection_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_account_id: "AWSAccountId",
    #     service_type: "WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"],
    #     data: "ProtectionData",
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::GetProtectionStatusResponse]
    def get_protection_status(params = {}, options = {})
      request = build_request(:get_protection_status, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified Firewall Manager protocols list.</p>
    # @param [Hash, Types::GetProtocolsListRequest] params
    # @option params [String] :list_id
    #   <p>The ID of the Firewall Manager protocols list that you want the details for.</p>
    # @option params [Boolean] :default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     list_id: "ListId", # required
    #     default_list: false
    #   }
    #   options = {}
    #   response = client.get_protocols_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protocols_list: {
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       protocols_list: ["Protocol"], # required
    #       previous_protocols_list: {
    #         "PreviousListVersion" => ["Protocol"]
    #       }
    #     },
    #     protocols_list_arn: "ResourceArn"
    #   }
    # @return [Types::GetProtocolsListResponse]
    def get_protocols_list(params = {}, options = {})
      request = build_request(:get_protocols_list, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific resource set.</p>
    # @param [Hash, Types::GetResourceSetRequest] params
    # @option params [String] :identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "Base62Id", # required
    #   }
    #   options = {}
    #   response = client.get_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set: { # required
    #       id: "Base62Id",
    #       name: "Name", # required
    #       description: "Description",
    #       update_token: "UpdateToken",
    #       resource_type_list: ["ResourceType"], # required
    #       last_update_time: Time.now,
    #       resource_set_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"]
    #     },
    #     resource_set_arn: "ResourceArn", # required
    #   }
    # @return [Types::GetResourceSetResponse]
    def get_resource_set(params = {}, options = {})
      request = build_request(:get_resource_set, params)
      request.send_request(options)
    end

    # <p>The onboarding status of a Firewall Manager admin account to third-party firewall vendor tenant.</p>
    # @param [Hash, Types::GetThirdPartyFirewallAssociationStatusRequest] params
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     third_party_firewall: "PALO_ALTO_NETWORKS_CLOUD_NGFW" # One of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW", "FORTIGATE_CLOUD_NATIVE_FIREWALL"], # required
    #   }
    #   options = {}
    #   response = client.get_third_party_firewall_association_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     third_party_firewall_status: "ONBOARDING" # One of: ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"],
    #     marketplace_onboarding_status: "NO_SUBSCRIPTION" # One of: ["NO_SUBSCRIPTION", "NOT_COMPLETE", "COMPLETE"]
    #   }
    # @return [Types::GetThirdPartyFirewallAssociationStatusResponse]
    def get_third_party_firewall_association_status(params = {}, options = {})
      request = build_request(:get_third_party_firewall_association_status, params)
      request.send_request(options)
    end

    # <p>Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.</p>
    # @param [Hash, Types::GetViolationDetailsRequest] params
    # @option params [String] :policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for. You can get violation details for the following policy types:</p>
    #            <ul>
    #               <li>
    #                  <p>WAF</p>
    #               </li>
    #               <li>
    #                  <p>DNS Firewall</p>
    #               </li>
    #               <li>
    #                  <p>Imported Network Firewall</p>
    #               </li>
    #               <li>
    #                  <p>Network Firewall</p>
    #               </li>
    #               <li>
    #                  <p>Security group content audit</p>
    #               </li>
    #               <li>
    #                  <p>Network ACL</p>
    #               </li>
    #               <li>
    #                  <p>Third-party firewall</p>
    #               </li>
    #            </ul>
    # @option params [String] :member_account
    #   <p>The Amazon Web Services account ID that you want the details for.</p>
    # @option params [String] :resource_id
    #   <p>The ID of the resource that has violations.</p>
    # @option params [String] :resource_type
    #   <p>The resource type. This is in the format shown in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #         Supported resource types are:
    #         <code>AWS::WAFv2::WebACL</code>,
    #         <code>AWS::EC2::Instance</code>,
    #         <code>AWS::EC2::NetworkInterface</code>,
    #         <code>AWS::EC2::SecurityGroup</code>,
    #         <code>AWS::NetworkFirewall::FirewallPolicy</code>, and
    #         <code>AWS::EC2::Subnet</code>.
    #      </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     member_account: "AWSAccountId", # required
    #     resource_id: "ResourceId", # required
    #     resource_type: "ResourceType", # required
    #   }
    #   options = {}
    #   response = client.get_violation_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     violation_detail: {
    #       policy_id: "PolicyId", # required
    #       member_account: "AWSAccountId", # required
    #       resource_id: "ResourceId", # required
    #       resource_type: "ResourceType", # required
    #       resource_violations: [ # required
    #         {
    #           aws_vpc_security_group_violation: {
    #             violation_target: "ViolationTarget",
    #             violation_target_description: "LengthBoundedString",
    #             partial_matches: [
    #               {
    #                 reference: "ReferenceRule",
    #                 target_violation_reasons: ["TargetViolationReason"]
    #               }
    #             ],
    #             possible_security_group_remediation_actions: [
    #               {
    #                 remediation_action_type: "REMOVE" # One of: ["REMOVE", "MODIFY"],
    #                 description: "RemediationActionDescription",
    #                 remediation_result: {
    #                   ipv4_range: "CIDR",
    #                   ipv6_range: "CIDR",
    #                   prefix_list_id: "ResourceId",
    #                   protocol: "LengthBoundedString",
    #                   from_port: 1,
    #                   to_port: 1
    #                 },
    #                 is_default_action: false
    #               }
    #             ]
    #           },
    #           aws_ec2_network_interface_violation: {
    #             violation_target: "ViolationTarget",
    #             violating_security_groups: ["ResourceId"]
    #           },
    #           aws_ec2_instance_violation: {
    #             violation_target: "ViolationTarget",
    #             aws_ec2_network_interface_violations: [
    #               {
    #                 violation_target: "ViolationTarget",
    #                 violating_security_groups: ["ResourceId"]
    #               }
    #             ]
    #           },
    #           network_firewall_missing_firewall_violation: {
    #             violation_target: "ViolationTarget",
    #             vpc: "ResourceId",
    #             availability_zone: "LengthBoundedString",
    #             target_violation_reason: "TargetViolationReason"
    #           },
    #           network_firewall_missing_subnet_violation: {
    #             violation_target: "ViolationTarget",
    #             vpc: "ResourceId",
    #             availability_zone: "LengthBoundedString",
    #             target_violation_reason: "TargetViolationReason"
    #           },
    #           network_firewall_missing_expected_rt_violation: {
    #             violation_target: "ViolationTarget",
    #             vpc: "ResourceId",
    #             availability_zone: "LengthBoundedString",
    #             current_route_table: "ResourceId",
    #             expected_route_table: "ResourceId"
    #           },
    #           network_firewall_policy_modified_violation: {
    #             violation_target: "ViolationTarget",
    #             current_policy_description: {
    #               stateless_rule_groups: [
    #                 {
    #                   rule_group_name: "NetworkFirewallResourceName",
    #                   resource_id: "ResourceId",
    #                   priority: 1
    #                 }
    #               ],
    #               stateless_default_actions: ["NetworkFirewallAction"],
    #               stateless_fragment_default_actions: ["NetworkFirewallAction"],
    #               stateless_custom_actions: ["NetworkFirewallAction"],
    #               stateful_rule_groups: [
    #                 {
    #                   rule_group_name: "NetworkFirewallResourceName",
    #                   resource_id: "ResourceId",
    #                   priority: 1,
    #                   override: {
    #                     action: "DROP_TO_ALERT" # One of: ["DROP_TO_ALERT"]
    #                   }
    #                 }
    #               ],
    #               stateful_default_actions: ["NetworkFirewallAction"],
    #               stateful_engine_options: {
    #                 rule_order: "STRICT_ORDER" # One of: ["STRICT_ORDER", "DEFAULT_ACTION_ORDER"],
    #                 stream_exception_policy: "DROP" # One of: ["DROP", "CONTINUE", "REJECT", "FMS_IGNORE"]
    #               }
    #             },
    #             expected_policy_description: {
    #               stateless_rule_groups: [
    #                 {
    #                   rule_group_name: "NetworkFirewallResourceName",
    #                   resource_id: "ResourceId",
    #                   priority: 1
    #                 }
    #               ],
    #               stateless_default_actions: ["NetworkFirewallAction"],
    #               stateless_fragment_default_actions: ["NetworkFirewallAction"],
    #               stateless_custom_actions: ["NetworkFirewallAction"],
    #               stateful_rule_groups: [
    #                 {
    #                   rule_group_name: "NetworkFirewallResourceName",
    #                   resource_id: "ResourceId",
    #                   priority: 1,
    #                   override: {
    #                     action: "DROP_TO_ALERT" # One of: ["DROP_TO_ALERT"]
    #                   }
    #                 }
    #               ],
    #               stateful_default_actions: ["NetworkFirewallAction"],
    #               stateful_engine_options: {
    #                 rule_order: "STRICT_ORDER" # One of: ["STRICT_ORDER", "DEFAULT_ACTION_ORDER"],
    #                 stream_exception_policy: "DROP" # One of: ["DROP", "CONTINUE", "REJECT", "FMS_IGNORE"]
    #               }
    #             }
    #           },
    #           network_firewall_internet_traffic_not_inspected_violation: {
    #             subnet_id: "ResourceId",
    #             subnet_availability_zone: "LengthBoundedString",
    #             route_table_id: "ResourceId",
    #             violating_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             is_route_table_used_in_different_az: false,
    #             current_firewall_subnet_route_table: "ResourceId",
    #             expected_firewall_endpoint: "ResourceId",
    #             firewall_subnet_id: "ResourceId",
    #             expected_firewall_subnet_routes: [
    #               {
    #                 ip_v4_cidr: "CIDR",
    #                 prefix_list_id: "CIDR",
    #                 ip_v6_cidr: "CIDR",
    #                 contributing_subnets: ["ResourceId"],
    #                 allowed_targets: ["LengthBoundedString"],
    #                 route_table_id: "ResourceId"
    #               }
    #             ],
    #             actual_firewall_subnet_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             internet_gateway_id: "ResourceId",
    #             current_internet_gateway_route_table: "ResourceId",
    #             expected_internet_gateway_routes: [
    #               {
    #                 ip_v4_cidr: "CIDR",
    #                 prefix_list_id: "CIDR",
    #                 ip_v6_cidr: "CIDR",
    #                 contributing_subnets: ["ResourceId"],
    #                 allowed_targets: ["LengthBoundedString"],
    #                 route_table_id: "ResourceId"
    #               }
    #             ],
    #             actual_internet_gateway_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             vpc_id: "ResourceId"
    #           },
    #           network_firewall_invalid_route_configuration_violation: {
    #             affected_subnets: ["ResourceId"],
    #             route_table_id: "ResourceId",
    #             is_route_table_used_in_different_az: false,
    #             violating_route: {
    #               destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #               target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #               destination: "LengthBoundedString",
    #               target: "LengthBoundedString"
    #             },
    #             current_firewall_subnet_route_table: "ResourceId",
    #             expected_firewall_endpoint: "ResourceId",
    #             actual_firewall_endpoint: "ResourceId",
    #             expected_firewall_subnet_id: "ResourceId",
    #             actual_firewall_subnet_id: "ResourceId",
    #             expected_firewall_subnet_routes: [
    #               {
    #                 ip_v4_cidr: "CIDR",
    #                 prefix_list_id: "CIDR",
    #                 ip_v6_cidr: "CIDR",
    #                 contributing_subnets: ["ResourceId"],
    #                 allowed_targets: ["LengthBoundedString"],
    #                 route_table_id: "ResourceId"
    #               }
    #             ],
    #             actual_firewall_subnet_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             internet_gateway_id: "ResourceId",
    #             current_internet_gateway_route_table: "ResourceId",
    #             expected_internet_gateway_routes: [
    #               {
    #                 ip_v4_cidr: "CIDR",
    #                 prefix_list_id: "CIDR",
    #                 ip_v6_cidr: "CIDR",
    #                 contributing_subnets: ["ResourceId"],
    #                 allowed_targets: ["LengthBoundedString"],
    #                 route_table_id: "ResourceId"
    #               }
    #             ],
    #             actual_internet_gateway_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             vpc_id: "ResourceId"
    #           },
    #           network_firewall_black_hole_route_detected_violation: {
    #             violation_target: "ViolationTarget",
    #             route_table_id: "ResourceId",
    #             vpc_id: "ResourceId",
    #             violating_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ]
    #           },
    #           network_firewall_unexpected_firewall_routes_violation: {
    #             firewall_subnet_id: "ResourceId",
    #             violating_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             route_table_id: "ResourceId",
    #             firewall_endpoint: "ResourceId",
    #             vpc_id: "ResourceId"
    #           },
    #           network_firewall_unexpected_gateway_routes_violation: {
    #             gateway_id: "ResourceId",
    #             violating_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             route_table_id: "ResourceId",
    #             vpc_id: "ResourceId"
    #           },
    #           network_firewall_missing_expected_routes_violation: {
    #             violation_target: "ViolationTarget",
    #             expected_routes: [
    #               {
    #                 ip_v4_cidr: "CIDR",
    #                 prefix_list_id: "CIDR",
    #                 ip_v6_cidr: "CIDR",
    #                 contributing_subnets: ["ResourceId"],
    #                 allowed_targets: ["LengthBoundedString"],
    #                 route_table_id: "ResourceId"
    #               }
    #             ],
    #             vpc_id: "ResourceId"
    #           },
    #           dns_rule_group_priority_conflict_violation: {
    #             violation_target: "ViolationTarget",
    #             violation_target_description: "LengthBoundedString",
    #             conflicting_priority: 1,
    #             conflicting_policy_id: "PolicyId",
    #             unavailable_priorities: [1]
    #           },
    #           dns_duplicate_rule_group_violation: {
    #             violation_target: "ViolationTarget",
    #             violation_target_description: "LengthBoundedString"
    #           },
    #           dns_rule_group_limit_exceeded_violation: {
    #             violation_target: "ViolationTarget",
    #             violation_target_description: "LengthBoundedString",
    #             number_of_rule_groups_already_associated: 1
    #           },
    #           firewall_subnet_is_out_of_scope_violation: {
    #             firewall_subnet_id: "ResourceId",
    #             vpc_id: "ResourceId",
    #             subnet_availability_zone: "LengthBoundedString",
    #             subnet_availability_zone_id: "LengthBoundedString",
    #             vpc_endpoint_id: "ResourceId"
    #           },
    #           route_has_out_of_scope_endpoint_violation: {
    #             subnet_id: "ResourceId",
    #             vpc_id: "ResourceId",
    #             route_table_id: "ResourceId",
    #             violating_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             subnet_availability_zone: "LengthBoundedString",
    #             subnet_availability_zone_id: "LengthBoundedString",
    #             current_firewall_subnet_route_table: "ResourceId",
    #             firewall_subnet_id: "ResourceId",
    #             firewall_subnet_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ],
    #             internet_gateway_id: "ResourceId",
    #             current_internet_gateway_route_table: "ResourceId",
    #             internet_gateway_routes: [
    #               {
    #                 destination_type: "IPV4" # One of: ["IPV4", "IPV6", "PREFIX_LIST"],
    #                 target_type: "GATEWAY" # One of: ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"],
    #                 destination: "LengthBoundedString",
    #                 target: "LengthBoundedString"
    #               }
    #             ]
    #           },
    #           third_party_firewall_missing_firewall_violation: {
    #             violation_target: "ViolationTarget",
    #             vpc: "ResourceId",
    #             availability_zone: "LengthBoundedString",
    #             target_violation_reason: "TargetViolationReason"
    #           },
    #           third_party_firewall_missing_subnet_violation: {
    #             violation_target: "ViolationTarget",
    #             vpc: "ResourceId",
    #             availability_zone: "LengthBoundedString",
    #             target_violation_reason: "TargetViolationReason"
    #           },
    #           third_party_firewall_missing_expected_route_table_violation: {
    #             violation_target: "ViolationTarget",
    #             vpc: "ResourceId",
    #             availability_zone: "LengthBoundedString",
    #             current_route_table: "ResourceId",
    #             expected_route_table: "ResourceId"
    #           },
    #           firewall_subnet_missing_vpc_endpoint_violation: {
    #             firewall_subnet_id: "ResourceId",
    #             vpc_id: "ResourceId",
    #             subnet_availability_zone: "LengthBoundedString",
    #             subnet_availability_zone_id: "LengthBoundedString"
    #           },
    #           invalid_network_acl_entries_violation: {
    #             vpc: "ResourceId",
    #             subnet: "ResourceId",
    #             subnet_availability_zone: "LengthBoundedString",
    #             current_associated_network_acl: "ResourceId",
    #             entry_violations: [
    #               {
    #                 expected_entry: {
    #                   entry_detail: {
    #                     icmp_type_code: {
    #                       code: 1,
    #                       type: 1
    #                     },
    #                     protocol: "LengthBoundedString", # required
    #                     port_range: {
    #                       from: 1,
    #                       to: 1
    #                     },
    #                     cidr_block: "LengthBoundedNonEmptyString",
    #                     ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                     rule_action: "allow" # One of: ["allow", "deny"], # required
    #                     egress: false, # required
    #                   },
    #                   entry_rule_number: 1,
    #                   entry_type: "FMS_MANAGED_FIRST_ENTRY" # One of: ["FMS_MANAGED_FIRST_ENTRY", "FMS_MANAGED_LAST_ENTRY", "CUSTOM_ENTRY"]
    #                 },
    #                 expected_evaluation_order: "LengthBoundedString",
    #                 actual_evaluation_order: "LengthBoundedString",
    #                 entry_at_expected_evaluation_order: {
    #                   entry_detail: {
    #                     icmp_type_code: {
    #                       code: 1,
    #                       type: 1
    #                     },
    #                     protocol: "LengthBoundedString", # required
    #                     port_range: {
    #                       from: 1,
    #                       to: 1
    #                     },
    #                     cidr_block: "LengthBoundedNonEmptyString",
    #                     ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                     rule_action: "allow" # One of: ["allow", "deny"], # required
    #                     egress: false, # required
    #                   },
    #                   entry_rule_number: 1,
    #                   entry_type: "FMS_MANAGED_FIRST_ENTRY" # One of: ["FMS_MANAGED_FIRST_ENTRY", "FMS_MANAGED_LAST_ENTRY", "CUSTOM_ENTRY"]
    #                 },
    #                 entries_with_conflicts: [
    #                   {
    #                     entry_detail: {
    #                       icmp_type_code: {
    #                         code: 1,
    #                         type: 1
    #                       },
    #                       protocol: "LengthBoundedString", # required
    #                       port_range: {
    #                         from: 1,
    #                         to: 1
    #                       },
    #                       cidr_block: "LengthBoundedNonEmptyString",
    #                       ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                       rule_action: "allow" # One of: ["allow", "deny"], # required
    #                       egress: false, # required
    #                     },
    #                     entry_rule_number: 1,
    #                     entry_type: "FMS_MANAGED_FIRST_ENTRY" # One of: ["FMS_MANAGED_FIRST_ENTRY", "FMS_MANAGED_LAST_ENTRY", "CUSTOM_ENTRY"]
    #                   }
    #                 ],
    #                 entry_violation_reasons: ["MISSING_EXPECTED_ENTRY" # One of: ["MISSING_EXPECTED_ENTRY", "INCORRECT_ENTRY_ORDER", "ENTRY_CONFLICT"]]
    #               }
    #             ]
    #           },
    #           possible_remediation_actions: {
    #             description: "LengthBoundedString",
    #             actions: [
    #               {
    #                 description: "LengthBoundedString",
    #                 ordered_remediation_actions: [ # required
    #                   {
    #                     remediation_action: {
    #                       description: "LengthBoundedString",
    #                       ec2_create_route_action: {
    #                         description: "LengthBoundedString",
    #                         destination_cidr_block: "CIDR",
    #                         destination_prefix_list_id: "ResourceId",
    #                         destination_ipv6_cidr_block: "CIDR",
    #                         vpc_endpoint_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         gateway_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         route_table_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       ec2_replace_route_action: {
    #                         description: "LengthBoundedString",
    #                         destination_cidr_block: "CIDR",
    #                         destination_prefix_list_id: "ResourceId",
    #                         destination_ipv6_cidr_block: "CIDR",
    #                         gateway_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         route_table_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       ec2_delete_route_action: {
    #                         description: "LengthBoundedString",
    #                         destination_cidr_block: "CIDR",
    #                         destination_prefix_list_id: "ResourceId",
    #                         destination_ipv6_cidr_block: "CIDR",
    #                         route_table_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       ec2_copy_route_table_action: {
    #                         description: "LengthBoundedString",
    #                         vpc_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         route_table_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       ec2_replace_route_table_association_action: {
    #                         description: "LengthBoundedString",
    #                         association_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         route_table_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       ec2_associate_route_table_action: {
    #                         description: "LengthBoundedString",
    #                         route_table_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         subnet_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         gateway_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       ec2_create_route_table_action: {
    #                         description: "LengthBoundedString",
    #                         vpc_id: { # required
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         }
    #                       },
    #                       fms_policy_update_firewall_creation_config_action: {
    #                         description: "LengthBoundedString",
    #                         firewall_creation_config: "ManagedServiceData"
    #                       },
    #                       create_network_acl_action: {
    #                         description: "LengthBoundedString",
    #                         vpc: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         fms_can_remediate: false
    #                       },
    #                       replace_network_acl_association_action: {
    #                         description: "LengthBoundedString",
    #                         association_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         network_acl_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         fms_can_remediate: false
    #                       },
    #                       create_network_acl_entries_action: {
    #                         description: "LengthBoundedString",
    #                         network_acl_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         network_acl_entries_to_be_created: [
    #                           {
    #                             entry_detail: {
    #                               icmp_type_code: {
    #                                 code: 1,
    #                                 type: 1
    #                               },
    #                               protocol: "LengthBoundedString", # required
    #                               port_range: {
    #                                 from: 1,
    #                                 to: 1
    #                               },
    #                               cidr_block: "LengthBoundedNonEmptyString",
    #                               ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                               rule_action: "allow" # One of: ["allow", "deny"], # required
    #                               egress: false, # required
    #                             },
    #                             entry_rule_number: 1,
    #                             entry_type: "FMS_MANAGED_FIRST_ENTRY" # One of: ["FMS_MANAGED_FIRST_ENTRY", "FMS_MANAGED_LAST_ENTRY", "CUSTOM_ENTRY"]
    #                           }
    #                         ],
    #                         fms_can_remediate: false
    #                       },
    #                       delete_network_acl_entries_action: {
    #                         description: "LengthBoundedString",
    #                         network_acl_id: {
    #                           resource_id: "ResourceId",
    #                           description: "LengthBoundedString"
    #                         },
    #                         network_acl_entries_to_be_deleted: [
    #                           {
    #                             entry_detail: {
    #                               icmp_type_code: {
    #                                 code: 1,
    #                                 type: 1
    #                               },
    #                               protocol: "LengthBoundedString", # required
    #                               port_range: {
    #                                 from: 1,
    #                                 to: 1
    #                               },
    #                               cidr_block: "LengthBoundedNonEmptyString",
    #                               ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                               rule_action: "allow" # One of: ["allow", "deny"], # required
    #                               egress: false, # required
    #                             },
    #                             entry_rule_number: 1,
    #                             entry_type: "FMS_MANAGED_FIRST_ENTRY" # One of: ["FMS_MANAGED_FIRST_ENTRY", "FMS_MANAGED_LAST_ENTRY", "CUSTOM_ENTRY"]
    #                           }
    #                         ],
    #                         fms_can_remediate: false
    #                       }
    #                     },
    #                     order: 1
    #                   }
    #                 ],
    #                 is_default_action: false
    #               }
    #             ]
    #           },
    #           web_acl_has_incompatible_configuration_violation: {
    #             web_acl_arn: "ResourceArn",
    #             description: "LengthBoundedString"
    #           },
    #           web_acl_has_out_of_scope_resources_violation: {
    #             web_acl_arn: "ResourceArn",
    #             out_of_scope_resource_list: ["ResourceArn"]
    #           }
    #         }
    #       ],
    #       resource_tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       resource_description: "LengthBoundedString"
    #     }
    #   }
    # @return [Types::GetViolationDetailsResponse]
    def get_violation_details(params = {}, options = {})
      request = build_request(:get_violation_details, params)
      request.send_request(options)
    end

    # <p>Returns a <code>AdminAccounts</code> object that lists the Firewall Manager administrators within the organization that are onboarded to Firewall Manager by <a>AssociateAdminAccount</a>.</p>
    #          <p>This operation can be called only from the organization's management account.</p>
    # @param [Hash, Types::ListAdminAccountsForOrganizationRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_admin_accounts_for_organization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_accounts: [
    #       {
    #         admin_account: "AWSAccountId",
    #         default_admin: false,
    #         status: "ONBOARDING" # One of: ["ONBOARDING", "ONBOARDING_COMPLETE", "OFFBOARDING", "OFFBOARDING_COMPLETE"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAdminAccountsForOrganizationResponse]
    def list_admin_accounts_for_organization(params = {}, options = {})
      request = build_request(:list_admin_accounts_for_organization, params)
      request.send_request(options)
    end

    # <p>Lists the accounts that are managing the specified Organizations member account. This is useful for any member account so that they can view the accounts who are managing their account. This operation only returns the managing administrators that have the requested account within their <a>AdminScope</a>.</p>
    # @param [Hash, Types::ListAdminsManagingAccountRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_admins_managing_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_accounts: ["AWSAccountId"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAdminsManagingAccountResponse]
    def list_admins_managing_account(params = {}, options = {})
      request = build_request(:list_admins_managing_account, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>AppsListDataSummary</code> objects.</p>
    # @param [Hash, Types::ListAppsListsRequest] params
    # @option params [Boolean] :default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     default_lists: false,
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_apps_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps_lists: [
    #       {
    #         list_arn: "ResourceArn",
    #         list_id: "ListId",
    #         list_name: "ResourceName",
    #         apps_list: [
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAppsListsResponse]
    def list_apps_lists(params = {}, options = {})
      request = build_request(:list_apps_lists, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>PolicyComplianceStatus</code> objects. Use
    #         <code>PolicyComplianceStatus</code> to get a summary of which member accounts are protected
    #       by the specified policy. </p>
    # @param [Hash, Types::ListComplianceStatusRequest] params
    # @option params [String] :policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicyComplianceStatus</code> objects.
    #         For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicyComplianceStatus</code> objects.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want
    #         Firewall Manager to return for this request. If you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_id: "PolicyId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_compliance_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_compliance_status_list: [
    #       {
    #         policy_owner: "AWSAccountId",
    #         policy_id: "PolicyId",
    #         policy_name: "ResourceName",
    #         member_account: "AWSAccountId",
    #         evaluation_results: [
    #           {
    #             compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"],
    #             violator_count: 1,
    #             evaluation_limit_exceeded: false
    #           }
    #         ],
    #         last_updated: Time.now,
    #         issue_info_map: {
    #           "DependentServiceName" => "DetailedInfo"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListComplianceStatusResponse]
    def list_compliance_status(params = {}, options = {})
      request = build_request(:list_compliance_status, params)
      request.send_request(options)
    end

    # <p>Returns an array of resources in the organization's accounts that are available to be associated with a resource set.</p>
    # @param [Hash, Types::ListDiscoveredResourcesRequest] params
    # @option params [Array<String>] :member_account_ids
    #   <p>The Amazon Web Services account IDs to discover resources in. Only one account is supported per request. The account must be a member of your organization.</p>
    # @option params [String] :resource_type
    #   <p>The type of resources to discover.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     member_account_ids: ["AWSAccountId"], # required
    #     resource_type: "ResourceType", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_discovered_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         uri: "Identifier",
    #         account_id: "AWSAccountId",
    #         type: "ResourceType",
    #         name: "ResourceName"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDiscoveredResourcesResponse]
    def list_discovered_resources(params = {}, options = {})
      request = build_request(:list_discovered_resources, params)
      request.send_request(options)
    end

    # <p>Returns a <code>MemberAccounts</code> object that lists the member accounts in the
    #       administrator's Amazon Web Services organization.</p>
    #          <p>Either an Firewall Manager administrator or the organization's management account can make this request.</p>
    # @param [Hash, Types::ListMemberAccountsRequest] params
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the
    #         number that you specify for <code>MaxResults</code>, Firewall Manager returns a
    #           <code>NextToken</code> value in the response that allows you to list another group of IDs.
    #         For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the
    #         value of <code>NextToken</code> from the previous response to get information about another
    #         batch of member account IDs.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the number of member account IDs that you want Firewall Manager to return
    #         for this request. If you have more IDs than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of member account IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_member_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_accounts: ["AWSAccountId"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListMemberAccountsResponse]
    def list_member_accounts(params = {}, options = {})
      request = build_request(:list_member_accounts, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>PolicySummary</code> objects.</p>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicySummary</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicySummary</code> objects. For the
    #         second and subsequent <code>ListPolicies</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicySummary</code> objects.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the number of <code>PolicySummary</code> objects that you want Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than
    #         the number that you specify for <code>MaxResults</code>, the response includes a
    #           <code>NextToken</code> value that you can use to get another batch of
    #           <code>PolicySummary</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_list: [
    #       {
    #         policy_arn: "ResourceArn",
    #         policy_id: "PolicyId",
    #         policy_name: "ResourceName",
    #         resource_type: "ResourceType",
    #         security_service_type: "WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"],
    #         remediation_enabled: false,
    #         delete_unused_fm_managed_resources: false,
    #         policy_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>ProtocolsListDataSummary</code> objects.</p>
    # @param [Hash, Types::ListProtocolsListsRequest] params
    # @option params [Boolean] :default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     default_lists: false,
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_protocols_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protocols_lists: [
    #       {
    #         list_arn: "ResourceArn",
    #         list_id: "ListId",
    #         list_name: "ResourceName",
    #         protocols_list: ["Protocol"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProtocolsListsResponse]
    def list_protocols_lists(params = {}, options = {})
      request = build_request(:list_protocols_lists, params)
      request.send_request(options)
    end

    # <p>Returns an array of resources that are currently associated to a resource set.</p>
    # @param [Hash, Types::ListResourceSetResourcesRequest] params
    # @option params [String] :identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_resource_set_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         uri: "Identifier", # required
    #         account_id: "AWSAccountId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListResourceSetResourcesResponse]
    def list_resource_set_resources(params = {}, options = {})
      request = build_request(:list_resource_set_resources, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>ResourceSetSummary</code> objects.</p>
    # @param [Hash, Types::ListResourceSetsRequest] params
    # @option params [String] :next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_sets: [
    #       {
    #         id: "Base62Id",
    #         name: "Name",
    #         description: "Description",
    #         last_update_time: Time.now,
    #         resource_set_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListResourceSetsResponse]
    def list_resource_sets(params = {}, options = {})
      request = build_request(:list_resource_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of tags for the specified Amazon Web Services resource.   </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
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

    # <p>Retrieves a list of all of the third-party firewall policies that are associated with the third-party firewall administrator's account.</p>
    # @param [Hash, Types::ListThirdPartyFirewallFirewallPoliciesRequest] params
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    # @option params [String] :next_token
    #   <p>If the previous response included a <code>NextToken</code> element, the specified third-party firewall vendor is associated with more
    #   third-party firewall policies. To get more third-party firewall policies, submit another <code>ListThirdPartyFirewallFirewallPoliciesRequest</code> request.</p>
    #            <p>
    #     For the value of <code>NextToken</code>, specify the value of <code>NextToken</code> from the previous response.
    #     If the previous response didn't include a <code>NextToken</code> element, there are no more third-party firewall policies to
    #     get.
    #   </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of third-party firewall policies that you want Firewall Manager to return. If
    #   the specified third-party firewall vendor is associated with more than <code>MaxResults</code> firewall policies, the response includes a
    #   <code>NextToken</code> element. <code>NextToken</code> contains an encrypted token that identifies the first third-party firewall policies
    #   that Firewall Manager will return if you submit another request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     third_party_firewall: "PALO_ALTO_NETWORKS_CLOUD_NGFW" # One of: ["PALO_ALTO_NETWORKS_CLOUD_NGFW", "FORTIGATE_CLOUD_NATIVE_FIREWALL"], # required
    #     next_token: "PaginationToken",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_third_party_firewall_firewall_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     third_party_firewall_firewall_policies: [
    #       {
    #         firewall_policy_id: "FirewallPolicyId",
    #         firewall_policy_name: "FirewallPolicyName"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListThirdPartyFirewallFirewallPoliciesResponse]
    def list_third_party_firewall_firewall_policies(params = {}, options = {})
      request = build_request(:list_third_party_firewall_firewall_policies, params)
      request.send_request(options)
    end

    # <p>Creates or updates an Firewall Manager administrator account. The account must be a member of the organization that was onboarded to Firewall Manager by <a>AssociateAdminAccount</a>. Only the organization's management account can create an Firewall Manager administrator account. When you create an Firewall Manager administrator account, the service checks to see if the account is already a delegated administrator within Organizations. If the account isn't a delegated administrator, Firewall Manager calls Organizations to delegate the account within Organizations. For more information about administrator accounts within Organizations, see
    #         <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.</p>
    # @param [Hash, Types::PutAdminAccountRequest] params
    # @option params [String] :admin_account
    #   <p>The Amazon Web Services account ID to add as an Firewall Manager administrator account. The account must be a member of the organization that was onboarded to Firewall Manager by <a>AssociateAdminAccount</a>. For more information about Organizations, see
    #           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.</p>
    # @option params [Types::AdminScope] :admin_scope
    #   <p>Configures the resources that the specified Firewall Manager administrator can manage. As a best practice, set the administrative scope according to the principles of least privilege. Only grant the administrator the specific resources or permissions that they need to perform the duties of their role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account: "AWSAccountId", # required
    #     admin_scope: {
    #       account_scope: {
    #         accounts: ["AWSAccountId"],
    #         all_accounts_enabled: false,
    #         exclude_specified_accounts: false
    #       },
    #       organizational_unit_scope: {
    #         organizational_units: ["OrganizationalUnitId"],
    #         all_organizational_units_enabled: false,
    #         exclude_specified_organizational_units: false
    #       },
    #       region_scope: {
    #         regions: ["AWSRegion"],
    #         all_regions_enabled: false
    #       },
    #       policy_type_scope: {
    #         policy_types: ["WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"]],
    #         all_policy_types_enabled: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_admin_account(params = {}, options = {})
      request = build_request(:put_admin_account, params)
      request.send_request(options)
    end

    # <p>Creates an Firewall Manager applications list.</p>
    # @param [Hash, Types::PutAppsListRequest] params
    # @option params [Types::AppsListData] :apps_list
    #   <p>The details of the Firewall Manager applications list to be created.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>The tags associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     apps_list: { # required
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       apps_list: [ # required
    #         {
    #           app_name: "ResourceName", # required
    #           protocol: "Protocol", # required
    #           port: 1, # required
    #         }
    #       ],
    #       previous_apps_list: {
    #         "PreviousListVersion" => [
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           }
    #         ]
    #       }
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_apps_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     apps_list: {
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       apps_list: [ # required
    #         {
    #           app_name: "ResourceName", # required
    #           protocol: "Protocol", # required
    #           port: 1, # required
    #         }
    #       ],
    #       previous_apps_list: {
    #         "PreviousListVersion" => [
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           }
    #         ]
    #       }
    #     },
    #     apps_list_arn: "ResourceArn"
    #   }
    # @return [Types::PutAppsListResponse]
    def put_apps_list(params = {}, options = {})
      request = build_request(:put_apps_list, params)
      request.send_request(options)
    end

    # <p>Designates the IAM role and Amazon Simple Notification Service (SNS) topic that
    #       Firewall Manager uses to record SNS logs.</p>
    #          <p>To perform this action outside of the console, you must first configure the SNS topic's access policy to allow the <code>SnsRoleName</code> to publish SNS logs. If the <code>SnsRoleName</code> provided is a role other than the <code>AWSServiceRoleForFMS</code> service-linked role, this role must have a trust relationship configured to allow the Firewall Manager service principal <code>fms.amazonaws.com</code> to assume this role. For information about configuring an SNS access policy, see
    #       <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service">Service roles for Firewall Manager</a> in the <i>Firewall Manager Developer Guide</i>.</p>
    # @param [Hash, Types::PutNotificationChannelRequest] params
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from
    #         Firewall Manager.</p>
    # @option params [String] :sns_role_name
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record
    #         Firewall Manager activity. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sns_topic_arn: "ResourceArn", # required
    #     sns_role_name: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.put_notification_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_notification_channel(params = {}, options = {})
      request = build_request(:put_notification_channel, params)
      request.send_request(options)
    end

    # <p>Creates an Firewall Manager policy.</p>
    #          <p>A Firewall Manager policy is specific to the individual policy type. If you want to enforce multiple
    # 		policy types across accounts, you can create multiple policies. You can create more than one
    # 		policy for each type. </p>
    #          <p>If you add a new account to an organization that you created with Organizations, Firewall Manager
    # 		automatically applies the policy to the resources in that account that are within scope of
    # 		the policy. </p>
    #          <p>Firewall Manager provides the following types of policies: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>WAF policy</b> - This policy applies WAF web ACL
    # 				protections to specified accounts and resources. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Shield Advanced policy</b> - This policy applies Shield Advanced
    # 				protection to specified accounts and resources. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Security Groups policy</b> - This type of policy gives you
    # 				control over security groups that are in use throughout your organization in
    # 				Organizations and lets you enforce a baseline set of rules across your organization. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Network ACL policy</b> - This type of policy gives you
    # 				control over the network ACLs that are in use throughout your organization in
    # 				Organizations and lets you enforce a baseline set of first and last network ACL rules across your organization. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Network Firewall policy</b> - This policy applies
    # 				Network Firewall protection to your organization's VPCs. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>DNS Firewall policy</b> - This policy applies
    # 				Amazon Route 53 Resolver DNS Firewall protections to your organization's VPCs. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Third-party firewall policy</b> - This policy applies third-party firewall protections. Third-party firewalls are available by subscription through the Amazon Web Services Marketplace console at <a href="http://aws.amazon.com/marketplace">Amazon Web Services Marketplace</a>.</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>Palo Alto Networks Cloud NGFW policy</b> - This policy applies Palo Alto Networks Cloud Next Generation Firewall (NGFW) protections and Palo Alto Networks Cloud NGFW rulestacks to your organization's VPCs.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Fortigate CNF policy</b> - This policy applies
    # 						Fortigate Cloud Native Firewall (CNF) protections. Fortigate CNF is a cloud-centered solution that blocks Zero-Day threats and secures cloud infrastructures with industry-leading advanced threat prevention, smart web application firewalls (WAF), and API protection.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutPolicyRequest] params
    # @option params [Types::Policy] :policy
    #   <p>The details of the Firewall Manager policy to be created.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>The tags to add to the Amazon Web Services resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy: { # required
    #       policy_id: "PolicyId",
    #       policy_name: "ResourceName", # required
    #       policy_update_token: "PolicyUpdateToken",
    #       security_service_policy_data: { # required
    #         type: "WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"], # required
    #         managed_service_data: "ManagedServiceData",
    #         policy_option: {
    #           network_firewall_policy: {
    #             firewall_deployment_model: "CENTRALIZED" # One of: ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           third_party_firewall_policy: {
    #             firewall_deployment_model: "CENTRALIZED" # One of: ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           network_acl_common_policy: {
    #             network_acl_entry_set: { # required
    #               first_entries: [
    #                 {
    #                   icmp_type_code: {
    #                     code: 1,
    #                     type: 1
    #                   },
    #                   protocol: "LengthBoundedString", # required
    #                   port_range: {
    #                     from: 1,
    #                     to: 1
    #                   },
    #                   cidr_block: "LengthBoundedNonEmptyString",
    #                   ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                   rule_action: "allow" # One of: ["allow", "deny"], # required
    #                   egress: false, # required
    #                 }
    #               ],
    #               force_remediate_for_first_entries: false, # required
    #               last_entries: [
    #                 {
    #                   icmp_type_code: {
    #                     code: 1,
    #                     type: 1
    #                   },
    #                   protocol: "LengthBoundedString", # required
    #                   port_range: {
    #                     from: 1,
    #                     to: 1
    #                   },
    #                   cidr_block: "LengthBoundedNonEmptyString",
    #                   ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                   rule_action: "allow" # One of: ["allow", "deny"], # required
    #                   egress: false, # required
    #                 }
    #               ],
    #               force_remediate_for_last_entries: false, # required
    #             }
    #           }
    #         }
    #       },
    #       resource_type: "ResourceType", # required
    #       resource_type_list: ["ResourceType"],
    #       resource_tags: [
    #         {
    #           key: "ResourceTagKey", # required
    #           value: "ResourceTagValue"
    #         }
    #       ],
    #       exclude_resource_tags: false, # required
    #       remediation_enabled: false, # required
    #       delete_unused_fm_managed_resources: false,
    #       include_map: {
    #         "CustomerPolicyScopeIdType" => ["CustomerPolicyScopeId"]
    #       },
    #       exclude_map: {
    #         "CustomerPolicyScopeIdType" => ["CustomerPolicyScopeId"]
    #       },
    #       resource_set_ids: ["Base62Id"],
    #       policy_description: "ResourceDescription",
    #       policy_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"],
    #       resource_tag_logical_operator: "AND" # One of: ["AND", "OR"]
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_id: "PolicyId",
    #       policy_name: "ResourceName", # required
    #       policy_update_token: "PolicyUpdateToken",
    #       security_service_policy_data: { # required
    #         type: "WAF" # One of: ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL", "IMPORT_NETWORK_FIREWALL", "NETWORK_ACL_COMMON"], # required
    #         managed_service_data: "ManagedServiceData",
    #         policy_option: {
    #           network_firewall_policy: {
    #             firewall_deployment_model: "CENTRALIZED" # One of: ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           third_party_firewall_policy: {
    #             firewall_deployment_model: "CENTRALIZED" # One of: ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           network_acl_common_policy: {
    #             network_acl_entry_set: { # required
    #               first_entries: [
    #                 {
    #                   icmp_type_code: {
    #                     code: 1,
    #                     type: 1
    #                   },
    #                   protocol: "LengthBoundedString", # required
    #                   port_range: {
    #                     from: 1,
    #                     to: 1
    #                   },
    #                   cidr_block: "LengthBoundedNonEmptyString",
    #                   ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                   rule_action: "allow" # One of: ["allow", "deny"], # required
    #                   egress: false, # required
    #                 }
    #               ],
    #               force_remediate_for_first_entries: false, # required
    #               last_entries: [
    #                 {
    #                   icmp_type_code: {
    #                     code: 1,
    #                     type: 1
    #                   },
    #                   protocol: "LengthBoundedString", # required
    #                   port_range: {
    #                     from: 1,
    #                     to: 1
    #                   },
    #                   cidr_block: "LengthBoundedNonEmptyString",
    #                   ipv6_cidr_block: "LengthBoundedNonEmptyString",
    #                   rule_action: "allow" # One of: ["allow", "deny"], # required
    #                   egress: false, # required
    #                 }
    #               ],
    #               force_remediate_for_last_entries: false, # required
    #             }
    #           }
    #         }
    #       },
    #       resource_type: "ResourceType", # required
    #       resource_type_list: ["ResourceType"],
    #       resource_tags: [
    #         {
    #           key: "ResourceTagKey", # required
    #           value: "ResourceTagValue"
    #         }
    #       ],
    #       exclude_resource_tags: false, # required
    #       remediation_enabled: false, # required
    #       delete_unused_fm_managed_resources: false,
    #       include_map: {
    #         "CustomerPolicyScopeIdType" => ["CustomerPolicyScopeId"]
    #       },
    #       exclude_map: {
    #         "CustomerPolicyScopeIdType" => ["CustomerPolicyScopeId"]
    #       },
    #       resource_set_ids: ["Base62Id"],
    #       policy_description: "ResourceDescription",
    #       policy_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"],
    #       resource_tag_logical_operator: "AND" # One of: ["AND", "OR"]
    #     },
    #     policy_arn: "ResourceArn"
    #   }
    # @return [Types::PutPolicyResponse]
    def put_policy(params = {}, options = {})
      request = build_request(:put_policy, params)
      request.send_request(options)
    end

    # <p>Creates an Firewall Manager protocols list.</p>
    # @param [Hash, Types::PutProtocolsListRequest] params
    # @option params [Types::ProtocolsListData] :protocols_list
    #   <p>The details of the Firewall Manager protocols list to be created.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>The tags associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protocols_list: { # required
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       protocols_list: ["Protocol"], # required
    #       previous_protocols_list: {
    #         "PreviousListVersion" => ["Protocol"]
    #       }
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_protocols_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protocols_list: {
    #       list_id: "ListId",
    #       list_name: "ResourceName", # required
    #       list_update_token: "UpdateToken",
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       protocols_list: ["Protocol"], # required
    #       previous_protocols_list: {
    #         "PreviousListVersion" => ["Protocol"]
    #       }
    #     },
    #     protocols_list_arn: "ResourceArn"
    #   }
    # @return [Types::PutProtocolsListResponse]
    def put_protocols_list(params = {}, options = {})
      request = build_request(:put_protocols_list, params)
      request.send_request(options)
    end

    # <p>Creates the resource set.</p>
    #          <p>An Firewall Manager resource set defines the resources to import into an Firewall Manager policy from another Amazon Web Services service.</p>
    # @param [Hash, Types::PutResourceSetRequest] params
    # @option params [Types::ResourceSet] :resource_set
    #   <p>Details about the resource set to be created or updated.></p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>Retrieves the tags associated with the specified resource set. Tags are key:value pairs that
    #            you can use to categorize and manage your resources, for purposes like billing. For
    #            example, you might set the tag key to "customer" and the value to the customer name or ID.
    #            You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #            resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_set: { # required
    #       id: "Base62Id",
    #       name: "Name", # required
    #       description: "Description",
    #       update_token: "UpdateToken",
    #       resource_type_list: ["ResourceType"], # required
    #       last_update_time: Time.now,
    #       resource_set_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"]
    #     },
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_resource_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_set: { # required
    #       id: "Base62Id",
    #       name: "Name", # required
    #       description: "Description",
    #       update_token: "UpdateToken",
    #       resource_type_list: ["ResourceType"], # required
    #       last_update_time: Time.now,
    #       resource_set_status: "ACTIVE" # One of: ["ACTIVE", "OUT_OF_ADMIN_SCOPE"]
    #     },
    #     resource_set_arn: "ResourceArn", # required
    #   }
    # @return [Types::PutResourceSetResponse]
    def put_resource_set(params = {}, options = {})
      request = build_request(:put_resource_set, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an Amazon Web Services resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>The tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_list: [ # required
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

    # <p>Removes one or more tags from an Amazon Web Services resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the resource. </p>
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
      context[:gem_name] = 'aws-sdk-fms'
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

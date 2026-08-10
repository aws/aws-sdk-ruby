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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:eks)

module Aws::EKS
  # An API client for Aws::EKS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSWesleyFrontend
    @identifier = :eks

    add_plugin(::Aws::EKS::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EKS::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Associates an access policy and its scope to an access entry. For more information
    #             about associating access policies, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html">Associating and disassociating
    #                 access policies to and from access entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @param [Hash, Types::AssociateAccessPolicyRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM user or role for the <code>AccessEntry</code> that you're
    #               associating the access policy to. </p>
    # @option params [String] :policy_arn
    #   <p>The ARN of the <code>AccessPolicy</code> that you're associating. For a list of
    #               ARNs, use <code>ListAccessPolicies</code>.</p>
    # @option params [Types::AccessScope] :access_scope
    #   <p>The scope for the <code>AccessPolicy</code>. You can scope access policies to an
    #               entire cluster or to specific Kubernetes namespaces.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     policy_arn: "String", # required
    #     access_scope: { # required
    #       type: "cluster" # One of: ["cluster", "namespace"],
    #       namespaces: ["String"]
    #     }
    #   }
    #   options = {}
    #   response = client.associate_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_name: "String",
    #     principal_arn: "String",
    #     associated_access_policy: {
    #       policy_arn: "String",
    #       access_scope: {
    #         type: "cluster" # One of: ["cluster", "namespace"],
    #         namespaces: ["String"]
    #       },
    #       associated_at: Time.now,
    #       modified_at: Time.now
    #     }
    #   }
    # @return [Types::AssociateAccessPolicyResponse]
    def associate_access_policy(params = {}, options = {})
      request = build_request(:associate_access_policy, params)
      request.send_request(options)
    end

    # <p>Associates an encryption configuration to an existing cluster.</p>
    #          <p>Use this API to enable encryption on existing clusters that don't already have
    #             encryption enabled. This allows you to implement a defense-in-depth security strategy
    #             without migrating applications to new Amazon EKS clusters.</p>
    # @param [Hash, Types::AssociateEncryptionConfigRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Array<Types::EncryptionConfig>] :encryption_config
    #   <p>The configuration you are using for encryption.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     encryption_config: [ # required
    #       {
    #         resources: ["String"],
    #         provider: {
    #           key_arn: "String"
    #         }
    #       }
    #     ],
    #     client_request_token: "String"
    #   }
    #   options = {}
    #   response = client.associate_encryption_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AssociateEncryptionConfigResponse]
    def associate_encryption_config(params = {}, options = {})
      request = build_request(:associate_encryption_config, params)
      request.send_request(options)
    end

    # <p>Associates an identity provider configuration to a cluster.</p>
    #          <p>If you want to authenticate identities using an identity provider, you can create an
    #             identity provider configuration and associate it to your cluster. After configuring
    #             authentication to your cluster you can create Kubernetes <code>Role</code> and
    #                 <code>ClusterRole</code> objects, assign permissions to them, and then bind them to
    #             the identities using Kubernetes <code>RoleBinding</code> and <code>ClusterRoleBinding</code>
    #             objects. For more information see <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Using RBAC
    #                 Authorization</a> in the Kubernetes documentation.</p>
    # @param [Hash, Types::AssociateIdentityProviderConfigRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Types::OidcIdentityProviderConfigRequest] :oidc
    #   <p>An object representing an OpenID Connect (OIDC) identity provider configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     oidc: { # required
    #       identity_provider_config_name: "String", # required
    #       issuer_url: "String", # required
    #       client_id: "String", # required
    #       username_claim: "String",
    #       username_prefix: "String",
    #       groups_claim: "String",
    #       groups_prefix: "String",
    #       required_claims: {
    #         "requiredClaimsKey" => "requiredClaimsValue"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_request_token: "String"
    #   }
    #   options = {}
    #   response = client.associate_identity_provider_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::AssociateIdentityProviderConfigResponse]
    def associate_identity_provider_config(params = {}, options = {})
      request = build_request(:associate_identity_provider_config, params)
      request.send_request(options)
    end

    # <p>Creates an access entry.</p>
    #          <p>An access entry allows an IAM principal to access your cluster. Access
    #             entries can replace the need to maintain entries in the <code>aws-auth</code>
    #             <code>ConfigMap</code> for authentication. You have the following options for
    #             authorizing an IAM principal to access Kubernetes objects on your cluster: Kubernetes
    #             role-based access control (RBAC), Amazon EKS, or both. Kubernetes RBAC authorization requires you
    #             to create and manage Kubernetes <code>Role</code>, <code>ClusterRole</code>,
    #                 <code>RoleBinding</code>, and <code>ClusterRoleBinding</code> objects, in addition
    #             to managing access entries. If you use Amazon EKS authorization exclusively, you don't need
    #             to create and manage Kubernetes <code>Role</code>, <code>ClusterRole</code>,
    #                 <code>RoleBinding</code>, and <code>ClusterRoleBinding</code> objects.</p>
    #          <p>For more information about access entries, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html">Access entries</a> in the
    #             <i>Amazon EKS User Guide</i>.</p>
    # @param [Hash, Types::CreateAccessEntryRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>. You can specify one ARN for each access entry. You can't specify the
    #               same ARN in more than one access entry. This value can't be changed after access entry
    #               creation.</p>
    #            <p>The valid principals differ depending on the type of the access entry in the
    #                   <code>type</code> field. For <code>STANDARD</code> access entries, you can use every
    #               IAM principal type. For nodes (<code>EC2</code> (for EKS Auto Mode),
    #                   <code>EC2_LINUX</code>, <code>EC2_WINDOWS</code>, <code>FARGATE_LINUX</code>, and
    #                   <code>HYBRID_LINUX</code>), the only valid ARN is IAM roles.
    #               
    #               You can't use the STS session principal type with access entries because this is a
    #               temporary principal for each session and not a permanent identity that can be assigned
    #               permissions.</p>
    #            <p>
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#bp-users-federation-idp">IAM best
    #                   practices</a> recommend using IAM roles with temporary credentials, rather
    #               than IAM users with long-term credentials. </p>
    # @option params [Array<String>] :kubernetes_groups
    #   <p>The value for <code>name</code> that you've specified for <code>kind: Group</code> as
    #               a <code>subject</code> in a Kubernetes <code>RoleBinding</code> or
    #                   <code>ClusterRoleBinding</code> object. Amazon EKS doesn't confirm that the value for
    #                   <code>name</code> exists in any bindings on your cluster. You can specify one or
    #               more names.</p>
    #            <p>Kubernetes authorizes the <code>principalArn</code> of the access entry to access any
    #               cluster objects that you've specified in a Kubernetes <code>Role</code> or
    #                   <code>ClusterRole</code> object that is also specified in a binding's
    #                   <code>roleRef</code>. For more information about creating Kubernetes
    #                   <code>RoleBinding</code>, <code>ClusterRoleBinding</code>, <code>Role</code>, or
    #                   <code>ClusterRole</code> objects, see <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Using RBAC
    #                   Authorization in the Kubernetes documentation</a>.</p>
    #            <p>If you want Amazon EKS to authorize the <code>principalArn</code> (instead of, or in
    #               addition to Kubernetes authorizing the <code>principalArn</code>), you can associate one or
    #               more access policies to the access entry using <code>AssociateAccessPolicy</code>. If
    #               you associate any access policies, the <code>principalARN</code> has all permissions
    #               assigned in the associated access policies and all permissions in any Kubernetes
    #                   <code>Role</code> or <code>ClusterRole</code> objects that the group names are bound
    #               to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [String] :username
    #   <p>The username to authenticate to Kubernetes with. We recommend not specifying a username and
    #               letting Amazon EKS specify it for you. For more information about the value Amazon EKS specifies
    #               for you, or constraints before specifying your own username, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries">Creating
    #                   access entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [String] :type
    #   <p>The type of the new access entry. Valid values are <code>STANDARD</code>,
    #                   <code>FARGATE_LINUX</code>, <code>EC2_LINUX</code>, <code>EC2_WINDOWS</code>,
    #                   <code>EC2</code> (for EKS Auto Mode), <code>HYBRID_LINUX</code>, and
    #                   <code>HYPERPOD_LINUX</code>. </p>
    #            <p>If the <code>principalArn</code> is for an IAM role that's used for self-managed
    #               Amazon EC2 nodes, specify <code>EC2_LINUX</code> or <code>EC2_WINDOWS</code>. Amazon EKS grants
    #               the necessary permissions to the node for you. If the <code>principalArn</code> is for
    #               any other purpose, specify <code>STANDARD</code>. If you don't specify a value, Amazon EKS
    #               sets the value to <code>STANDARD</code>. If you have the access mode of the cluster set
    #               to <code>API_AND_CONFIG_MAP</code>, it's unnecessary to create access entries for IAM
    #               roles used with Fargate profiles or managed Amazon EC2 nodes, because Amazon EKS creates entries
    #               in the <code>aws-auth</code>
    #               <code>ConfigMap</code> for the roles. You can't change this value once you've created
    #               the access entry.</p>
    #            <p>If you set the value to <code>EC2_LINUX</code> or <code>EC2_WINDOWS</code>, you can't
    #               specify values for <code>kubernetesGroups</code>, or associate an
    #                   <code>AccessPolicy</code> to the access entry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     kubernetes_groups: ["String"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_request_token: "String",
    #     username: "String",
    #     type: "String"
    #   }
    #   options = {}
    #   response = client.create_access_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_entry: {
    #       cluster_name: "String",
    #       principal_arn: "String",
    #       kubernetes_groups: ["String"],
    #       access_entry_arn: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       username: "String",
    #       type: "String"
    #     }
    #   }
    # @return [Types::CreateAccessEntryResponse]
    def create_access_entry(params = {}, options = {})
      request = build_request(:create_access_entry, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon EKS add-on.</p>
    #          <p>Amazon EKS add-ons help to automate the provisioning and lifecycle management of common
    #             operational software for Amazon EKS clusters. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html">Amazon EKS
    #                 add-ons</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @param [Hash, Types::CreateAddonRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by
    #                   <code>DescribeAddonVersions</code>.</p>
    # @option params [String] :addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    # @option params [String] :service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    # @option params [String] :resolve_conflicts
    #   <p>How to resolve field value conflicts for an Amazon EKS add-on. Conflicts are handled based
    #               on the value you choose:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>None</b> – If the self-managed version of
    #                       the add-on is installed on your cluster, Amazon EKS doesn't change the value.
    #                       Creation of the add-on might fail.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Overwrite</b> – If the self-managed
    #                       version of the add-on is installed on your cluster and the Amazon EKS default value
    #                       is different than the existing value, Amazon EKS changes the value to the Amazon EKS
    #                       default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Preserve</b> – This is similar to the NONE
    #                       option. If the self-managed version of the add-on is installed on your cluster
    #                       Amazon EKS doesn't change the add-on resource properties. Creation of the add-on
    #                       might fail if conflicts are detected. This option works differently during the
    #                       update operation. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html">
    #                        <code>UpdateAddon</code>
    #                     </a>.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't currently have the self-managed version of the add-on installed on your
    #               cluster, the Amazon EKS add-on is installed. Amazon EKS sets all values to default values,
    #               regardless of the option that you specify.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @option params [String] :configuration_values
    #   <p>The set of configuration values for the add-on that's created. The values that you
    #               provide are validated against the schema returned by
    #                   <code>DescribeAddonConfiguration</code>.</p>
    # @option params [Array<Types::AddonPodIdentityAssociations>] :pod_identity_associations
    #   <p>An array of EKS Pod Identity associations to be created. Each association maps a Kubernetes service account to
    #               an IAM role.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html">Attach an IAM Role to an Amazon EKS add-on
    #                   using EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Types::AddonNamespaceConfigRequest] :namespace_config
    #   <p>The namespace configuration for the addon. If specified, this will override the default namespace for the addon.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #     addon_version: "String",
    #     service_account_role_arn: "RoleArn",
    #     resolve_conflicts: "OVERWRITE" # One of: ["OVERWRITE", "NONE", "PRESERVE"],
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     configuration_values: "String",
    #     pod_identity_associations: [
    #       {
    #         service_account: "String", # required
    #         role_arn: "String", # required
    #       }
    #     ],
    #     namespace_config: {
    #       namespace: "namespace"
    #     }
    #   }
    #   options = {}
    #   response = client.create_addon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon: {
    #       addon_name: "String",
    #       cluster_name: "ClusterName",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED", "UPDATE_FAILED"],
    #       addon_version: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound", "AddonSubscriptionNeeded", "AddonPermissionFailure"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       addon_arn: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       service_account_role_arn: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       publisher: "String",
    #       owner: "String",
    #       marketplace_information: {
    #         product_id: "String",
    #         product_url: "String"
    #       },
    #       configuration_values: "String",
    #       pod_identity_associations: ["String"],
    #       namespace_config: {
    #         namespace: "namespace"
    #       }
    #     }
    #   }
    # @return [Types::CreateAddonResponse]
    def create_addon(params = {}, options = {})
      request = build_request(:create_addon, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon EKS control plane.</p>
    #          <p>The Amazon EKS control plane consists of control plane instances that run the Kubernetes
    #             software, such as <code>etcd</code> and the API server. The control plane runs in an
    #             account managed by Amazon Web Services, and the Kubernetes API is exposed by the Amazon EKS API server endpoint.
    #             Each Amazon EKS cluster control plane is single tenant and unique. It runs on its own set of
    #             Amazon EC2 instances.</p>
    #          <p>The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing
    #             Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide
    #             connectivity from the control plane instances to the nodes (for example, to support
    #                 <code>kubectl exec</code>, <code>logs</code>, and <code>proxy</code> data
    #             flows).</p>
    #          <p>Amazon EKS nodes run in your Amazon Web Services account and connect to your cluster's control plane over
    #             the Kubernetes API server endpoint and a certificate file that is created for your
    #             cluster.</p>
    #          <p>You can use the <code>endpointPublicAccess</code> and
    #                 <code>endpointPrivateAccess</code> parameters to enable or disable public and
    #             private access to your cluster's Kubernetes API server endpoint. By default, public access is
    #             enabled, and private access is disabled. The
    #             endpoint domain name and IP address family depends on the value of the
    #             <code>ipFamily</code> for the cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">Amazon EKS Cluster
    #                 Endpoint Access Control</a> in the <i>
    #                <i>Amazon EKS User Guide</i>
    #             </i>. </p>
    #          <p>You can use the <code>logging</code> parameter to enable or disable exporting the
    #             Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane
    #             logs aren't exported to CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS
    #                 Cluster Control Plane Logs</a> in the
    #             <i>
    #                <i>Amazon EKS User Guide</i>
    #             </i>.</p>
    #          <note>
    #             <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported
    #                 control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch Pricing</a>.</p>
    #          </note>
    #          <p>In most cases, it takes several minutes to create a cluster. After you create an Amazon EKS
    #             cluster, you must configure your Kubernetes tooling to communicate with the API server and
    #             launch nodes into your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-auth.html">Allowing users to
    #                 access your cluster</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html">Launching Amazon EKS
    #                 nodes</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :name
    #   <p>The unique name to give to your cluster. The name can contain only alphanumeric characters (case-sensitive),
    #   hyphens, and underscores. It must start with an alphanumeric character and can't be longer than
    #   100 characters. The name must be unique within the Amazon Web Services Region and Amazon Web Services account that you're 
    #   creating the cluster in.</p>
    # @option params [String] :version
    #   <p>The desired Kubernetes version for your cluster. If you don't specify a value here, the
    #               default version available in Amazon EKS is used.</p>
    #            <note>
    #               <p>The default version might not be the latest version available.</p>
    #            </note>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane
    #               to make calls to Amazon Web Services API operations on your behalf. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html">Amazon EKS Service
    #                   IAM Role</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    # @option params [Types::VpcConfigRequest] :resources_vpc_config
    #   <p>The VPC configuration that's used by the cluster control plane. Amazon EKS VPC resources
    #               have specific requirements to work properly with Kubernetes. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC
    #                   Considerations</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security Group Considerations</a> in the
    #               <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You can specify up to five
    #               security groups. However, we recommend that you use a dedicated security group for your
    #               cluster control plane.</p>
    # @option params [Types::KubernetesNetworkConfigRequest] :kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    # @option params [Types::Logging] :logging
    #   <p>Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs .
    #               By default, cluster control plane logs aren't exported to CloudWatch Logs . For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS
    #                   Cluster control plane logs</a> in the
    #               <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #            <note>
    #               <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported
    #                   control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch Pricing</a>.</p>
    #            </note>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @option params [Array<Types::EncryptionConfig>] :encryption_config
    #   <p>The encryption configuration for the cluster.</p>
    # @option params [Types::OutpostConfigRequest] :outpost_config
    #   <p>An object representing the configuration of your local Amazon EKS cluster on an Amazon Web Services
    #               Outpost. Before creating a local cluster on an Outpost, review <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-overview.html">Local clusters
    #                   for Amazon EKS on Amazon Web Services Outposts</a> in the <i>Amazon EKS User Guide</i>. This object isn't
    #               available for creating Amazon EKS clusters on the Amazon Web Services cloud.</p>
    # @option params [Types::CreateAccessConfigRequest] :access_config
    #   <p>The access configuration for the cluster.</p>
    # @option params [Boolean] :bootstrap_self_managed_addons
    #   <p>If you set this value to <code>False</code> when creating a cluster, the default
    #               networking add-ons will not be installed.</p>
    #            <p>The default networking add-ons include <code>vpc-cni</code>, <code>coredns</code>, and
    #                   <code>kube-proxy</code>.</p>
    #            <p>Use this option when you plan to install third-party alternative add-ons or
    #               self-manage the default networking add-ons.</p>
    # @option params [Types::UpgradePolicyRequest] :upgrade_policy
    #   <p>New clusters, by default, have extended support enabled. You can disable extended
    #               support when creating a cluster by setting this value to <code>STANDARD</code>.</p>
    # @option params [Types::ZonalShiftConfigRequest] :zonal_shift_config
    #   <p>Enable or disable ARC zonal shift for the cluster. If zonal shift is enabled, Amazon Web Services
    #               configures zonal autoshift for the cluster.</p>
    #            <p>Zonal shift is a feature of Amazon Application Recovery Controller (ARC). ARC zonal shift is designed to be a
    #               temporary measure that allows you to move traffic for a resource away from an impaired
    #               AZ until the zonal shift expires or you cancel it. You can extend the zonal shift if
    #               necessary.</p>
    #            <p>You can start a zonal shift for an Amazon EKS cluster, or you can allow Amazon Web Services to do it for
    #               you by enabling <i>zonal autoshift</i>. This shift updates the flow of
    #               east-to-west network traffic in your cluster to only consider network endpoints for Pods
    #               running on worker nodes in healthy AZs. Additionally, any ALB or NLB handling ingress
    #               traffic for applications in your Amazon EKS cluster will automatically route traffic to
    #               targets in the healthy AZs. For more information about zonal shift in EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html">Learn about
    #                   Amazon Application Recovery Controller (ARC) Zonal Shift in Amazon EKS</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    # @option params [Types::RemoteNetworkConfigRequest] :remote_network_config
    #   <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #               configuration after the cluster is created.</p>
    # @option params [Types::ComputeConfigRequest] :compute_config
    #   <p>Enable or disable the compute capability of EKS Auto Mode when creating your EKS Auto
    #               Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete
    #               EC2 Managed Instances in your Amazon Web Services account</p>
    # @option params [Types::StorageConfigRequest] :storage_config
    #   <p>Enable or disable the block storage capability of EKS Auto Mode when creating your EKS
    #               Auto Mode cluster. If the block storage capability is enabled, EKS Auto Mode will create
    #               and delete EBS volumes in your Amazon Web Services account.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>Indicates whether to enable deletion protection for the cluster. When enabled, the cluster 
    #               cannot be deleted unless deletion protection is first disabled. This helps prevent 
    #               accidental cluster deletion. Default value is <code>false</code>.</p>
    # @example To create a new cluster
    #   # The following example creates an Amazon EKS cluster called prod.
    #   params = {
    #     name: "prod",
    #     version: "1.10",
    #     role_arn: "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI",
    #     resources_vpc_config: {
    #       subnet_ids: [
    #         "subnet-6782e71e",
    #         "subnet-e7e761ac"
    #       ],
    #       security_group_ids: [
    #         "sg-6979fe18"
    #       ]
    #     },
    #     client_request_token: "1d2129a1-3d38-460a-9756-e5b91fddb951"
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ClusterName", # required
    #     version: "String",
    #     role_arn: "String", # required
    #     resources_vpc_config: { # required
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #       public_access_cidrs: ["String"]
    #     },
    #     kubernetes_network_config: {
    #       service_ipv4_cidr: "String",
    #       ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       elastic_load_balancing: {
    #         enabled: false
    #       }
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     encryption_config: [
    #       {
    #         resources: ["String"],
    #         provider: {
    #           key_arn: "String"
    #         }
    #       }
    #     ],
    #     outpost_config: {
    #       outpost_arns: ["String"], # required
    #       control_plane_instance_type: "String", # required
    #       control_plane_placement: {
    #         group_name: "String"
    #       }
    #     },
    #     access_config: {
    #       bootstrap_cluster_creator_admin_permissions: false,
    #       authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #     },
    #     bootstrap_self_managed_addons: false,
    #     upgrade_policy: {
    #       support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #     },
    #     zonal_shift_config: {
    #       enabled: false
    #     },
    #     remote_network_config: {
    #       remote_node_networks: [
    #         {
    #           cidrs: ["String"]
    #         }
    #       ],
    #       remote_pod_networks: [
    #         {
    #           cidrs: ["String"]
    #         }
    #       ]
    #     },
    #     compute_config: {
    #       enabled: false,
    #       node_pools: ["String"],
    #       node_role_arn: "String"
    #     },
    #     storage_config: {
    #       block_storage: {
    #         enabled: false
    #       }
    #     },
    #     deletion_protection: false
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       version: "String",
    #       endpoint: "String",
    #       role_arn: "String",
    #       resources_vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         cluster_security_group_id: "String",
    #         vpc_id: "String",
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
    #         public_access_cidrs: ["String"]
    #       },
    #       kubernetes_network_config: {
    #         service_ipv4_cidr: "String",
    #         service_ipv6_cidr: "String",
    #         ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         elastic_load_balancing: {
    #           enabled: false
    #         }
    #       },
    #       logging: {
    #         cluster_logging: [
    #           {
    #             types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #             enabled: false
    #           }
    #         ]
    #       },
    #       identity: {
    #         oidc: {
    #           issuer: "String"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"],
    #       certificate_authority: {
    #         data: "String"
    #       },
    #       client_request_token: "String",
    #       platform_version: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       encryption_config: [
    #         {
    #           resources: ["String"],
    #           provider: {
    #             key_arn: "String"
    #           }
    #         }
    #       ],
    #       connector_config: {
    #         activation_id: "String",
    #         activation_code: "String",
    #         activation_expiry: Time.now,
    #         provider: "String",
    #         role_arn: "String"
    #       },
    #       id: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       outpost_config: {
    #         outpost_arns: ["String"], # required
    #         control_plane_instance_type: "String", # required
    #         control_plane_placement: {
    #           group_name: "String"
    #         }
    #       },
    #       access_config: {
    #         bootstrap_cluster_creator_admin_permissions: false,
    #         authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #       },
    #       upgrade_policy: {
    #         support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #       },
    #       zonal_shift_config: {
    #         enabled: false
    #       },
    #       remote_network_config: {
    #         remote_node_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ],
    #         remote_pod_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ]
    #       },
    #       compute_config: {
    #         enabled: false,
    #         node_pools: ["String"],
    #         node_role_arn: "String"
    #       },
    #       storage_config: {
    #         block_storage: {
    #           enabled: false
    #         }
    #       },
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates an EKS Anywhere subscription. When a subscription is created, it is a contract
    #             agreement for the length of the term specified in the request. Licenses that are used to
    #             validate support are provisioned in Amazon Web Services License Manager and the caller account is
    #             granted access to EKS Anywhere Curated Packages.</p>
    # @param [Hash, Types::CreateEksAnywhereSubscriptionRequest] params
    # @option params [String] :name
    #   <p>The unique name for your subscription. It must be unique in your Amazon Web Services account in the
    #               Amazon Web Services Region you're creating the subscription in. The name can contain only alphanumeric
    #               characters (case-sensitive), hyphens, and underscores. It must start with an alphabetic
    #               character and can't be longer than 100 characters.</p>
    # @option params [Types::EksAnywhereSubscriptionTerm] :term
    #   <p>An object representing the term duration and term unit type of your subscription. This
    #               determines the term length of your subscription. Valid values are MONTHS for term unit
    #               and 12 or 36 for term duration, indicating a 12 month or 36 month subscription. This
    #               value cannot be changed after creating the subscription.</p>
    # @option params [Integer] :license_quantity
    #   <p>The number of licenses to purchase with the subscription. Valid values are between 1
    #               and 100. This value can't be changed after creating the subscription.</p>
    # @option params [String] :license_type
    #   <p>The license type for all licenses in the subscription. Valid value is CLUSTER. With
    #               the CLUSTER license type, each license covers support for a single EKS Anywhere
    #               cluster.</p>
    # @option params [Boolean] :auto_renew
    #   <p>A boolean indicating whether the subscription auto renews at the end of the
    #               term.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The metadata for a subscription to assist with categorization and organization. Each
    #               tag consists of a key and an optional value. Subscription tags don't propagate to any
    #               other resources associated with the subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EksAnywhereSubscriptionName", # required
    #     term: { # required
    #       duration: 1,
    #       unit: "MONTHS" # One of: ["MONTHS"]
    #     },
    #     license_quantity: 1,
    #     license_type: "Cluster" # One of: ["Cluster"],
    #     auto_renew: false,
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_eks_anywhere_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       id: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       effective_date: Time.now,
    #       expiration_date: Time.now,
    #       license_quantity: 1,
    #       license_type: "Cluster" # One of: ["Cluster"],
    #       term: {
    #         duration: 1,
    #         unit: "MONTHS" # One of: ["MONTHS"]
    #       },
    #       status: "String",
    #       auto_renew: false,
    #       license_arns: ["String"],
    #       licenses: [
    #         {
    #           id: "String",
    #           token: "String"
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateEksAnywhereSubscriptionResponse]
    def create_eks_anywhere_subscription(params = {}, options = {})
      request = build_request(:create_eks_anywhere_subscription, params)
      request.send_request(options)
    end

    # <p>Creates an Fargate profile for your Amazon EKS cluster. You must have at least one
    #             Fargate profile in a cluster to be able to run pods on Fargate.</p>
    #          <p>The Fargate profile allows an administrator to declare which pods run on Fargate
    #             and specify which pods run on which Fargate profile. This declaration is done through
    #             the profile's selectors. Each profile can have up to five selectors that contain a
    #             namespace and labels. A namespace is required for every selector. The label field
    #             consists of multiple optional key-value pairs. Pods that match the selectors are
    #             scheduled on Fargate. If a to-be-scheduled pod matches any of the selectors in the
    #             Fargate profile, then that pod is run on Fargate.</p>
    #          <p>When you create a Fargate profile, you must specify a pod execution role to use with
    #             the pods that are scheduled with the profile. This role is added to the cluster's Kubernetes
    #                 <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Role
    #                 Based Access Control</a> (RBAC) for authorization so that the
    #                 <code>kubelet</code> that is running on the Fargate infrastructure can register
    #             with your Amazon EKS cluster so that it can appear in your cluster as a node. The pod
    #             execution role also provides IAM permissions to the Fargate infrastructure to allow
    #             read access to Amazon ECR image repositories. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">Pod
    #                 Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #          <p>Fargate profiles are immutable. However, you can create a new updated profile to
    #             replace an existing profile and then delete the original after the updated profile has
    #             finished creating.</p>
    #          <p>If any Fargate profiles in a cluster are in the <code>DELETING</code> status, you
    #             must wait for that Fargate profile to finish deleting before you can create any other
    #             profiles in that cluster.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html">Fargate profile</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @param [Hash, Types::CreateFargateProfileRequest] params
    # @option params [String] :fargate_profile_name
    #   <p>The name of the Fargate profile.</p>
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :pod_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>Pod</code> execution role to use for a <code>Pod</code>
    #               that matches the selectors in the Fargate profile. The <code>Pod</code> execution role
    #               allows Fargate infrastructure to register with your cluster as a node, and it provides
    #               read access to Amazon ECR image repositories. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html">
    #                  <code>Pod</code> execution role</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of subnets to launch a <code>Pod</code> into. A <code>Pod</code> running on
    #               Fargate isn't assigned a public IP address, so only private subnets (with no direct
    #               route to an Internet Gateway) are accepted for this parameter.</p>
    # @option params [Array<Types::FargateProfileSelector>] :selectors
    #   <p>The selectors to match for a <code>Pod</code> to use this Fargate profile. Each
    #               selector must have an associated Kubernetes <code>namespace</code>. Optionally, you can also
    #               specify <code>labels</code> for a <code>namespace</code>. You may specify up to five
    #               selectors in a Fargate profile.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fargate_profile_name: "String", # required
    #     cluster_name: "String", # required
    #     pod_execution_role_arn: "String", # required
    #     subnets: ["String"],
    #     selectors: [
    #       {
    #         namespace: "String",
    #         labels: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_fargate_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fargate_profile: {
    #       fargate_profile_name: "String",
    #       fargate_profile_arn: "String",
    #       cluster_name: "String",
    #       created_at: Time.now,
    #       pod_execution_role_arn: "String",
    #       subnets: ["String"],
    #       selectors: [
    #         {
    #           namespace: "String",
    #           labels: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       health: {
    #         issues: [
    #           {
    #             code: "PodExecutionRoleAlreadyInUse" # One of: ["PodExecutionRoleAlreadyInUse", "AccessDenied", "ClusterUnreachable", "InternalFailure"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateFargateProfileResponse]
    def create_fargate_profile(params = {}, options = {})
      request = build_request(:create_fargate_profile, params)
      request.send_request(options)
    end

    # <p>Creates a managed node group for an Amazon EKS cluster.</p>
    #          <p>You can only create a node group for your cluster that is equal to the current Kubernetes
    #             version for the cluster. All node groups are created with the latest AMI release version
    #             for the respective minor Kubernetes version of the cluster, unless you deploy a custom AMI
    #             using a launch template.</p>
    #          <p>For later updates, you will only be able to update a node group using a launch
    #             template only if it was originally deployed with a launch template. Additionally, the
    #             launch template ID or name must match what was used when the node group was created. You
    #             can update the launch template version with necessary changes. For more information
    #             about using launch templates, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with
    #                 launch templates</a>.</p>
    #          <p>An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and associated Amazon EC2 instances that
    #             are managed by Amazon Web Services for an Amazon EKS cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html">Managed
    #                 node groups</a> in the <i>Amazon EKS User Guide</i>.</p>
    #          <note>
    #             <p>Windows AMI types are only supported for commercial Amazon Web Services Regions that support
    #                 Windows on Amazon EKS.</p>
    #          </note>
    # @param [Hash, Types::CreateNodegroupRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :nodegroup_name
    #   <p>The unique name to give your node group.</p>
    # @option params [Types::NodegroupScalingConfig] :scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group that is created for your
    #               node group.</p>
    # @option params [Integer] :disk_size
    #   <p>The root device disk size (in GiB) for your node group instances. The default disk
    #               size is 20 GiB for Linux and Bottlerocket. The default disk size is 50 GiB for Windows.
    #               If you specify <code>launchTemplate</code>, then don't specify  <code>diskSize</code>, or the node group 
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Array<String>] :subnets
    #   <p>The subnets to use for the Auto Scaling group that is created for your node group.
    #               If you specify <code>launchTemplate</code>, then don't specify  <code>
    #                  <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html">SubnetId</a>
    #               </code> in your launch template, or the node group  deployment
    #               will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Array<String>] :instance_types
    #   <p>Specify the instance types for a node group. If you specify a GPU instance type, make
    #               sure to also specify an applicable GPU AMI type with the <code>amiType</code> parameter.
    #               If you specify <code>launchTemplate</code>, then you can specify zero or one instance
    #               type in your launch template <i>or</i> you can specify 0-20 instance types
    #               for <code>instanceTypes</code>. If however, you specify an instance type in your launch
    #               template <i>and</i> specify any <code>instanceTypes</code>, the node group
    #               deployment will fail. If you don't specify an instance type in a launch template or for
    #                   <code>instanceTypes</code>, then <code>t3.medium</code> is used, by default. If you
    #               specify <code>Spot</code> for <code>capacityType</code>, then we recommend specifying
    #               multiple values for <code>instanceTypes</code>. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types">Managed node group capacity types</a> and <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with
    #                   launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [String] :ami_type
    #   <p>The AMI type for your node group. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI,
    #                   then don't specify <code>amiType</code>, or the node group  deployment
    #               will fail. If your launch template uses a Windows custom AMI, then add
    #                   <code>eks:kube-proxy-windows</code> to your Windows nodes <code>rolearn</code> in
    #               the <code>aws-auth</code>
    #               <code>ConfigMap</code>. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Types::RemoteAccessConfig] :remote_access
    #   <p>The remote access configuration to use with your node group. For Linux, the protocol
    #               is SSH. For Windows, the protocol is RDP. If you specify <code>launchTemplate</code>, then don't specify 
    #                   <code>remoteAccess</code>, or the node group  deployment will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [String] :node_role
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The Amazon EKS worker
    #               node <code>kubelet</code> daemon makes calls to Amazon Web Services APIs on your behalf. Nodes receive
    #               permissions for these API calls through an IAM instance profile and associated
    #               policies. Before you can launch nodes and register them into a cluster, you must create
    #               an IAM role for those nodes to use when they are launched. For more information, see
    #                   <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS
    #                   node IAM role</a> in the <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.
    #               If you specify <code>launchTemplate</code>, then don't specify  <code>
    #                  <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html">IamInstanceProfile</a>
    #               </code> in your launch template, or the node group 
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Hash<String, String>] :labels
    #   <p>The Kubernetes <code>labels</code> to apply to the nodes in the node group when they are
    #               created.</p>
    # @option params [Array<Types::Taint>] :taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group. For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on
    #                   managed node groups</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   <p>An object representing a node group's launch template specification. When using this
    #               object, don't directly specify <code>instanceTypes</code>, <code>diskSize</code>, or
    #                   <code>remoteAccess</code>. You cannot later specify a different launch template ID
    #               or name than what was used to create the node group.</p>
    #            <p>Make sure that the launch template meets the requirements in
    #                   <code>launchTemplateSpecification</code>. Also refer to <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with
    #                   launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Types::NodegroupUpdateConfig] :update_config
    #   <p>The node group update configuration.</p>
    # @option params [Types::NodeRepairConfig] :node_repair_config
    #   <p>The node auto repair configuration for the node group.</p>
    # @option params [String] :capacity_type
    #   <p>The capacity type for your node group.</p>
    # @option params [String] :version
    #   <p>The Kubernetes version to use for your managed nodes. By default, the Kubernetes version of the
    #               cluster is used, and this is the only accepted specified value. If you specify <code>launchTemplate</code>,
    #               and your launch template uses a custom AMI, then don't specify  <code>version</code>, or the node group 
    #               deployment will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [String] :release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use with your node group. By default,
    #               the latest available AMI version for the node group's current Kubernetes version is used. For
    #               information about Linux versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS
    #                   optimized Amazon Linux AMI versions</a> in the <i>Amazon EKS User Guide</i>. Amazon EKS managed node
    #               groups support the November 2022 and later releases of the Windows AMIs. For information
    #               about Windows versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html">Amazon EKS
    #                   optimized Windows AMI versions</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify 
    #                   <code>releaseVersion</code>, or the node group  deployment will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1
    #     },
    #     disk_size: 1,
    #     subnets: ["String"], # required
    #     instance_types: ["String"],
    #     ami_type: "AL2_x86_64" # One of: ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_FIPS", "BOTTLEROCKET_x86_64_FIPS", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA", "AL2023_ARM_64_NVIDIA"],
    #     remote_access: {
    #       ec2_ssh_key: "String",
    #       source_security_groups: ["String"]
    #     },
    #     node_role: "String", # required
    #     labels: {
    #       "labelKey" => "labelValue"
    #     },
    #     taints: [
    #       {
    #         key: "taintKey",
    #         value: "taintValue",
    #         effect: "NO_SCHEDULE" # One of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_request_token: "String",
    #     launch_template: {
    #       name: "String",
    #       version: "String",
    #       id: "String"
    #     },
    #     update_config: {
    #       max_unavailable: 1,
    #       max_unavailable_percentage: 1,
    #       update_strategy: "DEFAULT" # One of: ["DEFAULT", "MINIMAL"]
    #     },
    #     node_repair_config: {
    #       enabled: false,
    #       max_unhealthy_node_threshold_count: 1,
    #       max_unhealthy_node_threshold_percentage: 1,
    #       max_parallel_nodes_repaired_count: 1,
    #       max_parallel_nodes_repaired_percentage: 1,
    #       node_repair_config_overrides: [
    #         {
    #           node_monitoring_condition: "String",
    #           node_unhealthy_reason: "String",
    #           min_repair_wait_time_mins: 1,
    #           repair_action: "Replace" # One of: ["Replace", "Reboot", "NoAction"]
    #         }
    #       ]
    #     },
    #     capacity_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT", "CAPACITY_BLOCK"],
    #     version: "String",
    #     release_version: "String"
    #   }
    #   options = {}
    #   response = client.create_nodegroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodegroup: {
    #       nodegroup_name: "String",
    #       nodegroup_arn: "String",
    #       cluster_name: "String",
    #       version: "String",
    #       release_version: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"],
    #       capacity_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT", "CAPACITY_BLOCK"],
    #       scaling_config: {
    #         min_size: 1,
    #         max_size: 1,
    #         desired_size: 1
    #       },
    #       instance_types: ["String"],
    #       subnets: ["String"],
    #       remote_access: {
    #         ec2_ssh_key: "String",
    #         source_security_groups: ["String"]
    #       },
    #       ami_type: "AL2_x86_64" # One of: ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_FIPS", "BOTTLEROCKET_x86_64_FIPS", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA", "AL2023_ARM_64_NVIDIA"],
    #       node_role: "String",
    #       labels: {
    #         "labelKey" => "labelValue"
    #       },
    #       taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE" # One of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #         }
    #       ],
    #       resources: {
    #         auto_scaling_groups: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         remote_access_security_group: "String"
    #       },
    #       disk_size: 1,
    #       health: {
    #         issues: [
    #           {
    #             code: "AutoScalingGroupNotFound" # One of: ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "Ec2SubnetMissingIpv6Assignment", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "AmiIdNotFound", "AutoScalingGroupOptInRequired", "AutoScalingGroupRateLimitExceeded", "Ec2LaunchTemplateDeletionFailure", "Ec2LaunchTemplateInvalidConfiguration", "Ec2LaunchTemplateMaxLimitExceeded", "Ec2SubnetListTooLong", "IamThrottling", "NodeTerminationFailure", "PodEvictionFailure", "SourceEc2LaunchTemplateNotFound", "LimitExceeded", "Unknown", "AutoScalingGroupInstanceRefreshActive", "KubernetesLabelInvalid", "Ec2LaunchTemplateVersionMaxLimitExceeded", "Ec2InstanceTypeDoesNotExist"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       update_config: {
    #         max_unavailable: 1,
    #         max_unavailable_percentage: 1,
    #         update_strategy: "DEFAULT" # One of: ["DEFAULT", "MINIMAL"]
    #       },
    #       node_repair_config: {
    #         enabled: false,
    #         max_unhealthy_node_threshold_count: 1,
    #         max_unhealthy_node_threshold_percentage: 1,
    #         max_parallel_nodes_repaired_count: 1,
    #         max_parallel_nodes_repaired_percentage: 1,
    #         node_repair_config_overrides: [
    #           {
    #             node_monitoring_condition: "String",
    #             node_unhealthy_reason: "String",
    #             min_repair_wait_time_mins: 1,
    #             repair_action: "Replace" # One of: ["Replace", "Reboot", "NoAction"]
    #           }
    #         ]
    #       },
    #       launch_template: {
    #         name: "String",
    #         version: "String",
    #         id: "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateNodegroupResponse]
    def create_nodegroup(params = {}, options = {})
      request = build_request(:create_nodegroup, params)
      request.send_request(options)
    end

    # <p>Creates an EKS Pod Identity association between a service account in an Amazon EKS cluster and an IAM role
    #             with <i>EKS Pod Identity</i>. Use EKS Pod Identity to give temporary IAM credentials to
    #             Pods and the credentials are rotated automatically.</p>
    #          <p>Amazon EKS Pod Identity associations provide the ability to manage credentials for your applications, similar to the way that Amazon EC2 instance profiles provide credentials to Amazon EC2 instances.</p>
    #          <p>If a Pod uses a service account that has an association, Amazon EKS sets environment variables
    #             in the containers of the Pod. The environment variables configure the Amazon Web Services SDKs,
    #             including the Command Line Interface, to use the EKS Pod Identity credentials.</p>
    #          <p>EKS Pod Identity is a simpler method than <i>IAM roles for service
    #                 accounts</i>, as this method doesn't use OIDC identity providers.
    #             Additionally, you can configure a role for EKS Pod Identity once, and reuse it across
    #             clusters.</p>
    #          <p>Similar to Amazon Web Services IAM behavior, EKS Pod Identity associations are eventually consistent,
    #             and may take several seconds to be effective after the initial API call returns
    #             successfully. You must design your applications to account for these potential delays.
    #             We recommend that you don’t include association create/updates in the
    #             critical, high-availability code paths of your application. Instead, make changes in a
    #             separate initialization or setup routine that you run less frequently.</p>
    #          <p>You can set a <i>target IAM role</i> in the same or a different
    #             account for advanced scenarios. With a target role, EKS Pod Identity automatically performs two
    #             role assumptions in sequence: first assuming the role in the association that is in this
    #             account, then using those credentials to assume the target IAM role. This process
    #             provides your Pod with temporary credentials that have the permissions defined in the
    #             target role, allowing secure access to resources in another Amazon Web Services account.</p>
    # @param [Hash, Types::CreatePodIdentityAssociationRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to create the EKS Pod Identity association in.</p>
    # @option params [String] :namespace
    #   <p>The name of the Kubernetes namespace inside the cluster to create the EKS Pod Identity association in. The
    #               service account and the Pods that use the service account must be in this
    #               namespace.</p>
    # @option params [String] :service_account
    #   <p>The name of the Kubernetes service account inside the cluster to associate the IAM
    #               credentials with.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity
    #               agent manages credentials to assume this role for applications in the containers in the
    #               Pods that use this service account.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource – 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length – 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length – 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :disable_session_tags
    #   <p>Disable the automatic sessions tags that are appended by EKS Pod Identity.</p>
    #            <p>EKS Pod Identity adds a pre-defined set of session tags when it assumes the role. You
    #               can use these tags to author a single role that can work across resources by allowing
    #               access to Amazon Web Services resources based on matching tags. By default, EKS Pod Identity attaches
    #               six tags, including tags for cluster name, namespace, and service account name. For the
    #               list of tags added by EKS Pod Identity, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags">List of session tags
    #                   added by EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>Amazon Web Services compresses inline session policies, managed policy ARNs, and session tags into a
    #               packed binary format that has a separate limit. If you receive a
    #                   <code>PackedPolicyTooLarge</code> error indicating the packed binary format has
    #               exceeded the size limit, you can attempt to reduce the size by disabling the session
    #               tags added by EKS Pod Identity.</p>
    # @option params [String] :target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the target IAM role to associate with the service account. This role
    #               is assumed by using the EKS Pod Identity association role, then the credentials for this
    #               role are injected into the Pod.</p>
    #            <p>When you run applications on Amazon EKS, your application might need to access Amazon Web Services
    #               resources from a different role that exists in the same or different Amazon Web Services account. For
    #               example, your application running in “Account A” might need to access resources, such as
    #               Amazon S3 buckets in “Account B” or within “Account A” itself. You can create a association
    #               to access Amazon Web Services resources in “Account B” by creating two IAM roles: a role in “Account
    #               A” and a role in “Account B” (which can be the same or different account), each with the
    #               necessary trust and permission policies. After you provide these roles in the
    #                   <i>IAM role</i> and <i>Target IAM role</i> fields, EKS
    #               will perform role chaining to ensure your application gets the required permissions.
    #               This means Role A will assume Role B, allowing your Pods to securely access resources
    #               like S3 buckets in the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     namespace: "String", # required
    #     service_account: "String", # required
    #     role_arn: "String", # required
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     disable_session_tags: false,
    #     target_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.create_pod_identity_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       cluster_name: "String",
    #       namespace: "String",
    #       service_account: "String",
    #       role_arn: "String",
    #       association_arn: "String",
    #       association_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       owner_arn: "String",
    #       disable_session_tags: false,
    #       target_role_arn: "String",
    #       external_id: "String"
    #     }
    #   }
    # @return [Types::CreatePodIdentityAssociationResponse]
    def create_pod_identity_association(params = {}, options = {})
      request = build_request(:create_pod_identity_association, params)
      request.send_request(options)
    end

    # <p>Deletes an access entry.</p>
    #          <p>Deleting an access entry of a type other than <code>Standard</code> can cause your
    #             cluster to function improperly. If you delete an access entry in error, you can recreate
    #             it.</p>
    # @param [Hash, Types::DeleteAccessEntryRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_access_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessEntryResponse]
    def delete_access_entry(params = {}, options = {})
      request = build_request(:delete_access_entry, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon EKS add-on.</p>
    #          <p>When you remove an add-on, it's deleted from the cluster. You can always manually
    #             start an add-on on the cluster using the Kubernetes API.</p>
    # @param [Hash, Types::DeleteAddonRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    # @option params [Boolean] :preserve
    #   <p>Specifying this option preserves the add-on software on your cluster but Amazon EKS stops
    #               managing any settings for the add-on. If an IAM account is associated with the add-on,
    #               it isn't removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #     preserve: false
    #   }
    #   options = {}
    #   response = client.delete_addon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon: {
    #       addon_name: "String",
    #       cluster_name: "ClusterName",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED", "UPDATE_FAILED"],
    #       addon_version: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound", "AddonSubscriptionNeeded", "AddonPermissionFailure"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       addon_arn: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       service_account_role_arn: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       publisher: "String",
    #       owner: "String",
    #       marketplace_information: {
    #         product_id: "String",
    #         product_url: "String"
    #       },
    #       configuration_values: "String",
    #       pod_identity_associations: ["String"],
    #       namespace_config: {
    #         namespace: "namespace"
    #       }
    #     }
    #   }
    # @return [Types::DeleteAddonResponse]
    def delete_addon(params = {}, options = {})
      request = build_request(:delete_addon, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon EKS cluster control plane.</p>
    #          <p>If you have active services in your cluster that are associated with a load balancer,
    #             you must delete those services before deleting the cluster so that the load balancers
    #             are deleted properly. Otherwise, you can have orphaned resources in your VPC that
    #             prevent you from being able to delete the VPC. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html">Deleting a
    #                 cluster</a> in the <i>Amazon EKS User Guide</i>.</p>
    #          <p>If you have managed node groups or Fargate profiles attached to the cluster, you
    #             must delete them first. For more information, see <code>DeleteNodgroup</code> and
    #                 <code>DeleteFargateProfile</code>.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :name
    #   <p>The name of the cluster to delete.</p>
    # @example To delete a cluster
    #   # This example command deletes a cluster named `devel` in your default region.
    #   params = {
    #     name: "devel"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       version: "String",
    #       endpoint: "String",
    #       role_arn: "String",
    #       resources_vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         cluster_security_group_id: "String",
    #         vpc_id: "String",
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
    #         public_access_cidrs: ["String"]
    #       },
    #       kubernetes_network_config: {
    #         service_ipv4_cidr: "String",
    #         service_ipv6_cidr: "String",
    #         ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         elastic_load_balancing: {
    #           enabled: false
    #         }
    #       },
    #       logging: {
    #         cluster_logging: [
    #           {
    #             types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #             enabled: false
    #           }
    #         ]
    #       },
    #       identity: {
    #         oidc: {
    #           issuer: "String"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"],
    #       certificate_authority: {
    #         data: "String"
    #       },
    #       client_request_token: "String",
    #       platform_version: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       encryption_config: [
    #         {
    #           resources: ["String"],
    #           provider: {
    #             key_arn: "String"
    #           }
    #         }
    #       ],
    #       connector_config: {
    #         activation_id: "String",
    #         activation_code: "String",
    #         activation_expiry: Time.now,
    #         provider: "String",
    #         role_arn: "String"
    #       },
    #       id: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       outpost_config: {
    #         outpost_arns: ["String"], # required
    #         control_plane_instance_type: "String", # required
    #         control_plane_placement: {
    #           group_name: "String"
    #         }
    #       },
    #       access_config: {
    #         bootstrap_cluster_creator_admin_permissions: false,
    #         authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #       },
    #       upgrade_policy: {
    #         support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #       },
    #       zonal_shift_config: {
    #         enabled: false
    #       },
    #       remote_network_config: {
    #         remote_node_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ],
    #         remote_pod_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ]
    #       },
    #       compute_config: {
    #         enabled: false,
    #         node_pools: ["String"],
    #         node_role_arn: "String"
    #       },
    #       storage_config: {
    #         block_storage: {
    #           enabled: false
    #         }
    #       },
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes an expired or inactive subscription. Deleting inactive subscriptions removes
    #             them from the Amazon Web Services Management Console view and from list/describe API responses. Subscriptions can
    #             only be cancelled within 7 days of creation and are cancelled by creating a ticket in
    #             the Amazon Web Services Support Center. </p>
    # @param [Hash, Types::DeleteEksAnywhereSubscriptionRequest] params
    # @option params [String] :id
    #   <p>The ID of the subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_eks_anywhere_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       id: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       effective_date: Time.now,
    #       expiration_date: Time.now,
    #       license_quantity: 1,
    #       license_type: "Cluster" # One of: ["Cluster"],
    #       term: {
    #         duration: 1,
    #         unit: "MONTHS" # One of: ["MONTHS"]
    #       },
    #       status: "String",
    #       auto_renew: false,
    #       license_arns: ["String"],
    #       licenses: [
    #         {
    #           id: "String",
    #           token: "String"
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DeleteEksAnywhereSubscriptionResponse]
    def delete_eks_anywhere_subscription(params = {}, options = {})
      request = build_request(:delete_eks_anywhere_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes an Fargate profile.</p>
    #          <p>When you delete a Fargate profile, any <code>Pod</code> running on Fargate that
    #             was created with the profile is deleted. If the <code>Pod</code> matches another
    #             Fargate profile, then it is scheduled on Fargate with that profile. If it no longer
    #             matches any Fargate profiles, then it's not scheduled on Fargate and may remain in a
    #             pending state.</p>
    #          <p>Only one Fargate profile in a cluster can be in the <code>DELETING</code> status at
    #             a time. You must wait for a Fargate profile to finish deleting before you can delete
    #             any other profiles in that cluster.</p>
    # @param [Hash, Types::DeleteFargateProfileRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :fargate_profile_name
    #   <p>The name of the Fargate profile to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     fargate_profile_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_fargate_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fargate_profile: {
    #       fargate_profile_name: "String",
    #       fargate_profile_arn: "String",
    #       cluster_name: "String",
    #       created_at: Time.now,
    #       pod_execution_role_arn: "String",
    #       subnets: ["String"],
    #       selectors: [
    #         {
    #           namespace: "String",
    #           labels: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       health: {
    #         issues: [
    #           {
    #             code: "PodExecutionRoleAlreadyInUse" # One of: ["PodExecutionRoleAlreadyInUse", "AccessDenied", "ClusterUnreachable", "InternalFailure"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeleteFargateProfileResponse]
    def delete_fargate_profile(params = {}, options = {})
      request = build_request(:delete_fargate_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a managed node group.</p>
    # @param [Hash, Types::DeleteNodegroupRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :nodegroup_name
    #   <p>The name of the node group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_nodegroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodegroup: {
    #       nodegroup_name: "String",
    #       nodegroup_arn: "String",
    #       cluster_name: "String",
    #       version: "String",
    #       release_version: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"],
    #       capacity_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT", "CAPACITY_BLOCK"],
    #       scaling_config: {
    #         min_size: 1,
    #         max_size: 1,
    #         desired_size: 1
    #       },
    #       instance_types: ["String"],
    #       subnets: ["String"],
    #       remote_access: {
    #         ec2_ssh_key: "String",
    #         source_security_groups: ["String"]
    #       },
    #       ami_type: "AL2_x86_64" # One of: ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_FIPS", "BOTTLEROCKET_x86_64_FIPS", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA", "AL2023_ARM_64_NVIDIA"],
    #       node_role: "String",
    #       labels: {
    #         "labelKey" => "labelValue"
    #       },
    #       taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE" # One of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #         }
    #       ],
    #       resources: {
    #         auto_scaling_groups: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         remote_access_security_group: "String"
    #       },
    #       disk_size: 1,
    #       health: {
    #         issues: [
    #           {
    #             code: "AutoScalingGroupNotFound" # One of: ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "Ec2SubnetMissingIpv6Assignment", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "AmiIdNotFound", "AutoScalingGroupOptInRequired", "AutoScalingGroupRateLimitExceeded", "Ec2LaunchTemplateDeletionFailure", "Ec2LaunchTemplateInvalidConfiguration", "Ec2LaunchTemplateMaxLimitExceeded", "Ec2SubnetListTooLong", "IamThrottling", "NodeTerminationFailure", "PodEvictionFailure", "SourceEc2LaunchTemplateNotFound", "LimitExceeded", "Unknown", "AutoScalingGroupInstanceRefreshActive", "KubernetesLabelInvalid", "Ec2LaunchTemplateVersionMaxLimitExceeded", "Ec2InstanceTypeDoesNotExist"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       update_config: {
    #         max_unavailable: 1,
    #         max_unavailable_percentage: 1,
    #         update_strategy: "DEFAULT" # One of: ["DEFAULT", "MINIMAL"]
    #       },
    #       node_repair_config: {
    #         enabled: false,
    #         max_unhealthy_node_threshold_count: 1,
    #         max_unhealthy_node_threshold_percentage: 1,
    #         max_parallel_nodes_repaired_count: 1,
    #         max_parallel_nodes_repaired_percentage: 1,
    #         node_repair_config_overrides: [
    #           {
    #             node_monitoring_condition: "String",
    #             node_unhealthy_reason: "String",
    #             min_repair_wait_time_mins: 1,
    #             repair_action: "Replace" # One of: ["Replace", "Reboot", "NoAction"]
    #           }
    #         ]
    #       },
    #       launch_template: {
    #         name: "String",
    #         version: "String",
    #         id: "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DeleteNodegroupResponse]
    def delete_nodegroup(params = {}, options = {})
      request = build_request(:delete_nodegroup, params)
      request.send_request(options)
    end

    # <p>Deletes a EKS Pod Identity association.</p>
    #          <p>The temporary Amazon Web Services credentials from the previous IAM role session might still be valid until the session expiry. If you need to immediately revoke the temporary session credentials, then go to the role in the IAM console.</p>
    # @param [Hash, Types::DeletePodIdentityAssociationRequest] params
    # @option params [String] :cluster_name
    #   <p>The cluster name that</p>
    # @option params [String] :association_id
    #   <p>The ID of the association to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     association_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_pod_identity_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       cluster_name: "String",
    #       namespace: "String",
    #       service_account: "String",
    #       role_arn: "String",
    #       association_arn: "String",
    #       association_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       owner_arn: "String",
    #       disable_session_tags: false,
    #       target_role_arn: "String",
    #       external_id: "String"
    #     }
    #   }
    # @return [Types::DeletePodIdentityAssociationResponse]
    def delete_pod_identity_association(params = {}, options = {})
      request = build_request(:delete_pod_identity_association, params)
      request.send_request(options)
    end

    # <p>Deregisters a connected cluster to remove it from the Amazon EKS control plane.</p>
    #          <p>A connected cluster is a Kubernetes cluster that you've connected to your control plane
    #             using the <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html">Amazon EKS Connector</a>.</p>
    # @param [Hash, Types::DeregisterClusterRequest] params
    # @option params [String] :name
    #   <p>The name of the connected cluster to deregister.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       version: "String",
    #       endpoint: "String",
    #       role_arn: "String",
    #       resources_vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         cluster_security_group_id: "String",
    #         vpc_id: "String",
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
    #         public_access_cidrs: ["String"]
    #       },
    #       kubernetes_network_config: {
    #         service_ipv4_cidr: "String",
    #         service_ipv6_cidr: "String",
    #         ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         elastic_load_balancing: {
    #           enabled: false
    #         }
    #       },
    #       logging: {
    #         cluster_logging: [
    #           {
    #             types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #             enabled: false
    #           }
    #         ]
    #       },
    #       identity: {
    #         oidc: {
    #           issuer: "String"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"],
    #       certificate_authority: {
    #         data: "String"
    #       },
    #       client_request_token: "String",
    #       platform_version: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       encryption_config: [
    #         {
    #           resources: ["String"],
    #           provider: {
    #             key_arn: "String"
    #           }
    #         }
    #       ],
    #       connector_config: {
    #         activation_id: "String",
    #         activation_code: "String",
    #         activation_expiry: Time.now,
    #         provider: "String",
    #         role_arn: "String"
    #       },
    #       id: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       outpost_config: {
    #         outpost_arns: ["String"], # required
    #         control_plane_instance_type: "String", # required
    #         control_plane_placement: {
    #           group_name: "String"
    #         }
    #       },
    #       access_config: {
    #         bootstrap_cluster_creator_admin_permissions: false,
    #         authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #       },
    #       upgrade_policy: {
    #         support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #       },
    #       zonal_shift_config: {
    #         enabled: false
    #       },
    #       remote_network_config: {
    #         remote_node_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ],
    #         remote_pod_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ]
    #       },
    #       compute_config: {
    #         enabled: false,
    #         node_pools: ["String"],
    #         node_role_arn: "String"
    #       },
    #       storage_config: {
    #         block_storage: {
    #           enabled: false
    #         }
    #       },
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::DeregisterClusterResponse]
    def deregister_cluster(params = {}, options = {})
      request = build_request(:deregister_cluster, params)
      request.send_request(options)
    end

    # <p>Describes an access entry.</p>
    # @param [Hash, Types::DescribeAccessEntryRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_access_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_entry: {
    #       cluster_name: "String",
    #       principal_arn: "String",
    #       kubernetes_groups: ["String"],
    #       access_entry_arn: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       username: "String",
    #       type: "String"
    #     }
    #   }
    # @return [Types::DescribeAccessEntryResponse]
    def describe_access_entry(params = {}, options = {})
      request = build_request(:describe_access_entry, params)
      request.send_request(options)
    end

    # <p>Describes an Amazon EKS add-on.</p>
    # @param [Hash, Types::DescribeAddonRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_addon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon: {
    #       addon_name: "String",
    #       cluster_name: "ClusterName",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "DELETING", "DELETE_FAILED", "DEGRADED", "UPDATE_FAILED"],
    #       addon_version: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "InternalFailure", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound", "AddonSubscriptionNeeded", "AddonPermissionFailure"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       addon_arn: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       service_account_role_arn: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       publisher: "String",
    #       owner: "String",
    #       marketplace_information: {
    #         product_id: "String",
    #         product_url: "String"
    #       },
    #       configuration_values: "String",
    #       pod_identity_associations: ["String"],
    #       namespace_config: {
    #         namespace: "namespace"
    #       }
    #     }
    #   }
    # @return [Types::DescribeAddonResponse]
    def describe_addon(params = {}, options = {})
      request = build_request(:describe_addon, params)
      request.send_request(options)
    end

    # <p>Returns configuration options.</p>
    # @param [Hash, Types::DescribeAddonConfigurationRequest] params
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by
    #                   <code>DescribeAddonVersions</code>.</p>
    # @option params [String] :addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     addon_name: "String", # required
    #     addon_version: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_addon_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addon_name: "String",
    #     addon_version: "String",
    #     configuration_schema: "String",
    #     pod_identity_configuration: [
    #       {
    #         service_account: "String",
    #         recommended_managed_policies: ["String"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAddonConfigurationResponse]
    def describe_addon_configuration(params = {}, options = {})
      request = build_request(:describe_addon_configuration, params)
      request.send_request(options)
    end

    # <p>Describes the versions for an add-on.</p>
    #          <p>Information such as the Kubernetes versions that you can use the add-on with, the
    #                 <code>owner</code>, <code>publisher</code>, and the <code>type</code> of the add-on
    #             are returned.</p>
    # @param [Hash, Types::DescribeAddonVersionsRequest] params
    # @option params [String] :kubernetes_version
    #   <p>The Kubernetes versions that you can use the add-on with.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    # @option params [Array<String>] :types
    #   <p>The type of the add-on. For valid <code>types</code>, don't specify a value for this
    #               property.</p>
    # @option params [Array<String>] :publishers
    #   <p>The publisher of the add-on. For valid <code>publishers</code>, don't specify a value
    #               for this property.</p>
    # @option params [Array<String>] :owners
    #   <p>The owner of the add-on. For valid <code>owners</code>, don't specify a value for this
    #               property.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kubernetes_version: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     addon_name: "String",
    #     types: ["String"],
    #     publishers: ["String"],
    #     owners: ["String"]
    #   }
    #   options = {}
    #   response = client.describe_addon_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addons: [
    #       {
    #         addon_name: "String",
    #         type: "String",
    #         addon_versions: [
    #           {
    #             addon_version: "String",
    #             architecture: ["String"],
    #             compute_types: ["String"],
    #             compatibilities: [
    #               {
    #                 cluster_version: "String",
    #                 platform_versions: ["String"],
    #                 default_version: false
    #               }
    #             ],
    #             requires_configuration: false,
    #             requires_iam_permissions: false
    #           }
    #         ],
    #         publisher: "String",
    #         owner: "String",
    #         marketplace_information: {
    #           product_id: "String",
    #           product_url: "String"
    #         },
    #         default_namespace: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeAddonVersionsResponse]
    def describe_addon_versions(params = {}, options = {})
      request = build_request(:describe_addon_versions, params)
      request.send_request(options)
    end

    # <p>Describes an Amazon EKS cluster.</p>
    #          <p>The API server endpoint and certificate authority data returned by this operation are
    #             required for <code>kubelet</code> and <code>kubectl</code> to communicate with your
    #             Kubernetes API server. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html">Creating or
    #                 updating a <code>kubeconfig</code> file for an Amazon EKS cluster</a>.</p>
    #          <note>
    #             <p>The API server endpoint and certificate authority data aren't available until the
    #                 cluster reaches the <code>ACTIVE</code> state.</p>
    #          </note>
    # @param [Hash, Types::DescribeClusterRequest] params
    # @option params [String] :name
    #   <p>The name of your cluster.</p>
    # @example To describe a cluster
    #   # This example command provides a description of the specified cluster in your default region.
    #   params = {
    #     name: "devel"
    #   }
    #   options = {}
    #   response = client.describe_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "devel",
    #       arn: "arn:aws:eks:us-west-2:012345678910:cluster/devel",
    #       created_at: Time.parse(1527807879.988),
    #       version: "1.10",
    #       endpoint: "https://A0DCCD80A04F01705DD065655C30CC3D.yl4.us-west-2.eks.amazonaws.com",
    #       role_arn: "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ONKE3BQ4PI",
    #       resources_vpc_config: {
    #         subnet_ids: [
    #           "subnet-6782e71e",
    #           "subnet-e7e761ac"
    #         ],
    #         security_group_ids: [
    #           "sg-6979fe18"
    #         ],
    #         vpc_id: "vpc-950809ec"
    #       },
    #       status: ACTIVE,
    #       certificate_authority: {
    #         data: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNE1EVXpNVEl6TVRFek1Wb1hEVEk0TURVeU9ESXpNVEV6TVZvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTTZWCjVUaG4rdFcySm9Xa2hQMzRlVUZMNitaRXJOZGIvWVdrTmtDdWNGS2RaaXl2TjlMVmdvUmV2MjlFVFZlN1ZGbSsKUTJ3ZURyRXJiQyt0dVlibkFuN1ZLYmE3ay9hb1BHekZMdmVnb0t6b0M1N2NUdGVwZzRIazRlK2tIWHNaME10MApyb3NzcjhFM1ROeExETnNJTThGL1cwdjhsTGNCbWRPcjQyV2VuTjFHZXJnaDNSZ2wzR3JIazBnNTU0SjFWenJZCm9hTi8zODFUczlOTFF2QTBXb0xIcjBFRlZpTFdSZEoyZ3lXaC9ybDVyOFNDOHZaQXg1YW1BU0hVd01aTFpWRC8KTDBpOW4wRVM0MkpVdzQyQmxHOEdpd3NhTkJWV3lUTHZKclNhRXlDSHFtVVZaUTFDZkFXUjl0L3JleVVOVXM3TApWV1FqM3BFbk9RMitMSWJrc0RzQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFNZ3RsQ1dIQ2U2YzVHMXl2YlFTS0Q4K2hUalkKSm1NSG56L2EvRGt0WG9YUjFVQzIrZUgzT1BZWmVjRVZZZHVaSlZCckNNQ2VWR0ZkeWdBYlNLc1FxWDg0S2RXbAp1MU5QaERDSmEyRHliN2pVMUV6VThTQjFGZUZ5ZFE3a0hNS1E1blpBRVFQOTY4S01hSGUrSm0yQ2x1UFJWbEJVCjF4WlhTS1gzTVZ0K1Q0SU1EV2d6c3JRSjVuQkRjdEtLcUZtM3pKdVVubHo5ZEpVckdscEltMjVJWXJDckxYUFgKWkUwRUtRNWEzMHhkVWNrTHRGQkQrOEtBdFdqSS9yZUZPNzM1YnBMdVoyOTBaNm42QlF3elRrS0p4cnhVc3QvOAppNGsxcnlsaUdWMm5SSjBUYjNORkczNHgrYWdzYTRoSTFPbU90TFM0TmgvRXJxT3lIUXNDc2hEQUtKUT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       version: "String",
    #       endpoint: "String",
    #       role_arn: "String",
    #       resources_vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         cluster_security_group_id: "String",
    #         vpc_id: "String",
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
    #         public_access_cidrs: ["String"]
    #       },
    #       kubernetes_network_config: {
    #         service_ipv4_cidr: "String",
    #         service_ipv6_cidr: "String",
    #         ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         elastic_load_balancing: {
    #           enabled: false
    #         }
    #       },
    #       logging: {
    #         cluster_logging: [
    #           {
    #             types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #             enabled: false
    #           }
    #         ]
    #       },
    #       identity: {
    #         oidc: {
    #           issuer: "String"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"],
    #       certificate_authority: {
    #         data: "String"
    #       },
    #       client_request_token: "String",
    #       platform_version: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       encryption_config: [
    #         {
    #           resources: ["String"],
    #           provider: {
    #             key_arn: "String"
    #           }
    #         }
    #       ],
    #       connector_config: {
    #         activation_id: "String",
    #         activation_code: "String",
    #         activation_expiry: Time.now,
    #         provider: "String",
    #         role_arn: "String"
    #       },
    #       id: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       outpost_config: {
    #         outpost_arns: ["String"], # required
    #         control_plane_instance_type: "String", # required
    #         control_plane_placement: {
    #           group_name: "String"
    #         }
    #       },
    #       access_config: {
    #         bootstrap_cluster_creator_admin_permissions: false,
    #         authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #       },
    #       upgrade_policy: {
    #         support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #       },
    #       zonal_shift_config: {
    #         enabled: false
    #       },
    #       remote_network_config: {
    #         remote_node_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ],
    #         remote_pod_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ]
    #       },
    #       compute_config: {
    #         enabled: false,
    #         node_pools: ["String"],
    #         node_role_arn: "String"
    #       },
    #       storage_config: {
    #         block_storage: {
    #           enabled: false
    #         }
    #       },
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::DescribeClusterResponse]
    def describe_cluster(params = {}, options = {})
      request = build_request(:describe_cluster, params)
      request.send_request(options)
    end

    # <p>Lists available Kubernetes versions for Amazon EKS clusters.</p>
    # @param [Hash, Types::DescribeClusterVersionsRequest] params
    # @option params [String] :cluster_type
    #   <p>The type of cluster to filter versions by.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>Pagination token for the next set of results.</p>
    # @option params [Boolean] :default_only
    #   <p>Filter to show only default versions.</p>
    # @option params [Boolean] :include_all
    #   <p>Include all available versions in the response.</p>
    # @option params [Array<String>] :cluster_versions
    #   <p>List of specific cluster versions to describe.</p>
    # @option params [String] :status
    #   <important>
    #               <p>This field is deprecated. Use <code>versionStatus</code> instead, as that field
    #                   matches for input and output of this action.</p>
    #            </important>
    #            <p>Filter versions by their current status.</p>
    # @option params [String] :version_status
    #   <p>Filter versions by their current status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_type: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     default_only: false,
    #     include_all: false,
    #     cluster_versions: ["String"],
    #     status: "unsupported" # One of: ["unsupported", "standard-support", "extended-support"],
    #     version_status: "UNSUPPORTED" # One of: ["UNSUPPORTED", "STANDARD_SUPPORT", "EXTENDED_SUPPORT"]
    #   }
    #   options = {}
    #   response = client.describe_cluster_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     cluster_versions: [
    #       {
    #         cluster_version: "String",
    #         cluster_type: "String",
    #         default_platform_version: "String",
    #         default_version: false,
    #         release_date: Time.now,
    #         end_of_standard_support_date: Time.now,
    #         end_of_extended_support_date: Time.now,
    #         status: "unsupported" # One of: ["unsupported", "standard-support", "extended-support"],
    #         version_status: "UNSUPPORTED" # One of: ["UNSUPPORTED", "STANDARD_SUPPORT", "EXTENDED_SUPPORT"],
    #         kubernetes_patch_version: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeClusterVersionsResponse]
    def describe_cluster_versions(params = {}, options = {})
      request = build_request(:describe_cluster_versions, params)
      request.send_request(options)
    end

    # <p>Returns descriptive information about a subscription.</p>
    # @param [Hash, Types::DescribeEksAnywhereSubscriptionRequest] params
    # @option params [String] :id
    #   <p>The ID of the subscription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_eks_anywhere_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       id: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       effective_date: Time.now,
    #       expiration_date: Time.now,
    #       license_quantity: 1,
    #       license_type: "Cluster" # One of: ["Cluster"],
    #       term: {
    #         duration: 1,
    #         unit: "MONTHS" # One of: ["MONTHS"]
    #       },
    #       status: "String",
    #       auto_renew: false,
    #       license_arns: ["String"],
    #       licenses: [
    #         {
    #           id: "String",
    #           token: "String"
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeEksAnywhereSubscriptionResponse]
    def describe_eks_anywhere_subscription(params = {}, options = {})
      request = build_request(:describe_eks_anywhere_subscription, params)
      request.send_request(options)
    end

    # <p>Describes an Fargate profile.</p>
    # @param [Hash, Types::DescribeFargateProfileRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :fargate_profile_name
    #   <p>The name of the Fargate profile to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     fargate_profile_name: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_fargate_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fargate_profile: {
    #       fargate_profile_name: "String",
    #       fargate_profile_arn: "String",
    #       cluster_name: "String",
    #       created_at: Time.now,
    #       pod_execution_role_arn: "String",
    #       subnets: ["String"],
    #       selectors: [
    #         {
    #           namespace: "String",
    #           labels: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "CREATE_FAILED", "DELETE_FAILED"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       health: {
    #         issues: [
    #           {
    #             code: "PodExecutionRoleAlreadyInUse" # One of: ["PodExecutionRoleAlreadyInUse", "AccessDenied", "ClusterUnreachable", "InternalFailure"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeFargateProfileResponse]
    def describe_fargate_profile(params = {}, options = {})
      request = build_request(:describe_fargate_profile, params)
      request.send_request(options)
    end

    # <p>Describes an identity provider configuration.</p>
    # @param [Hash, Types::DescribeIdentityProviderConfigRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Types::IdentityProviderConfig] :identity_provider_config
    #   <p>An object representing an identity provider configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     identity_provider_config: { # required
    #       type: "String", # required
    #       name: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.describe_identity_provider_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_config: {
    #       oidc: {
    #         identity_provider_config_name: "String",
    #         identity_provider_config_arn: "String",
    #         cluster_name: "String",
    #         issuer_url: "String",
    #         client_id: "String",
    #         username_claim: "String",
    #         username_prefix: "String",
    #         groups_claim: "String",
    #         groups_prefix: "String",
    #         required_claims: {
    #           "requiredClaimsKey" => "requiredClaimsValue"
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeIdentityProviderConfigResponse]
    def describe_identity_provider_config(params = {}, options = {})
      request = build_request(:describe_identity_provider_config, params)
      request.send_request(options)
    end

    # <p>Returns details about an insight that you specify using its ID.</p>
    # @param [Hash, Types::DescribeInsightRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to describe the insight for.</p>
    # @option params [String] :id
    #   <p>The identity of the insight to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight: {
    #       id: "String",
    #       name: "String",
    #       category: "UPGRADE_READINESS" # One of: ["UPGRADE_READINESS", "MISCONFIGURATION"],
    #       kubernetes_version: "String",
    #       last_refresh_time: Time.now,
    #       last_transition_time: Time.now,
    #       description: "String",
    #       insight_status: {
    #         status: "PASSING" # One of: ["PASSING", "WARNING", "ERROR", "UNKNOWN"],
    #         reason: "String"
    #       },
    #       recommendation: "String",
    #       additional_info: {
    #         "String" => "String"
    #       },
    #       resources: [
    #         {
    #           insight_status: {
    #             status: "PASSING" # One of: ["PASSING", "WARNING", "ERROR", "UNKNOWN"],
    #             reason: "String"
    #           },
    #           kubernetes_resource_uri: "String",
    #           arn: "String"
    #         }
    #       ],
    #       category_specific_summary: {
    #         deprecation_details: [
    #           {
    #             usage: "String",
    #             replaced_with: "String",
    #             stop_serving_version: "String",
    #             start_serving_replacement_version: "String",
    #             client_stats: [
    #               {
    #                 user_agent: "String",
    #                 number_of_requests_last30_days: 1,
    #                 last_request_time: Time.now
    #               }
    #             ]
    #           }
    #         ],
    #         addon_compatibility_details: [
    #           {
    #             name: "String",
    #             compatible_versions: ["String"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeInsightResponse]
    def describe_insight(params = {}, options = {})
      request = build_request(:describe_insight, params)
      request.send_request(options)
    end

    # <p>Returns the status of the latest on-demand cluster insights refresh operation.</p>
    # @param [Hash, Types::DescribeInsightsRefreshRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster associated with the insights refresh operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_insights_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #     started_at: Time.now,
    #     ended_at: Time.now
    #   }
    # @return [Types::DescribeInsightsRefreshResponse]
    def describe_insights_refresh(params = {}, options = {})
      request = build_request(:describe_insights_refresh, params)
      request.send_request(options)
    end

    # <p>Describes a managed node group.</p>
    # @param [Hash, Types::DescribeNodegroupRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :nodegroup_name
    #   <p>The name of the node group to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_nodegroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodegroup: {
    #       nodegroup_name: "String",
    #       nodegroup_arn: "String",
    #       cluster_name: "String",
    #       version: "String",
    #       release_version: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "DEGRADED"],
    #       capacity_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT", "CAPACITY_BLOCK"],
    #       scaling_config: {
    #         min_size: 1,
    #         max_size: 1,
    #         desired_size: 1
    #       },
    #       instance_types: ["String"],
    #       subnets: ["String"],
    #       remote_access: {
    #         ec2_ssh_key: "String",
    #         source_security_groups: ["String"]
    #       },
    #       ami_type: "AL2_x86_64" # One of: ["AL2_x86_64", "AL2_x86_64_GPU", "AL2_ARM_64", "CUSTOM", "BOTTLEROCKET_ARM_64", "BOTTLEROCKET_x86_64", "BOTTLEROCKET_ARM_64_FIPS", "BOTTLEROCKET_x86_64_FIPS", "BOTTLEROCKET_ARM_64_NVIDIA", "BOTTLEROCKET_x86_64_NVIDIA", "WINDOWS_CORE_2019_x86_64", "WINDOWS_FULL_2019_x86_64", "WINDOWS_CORE_2022_x86_64", "WINDOWS_FULL_2022_x86_64", "AL2023_x86_64_STANDARD", "AL2023_ARM_64_STANDARD", "AL2023_x86_64_NEURON", "AL2023_x86_64_NVIDIA", "AL2023_ARM_64_NVIDIA"],
    #       node_role: "String",
    #       labels: {
    #         "labelKey" => "labelValue"
    #       },
    #       taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE" # One of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #         }
    #       ],
    #       resources: {
    #         auto_scaling_groups: [
    #           {
    #             name: "String"
    #           }
    #         ],
    #         remote_access_security_group: "String"
    #       },
    #       disk_size: 1,
    #       health: {
    #         issues: [
    #           {
    #             code: "AutoScalingGroupNotFound" # One of: ["AutoScalingGroupNotFound", "AutoScalingGroupInvalidConfiguration", "Ec2SecurityGroupNotFound", "Ec2SecurityGroupDeletionFailure", "Ec2LaunchTemplateNotFound", "Ec2LaunchTemplateVersionMismatch", "Ec2SubnetNotFound", "Ec2SubnetInvalidConfiguration", "IamInstanceProfileNotFound", "Ec2SubnetMissingIpv6Assignment", "IamLimitExceeded", "IamNodeRoleNotFound", "NodeCreationFailure", "AsgInstanceLaunchFailures", "InstanceLimitExceeded", "InsufficientFreeAddresses", "AccessDenied", "InternalFailure", "ClusterUnreachable", "AmiIdNotFound", "AutoScalingGroupOptInRequired", "AutoScalingGroupRateLimitExceeded", "Ec2LaunchTemplateDeletionFailure", "Ec2LaunchTemplateInvalidConfiguration", "Ec2LaunchTemplateMaxLimitExceeded", "Ec2SubnetListTooLong", "IamThrottling", "NodeTerminationFailure", "PodEvictionFailure", "SourceEc2LaunchTemplateNotFound", "LimitExceeded", "Unknown", "AutoScalingGroupInstanceRefreshActive", "KubernetesLabelInvalid", "Ec2LaunchTemplateVersionMaxLimitExceeded", "Ec2InstanceTypeDoesNotExist"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       update_config: {
    #         max_unavailable: 1,
    #         max_unavailable_percentage: 1,
    #         update_strategy: "DEFAULT" # One of: ["DEFAULT", "MINIMAL"]
    #       },
    #       node_repair_config: {
    #         enabled: false,
    #         max_unhealthy_node_threshold_count: 1,
    #         max_unhealthy_node_threshold_percentage: 1,
    #         max_parallel_nodes_repaired_count: 1,
    #         max_parallel_nodes_repaired_percentage: 1,
    #         node_repair_config_overrides: [
    #           {
    #             node_monitoring_condition: "String",
    #             node_unhealthy_reason: "String",
    #             min_repair_wait_time_mins: 1,
    #             repair_action: "Replace" # One of: ["Replace", "Reboot", "NoAction"]
    #           }
    #         ]
    #       },
    #       launch_template: {
    #         name: "String",
    #         version: "String",
    #         id: "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeNodegroupResponse]
    def describe_nodegroup(params = {}, options = {})
      request = build_request(:describe_nodegroup, params)
      request.send_request(options)
    end

    # <p>Returns descriptive information about an EKS Pod Identity association.</p>
    #          <p>This action requires the ID of the association. You can get the ID from the response to
    #             the <code>CreatePodIdentityAssocation</code> for newly created associations. Or, you can
    #             list the IDs for associations with <code>ListPodIdentityAssociations</code> and filter the
    #             list by namespace or service account.</p>
    # @param [Hash, Types::DescribePodIdentityAssociationRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster that the association is in.</p>
    # @option params [String] :association_id
    #   <p>The ID of the association that you want the description of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     association_id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_pod_identity_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       cluster_name: "String",
    #       namespace: "String",
    #       service_account: "String",
    #       role_arn: "String",
    #       association_arn: "String",
    #       association_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       owner_arn: "String",
    #       disable_session_tags: false,
    #       target_role_arn: "String",
    #       external_id: "String"
    #     }
    #   }
    # @return [Types::DescribePodIdentityAssociationResponse]
    def describe_pod_identity_association(params = {}, options = {})
      request = build_request(:describe_pod_identity_association, params)
      request.send_request(options)
    end

    # <p>Describes an update to an Amazon EKS resource.</p>
    #          <p>When the status of the update is <code>Successful</code>, the update is complete. If
    #             an update fails, the status is <code>Failed</code>, and an error detail explains the
    #             reason for the failure.</p>
    # @param [Hash, Types::DescribeUpdateRequest] params
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster associated with the update.</p>
    # @option params [String] :update_id
    #   <p>The ID of the update to describe.</p>
    # @option params [String] :nodegroup_name
    #   <p>The name of the Amazon EKS node group associated with the update. This parameter is
    #               required if the update is a node group update.</p>
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>. This parameter is required if the update is an add-on update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     update_id: "String", # required
    #     nodegroup_name: "String",
    #     addon_name: "String"
    #   }
    #   options = {}
    #   response = client.describe_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeUpdateResponse]
    def describe_update(params = {}, options = {})
      request = build_request(:describe_update, params)
      request.send_request(options)
    end

    # <p>Disassociates an access policy from an access entry.</p>
    # @param [Hash, Types::DisassociateAccessPolicyRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    # @option params [String] :policy_arn
    #   <p>The ARN of the policy to disassociate from the access entry. For a list of
    #               associated policies ARNs, use <code>ListAssociatedAccessPolicies</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     policy_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.disassociate_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateAccessPolicyResponse]
    def disassociate_access_policy(params = {}, options = {})
      request = build_request(:disassociate_access_policy, params)
      request.send_request(options)
    end

    # <p>Disassociates an identity provider configuration from a cluster.</p>
    #          <p>If you disassociate an identity provider from your cluster, users included in the
    #             provider can no longer access the cluster. However, you can still access the cluster
    #             with IAM principals.</p>
    # @param [Hash, Types::DisassociateIdentityProviderConfigRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Types::IdentityProviderConfig] :identity_provider_config
    #   <p>An object representing an identity provider configuration.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     identity_provider_config: { # required
    #       type: "String", # required
    #       name: "String", # required
    #     },
    #     client_request_token: "String"
    #   }
    #   options = {}
    #   response = client.disassociate_identity_provider_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DisassociateIdentityProviderConfigResponse]
    def disassociate_identity_provider_config(params = {}, options = {})
      request = build_request(:disassociate_identity_provider_config, params)
      request.send_request(options)
    end

    # <p>Lists the access entries for your cluster.</p>
    # @param [Hash, Types::ListAccessEntriesRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :associated_policy_arn
    #   <p>The ARN of an <code>AccessPolicy</code>. When you specify an access policy ARN,
    #               only the access entries associated to that access policy are returned. For a list of
    #               available policy ARNs, use <code>ListAccessPolicies</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     associated_policy_arn: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_access_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_entries: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListAccessEntriesResponse]
    def list_access_entries(params = {}, options = {})
      request = build_request(:list_access_entries, params)
      request.send_request(options)
    end

    # <p>Lists the available access policies. </p>
    # @param [Hash, Types::ListAccessPoliciesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_access_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policies: [
    #       {
    #         name: "String",
    #         arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAccessPoliciesResponse]
    def list_access_policies(params = {}, options = {})
      request = build_request(:list_access_policies, params)
      request.send_request(options)
    end

    # <p>Lists the installed add-ons.</p>
    # @param [Hash, Types::ListAddonsRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "ClusterName", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_addons(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     addons: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListAddonsResponse]
    def list_addons(params = {}, options = {})
      request = build_request(:list_addons, params)
      request.send_request(options)
    end

    # <p>Lists the access policies associated with an access entry.</p>
    # @param [Hash, Types::ListAssociatedAccessPoliciesRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_associated_access_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_name: "String",
    #     principal_arn: "String",
    #     next_token: "String",
    #     associated_access_policies: [
    #       {
    #         policy_arn: "String",
    #         access_scope: {
    #           type: "cluster" # One of: ["cluster", "namespace"],
    #           namespaces: ["String"]
    #         },
    #         associated_at: Time.now,
    #         modified_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListAssociatedAccessPoliciesResponse]
    def list_associated_access_policies(params = {}, options = {})
      request = build_request(:list_associated_access_policies, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon EKS clusters in your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    # @param [Hash, Types::ListClustersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Array<String>] :include
    #   <p>Indicates whether external clusters are included in the returned list. Use
    #                   '<code>all</code>' to return <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html">https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html</a>connected clusters, or blank to
    #               return only Amazon EKS clusters. '<code>all</code>' must be in lowercase otherwise an error
    #               occurs.</p>
    # @example To list your available clusters
    #   # This example command lists all of your available clusters in your default region.
    #   params = {}
    #   options = {}
    #   response = client.list_clusters(params, options)
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       "devel",
    #       "prod"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     include: ["String"]
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListClustersResponse]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Displays the full description of the subscription.</p>
    # @param [Hash, Types::ListEksAnywhereSubscriptionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results returned by ListEksAnywhereSubscriptions in
    #               paginated output. When you use this parameter, ListEksAnywhereSubscriptions returns only
    #               maxResults results in a single page along with a nextToken response element. You can see
    #               the remaining results of the initial request by sending another
    #               ListEksAnywhereSubscriptions request with the returned nextToken value. This value can
    #               be between 1 and 100. If you don't use this parameter, ListEksAnywhereSubscriptions
    #               returns up to 10 results and a nextToken value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListEksAnywhereSubscriptions</code> request where <code>maxResults</code> was
    #               used and the results exceeded the value of that parameter. Pagination continues from the
    #               end of the previous results that returned the <code>nextToken</code> value.</p>
    # @option params [Array<String>] :include_status
    #   <p>An array of subscription statuses to filter on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     include_status: ["CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "EXPIRING", "EXPIRED", "DELETING"]]
    #   }
    #   options = {}
    #   response = client.list_eks_anywhere_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [
    #       {
    #         id: "String",
    #         arn: "String",
    #         created_at: Time.now,
    #         effective_date: Time.now,
    #         expiration_date: Time.now,
    #         license_quantity: 1,
    #         license_type: "Cluster" # One of: ["Cluster"],
    #         term: {
    #           duration: 1,
    #           unit: "MONTHS" # One of: ["MONTHS"]
    #         },
    #         status: "String",
    #         auto_renew: false,
    #         license_arns: ["String"],
    #         licenses: [
    #           {
    #             id: "String",
    #             token: "String"
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEksAnywhereSubscriptionsResponse]
    def list_eks_anywhere_subscriptions(params = {}, options = {})
      request = build_request(:list_eks_anywhere_subscriptions, params)
      request.send_request(options)
    end

    # <p>Lists the Fargate profiles associated with the specified cluster in your Amazon Web Services
    #             account in the specified Amazon Web Services Region.</p>
    # @param [Hash, Types::ListFargateProfilesRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_fargate_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fargate_profile_names: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListFargateProfilesResponse]
    def list_fargate_profiles(params = {}, options = {})
      request = build_request(:list_fargate_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the identity provider configurations for your cluster.</p>
    # @param [Hash, Types::ListIdentityProviderConfigsRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_identity_provider_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider_configs: [
    #       {
    #         type: "String", # required
    #         name: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIdentityProviderConfigsResponse]
    def list_identity_provider_configs(params = {}, options = {})
      request = build_request(:list_identity_provider_configs, params)
      request.send_request(options)
    end

    # <p>Returns a list of all insights checked for against the specified cluster. You can
    #             filter which insights are returned by category, associated Kubernetes version, and
    #             status. The default filter lists all categories and every status.</p>
    #          <p>The following lists the available categories:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>UPGRADE_READINESS</code>: Amazon EKS identifies issues that could impact your
    #                     ability to upgrade to new versions of Kubernetes. These are called upgrade insights.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MISCONFIGURATION</code>: Amazon EKS identifies misconfiguration in your EKS
    #                     Hybrid Nodes setup that could impair functionality of your cluster or
    #                     workloads. These are called configuration insights.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListInsightsRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the Amazon EKS cluster associated with the insights.</p>
    # @option params [Types::InsightsFilter] :filter
    #   <p>The criteria to filter your list of insights for your cluster. You can filter which
    #               insights are returned by category, associated Kubernetes version, and status.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of identity provider configurations returned by
    #                   <code>ListInsights</code> in paginated output. When you use this parameter,
    #                   <code>ListInsights</code> returns only <code>maxResults</code> results in a single
    #               page along with a <code>nextToken</code> response element. You can see the remaining
    #               results of the initial request by sending another <code>ListInsights</code> request with
    #               the returned <code>nextToken</code> value. This value can be between 1
    #               and 100. If you don't use this parameter, <code>ListInsights</code>
    #               returns up to 100 results and a <code>nextToken</code> value, if
    #               applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListInsights</code> request. When the results of a <code>ListInsights</code>
    #               request exceed <code>maxResults</code>, you can use this value to retrieve the next page
    #               of results. This value is <code>null</code> when there are no more results to
    #               return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     filter: {
    #       categories: ["UPGRADE_READINESS" # One of: ["UPGRADE_READINESS", "MISCONFIGURATION"]],
    #       kubernetes_versions: ["String"],
    #       statuses: ["PASSING" # One of: ["PASSING", "WARNING", "ERROR", "UNKNOWN"]]
    #     },
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insights: [
    #       {
    #         id: "String",
    #         name: "String",
    #         category: "UPGRADE_READINESS" # One of: ["UPGRADE_READINESS", "MISCONFIGURATION"],
    #         kubernetes_version: "String",
    #         last_refresh_time: Time.now,
    #         last_transition_time: Time.now,
    #         description: "String",
    #         insight_status: {
    #           status: "PASSING" # One of: ["PASSING", "WARNING", "ERROR", "UNKNOWN"],
    #           reason: "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListInsightsResponse]
    def list_insights(params = {}, options = {})
      request = build_request(:list_insights, params)
      request.send_request(options)
    end

    # <p>Lists the managed node groups associated with the specified cluster in your Amazon Web Services
    #             account in the specified Amazon Web Services Region. Self-managed node groups aren't listed.</p>
    # @param [Hash, Types::ListNodegroupsRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_nodegroups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodegroups: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListNodegroupsResponse]
    def list_nodegroups(params = {}, options = {})
      request = build_request(:list_nodegroups, params)
      request.send_request(options)
    end

    # <p>List the EKS Pod Identity associations in a cluster. You can filter the list by the namespace that the
    #             association is in or the service account that the association uses.</p>
    # @param [Hash, Types::ListPodIdentityAssociationsRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster that the associations are in.</p>
    # @option params [String] :namespace
    #   <p>The name of the Kubernetes namespace inside the cluster that the associations are in.</p>
    # @option params [String] :service_account
    #   <p>The name of the Kubernetes service account that the associations use.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of EKS Pod Identity association results returned by
    #                   <code>ListPodIdentityAssociations</code> in paginated output. When you use this
    #               parameter, <code>ListPodIdentityAssociations</code> returns only <code>maxResults</code>
    #               results in a single page along with a <code>nextToken</code> response element. You can
    #               see the remaining results of the initial request by sending another
    #                   <code>ListPodIdentityAssociations</code> request with the returned
    #                   <code>nextToken</code> value. This value can be between 1 and
    #               100. If you don't use this parameter,
    #                   <code>ListPodIdentityAssociations</code> returns up to 100 results
    #               and a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #                   <code>ListUpdates</code> request where <code>maxResults</code> was used and the
    #               results exceeded the value of that parameter. Pagination continues from the end of the
    #               previous results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     namespace: "String",
    #     service_account: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_pod_identity_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         cluster_name: "String",
    #         namespace: "String",
    #         service_account: "String",
    #         association_arn: "String",
    #         association_id: "String",
    #         owner_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPodIdentityAssociationsResponse]
    def list_pod_identity_associations(params = {}, options = {})
      request = build_request(:list_pod_identity_associations, params)
      request.send_request(options)
    end

    # <p>List the tags for an Amazon EKS resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list tags for.</p>
    # @example To list tags for a cluster
    #   # This example lists all of the tags for the `beta` cluster.
    #   params = {
    #     resource_arn: "arn:aws:eks:us-west-2:012345678910:cluster/beta"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "aws:tag:domain" => "beta"
    #     }
    #   }
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the updates associated with an Amazon EKS resource in your Amazon Web Services account, in the
    #             specified Amazon Web Services Region.</p>
    # @param [Hash, Types::ListUpdatesRequest] params
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster to list updates for.</p>
    # @option params [String] :nodegroup_name
    #   <p>The name of the Amazon EKS managed node group to list updates for.</p>
    # @option params [String] :addon_name
    #   <p>The names of the installed add-ons that have available updates.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated request, where <code>maxResults</code> was used and
    #               the results exceeded the value of that parameter. Pagination continues from the end of
    #               the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results, returned in paginated output. You receive
    #                   <code>maxResults</code> in a single page, along with a <code>nextToken</code>
    #               response element. You can see the remaining results of the initial request by sending
    #               another request with the returned <code>nextToken</code> value. This value can be
    #               between 1 and 100. If you don't use this parameter,
    #               100 results and a <code>nextToken</code> value, if applicable, are
    #               returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     nodegroup_name: "String",
    #     addon_name: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_ids: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListUpdatesResponse]
    def list_updates(params = {}, options = {})
      request = build_request(:list_updates, params)
      request.send_request(options)
    end

    # <p>Connects a Kubernetes cluster to the Amazon EKS control plane. </p>
    #          <p>Any Kubernetes cluster can be connected to the Amazon EKS control plane to view current
    #             information about the cluster and its nodes. </p>
    #          <p>Cluster connection requires two steps. First, send a <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_RegisterClusterRequest.html">
    #                <code>RegisterClusterRequest</code>
    #             </a> to add it to the Amazon EKS control
    #             plane.</p>
    #          <p>Second, a <a href="https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml">Manifest</a> containing the <code>activationID</code> and
    #                 <code>activationCode</code> must be applied to the Kubernetes cluster through it's native
    #             provider to provide visibility.</p>
    #          <p>After the manifest is updated and applied, the connected cluster is visible to the
    #             Amazon EKS control plane. If the manifest isn't applied within three days, the connected
    #             cluster will no longer be visible and must be deregistered using
    #                 <code>DeregisterCluster</code>.</p>
    # @param [Hash, Types::RegisterClusterRequest] params
    # @option params [String] :name
    #   <p>A unique name for this cluster in your Amazon Web Services Region.</p>
    # @option params [Types::ConnectorConfigRequest] :connector_config
    #   <p>The configuration settings required to connect the Kubernetes cluster to the Amazon EKS control
    #               plane.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ClusterName", # required
    #     connector_config: { # required
    #       role_arn: "String", # required
    #       provider: "EKS_ANYWHERE" # One of: ["EKS_ANYWHERE", "ANTHOS", "GKE", "AKS", "OPENSHIFT", "TANZU", "RANCHER", "EC2", "OTHER"], # required
    #     },
    #     client_request_token: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.register_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       version: "String",
    #       endpoint: "String",
    #       role_arn: "String",
    #       resources_vpc_config: {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #         cluster_security_group_id: "String",
    #         vpc_id: "String",
    #         endpoint_public_access: false,
    #         endpoint_private_access: false,
    #         public_access_cidrs: ["String"]
    #       },
    #       kubernetes_network_config: {
    #         service_ipv4_cidr: "String",
    #         service_ipv6_cidr: "String",
    #         ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #         elastic_load_balancing: {
    #           enabled: false
    #         }
    #       },
    #       logging: {
    #         cluster_logging: [
    #           {
    #             types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #             enabled: false
    #           }
    #         ]
    #       },
    #       identity: {
    #         oidc: {
    #           issuer: "String"
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"],
    #       certificate_authority: {
    #         data: "String"
    #       },
    #       client_request_token: "String",
    #       platform_version: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       encryption_config: [
    #         {
    #           resources: ["String"],
    #           provider: {
    #             key_arn: "String"
    #           }
    #         }
    #       ],
    #       connector_config: {
    #         activation_id: "String",
    #         activation_code: "String",
    #         activation_expiry: Time.now,
    #         provider: "String",
    #         role_arn: "String"
    #       },
    #       id: "String",
    #       health: {
    #         issues: [
    #           {
    #             code: "AccessDenied" # One of: ["AccessDenied", "ClusterUnreachable", "ConfigurationConflict", "InternalFailure", "ResourceLimitExceeded", "ResourceNotFound", "IamRoleNotFound", "VpcNotFound", "InsufficientFreeAddresses", "Ec2ServiceNotSubscribed", "Ec2SubnetNotFound", "Ec2SecurityGroupNotFound", "KmsGrantRevoked", "KmsKeyNotFound", "KmsKeyMarkedForDeletion", "KmsKeyDisabled", "StsRegionalEndpointDisabled", "UnsupportedVersion", "Other"],
    #             message: "String",
    #             resource_ids: ["String"]
    #           }
    #         ]
    #       },
    #       outpost_config: {
    #         outpost_arns: ["String"], # required
    #         control_plane_instance_type: "String", # required
    #         control_plane_placement: {
    #           group_name: "String"
    #         }
    #       },
    #       access_config: {
    #         bootstrap_cluster_creator_admin_permissions: false,
    #         authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #       },
    #       upgrade_policy: {
    #         support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #       },
    #       zonal_shift_config: {
    #         enabled: false
    #       },
    #       remote_network_config: {
    #         remote_node_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ],
    #         remote_pod_networks: [
    #           {
    #             cidrs: ["String"]
    #           }
    #         ]
    #       },
    #       compute_config: {
    #         enabled: false,
    #         node_pools: ["String"],
    #         node_role_arn: "String"
    #       },
    #       storage_config: {
    #         block_storage: {
    #           enabled: false
    #         }
    #       },
    #       deletion_protection: false
    #     }
    #   }
    # @return [Types::RegisterClusterResponse]
    def register_cluster(params = {}, options = {})
      request = build_request(:register_cluster, params)
      request.send_request(options)
    end

    # <p>Initiates an on-demand refresh operation for cluster insights, getting the latest analysis outside of the standard refresh schedule.</p>
    # @param [Hash, Types::StartInsightsRefreshRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster for the refresh insights operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #   }
    #   options = {}
    #   response = client.start_insights_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"]
    #   }
    # @return [Types::StartInsightsRefreshResponse]
    def start_insights_refresh(params = {}, options = {})
      request = build_request(:start_insights_refresh, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to an Amazon EKS resource with the specified
    #                 <code>resourceArn</code>. If existing tags on a resource are not specified in the
    #             request parameters, they aren't changed. When a resource is deleted, the tags associated
    #             with that resource are also deleted. Tags that you create for Amazon EKS resources don't
    #             propagate to any other resources associated with the cluster. For example, if you tag a
    #             cluster with this operation, that tag doesn't automatically propagate to the subnets and
    #             nodes associated with the cluster.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that assists with categorization and organization.
    #               Each tag consists of a key and an optional value. You define both. Tags don't
    #               propagate to any other cluster or Amazon Web Services resources.</p>
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from an Amazon EKS resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an access entry.</p>
    # @param [Hash, Types::UpdateAccessEntryRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM principal for the <code>AccessEntry</code>.</p>
    # @option params [Array<String>] :kubernetes_groups
    #   <p>The value for <code>name</code> that you've specified for <code>kind: Group</code> as
    #               a <code>subject</code> in a Kubernetes <code>RoleBinding</code> or
    #                   <code>ClusterRoleBinding</code> object. Amazon EKS doesn't confirm that the value for
    #                   <code>name</code> exists in any bindings on your cluster. You can specify one or
    #               more names.</p>
    #            <p>Kubernetes authorizes the <code>principalArn</code> of the access entry to access any
    #               cluster objects that you've specified in a Kubernetes <code>Role</code> or
    #                   <code>ClusterRole</code> object that is also specified in a binding's
    #                   <code>roleRef</code>. For more information about creating Kubernetes
    #                   <code>RoleBinding</code>, <code>ClusterRoleBinding</code>, <code>Role</code>, or
    #                   <code>ClusterRole</code> objects, see <a href="https://kubernetes.io/docs/reference/access-authn-authz/rbac/">Using RBAC
    #                   Authorization in the Kubernetes documentation</a>.</p>
    #            <p>If you want Amazon EKS to authorize the <code>principalArn</code> (instead of, or in
    #               addition to Kubernetes authorizing the <code>principalArn</code>), you can associate one or
    #               more access policies to the access entry using <code>AssociateAccessPolicy</code>. If
    #               you associate any access policies, the <code>principalARN</code> has all permissions
    #               assigned in the associated access policies and all permissions in any Kubernetes
    #                   <code>Role</code> or <code>ClusterRole</code> objects that the group names are bound
    #               to.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [String] :username
    #   <p>The username to authenticate to Kubernetes with. We recommend not specifying a username and
    #               letting Amazon EKS specify it for you. For more information about the value Amazon EKS specifies
    #               for you, or constraints before specifying your own username, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries">Creating
    #                   access entries</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     principal_arn: "String", # required
    #     kubernetes_groups: ["String"],
    #     client_request_token: "String",
    #     username: "String"
    #   }
    #   options = {}
    #   response = client.update_access_entry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_entry: {
    #       cluster_name: "String",
    #       principal_arn: "String",
    #       kubernetes_groups: ["String"],
    #       access_entry_arn: "String",
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       username: "String",
    #       type: "String"
    #     }
    #   }
    # @return [Types::UpdateAccessEntryResponse]
    def update_access_entry(params = {}, options = {})
      request = build_request(:update_access_entry, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon EKS add-on.</p>
    # @param [Hash, Types::UpdateAddonRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :addon_name
    #   <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    #                  <code>ListAddons</code>
    #               </a>.</p>
    # @option params [String] :addon_version
    #   <p>The version of the add-on. The version must match one of the versions returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html">
    #                  <code>DescribeAddonVersions</code>
    #               </a>.</p>
    # @option params [String] :service_account_role_arn
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to bind to the add-on's service account. The role must be assigned the IAM permissions required by the add-on. If you don't specify an existing IAM role, then the add-on uses the
    #        permissions assigned to the node IAM role. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon EKS node IAM role</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <note>
    #               <p>To specify an existing IAM role, you must have an IAM OpenID Connect (OIDC) provider created for
    #                   your cluster. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
    #                       IAM roles for service accounts on your cluster</a> in the
    #                   <i>Amazon EKS User Guide</i>.</p>
    #            </note>
    # @option params [String] :resolve_conflicts
    #   <p>How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value
    #               from the Amazon EKS default value. Conflicts are handled based on the option you
    #               choose:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>None</b> – Amazon EKS doesn't change the value.
    #                       The update might fail.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Overwrite</b> – Amazon EKS overwrites the
    #                       changed value back to the Amazon EKS default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Preserve</b> – Amazon EKS preserves the value.
    #                       If you choose this option, we recommend that you test any field and value
    #                       changes on a non-production cluster before updating the add-on on your
    #                       production cluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [String] :configuration_values
    #   <p>The set of configuration values for the add-on that's created. The values that you
    #               provide are validated against the schema returned by
    #                   <code>DescribeAddonConfiguration</code>.</p>
    # @option params [Array<Types::AddonPodIdentityAssociations>] :pod_identity_associations
    #   <p>An array of EKS Pod Identity associations to be updated. Each association
    #               maps a Kubernetes service account to an IAM role. If this value is left blank, no change.
    #               If an empty array is provided, existing associations owned by the add-on are
    #               deleted.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/add-ons-iam.html">Attach an IAM Role to an Amazon EKS add-on
    #                   using EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "ClusterName", # required
    #     addon_name: "String", # required
    #     addon_version: "String",
    #     service_account_role_arn: "RoleArn",
    #     resolve_conflicts: "OVERWRITE" # One of: ["OVERWRITE", "NONE", "PRESERVE"],
    #     client_request_token: "String",
    #     configuration_values: "String",
    #     pod_identity_associations: [
    #       {
    #         service_account: "String", # required
    #         role_arn: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_addon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateAddonResponse]
    def update_addon(params = {}, options = {})
      request = build_request(:update_addon, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon EKS cluster configuration. Your cluster continues to function during the
    #             update. The response output includes an update ID that you can use to track the status
    #             of your cluster update with <code>DescribeUpdate</code>.</p>
    #          <p>You can use this operation to do the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>You can use this API operation to enable or disable exporting the Kubernetes
    #                     control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane
    #                     logs aren't exported to CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS Cluster control plane logs</a> in the
    #                         <i>
    #                      <i>Amazon EKS User Guide</i>
    #                   </i>.</p>
    #                <note>
    #                   <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to
    #                         exported control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch Pricing</a>.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>You can also use this API operation to enable or disable public and private
    #                     access to your cluster's Kubernetes API server endpoint. By default, public access is
    #                     enabled, and private access is disabled. For more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html">
    #                         Cluster API server endpoint</a> in the
    #                         <i>
    #                      <i>Amazon EKS User Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>You can also use this API operation to choose different subnets and security
    #                     groups for the cluster. You must specify at least two subnets that are in
    #                     different Availability Zones. You can't change which VPC the subnets are from, the subnets
    #                     must be in the same VPC as the subnets that the cluster was created with. For
    #                     more information about the VPC requirements, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html</a> in the
    #                         <i>
    #                      <i>Amazon EKS User Guide</i>
    #                   </i>.</p>
    #             </li>
    #             <li>
    #                <p>You can also use this API operation to enable or disable ARC zonal shift. If
    #                     zonal shift is enabled, Amazon Web Services configures zonal autoshift for the cluster.</p>
    #             </li>
    #             <li>
    #                <p>You can also use this API operation to add, change, or remove the
    #                     configuration in the cluster for EKS Hybrid Nodes. To remove the configuration,
    #                     use the <code>remoteNetworkConfig</code> key with an object containing both
    #                     subkeys with empty arrays for each. Here is an inline example:
    #                         <code>"remoteNetworkConfig": { "remoteNodeNetworks": [],
    #                         "remotePodNetworks": [] }</code>.</p>
    #             </li>
    #          </ul>
    #          <p>Cluster updates are asynchronous, and they should finish within a few minutes. During
    #             an update, the cluster status moves to <code>UPDATING</code> (this status transition is
    #             eventually consistent). When the update is complete (either <code>Failed</code> or
    #                 <code>Successful</code>), the cluster status moves to <code>Active</code>.</p>
    # @param [Hash, Types::UpdateClusterConfigRequest] params
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    # @option params [Types::VpcConfigRequest] :resources_vpc_config
    #   <p>An object representing the VPC configuration to use for an Amazon EKS cluster.</p>
    # @option params [Types::Logging] :logging
    #   <p>Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs .
    #               By default, cluster control plane logs aren't exported to CloudWatch Logs . For more information,
    #               see <a href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon EKS
    #                   cluster control plane logs</a> in the
    #               <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    #            <note>
    #               <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported
    #                   control plane logs. For more information, see <a href="http://aws.amazon.com/cloudwatch/pricing/">CloudWatch Pricing</a>.</p>
    #            </note>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Types::UpdateAccessConfigRequest] :access_config
    #   <p>The access configuration for the cluster.</p>
    # @option params [Types::UpgradePolicyRequest] :upgrade_policy
    #   <p>You can enable or disable extended support for clusters currently on standard support.
    #               You cannot disable extended support once it starts. You must enable extended support
    #               before your cluster exits standard support.</p>
    # @option params [Types::ZonalShiftConfigRequest] :zonal_shift_config
    #   <p>Enable or disable ARC zonal shift for the cluster. If zonal shift is enabled, Amazon Web Services
    #               configures zonal autoshift for the cluster.</p>
    #            <p>Zonal shift is a feature of Amazon Application Recovery Controller (ARC). ARC zonal shift is designed to be a
    #               temporary measure that allows you to move traffic for a resource away from an impaired
    #               AZ until the zonal shift expires or you cancel it. You can extend the zonal shift if
    #               necessary.</p>
    #            <p>You can start a zonal shift for an EKS cluster, or you can allow Amazon Web Services to do it for
    #               you by enabling <i>zonal autoshift</i>. This shift updates the flow of
    #               east-to-west network traffic in your cluster to only consider network endpoints for Pods
    #               running on worker nodes in healthy AZs. Additionally, any ALB or NLB handling ingress
    #               traffic for applications in your EKS cluster will automatically route traffic to targets
    #               in the healthy AZs. For more information about zonal shift in EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/zone-shift.html">Learn about
    #                   Amazon Application Recovery Controller (ARC) Zonal Shift in Amazon EKS</a> in the
    #                   <i>
    #                  <i>Amazon EKS User Guide</i>
    #               </i>.</p>
    # @option params [Types::ComputeConfigRequest] :compute_config
    #   <p>Update the configuration of the compute capability of your EKS Auto Mode cluster. For
    #               example, enable the capability.</p>
    # @option params [Types::KubernetesNetworkConfigRequest] :kubernetes_network_config
    #   <p>The Kubernetes network configuration for the cluster.</p>
    # @option params [Types::StorageConfigRequest] :storage_config
    #   <p>Update the configuration of the block storage capability of your EKS Auto Mode
    #               cluster. For example, enable the capability.</p>
    # @option params [Types::RemoteNetworkConfigRequest] :remote_network_config
    #   <p>The configuration in the cluster for EKS Hybrid Nodes. You can add, change, or remove this
    #               configuration after the cluster is created.</p>
    # @option params [Boolean] :deletion_protection
    #   <p>Specifies whether to enable or disable deletion protection for the cluster. When 
    #               enabled (<code>true</code>), the cluster cannot be deleted until deletion protection is 
    #               explicitly disabled. When disabled (<code>false</code>), the cluster can be deleted 
    #               normally.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     resources_vpc_config: {
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #       endpoint_public_access: false,
    #       endpoint_private_access: false,
    #       public_access_cidrs: ["String"]
    #     },
    #     logging: {
    #       cluster_logging: [
    #         {
    #           types: ["api" # One of: ["api", "audit", "authenticator", "controllerManager", "scheduler"]],
    #           enabled: false
    #         }
    #       ]
    #     },
    #     client_request_token: "String",
    #     access_config: {
    #       authentication_mode: "API" # One of: ["API", "API_AND_CONFIG_MAP", "CONFIG_MAP"]
    #     },
    #     upgrade_policy: {
    #       support_type: "STANDARD" # One of: ["STANDARD", "EXTENDED"]
    #     },
    #     zonal_shift_config: {
    #       enabled: false
    #     },
    #     compute_config: {
    #       enabled: false,
    #       node_pools: ["String"],
    #       node_role_arn: "String"
    #     },
    #     kubernetes_network_config: {
    #       service_ipv4_cidr: "String",
    #       ip_family: "ipv4" # One of: ["ipv4", "ipv6"],
    #       elastic_load_balancing: {
    #         enabled: false
    #       }
    #     },
    #     storage_config: {
    #       block_storage: {
    #         enabled: false
    #       }
    #     },
    #     remote_network_config: {
    #       remote_node_networks: [
    #         {
    #           cidrs: ["String"]
    #         }
    #       ],
    #       remote_pod_networks: [
    #         {
    #           cidrs: ["String"]
    #         }
    #       ]
    #     },
    #     deletion_protection: false
    #   }
    #   options = {}
    #   response = client.update_cluster_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateClusterConfigResponse]
    def update_cluster_config(params = {}, options = {})
      request = build_request(:update_cluster_config, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon EKS cluster to the specified Kubernetes version. Your cluster continues to
    #             function during the update. The response output includes an update ID that you can use
    #             to track the status of your cluster update with the <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html">
    #                <code>DescribeUpdate</code>
    #             </a> API operation.</p>
    #          <p>Cluster updates are asynchronous, and they should finish within a few minutes. During
    #             an update, the cluster status moves to <code>UPDATING</code> (this status transition is
    #             eventually consistent). When the update is complete (either <code>Failed</code> or
    #                 <code>Successful</code>), the cluster status moves to <code>Active</code>.</p>
    #          <p>If your cluster has managed node groups attached to it, all of your node groups' Kubernetes
    #             versions must match the cluster's Kubernetes version in order to update the cluster to a new
    #             Kubernetes version.</p>
    # @param [Hash, Types::UpdateClusterVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the Amazon EKS cluster to update.</p>
    # @option params [String] :version
    #   <p>The desired Kubernetes version following a successful update.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Boolean] :force
    #   <p>Set this value to <code>true</code> to override upgrade-blocking readiness checks when
    #               updating a cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     version: "String", # required
    #     client_request_token: "String",
    #     force: false
    #   }
    #   options = {}
    #   response = client.update_cluster_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateClusterVersionResponse]
    def update_cluster_version(params = {}, options = {})
      request = build_request(:update_cluster_version, params)
      request.send_request(options)
    end

    # <p>Update an EKS Anywhere Subscription. Only auto renewal and tags can be updated after
    #             subscription creation.</p>
    # @param [Hash, Types::UpdateEksAnywhereSubscriptionRequest] params
    # @option params [String] :id
    #   <p>The ID of the subscription.</p>
    # @option params [Boolean] :auto_renew
    #   <p>A boolean indicating whether or not to automatically renew the subscription.</p>
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     auto_renew: false, # required
    #     client_request_token: "String"
    #   }
    #   options = {}
    #   response = client.update_eks_anywhere_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription: {
    #       id: "String",
    #       arn: "String",
    #       created_at: Time.now,
    #       effective_date: Time.now,
    #       expiration_date: Time.now,
    #       license_quantity: 1,
    #       license_type: "Cluster" # One of: ["Cluster"],
    #       term: {
    #         duration: 1,
    #         unit: "MONTHS" # One of: ["MONTHS"]
    #       },
    #       status: "String",
    #       auto_renew: false,
    #       license_arns: ["String"],
    #       licenses: [
    #         {
    #           id: "String",
    #           token: "String"
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateEksAnywhereSubscriptionResponse]
    def update_eks_anywhere_subscription(params = {}, options = {})
      request = build_request(:update_eks_anywhere_subscription, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon EKS managed node group configuration. Your node group continues to
    #             function during the update. The response output includes an update ID that you can use
    #             to track the status of your node group update with the <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html">
    #                <code>DescribeUpdate</code>
    #             </a> API operation. You can update the Kubernetes labels
    #             and taints for a node group and the scaling and version update configuration.</p>
    # @param [Hash, Types::UpdateNodegroupConfigRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    # @option params [Types::UpdateLabelsPayload] :labels
    #   <p>The Kubernetes <code>labels</code> to apply to the nodes in the node group after the
    #               update.</p>
    # @option params [Types::UpdateTaintsPayload] :taints
    #   <p>The Kubernetes taints to be applied to the nodes in the node group after the update. For
    #               more information, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node taints on
    #                   managed node groups</a>.</p>
    # @option params [Types::NodegroupScalingConfig] :scaling_config
    #   <p>The scaling configuration details for the Auto Scaling group after the update.</p>
    # @option params [Types::NodegroupUpdateConfig] :update_config
    #   <p>The node group update configuration.</p>
    # @option params [Types::NodeRepairConfig] :node_repair_config
    #   <p>The node auto repair configuration for the node group.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     labels: {
    #       add_or_update_labels: {
    #         "labelKey" => "labelValue"
    #       },
    #       remove_labels: ["String"]
    #     },
    #     taints: {
    #       add_or_update_taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE" # One of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #         }
    #       ],
    #       remove_taints: [
    #         {
    #           key: "taintKey",
    #           value: "taintValue",
    #           effect: "NO_SCHEDULE" # One of: ["NO_SCHEDULE", "NO_EXECUTE", "PREFER_NO_SCHEDULE"]
    #         }
    #       ]
    #     },
    #     scaling_config: {
    #       min_size: 1,
    #       max_size: 1,
    #       desired_size: 1
    #     },
    #     update_config: {
    #       max_unavailable: 1,
    #       max_unavailable_percentage: 1,
    #       update_strategy: "DEFAULT" # One of: ["DEFAULT", "MINIMAL"]
    #     },
    #     node_repair_config: {
    #       enabled: false,
    #       max_unhealthy_node_threshold_count: 1,
    #       max_unhealthy_node_threshold_percentage: 1,
    #       max_parallel_nodes_repaired_count: 1,
    #       max_parallel_nodes_repaired_percentage: 1,
    #       node_repair_config_overrides: [
    #         {
    #           node_monitoring_condition: "String",
    #           node_unhealthy_reason: "String",
    #           min_repair_wait_time_mins: 1,
    #           repair_action: "Replace" # One of: ["Replace", "Reboot", "NoAction"]
    #         }
    #       ]
    #     },
    #     client_request_token: "String"
    #   }
    #   options = {}
    #   response = client.update_nodegroup_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateNodegroupConfigResponse]
    def update_nodegroup_config(params = {}, options = {})
      request = build_request(:update_nodegroup_config, params)
      request.send_request(options)
    end

    # <p>Updates the Kubernetes version or AMI version of an Amazon EKS managed node group.</p>
    #          <p>You can update a node group using a launch template only if the node group was
    #             originally deployed with a launch template. Additionally, the launch template ID or name
    #             must match what was used when the node group was created. You can update the launch
    #             template version with necessary changes.</p>
    #          <p>If you need to update a custom AMI in a node group that was deployed with a launch
    #             template, then update your custom AMI, specify the new ID in a new version of the launch
    #             template, and then update the node group to the new version of the launch
    #             template.</p>
    #          <p>If you update without a launch template, then you can update to the latest available
    #             AMI version of a node group's current Kubernetes version by not specifying a Kubernetes version in
    #             the request. You can update to the latest AMI version of your cluster's current Kubernetes
    #             version by specifying your cluster's Kubernetes version in the request. For information about
    #             Linux versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux AMI versions</a> in the
    #             <i>Amazon EKS User Guide</i>. For information about Windows versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html">Amazon EKS
    #                 optimized Windows AMI versions</a> in the <i>Amazon EKS User Guide</i>. </p>
    #          <p>You cannot roll back a node group to an earlier Kubernetes version or AMI version.</p>
    #          <p>When a node in a managed node group is terminated due to a scaling action or update,
    #             every <code>Pod</code> on that node is drained first. Amazon EKS attempts to drain the nodes
    #             gracefully and will fail if it is unable to do so. You can <code>force</code> the update
    #             if Amazon EKS is unable to drain the nodes as a result of a <code>Pod</code> disruption
    #             budget issue.</p>
    # @param [Hash, Types::UpdateNodegroupVersionRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster.</p>
    # @option params [String] :nodegroup_name
    #   <p>The name of the managed node group to update.</p>
    # @option params [String] :version
    #   <p>The Kubernetes version to update to. If no version is specified, then the Kubernetes version of
    #               the node group does not change. You can specify the Kubernetes version of the cluster to
    #               update the node group to the latest AMI version of the cluster's Kubernetes version.
    #               If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify  <code>version</code>,
    #               or the node group  update will fail. For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [String] :release_version
    #   <p>The AMI version of the Amazon EKS optimized AMI to use for the update. By default, the
    #               latest available AMI version for the node group's Kubernetes version is used. For information
    #               about Linux versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon EKS optimized Amazon Linux AMI versions</a> in the
    #               <i>Amazon EKS User Guide</i>. Amazon EKS managed node groups support the November 2022 and later releases
    #               of the Windows AMIs. For information about Windows versions, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html">Amazon EKS
    #                   optimized Windows AMI versions</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify 
    #                   <code>releaseVersion</code>, or the node group  update will fail.
    #               For more information about using launch templates with Amazon EKS, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Customizing managed nodes with launch templates</a> in the <i>Amazon EKS User Guide</i>.</p>
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   <p>An object representing a node group's launch template specification. You can only
    #               update a node group using a launch template if the node group was originally deployed
    #               with a launch template. When updating, you must specify the same launch template ID or
    #               name that was used to create the node group.</p>
    # @option params [Boolean] :force
    #   <p>Force the update if any <code>Pod</code> on the existing node group can't be drained
    #               due to a <code>Pod</code> disruption budget issue. If an update fails because all Pods
    #               can't be drained, you can force the update after it fails to terminate the old node
    #               whether or not any <code>Pod</code> is running on the node.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     nodegroup_name: "String", # required
    #     version: "String",
    #     release_version: "String",
    #     launch_template: {
    #       name: "String",
    #       version: "String",
    #       id: "String"
    #     },
    #     force: false,
    #     client_request_token: "String"
    #   }
    #   options = {}
    #   response = client.update_nodegroup_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update: {
    #       id: "String",
    #       status: "InProgress" # One of: ["InProgress", "Failed", "Cancelled", "Successful"],
    #       type: "VersionUpdate" # One of: ["VersionUpdate", "EndpointAccessUpdate", "LoggingUpdate", "ConfigUpdate", "AssociateIdentityProviderConfig", "DisassociateIdentityProviderConfig", "AssociateEncryptionConfig", "AddonUpdate", "VpcConfigUpdate", "AccessConfigUpdate", "UpgradePolicyUpdate", "ZonalShiftConfigUpdate", "AutoModeUpdate", "RemoteNetworkConfigUpdate", "DeletionProtectionUpdate"],
    #       params: [
    #         {
    #           type: "Version" # One of: ["Version", "PlatformVersion", "EndpointPrivateAccess", "EndpointPublicAccess", "ClusterLogging", "DesiredSize", "LabelsToAdd", "LabelsToRemove", "TaintsToAdd", "TaintsToRemove", "MaxSize", "MinSize", "ReleaseVersion", "PublicAccessCidrs", "LaunchTemplateName", "LaunchTemplateVersion", "IdentityProviderConfig", "EncryptionConfig", "AddonVersion", "ServiceAccountRoleArn", "ResolveConflicts", "MaxUnavailable", "MaxUnavailablePercentage", "NodeRepairEnabled", "UpdateStrategy", "ConfigurationValues", "SecurityGroups", "Subnets", "AuthenticationMode", "PodIdentityAssociations", "UpgradePolicy", "ZonalShiftConfig", "ComputeConfig", "StorageConfig", "KubernetesNetworkConfig", "RemoteNetworkConfig", "DeletionProtection", "NodeRepairConfig"],
    #           value: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       errors: [
    #         {
    #           error_code: "SubnetNotFound" # One of: ["SubnetNotFound", "SecurityGroupNotFound", "EniLimitReached", "IpNotAvailable", "AccessDenied", "OperationNotPermitted", "VpcIdNotFound", "Unknown", "NodeCreationFailure", "PodEvictionFailure", "InsufficientFreeAddresses", "ClusterUnreachable", "InsufficientNumberOfReplicas", "ConfigurationConflict", "AdmissionRequestDenied", "UnsupportedAddonModification", "K8sResourceNotFound"],
    #           error_message: "String",
    #           resource_ids: ["String"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateNodegroupVersionResponse]
    def update_nodegroup_version(params = {}, options = {})
      request = build_request(:update_nodegroup_version, params)
      request.send_request(options)
    end

    # <p>Updates a EKS Pod Identity association. In an update, you can change the IAM role, the target IAM role, or <code>disableSessionTags</code>.
    #             You must change at least one of these in an update. An association can't be moved
    #             between clusters, namespaces, or service accounts. If you need to edit the namespace
    #             or service account, you need to delete the association and then create a new
    #             association with your desired settings.</p>
    #          <p>Similar to Amazon Web Services IAM behavior, EKS Pod Identity associations are eventually consistent,
    #             and may take several seconds to be effective after the initial API call returns
    #             successfully. You must design your applications to account for these potential delays.
    #             We recommend that you don’t include association create/updates in the
    #             critical, high-availability code paths of your application. Instead, make changes in a
    #             separate initialization or setup routine that you run less frequently.</p>
    #          <p>You can set a <i>target IAM role</i> in the same or a different
    #             account for advanced scenarios. With a target role, EKS Pod Identity automatically performs two
    #             role assumptions in sequence: first assuming the role in the association that is in this
    #             account, then using those credentials to assume the target IAM role. This process
    #             provides your Pod with temporary credentials that have the permissions defined in the
    #             target role, allowing secure access to resources in another Amazon Web Services account.</p>
    # @param [Hash, Types::UpdatePodIdentityAssociationRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster that you want to update the association in.</p>
    # @option params [String] :association_id
    #   <p>The ID of the association to be updated.</p>
    # @option params [String] :role_arn
    #   <p>The new IAM role to change in the association.</p>
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure
    #   the idempotency of the request.</p>
    # @option params [Boolean] :disable_session_tags
    #   <p>Disable the automatic sessions tags that are appended by EKS Pod Identity.</p>
    #            <p>EKS Pod Identity adds a pre-defined set of session tags when it assumes the role. You
    #               can use these tags to author a single role that can work across resources by allowing
    #               access to Amazon Web Services resources based on matching tags. By default, EKS Pod Identity attaches
    #               six tags, including tags for cluster name, namespace, and service account name. For the
    #               list of tags added by EKS Pod Identity, see <a href="https://docs.aws.amazon.com/eks/latest/userguide/pod-id-abac.html#pod-id-abac-tags">List of session tags
    #                   added by EKS Pod Identity</a> in the <i>Amazon EKS User Guide</i>.</p>
    #            <p>Amazon Web Services compresses inline session policies, managed policy ARNs, and session tags into a
    #               packed binary format that has a separate limit. If you receive a <code>PackedPolicyTooLarge</code> error
    #               indicating the packed binary format has exceeded the size limit, you can attempt to reduce
    #               the size by disabling the session tags added by EKS Pod Identity.</p>
    # @option params [String] :target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the target IAM role to associate with the service account. This
    #               role is assumed by using the EKS Pod Identity association role, then the credentials for this
    #               role are injected into the Pod.</p>
    #            <p>When you run applications on Amazon EKS, your application might need to access Amazon Web Services
    #               resources from a different role that exists in the same or different Amazon Web Services account. For
    #               example, your application running in “Account A” might need to access resources, such as
    #               buckets in “Account B” or within “Account A” itself. You can create a association to
    #               access Amazon Web Services resources in “Account B” by creating two IAM roles: a role in “Account A”
    #               and a role in “Account B” (which can be the same or different account), each with the
    #               necessary trust and permission policies. After you provide these roles in the <i>IAM role</i>
    #               and <i>Target IAM role</i> fields, EKS will perform role chaining to ensure your application
    #               gets the required permissions. This means Role A will assume Role B, allowing your Pods
    #               to securely access resources like S3 buckets in the target account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     association_id: "String", # required
    #     role_arn: "String",
    #     client_request_token: "String",
    #     disable_session_tags: false,
    #     target_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.update_pod_identity_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association: {
    #       cluster_name: "String",
    #       namespace: "String",
    #       service_account: "String",
    #       role_arn: "String",
    #       association_arn: "String",
    #       association_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       owner_arn: "String",
    #       disable_session_tags: false,
    #       target_role_arn: "String",
    #       external_id: "String"
    #     }
    #   }
    # @return [Types::UpdatePodIdentityAssociationResponse]
    def update_pod_identity_association(params = {}, options = {})
      request = build_request(:update_pod_identity_association, params)
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
      context[:gem_name] = 'aws-sdk-eks'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        addon_active: Waiters::AddonActive,
        addon_deleted: Waiters::AddonDeleted,
        cluster_active: Waiters::ClusterActive,
        cluster_deleted: Waiters::ClusterDeleted,
        fargate_profile_active: Waiters::FargateProfileActive,
        fargate_profile_deleted: Waiters::FargateProfileDeleted,
        nodegroup_active: Waiters::NodegroupActive,
        nodegroup_deleted: Waiters::NodegroupDeleted
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end

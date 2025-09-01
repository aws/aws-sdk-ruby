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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/query'

module Aws::IAM
  # An API client for Aws::IAM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIdentityManagementV20100508

    add_plugin(::Aws::IAM::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::Query)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::IAM::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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

    # <p>Adds a new client ID (also known as audience) to the list of client IDs already
    #             registered for the specified IAM OpenID Connect (OIDC) provider resource.</p>
    #          <p>This operation is idempotent; it does not fail or return an error if you add an
    #             existing client ID to the provider.</p>
    # @param [Hash, Types::AddClientIDToOpenIDConnectProviderRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to
    #               add the client ID to. You can get a list of OIDC provider ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    # @option params [String] :client_id
    #   <p>The client ID (also known as audience) to add to the IAM OpenID Connect provider
    #               resource.</p>
    # @example To add a client ID (audience) to an Open-ID Connect (OIDC) provider
    #   # The following add-client-id-to-open-id-connect-provider command adds the client ID my-application-ID to the OIDC provider named server.example.com:
    #   params = {
    #     client_id: "my-application-ID",
    #     open_id_connect_provider_arn: "arn:aws:iam::123456789012:oidc-provider/server.example.com"
    #   }
    #   options = {}
    #   response = client.add_client_id_to_open_id_connect_provider(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #     client_id: "clientIDType", # required
    #   }
    #   options = {}
    #   response = client.add_client_id_to_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_client_id_to_open_id_connect_provider(params = {}, options = {})
      request = build_request(:add_client_id_to_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Adds the specified IAM role to the specified instance profile. An instance profile
    #             can contain only one role, and this quota cannot be increased. You can remove the
    #             existing role and then add a different role to an instance profile. You must then wait
    #             for the change to appear across all of Amazon Web Services because of <a href="https://en.wikipedia.org/wiki/Eventual_consistency">eventual
    #                 consistency</a>. To force the change, you must <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html">disassociate the instance profile</a> and then <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html">associate the
    #                 instance profile</a>, or you can stop your instance and then restart it.</p>
    #          <note>
    #             <p>The caller of this operation must be granted the <code>PassRole</code> permission
    #                 on the IAM role by a permissions policy.</p>
    #          </note>
    #          <important>
    #             <p>When using the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#available-keys-for-iam">iam:AssociatedResourceArn</a> condition in a policy to restrict the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">PassRole</a> IAM action, special considerations apply if the policy is
    #                 intended to define access for the <code>AddRoleToInstanceProfile</code> action. In
    #                 this case, you cannot specify a Region or instance ID in the EC2 instance ARN. The
    #                 ARN value must be <code>arn:aws:ec2:*:CallerAccountId:instance/*</code>. Using any
    #                 other ARN value may lead to unexpected evaluation results.</p>
    #          </important>
    #          <p> For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>IAM User Guide</i>. For more information about instance profiles,
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html">Using
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::AddRoleToInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :role_name
    #   <p>The name of the role to add.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To add a role to an instance profile
    #   # The following command adds the role named S3Access to the instance profile named Webserver:
    #   params = {
    #     role_name: "S3Access",
    #     instance_profile_name: "Webserver"
    #   }
    #   options = {}
    #   response = client.add_role_to_instance_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #     role_name: "roleNameType", # required
    #   }
    #   options = {}
    #   response = client.add_role_to_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_role_to_instance_profile(params = {}, options = {})
      request = build_request(:add_role_to_instance_profile, params)
      request.send_request(options)
    end

    # <p>Adds the specified user to the specified group.</p>
    # @param [Hash, Types::AddUserToGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :user_name
    #   <p>The name of the user to add.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To add a user to an IAM group
    #   # The following command adds an IAM user named Bob to the IAM group named Admins:
    #   params = {
    #     user_name: "Bob",
    #     group_name: "Admins"
    #   }
    #   options = {}
    #   response = client.add_user_to_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     user_name: "existingUserNameType", # required
    #   }
    #   options = {}
    #   response = client.add_user_to_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_user_to_group(params = {}, options = {})
      request = build_request(:add_user_to_group, params)
      request.send_request(options)
    end

    # <p>Attaches the specified managed policy to the specified IAM group.</p>
    #          <p>You use this operation to attach a managed policy to a group. To embed an inline
    #             policy in a group, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutGroupPolicy.html">
    #                <code>PutGroupPolicy</code>
    #             </a>.</p>
    #          <p>As a best practice, you can validate your IAM policies. 
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a> 
    #             in the <i>IAM User Guide</i>.</p>
    #          <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::AttachGroupPolicyRequest] params
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) of the group to attach the policy to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example To attach a managed policy to an IAM group
    #   # The following command attaches the AWS managed policy named ReadOnlyAccess to the IAM group named Finance.
    #   params = {
    #     group_name: "Finance",
    #     policy_arn: "arn:aws:iam::aws:policy/ReadOnlyAccess"
    #   }
    #   options = {}
    #   response = client.attach_group_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.attach_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_group_policy(params = {}, options = {})
      request = build_request(:attach_group_policy, params)
      request.send_request(options)
    end

    # <p>Attaches the specified managed policy to the specified IAM role. When you attach a
    #             managed policy to a role, the managed policy becomes part of the role's permission
    #             (access) policy.</p>
    #          <note>
    #             <p>You cannot use a managed policy as the role's trust policy. The role's trust
    #                 policy is created at the same time as the role, using <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">
    #                   <code>CreateRole</code>
    #                </a>. You can update a role's trust policy using
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html">
    #                   <code>UpdateAssumerolePolicy</code>
    #                </a>.</p>
    #          </note>
    #          <p>Use this operation to attach a <i>managed</i> policy to a role. To embed
    #             an inline policy in a role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutRolePolicy.html">
    #                <code>PutRolePolicy</code>
    #             </a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>As a best practice, you can validate your IAM policies. 
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a> 
    #             in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::AttachRolePolicyRequest] params
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the role to attach the policy to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example To attach a managed policy to an IAM role
    #   # The following command attaches the AWS managed policy named ReadOnlyAccess to the IAM role named ReadOnlyRole.
    #   params = {
    #     role_name: "ReadOnlyRole",
    #     policy_arn: "arn:aws:iam::aws:policy/ReadOnlyAccess"
    #   }
    #   options = {}
    #   response = client.attach_role_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.attach_role_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_role_policy(params = {}, options = {})
      request = build_request(:attach_role_policy, params)
      request.send_request(options)
    end

    # <p>Attaches the specified managed policy to the specified user.</p>
    #          <p>You use this operation to attach a <i>managed</i> policy to a user. To
    #             embed an inline policy in a user, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_PutUserPolicy.html">
    #                <code>PutUserPolicy</code>
    #             </a>.</p>
    #          <p>As a best practice, you can validate your IAM policies. 
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a> 
    #             in the <i>IAM User Guide</i>.</p>
    #          <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::AttachUserPolicyRequest] params
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example To attach a managed policy to an IAM user
    #   # The following command attaches the AWS managed policy named AdministratorAccess to the IAM user named Alice.
    #   params = {
    #     user_name: "Alice",
    #     policy_arn: "arn:aws:iam::aws:policy/AdministratorAccess"
    #   }
    #   options = {}
    #   response = client.attach_user_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.attach_user_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_user_policy(params = {}, options = {})
      request = build_request(:attach_user_policy, params)
      request.send_request(options)
    end

    # <p>Changes the password of the IAM user who is calling this operation. This operation
    #             can be performed using the CLI, the Amazon Web Services API, or the <b>My
    #                 Security Credentials</b> page in the Amazon Web Services Management Console. The Amazon Web Services account root user password is
    #             not affected by this operation.</p>
    #          <p>Use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateLoginProfile.html">UpdateLoginProfile</a>
    #             to use the CLI, the Amazon Web Services API, or the <b>Users</b> page in
    #             the IAM console to change the password for any IAM user. For more information about
    #             modifying passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing passwords</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ChangePasswordRequest] params
    # @option params [String] :old_password
    #   <p>The IAM user's current password.</p>
    # @option params [String] :new_password
    #   <p>The new password. The new password must conform to the Amazon Web Services account's password
    #               policy, if one exists.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of characters. That string can include almost any printable 
    #       ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>). 
    #       You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) 
    #       characters. Any of these characters are valid in a password. However, many tools, such 
    #       as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have 
    #       special meaning within that tool.</p>
    # @example To change the password for your IAM user
    #   # The following command changes the password for the current IAM user.
    #   params = {
    #     new_password: "]35d/{pB9Fo9wJ",
    #     old_password: "3s0K_;xh4~8XXI"
    #   }
    #   options = {}
    #   response = client.change_password(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     old_password: "passwordType", # required
    #     new_password: "passwordType", # required
    #   }
    #   options = {}
    #   response = client.change_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def change_password(params = {}, options = {})
      request = build_request(:change_password, params)
      request.send_request(options)
    end

    # <p> Creates a new Amazon Web Services secret access key and corresponding Amazon Web Services access key ID for the
    #             specified user. The default status for new keys is <code>Active</code>.</p>
    #          <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID signing the request. This operation works for access keys under
    #             the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root
    #             user credentials. This is true even if the Amazon Web Services account has no associated users.</p>
    #          <p> For information about quotas on the number of keys you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #          <important>
    #             <p>To ensure the security of your Amazon Web Services account, the secret access key is accessible
    #                 only during key and user creation. You must save the key (for example, in a text
    #                 file) if you want to be able to access it again. If a secret key is lost, you can
    #                 delete the access keys for the associated user and then create new keys.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user that the new key will belong to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To create an access key for an IAM user
    #   # The following command creates an access key (access key ID and secret access key) for the IAM user named Bob.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.create_access_key(params, options)
    #   response.to_h #=>
    #   {
    #     access_key: {
    #       user_name: "Bob",
    #       status: Active,
    #       create_date: Time.parse("2015-03-09T18:39:23.411Z"),
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType"
    #   }
    #   options = {}
    #   response = client.create_access_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key: { # required
    #       user_name: "userNameType", # required
    #       access_key_id: "accessKeyIdType", # required
    #       status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #       secret_access_key: "accessKeySecretType", # required
    #       create_date: Time.now
    #     }
    #   }
    # @return [Types::CreateAccessKeyResponse]
    def create_access_key(params = {}, options = {})
      request = build_request(:create_access_key, params)
      request.send_request(options)
    end

    # <p>Creates an alias for your Amazon Web Services account. For information about using an Amazon Web Services account
    #             alias, see <a href="https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html">Creating, deleting, and
    #                 listing an Amazon Web Services account alias</a> in the <i>Amazon Web Services Sign-In User
    #                 Guide</i>.</p>
    # @param [Hash, Types::CreateAccountAliasRequest] params
    # @option params [String] :account_alias
    #   <p>The account alias to create.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of 
    #       lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have 
    #       two dashes in a row.</p>
    # @example To create an account alias
    #   # The following command associates the alias examplecorp to your AWS account.
    #   params = {
    #     account_alias: "examplecorp"
    #   }
    #   options = {}
    #   response = client.create_account_alias(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_alias: "accountAliasType", # required
    #   }
    #   options = {}
    #   response = client.create_account_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_account_alias(params = {}, options = {})
      request = build_request(:create_account_alias, params)
      request.send_request(options)
    end

    # <p>Creates a new group.</p>
    #          <p> For information about the number of groups you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :path
    #   <p> The path to the group. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :group_name
    #   <p>The name of the group to create. Do not include the path in this value.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    # @example To create an IAM group
    #   # The following command creates an IAM group named Admins.
    #   params = {
    #     group_name: "Admins"
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    #   response.to_h #=>
    #   {
    #     group: {
    #       path: "/",
    #       create_date: Time.parse("2015-03-09T20:30:24.940Z"),
    #       group_id: "AIDGPMS9RO4H3FEXAMPLE",
    #       arn: "arn:aws:iam::123456789012:group/Admins",
    #       group_name: "Admins"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     path: "pathType",
    #     group_name: "groupNameType", # required
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: { # required
    #       path: "pathType", # required
    #       group_name: "groupNameType", # required
    #       group_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateGroupResponse]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p> Creates a new instance profile. For information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html">Using
    #                 roles for applications on Amazon EC2</a> in the
    #             <i>IAM User Guide</i>, and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile">Instance profiles</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #          <p> For information about the number of instance profiles you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM object
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to create.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :path
    #   <p> The path to the instance profile. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created IAM instance profile.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example To create an instance profile
    #   # The following command creates an instance profile named Webserver that is ready to have a role attached and then be associated with an EC2 instance.
    #   params = {
    #     instance_profile_name: "Webserver"
    #   }
    #   options = {}
    #   response = client.create_instance_profile(params, options)
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       instance_profile_id: "AIPAJMBYC7DLSPEXAMPLE",
    #       roles: [
    #       ],
    #       create_date: Time.parse("2015-03-09T20:33:19.626Z"),
    #       instance_profile_name: "Webserver",
    #       path: "/",
    #       arn: "arn:aws:iam::123456789012:instance-profile/Webserver"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #     path: "pathType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: { # required
    #       path: "pathType", # required
    #       instance_profile_name: "instanceProfileNameType", # required
    #       instance_profile_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       roles: [ # required
    #         {
    #           path: "pathType", # required
    #           role_name: "roleNameType", # required
    #           role_id: "idType", # required
    #           arn: "arnType", # required
    #           create_date: Time.now, # required
    #           assume_role_policy_document: "policyDocumentType",
    #           description: "roleDescriptionType",
    #           max_session_duration: 1,
    #           permissions_boundary: {
    #             permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #             permissions_boundary_arn: "arnType"
    #           },
    #           tags: [
    #             {
    #               key: "tagKeyType", # required
    #               value: "tagValueType", # required
    #             }
    #           ],
    #           role_last_used: {
    #             last_used_date: Time.now,
    #             region: "stringType"
    #           }
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateInstanceProfileResponse]
    def create_instance_profile(params = {}, options = {})
      request = build_request(:create_instance_profile, params)
      request.send_request(options)
    end

    # <p>Creates a password for the specified IAM user. A password allows an IAM user to
    #             access Amazon Web Services services through the Amazon Web Services Management Console.</p>
    #          <p>You can use the CLI, the Amazon Web Services API, or the <b>Users</b>
    #             page in the IAM console to create a password for any IAM user. Use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ChangePassword.html">ChangePassword</a> to update your own existing password in the <b>My Security Credentials</b> page in the Amazon Web Services Management Console.</p>
    #          <p>For more information about managing passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing passwords</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateLoginProfileRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user to create a password for. The user must already
    #               exist.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :password
    #   <p>The new password for the user.</p>
    #            <p>This parameter must be omitted when you make the request with an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session. It is required in all other cases.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       that is used to validate this parameter is a string of characters. That string can include almost any printable 
    #       ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>). 
    #       You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>) 
    #       characters. Any of these characters are valid in a password. However, many tools, such 
    #       as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have 
    #       special meaning within that tool.</p>
    # @option params [Boolean] :password_reset_required
    #   <p>Specifies whether the user is required to set a new password on next sign-in.</p>
    # @example To create an instance profile
    #   # The following command changes IAM user Bob's password and sets the flag that required Bob to change the password the next time he signs in.
    #   params = {
    #     user_name: "Bob",
    #     password: "h]6EszR}vJ*m",
    #     password_reset_required: true
    #   }
    #   options = {}
    #   response = client.create_login_profile(params, options)
    #   response.to_h #=>
    #   {
    #     login_profile: {
    #       user_name: "Bob",
    #       create_date: Time.parse("2015-03-10T20:55:40.274Z"),
    #       password_reset_required: true
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType",
    #     password: "passwordType",
    #     password_reset_required: false
    #   }
    #   options = {}
    #   response = client.create_login_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     login_profile: { # required
    #       user_name: "userNameType", # required
    #       create_date: Time.now, # required
    #       password_reset_required: false
    #     }
    #   }
    # @return [Types::CreateLoginProfileResponse]
    def create_login_profile(params = {}, options = {})
      request = build_request(:create_login_profile, params)
      request.send_request(options)
    end

    # <p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href="http://openid.net/connect/">OpenID Connect (OIDC)</a>.</p>
    #          <p>The OIDC provider that you create with this operation can be used as a principal in a
    #             role's trust policy. Such a policy establishes a trust relationship between Amazon Web Services and
    #             the OIDC provider.</p>
    #          <p>If you are using an OIDC identity provider from Google, Facebook, or Amazon Cognito, you don't
    #             need to create a separate IAM identity provider. These OIDC identity providers are
    #             already built-in to Amazon Web Services and are available for your use. Instead, you can move directly
    #             to creating new roles using your identity provider. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html">Creating
    #                 a role for web identity or OpenID connect federation</a> in the <i>IAM
    #                 User Guide</i>.</p>
    #          <p>When you create the IAM OIDC provider, you specify the following:</p>
    #          <ul>
    #             <li>
    #                <p>The URL of the OIDC identity provider (IdP) to trust</p>
    #             </li>
    #             <li>
    #                <p>A list of client IDs (also known as audiences) that identify the application
    #                     or applications allowed to authenticate using the OIDC provider</p>
    #             </li>
    #             <li>
    #                <p>A list of tags that are attached to the specified IAM OIDC provider</p>
    #             </li>
    #             <li>
    #                <p>A list of thumbprints of one or more server certificates that the IdP
    #                     uses</p>
    #             </li>
    #          </ul>
    #          <p>You get all of this information from the OIDC IdP you want to use to access
    #             Amazon Web Services.</p>
    #          <note>
    #             <p>Amazon Web Services secures communication with OIDC identity providers (IdPs) using our library of
    #             trusted root certificate authorities (CAs) to verify the JSON Web Key Set (JWKS)
    #             endpoint's TLS certificate. If your OIDC IdP relies on a certificate that is not signed
    #             by one of these trusted CAs, only then we secure communication using the thumbprints set
    #             in the IdP's configuration.</p>
    #          </note>
    #          <note>
    #             <p>The trust for the OIDC provider is derived from the IAM provider that this
    #                 operation creates. Therefore, it is best to limit access to the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a> operation to highly privileged
    #                 users.</p>
    #          </note>
    # @param [Hash, Types::CreateOpenIDConnectProviderRequest] params
    # @option params [String] :url
    #   <p>The URL of the identity provider. The URL must begin with <code>https://</code> and
    #               should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID
    #               tokens. Per the OIDC standard, path components are allowed but query parameters are not.
    #               Typically the URL consists of only a hostname, like
    #                   <code>https://server.example.org</code> or <code>https://example.com</code>. The URL
    #               should not contain a port number. </p>
    #            <p>You cannot register the same provider multiple times in a single Amazon Web Services account. If you
    #               try to submit a URL that has already been used for an OpenID Connect provider in the
    #               Amazon Web Services account, you will get an error.</p>
    # @option params [Array<String>] :client_id_list
    #   <p>Provides a list of client IDs, also known as audiences. When a mobile or web app
    #               registers with an OpenID Connect provider, they establish a value that identifies the
    #               application. This is the value that's sent as the <code>client_id</code> parameter on
    #               OAuth requests.</p>
    #            <p>You can register multiple client IDs with the same provider. For example, you might
    #               have multiple applications that use the same OIDC provider. You cannot register more
    #               than 100 client IDs with a single IAM OIDC provider.</p>
    #            <p>There is no defined format for a client ID. The
    #                   <code>CreateOpenIDConnectProviderRequest</code> operation accepts client IDs up to
    #               255 characters long.</p>
    # @option params [Array<String>] :thumbprint_list
    #   <p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity
    #               provider's server certificates. Typically this list includes only one entry. However,
    #               IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain
    #               multiple thumbprints if the identity provider is rotating certificates.</p>
    #            <p>This parameter is optional. If it is not included, IAM will retrieve and use the top
    #               intermediate certificate authority (CA) thumbprint of the OpenID Connect identity
    #               provider server certificate.</p>
    #            <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509
    #               certificate used by the domain where the OpenID Connect provider makes its keys
    #               available. It is always a 40-character string.</p>
    #            <p>For example, assume that the OIDC provider is <code>server.example.com</code> and the
    #               provider stores its keys at https://keys.server.example.com/openid-connect. In that
    #               case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate
    #               used by <code>https://keys.server.example.com.</code>
    #            </p>
    #            <p>For more information about obtaining the OIDC provider thumbprint, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html">Obtaining the
    #                   thumbprint for an OpenID Connect provider</a> in the <i>IAM user
    #                   Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example To create an instance profile
    #   # The following example defines a new OIDC provider in IAM with a client ID of my-application-id and pointing at the server with a URL of https://server.example.com.
    #   params = {
    #     client_id_list: [
    #       "my-application-id"
    #     ],
    #     thumbprint_list: [
    #       "3768084dfb3d2b68b7897bf5f565da8efEXAMPLE"
    #     ],
    #     url: "https://server.example.com"
    #   }
    #   options = {}
    #   response = client.create_open_id_connect_provider(params, options)
    #   response.to_h #=>
    #   {
    #     open_id_connect_provider_arn: "arn:aws:iam::123456789012:oidc-provider/server.example.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     url: "OpenIDConnectProviderUrlType", # required
    #     client_id_list: ["clientIDType"],
    #     thumbprint_list: ["thumbprintType"],
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     open_id_connect_provider_arn: "arnType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateOpenIDConnectProviderResponse]
    def create_open_id_connect_provider(params = {}, options = {})
      request = build_request(:create_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Creates a new managed policy for your Amazon Web Services account.</p>
    #          <p>This operation creates a policy version with a version identifier of <code>v1</code>
    #             and sets v1 as the policy's default version. For more information about policy versions,
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <p>As a best practice, you can validate your IAM policies. 
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a> 
    #             in the <i>IAM User Guide</i>.</p>
    #          <p>For more information about managed policies in general, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreatePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The friendly name of the policy.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    # @option params [String] :path
    #   <p>The path for the policy.</p>
    #            <p>For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #            <note>
    #               <p>You cannot use an asterisk (*) in the path name.</p>
    #            </note>
    # @option params [String] :policy_document
    #   <p>The JSON policy document that you want to use as the content for the new
    #               policy.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>To learn more about JSON policy grammar, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html">Grammar of the IAM JSON
    #                   policy language</a> in the <i>IAM User Guide</i>. </p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>A friendly description of the policy.</p>
    #            <p>Typically used to store information about the permissions defined in the policy. For
    #               example, "Grants access to production DynamoDB tables."</p>
    #            <p>The policy description is immutable. After a value is assigned, it cannot be
    #               changed.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM customer managed policy.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "policyNameType", # required
    #     path: "policyPathType",
    #     policy_document: "policyDocumentType", # required
    #     description: "policyDescriptionType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_name: "policyNameType",
    #       policy_id: "idType",
    #       arn: "arnType",
    #       path: "policyPathType",
    #       default_version_id: "policyVersionIdType",
    #       attachment_count: 1,
    #       permissions_boundary_usage_count: 1,
    #       is_attachable: false,
    #       description: "policyDescriptionType",
    #       create_date: Time.now,
    #       update_date: Time.now,
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreatePolicyResponse]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new version of the specified managed policy. To update a managed policy, you
    #             create a new policy version. A managed policy can have up to five versions. If the
    #             policy has five versions, you must delete an existing version using <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicyVersion.html">DeletePolicyVersion</a> before you create a new version.</p>
    #          <p>Optionally, you can set the new version as the policy's default version. The default
    #             version is the version that is in effect for the IAM users, groups, and roles to which
    #             the policy is attached.</p>
    #          <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreatePolicyVersionRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new
    #               version.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :policy_document
    #   <p>The JSON policy document that you want to use as the content for this new version of
    #               the policy.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :set_as_default
    #   <p>Specifies whether to set this version as the policy's default version.</p>
    #            <p>When this parameter is <code>true</code>, the new policy version becomes the operative
    #               version. That is, it becomes the version that is in effect for the IAM users, groups,
    #               and roles that the policy is attached to.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     policy_document: "policyDocumentType", # required
    #     set_as_default: false
    #   }
    #   options = {}
    #   response = client.create_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_version: {
    #       document: "policyDocumentType",
    #       version_id: "policyVersionIdType",
    #       is_default_version: false,
    #       create_date: Time.now
    #     }
    #   }
    # @return [Types::CreatePolicyVersionResponse]
    def create_policy_version(params = {}, options = {})
      request = build_request(:create_policy_version, params)
      request.send_request(options)
    end

    # <p>Creates a new role for your Amazon Web Services account.</p>
    #          <p> For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>IAM User Guide</i>. For information about quotas for role names
    #             and the number of roles you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateRoleRequest] params
    # @option params [String] :path
    #   <p> The path to the role. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :role_name
    #   <p>The name of the role to create.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :assume_role_policy_document
    #   <p>The trust relationship policy document that grants an entity permission to assume the
    #               role.</p>
    #            <p>In IAM, you must provide a JSON policy that has been converted to a string. However,
    #               for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML
    #               format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <p> Upon success, the response includes the same trust policy in JSON format.</p>
    # @option params [String] :description
    #   <p>A description of the role.</p>
    # @option params [Integer] :max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.
    #               If you do not specify a value for this setting, the default value of one hour is
    #               applied. This setting can have a value from 1 hour to 12 hours.</p>
    #            <p>Anyone who assumes the role from the CLI or API can use the
    #                   <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code>
    #               CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting
    #               determines the maximum duration that can be requested using the
    #                   <code>DurationSeconds</code> parameter. If users don't specify a value for the
    #                   <code>DurationSeconds</code> parameter, their security credentials are valid for one
    #               hour by default. This applies when you use the <code>AssumeRole*</code> API operations
    #               or the <code>assume-role*</code> CLI operations but does not apply when you use those
    #               operations to create a console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM
    #                   roles</a> in the <i>IAM User Guide</i>.</p>
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               role.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example To create an IAM role
    #   # The following command creates a role named Test-Role and attaches a trust policy that you must convert from JSON to a string. Upon success, the response includes the same policy as a URL-encoded JSON string.
    #   params = {
    #     assume_role_policy_document: "<Stringified-JSON>",
    #     path: "/",
    #     role_name: "Test-Role"
    #   }
    #   options = {}
    #   response = client.create_role(params, options)
    #   response.to_h #=>
    #   {
    #     role: {
    #       arn: "arn:aws:iam::123456789012:role/Test-Role",
    #       assume_role_policy_document: "<URL-encoded-JSON>",
    #       create_date: Time.parse("2013-06-07T20:43:32.821Z"),
    #       path: "/",
    #       role_id: "AKIAIOSFODNN7EXAMPLE",
    #       role_name: "Test-Role"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     path: "pathType",
    #     role_name: "roleNameType", # required
    #     assume_role_policy_document: "policyDocumentType", # required
    #     description: "roleDescriptionType",
    #     max_session_duration: 1,
    #     permissions_boundary: "arnType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role: { # required
    #       path: "pathType", # required
    #       role_name: "roleNameType", # required
    #       role_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       assume_role_policy_document: "policyDocumentType",
    #       description: "roleDescriptionType",
    #       max_session_duration: 1,
    #       permissions_boundary: {
    #         permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #         permissions_boundary_arn: "arnType"
    #       },
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ],
    #       role_last_used: {
    #         last_used_date: Time.now,
    #         region: "stringType"
    #       }
    #     }
    #   }
    # @return [Types::CreateRoleResponse]
    def create_role(params = {}, options = {})
      request = build_request(:create_role, params)
      request.send_request(options)
    end

    # <p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML
    #             2.0.</p>
    #          <p>The SAML provider resource that you create with this operation can be used as a
    #             principal in an IAM role's trust policy. Such a policy can enable federated users who
    #             sign in using the SAML IdP to assume the role. You can create an IAM role that
    #             supports Web-based single sign-on (SSO) to the Amazon Web Services Management Console or one that supports API access
    #             to Amazon Web Services.</p>
    #          <p>When you create the SAML provider resource, you upload a SAML metadata document that
    #             you get from your IdP. That document includes the issuer's name, expiration information,
    #             and keys that can be used to validate the SAML authentication response (assertions) that
    #             the IdP sends. You must generate the metadata document using the identity management
    #             software that is used as your organization's IdP.</p>
    #          <note>
    #             <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #          </note>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0
    #                 federated users to access the Amazon Web Services Management Console</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #                 federation</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateSAMLProviderRequest] params
    # @option params [String] :saml_metadata_document
    #   <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    #               document includes the issuer's name, expiration information, and keys that can be used
    #               to validate the SAML authentication response (assertions) that are received from the
    #               IdP. You must generate the metadata document using the identity management software that
    #               is used as your organization's IdP.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #                   federation</a> in the <i>IAM User Guide</i>
    #            </p>
    # @option params [String] :name
    #   <p>The name of the provider to create.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM SAML provider.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @option params [String] :assertion_encryption_mode
    #   <p>Specifies the encryption setting for the SAML provider.</p>
    # @option params [String] :add_private_key
    #   <p>The private key generated from your external identity provider. The private key must
    #               be a .pem file that uses AES-GCM or AES-CBC encryption algorithm to decrypt SAML
    #               assertions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_metadata_document: "SAMLMetadataDocumentType", # required
    #     name: "SAMLProviderNameType", # required
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     assertion_encryption_mode: "Required" # One of: ["Required", "Allowed"],
    #     add_private_key: "privateKeyType"
    #   }
    #   options = {}
    #   response = client.create_saml_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     saml_provider_arn: "arnType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateSAMLProviderResponse]
    def create_saml_provider(params = {}, options = {})
      request = build_request(:create_saml_provider, params)
      request.send_request(options)
    end

    # <p>Creates an IAM role that is linked to a specific Amazon Web Services service. The service controls
    #             the attached policies and when the role can be deleted. This helps ensure that the
    #             service is not broken by an unexpectedly changed or deleted role, which could put your
    #             Amazon Web Services resources into an unknown state. Allowing the service to control the role helps
    #             improve service stability and proper cleanup when a service and its role are no longer
    #             needed. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">Using service-linked
    #                 roles</a> in the <i>IAM User Guide</i>. </p>
    #          <p>To attach a policy to this service-linked role, you must make the request using the
    #             Amazon Web Services service that depends on this role.</p>
    # @param [Hash, Types::CreateServiceLinkedRoleRequest] params
    # @option params [String] :aws_service_name
    #   <p>The service principal for the Amazon Web Services service to which this role is attached. You use a
    #               string similar to a URL but without the http:// in front. For example:
    #                   <code>elasticbeanstalk.amazonaws.com</code>. </p>
    #            <p>Service principals are unique and case-sensitive. To find the exact service principal
    #               for your service-linked role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html">Amazon Web Services services
    #                   that work with IAM</a> in the <i>IAM User Guide</i>. Look for
    #               the services that have <b>Yes </b>in the <b>Service-Linked Role</b> column. Choose the <b>Yes</b> link to view the service-linked role documentation for that
    #               service.</p>
    # @option params [String] :description
    #   <p>The description of the role.</p>
    # @option params [String] :custom_suffix
    #   <p></p>
    #            <p>A string that you provide, which is combined with the service-provided prefix to form
    #               the complete role name. If you make multiple requests for the same service, then you
    #               must supply a different <code>CustomSuffix</code> for each request. Otherwise the
    #               request fails with a duplicate role name error. For example, you could add
    #                   <code>-1</code> or <code>-debug</code> to the suffix.</p>
    #            <p>Some services do not support the <code>CustomSuffix</code> parameter. If you provide
    #               an optional suffix and the operation fails, try the operation again without the
    #               suffix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aws_service_name: "groupNameType", # required
    #     description: "roleDescriptionType",
    #     custom_suffix: "customSuffixType"
    #   }
    #   options = {}
    #   response = client.create_service_linked_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role: {
    #       path: "pathType", # required
    #       role_name: "roleNameType", # required
    #       role_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       assume_role_policy_document: "policyDocumentType",
    #       description: "roleDescriptionType",
    #       max_session_duration: 1,
    #       permissions_boundary: {
    #         permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #         permissions_boundary_arn: "arnType"
    #       },
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ],
    #       role_last_used: {
    #         last_used_date: Time.now,
    #         region: "stringType"
    #       }
    #     }
    #   }
    # @return [Types::CreateServiceLinkedRoleResponse]
    def create_service_linked_role(params = {}, options = {})
      request = build_request(:create_service_linked_role, params)
      request.send_request(options)
    end

    # <p>Generates a set of credentials consisting of a user name and password that can be used
    #             to access the service specified in the request. These credentials are generated by
    #             IAM, and can be used only for the specified service. </p>
    #          <p>You can have a maximum of two sets of service-specific credentials for each supported
    #             service per user.</p>
    #          <p>You can create service-specific credentials for Amazon Bedrock, CodeCommit and Amazon Keyspaces (for Apache Cassandra).</p>
    #          <p>You can reset the password to a new service-generated value by calling <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ResetServiceSpecificCredential.html">ResetServiceSpecificCredential</a>.</p>
    #          <p>For more information about service-specific credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_bedrock.html">Service-specific credentials for IAM users</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateServiceSpecificCredentialRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user that is to be associated with the credentials. The new
    #               service-specific credentials have the same permissions as the associated user except
    #               that they can be used only to access the specified service.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :service_name
    #   <p>The name of the Amazon Web Services service that is to be associated with the credentials. The
    #               service you specify here is the only service that can be accessed using these
    #               credentials.</p>
    # @option params [Integer] :credential_age_days
    #   <p>The number of days until the service specific credential expires. This field is only
    #               valid for Bedrock API keys and must be a positive integer. When not specified, the
    #               credential will not expire.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     service_name: "serviceName", # required
    #     credential_age_days: 1
    #   }
    #   options = {}
    #   response = client.create_service_specific_credential(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_specific_credential: {
    #       create_date: Time.now, # required
    #       expiration_date: Time.now,
    #       service_name: "serviceName", # required
    #       service_user_name: "serviceUserName",
    #       service_password: "servicePassword",
    #       service_credential_alias: "serviceCredentialAlias",
    #       service_credential_secret: "serviceCredentialSecret",
    #       service_specific_credential_id: "serviceSpecificCredentialId", # required
    #       user_name: "userNameType", # required
    #       status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #     }
    #   }
    # @return [Types::CreateServiceSpecificCredentialResponse]
    def create_service_specific_credential(params = {}, options = {})
      request = build_request(:create_service_specific_credential, params)
      request.send_request(options)
    end

    # <p>Creates a new IAM user for your Amazon Web Services account.</p>
    #          <p> For information about quotas for the number of IAM users you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :path
    #   <p> The path for the user name. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :user_name
    #   <p>The name of the user to create.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               user.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new user. Each tag consists of a key name and an associated value.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example To create an IAM user
    #   # The following create-user command creates an IAM user named Bob in the current account.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    #   response.to_h #=>
    #   {
    #     user: {
    #       user_name: "Bob",
    #       path: "/",
    #       create_date: Time.parse("2013-06-08T03:20:41.270Z"),
    #       user_id: "AKIAIOSFODNN7EXAMPLE",
    #       arn: "arn:aws:iam::123456789012:user/Bob"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     path: "pathType",
    #     user_name: "userNameType", # required
    #     permissions_boundary: "arnType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       path: "pathType", # required
    #       user_name: "userNameType", # required
    #       user_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       password_last_used: Time.now,
    #       permissions_boundary: {
    #         permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #         permissions_boundary_arn: "arnType"
    #       },
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Creates a new virtual MFA device for the Amazon Web Services account. After creating the virtual
    #             MFA, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_EnableMFADevice.html">EnableMFADevice</a> to
    #             attach the MFA device to an IAM user. For more information about creating and working
    #             with virtual MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a virtual MFA device</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <p>For information about the maximum number of MFA devices you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #          <important>
    #             <p>The seed information contained in the QR code and the Base32 string should be
    #                 treated like any other secret access information. In other words, protect the seed
    #                 information as you would your Amazon Web Services access keys or your passwords. After you
    #                 provision your virtual device, you should ensure that the information is destroyed
    #                 following secure procedures.</p>
    #          </important>
    # @param [Hash, Types::CreateVirtualMFADeviceRequest] params
    # @option params [String] :path
    #   <p> The path for the virtual MFA device. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :virtual_mfa_device_name
    #   <p>The name of the virtual MFA device, which must be unique. Use with path to uniquely
    #               identify a virtual MFA device.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM virtual MFA device.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     path: "pathType",
    #     virtual_mfa_device_name: "virtualMFADeviceName", # required
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_virtual_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_mfa_device: { # required
    #       serial_number: "serialNumberType", # required
    #       base32_string_seed: "data",
    #       qr_code_png: "data",
    #       user: {
    #         path: "pathType", # required
    #         user_name: "userNameType", # required
    #         user_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #         password_last_used: Time.now,
    #         permissions_boundary: {
    #           permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #           permissions_boundary_arn: "arnType"
    #         },
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       },
    #       enable_date: Time.now,
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateVirtualMFADeviceResponse]
    def create_virtual_mfa_device(params = {}, options = {})
      request = build_request(:create_virtual_mfa_device, params)
      request.send_request(options)
    end

    # <p>Deactivates the specified MFA device and removes it from association with the user
    #             name for which it was originally enabled.</p>
    #          <p>For more information about creating and working with virtual MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Enabling a virtual
    #                 multi-factor authentication (MFA) device</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeactivateMFADeviceRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose MFA device you want to deactivate.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the device ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    #       following characters: =,.@:/-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     serial_number: "serialNumberType", # required
    #   }
    #   options = {}
    #   response = client.deactivate_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deactivate_mfa_device(params = {}, options = {})
      request = build_request(:deactivate_mfa_device, params)
      request.send_request(options)
    end

    # <p>Deletes the access key pair associated with the specified IAM user.</p>
    #          <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID signing the request. This operation works for access keys under
    #             the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root
    #             user credentials even if the Amazon Web Services account has no associated users.</p>
    # @param [Hash, Types::DeleteAccessKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose access key pair you want to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :access_key_id
    #   <p>The access key ID for the access key ID and secret access key you want to
    #               delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @example To delete an access key for an IAM user
    #   # The following command deletes one access key (access key ID and secret access key) assigned to the IAM user named Bob.
    #   params = {
    #     user_name: "Bob",
    #     access_key_id: "AKIDPMS9RO4H3FEXAMPLE"
    #   }
    #   options = {}
    #   response = client.delete_access_key(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     access_key_id: "accessKeyIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_access_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_key(params = {}, options = {})
      request = build_request(:delete_access_key, params)
      request.send_request(options)
    end

    # <p> Deletes the specified Amazon Web Services account alias. For information about using an Amazon Web Services
    #             account alias, see <a href="https://docs.aws.amazon.com/signin/latest/userguide/CreateAccountAlias.html">Creating, deleting, and
    #                 listing an Amazon Web Services account alias</a> in the <i>Amazon Web Services Sign-In User
    #                 Guide</i>.</p>
    # @param [Hash, Types::DeleteAccountAliasRequest] params
    # @option params [String] :account_alias
    #   <p>The name of the account alias to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of 
    #       lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have 
    #       two dashes in a row.</p>
    # @example To delete an account alias
    #   # The following command removes the alias mycompany from the current AWS account:
    #   params = {
    #     account_alias: "mycompany"
    #   }
    #   options = {}
    #   response = client.delete_account_alias(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     account_alias: "accountAliasType", # required
    #   }
    #   options = {}
    #   response = client.delete_account_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_account_alias(params = {}, options = {})
      request = build_request(:delete_account_alias, params)
      request.send_request(options)
    end

    # <p>Deletes the password policy for the Amazon Web Services account. There are no parameters.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To delete the current account password policy
    #   # The following command removes the password policy from the current AWS account:
    #   params = {}
    #   options = {}
    #   response = client.delete_account_password_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_account_password_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_account_password_policy(params = {}, options = {})
      request = build_request(:delete_account_password_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified IAM group. The group must not contain any users or have any
    #             attached policies.</p>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the IAM group to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified inline policy that is embedded in the specified IAM
    #             group.</p>
    #          <p>A group can also have managed policies attached to it. To detach a managed policy from
    #             a group, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachGroupPolicy.html">DetachGroupPolicy</a>.
    #             For more information about policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeleteGroupPolicyRequest] params
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) identifying the group that the policy is embedded
    #               in.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name identifying the policy document to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To delete a policy from an IAM group
    #   # The following command deletes the policy named ExamplePolicy from the group named Admins:
    #   params = {
    #     group_name: "Admins",
    #     policy_name: "ExamplePolicy"
    #   }
    #   options = {}
    #   response = client.delete_group_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_group_policy(params = {}, options = {})
      request = build_request(:delete_group_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified instance profile. The instance profile must not have an
    #             associated role.</p>
    #          <important>
    #             <p>Make sure that you do not have any Amazon EC2 instances running with the instance
    #                 profile you are about to delete. Deleting a role or instance profile that is
    #                 associated with a running instance will break any applications running on the
    #                 instance.</p>
    #          </important>
    #          <p>For more information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html">Using
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeleteInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To delete an instance profile
    #   # The following command deletes the instance profile named ExampleInstanceProfile
    #   params = {
    #     instance_profile_name: "ExampleInstanceProfile"
    #   }
    #   options = {}
    #   response = client.delete_instance_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_instance_profile(params = {}, options = {})
      request = build_request(:delete_instance_profile, params)
      request.send_request(options)
    end

    # <p>Deletes the password for the specified IAM user or root user, For more information, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_admin-change-user.html">Managing
    #                 passwords for IAM users</a>.</p>
    #          <p>You can use the CLI, the Amazon Web Services API, or the <b>Users</b>
    #             page in the IAM console to delete a password for any IAM user. You can use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ChangePassword.html">ChangePassword</a> to update, but not delete, your own password in the
    #                 <b>My Security Credentials</b> page in the
    #             Amazon Web Services Management Console.</p>
    #          <important>
    #             <p>Deleting a user's password does not prevent a user from accessing Amazon Web Services through
    #                 the command line interface or the API. To prevent all user access, you must also
    #                 either make any access keys inactive or delete them. For more information about
    #                 making keys inactive or deleting them, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAccessKey.html">UpdateAccessKey</a>
    #                 and <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteAccessKey.html">DeleteAccessKey</a>.</p>
    #          </important>
    # @param [Hash, Types::DeleteLoginProfileRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose password you want to delete.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To delete a password for an IAM user
    #   # The following command deletes the password for the IAM user named Bob.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.delete_login_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType"
    #   }
    #   options = {}
    #   response = client.delete_login_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_login_profile(params = {}, options = {})
      request = build_request(:delete_login_profile, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p>
    #          <p>Deleting an IAM OIDC provider resource does not update any roles that reference the
    #             provider as a principal in their trust policies. Any attempt to assume a role that
    #             references a deleted provider fails.</p>
    #          <p>This operation is idempotent; it does not fail or return an error if you call the
    #             operation for a provider that does not exist.</p>
    # @param [Hash, Types::DeleteOpenIDConnectProviderRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to
    #               delete. You can get a list of OpenID Connect provider resource ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.delete_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_open_id_connect_provider(params = {}, options = {})
      request = build_request(:delete_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Deletes the specified managed policy.</p>
    #          <p>Before you can delete a managed policy, you must first detach the policy from all
    #             users, groups, and roles that it is attached to. In addition, you must delete all the
    #             policy's versions. The following steps describe the process for deleting a managed
    #             policy:</p>
    #          <ul>
    #             <li>
    #                <p>Detach the policy from all users, groups, and roles that the policy is
    #                     attached to, using <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachUserPolicy.html">DetachUserPolicy</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachGroupPolicy.html">DetachGroupPolicy</a>, or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachRolePolicy.html">DetachRolePolicy</a>. To list all the users, groups, and roles that a
    #                     policy is attached to, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a>.</p>
    #             </li>
    #             <li>
    #                <p>Delete all versions of the policy using <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicyVersion.html">DeletePolicyVersion</a>. To list the policy's versions, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html">ListPolicyVersions</a>. You cannot use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicyVersion.html">DeletePolicyVersion</a> to delete the version that is marked as the
    #                     default version. You delete the policy's default version in the next step of the
    #                     process.</p>
    #             </li>
    #             <li>
    #                <p>Delete the policy (this automatically deletes the policy's default version)
    #                     using this operation.</p>
    #             </li>
    #          </ul>
    #          <p>For information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
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

    # <p>Deletes the specified version from the specified managed policy.</p>
    #          <p>You cannot delete the default version from a policy using this operation. To delete
    #             the default version from a policy, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeletePolicy.html">DeletePolicy</a>. To find
    #             out which version of a policy is marked as the default version, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html">ListPolicyVersions</a>.</p>
    #          <p>For information about versions for managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeletePolicyVersionRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a
    #               version.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :version_id
    #   <p>The policy version to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that 
    #       consists of the lowercase letter 'v' followed by one or two digits, and optionally 
    #       followed by a period '.' and a string of letters and digits.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     version_id: "policyVersionIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy_version(params = {}, options = {})
      request = build_request(:delete_policy_version, params)
      request.send_request(options)
    end

    # <p>Deletes the specified role. Unlike the Amazon Web Services Management Console, when you delete a role
    #             programmatically, you must delete the items attached to the role manually, or the
    #             deletion fails. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli">Deleting an IAM role</a>. Before attempting to delete a role, remove the
    #             following attached items: </p>
    #          <ul>
    #             <li>
    #                <p>Inline policies (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteRolePolicy.html">DeleteRolePolicy</a>)</p>
    #             </li>
    #             <li>
    #                <p>Attached managed policies (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachRolePolicy.html">DetachRolePolicy</a>)</p>
    #             </li>
    #             <li>
    #                <p>Instance profile (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_RemoveRoleFromInstanceProfile.html">RemoveRoleFromInstanceProfile</a>)</p>
    #             </li>
    #             <li>
    #                <p>Optional – Delete instance profile after detaching from role for
    #                     resource clean up (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteInstanceProfile.html">DeleteInstanceProfile</a>)</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>Make sure that you do not have any Amazon EC2 instances running with the role you are
    #                 about to delete. Deleting a role or instance profile that is associated with a
    #                 running instance will break any applications running on the instance.</p>
    #          </important>
    # @param [Hash, Types::DeleteRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To delete an IAM role
    #   # The following command removes the role named Test-Role.
    #   params = {
    #     role_name: "Test-Role"
    #   }
    #   options = {}
    #   response = client.delete_role(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_role(params = {}, options = {})
      request = build_request(:delete_role, params)
      request.send_request(options)
    end

    # <p>Deletes the permissions boundary for the specified IAM role. </p>
    #          <p>You cannot set the boundary for a service-linked role.</p>
    #          <important>
    #             <p>Deleting the permissions boundary for a role might increase its permissions. For
    #                 example, it might allow anyone who assumes the role to perform all the actions
    #                 granted in its permissions policies.</p>
    #          </important>
    # @param [Hash, Types::DeleteRolePermissionsBoundaryRequest] params
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the IAM role from which you want to remove the
    #               permissions boundary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_role_permissions_boundary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_role_permissions_boundary(params = {}, options = {})
      request = build_request(:delete_role_permissions_boundary, params)
      request.send_request(options)
    end

    # <p>Deletes the specified inline policy that is embedded in the specified IAM
    #             role.</p>
    #          <p>A role can also have managed policies attached to it. To detach a managed policy from
    #             a role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachRolePolicy.html">DetachRolePolicy</a>.
    #             For more information about policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeleteRolePolicyRequest] params
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) identifying the role that the policy is embedded
    #               in.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name of the inline policy to delete from the specified IAM role.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To remove a policy from an IAM role
    #   # The following command removes the policy named ExamplePolicy from the role named Test-Role.
    #   params = {
    #     role_name: "Test-Role",
    #     policy_name: "ExamplePolicy"
    #   }
    #   options = {}
    #   response = client.delete_role_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_role_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_role_policy(params = {}, options = {})
      request = build_request(:delete_role_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a SAML provider resource in IAM.</p>
    #          <p>Deleting the provider resource from IAM does not update any roles that reference the
    #             SAML provider resource's ARN as a principal in their trust policies. Any attempt to
    #             assume a role that references a non-existent provider resource ARN fails.</p>
    #          <note>
    #             <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #          </note>
    # @param [Hash, Types::DeleteSAMLProviderRequest] params
    # @option params [String] :saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_provider_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.delete_saml_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_saml_provider(params = {}, options = {})
      request = build_request(:delete_saml_provider, params)
      request.send_request(options)
    end

    # <p>Deletes the specified SSH public key.</p>
    #          <p>The SSH public key deleted by this operation is used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    # @param [Hash, Types::DeleteSSHPublicKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     ssh_public_key_id: "publicKeyIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_ssh_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ssh_public_key(params = {}, options = {})
      request = build_request(:delete_ssh_public_key, params)
      request.send_request(options)
    end

    # <p>Deletes the specified server certificate.</p>
    #          <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic also includes a list of Amazon Web Services services that can use the server certificates that
    #             you manage with IAM.</p>
    #          <important>
    #             <p> If you are using a server certificate with Elastic Load Balancing, deleting the
    #                 certificate could have implications for your application. If Elastic Load Balancing
    #                 doesn't detect the deletion of bound certificates, it may continue to use the
    #                 certificates. This could cause Elastic Load Balancing to stop accepting traffic. We
    #                 recommend that you remove the reference to the certificate from Elastic Load
    #                 Balancing before using this command to delete the certificate. For more information,
    #                 see <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API
    #                     Reference</i>.</p>
    #          </important>
    # @param [Hash, Types::DeleteServerCertificateRequest] params
    # @option params [String] :server_certificate_name
    #   <p>The name of the server certificate you want to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_certificate_name: "serverCertificateNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_server_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_server_certificate(params = {}, options = {})
      request = build_request(:delete_server_certificate, params)
      request.send_request(options)
    end

    # <p>Submits a service-linked role deletion request and returns a
    #                 <code>DeletionTaskId</code>, which you can use to check the status of the deletion.
    #             Before you call this operation, confirm that the role has no active sessions and that
    #             any resources used by the role in the linked service are deleted. If you call this
    #             operation more than once for the same service-linked role and an earlier deletion task
    #             is not complete, then the <code>DeletionTaskId</code> of the earlier request is
    #             returned.</p>
    #          <p>If you submit a deletion request for a service-linked role whose linked service is
    #             still accessing a resource, then the deletion task fails. If it fails, the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLinkedRoleDeletionStatus.html">GetServiceLinkedRoleDeletionStatus</a> operation returns the reason for the
    #             failure, usually including the resources that must be deleted. To delete the
    #             service-linked role, you must first remove those resources from the linked service and
    #             then submit the deletion request again. Resources are specific to the service that is
    #             linked to the role. For more information about removing resources from a service, see
    #             the <a href="http://docs.aws.amazon.com/">Amazon Web Services documentation</a> for your
    #             service.</p>
    #          <p>For more information about service-linked roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Roles terms and concepts: Amazon Web Services service-linked role</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeleteServiceLinkedRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the service-linked role to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_service_linked_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_task_id: "DeletionTaskIdType", # required
    #   }
    # @return [Types::DeleteServiceLinkedRoleResponse]
    def delete_service_linked_role(params = {}, options = {})
      request = build_request(:delete_service_linked_role, params)
      request.send_request(options)
    end

    # <p>Deletes the specified service-specific credential.</p>
    # @param [Hash, Types::DeleteServiceSpecificCredentialRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If this
    #               value is not specified, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential. You can get this value by
    #               calling <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServiceSpecificCredentials.html">ListServiceSpecificCredentials</a>.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType",
    #     service_specific_credential_id: "serviceSpecificCredentialId", # required
    #   }
    #   options = {}
    #   response = client.delete_service_specific_credential(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_service_specific_credential(params = {}, options = {})
      request = build_request(:delete_service_specific_credential, params)
      request.send_request(options)
    end

    # <p>Deletes a signing certificate associated with the specified IAM user.</p>
    #          <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID signing the request. This operation works for access keys under
    #             the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root
    #             user credentials even if the Amazon Web Services account has no associated IAM users.</p>
    # @param [Hash, Types::DeleteSigningCertificateRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user the signing certificate belongs to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :certificate_id
    #   <p>The ID of the signing certificate to delete.</p>
    #            <p>The format of this parameter, as described by its <a href="http://wikipedia.org/wiki/regex">regex</a> pattern, is a string of
    #               characters that can be upper- or lower-cased letters or digits.</p>
    # @example To delete a signing certificate for an IAM user
    #   # The following command deletes the specified signing certificate for the IAM user named Anika.
    #   params = {
    #     user_name: "Anika",
    #     certificate_id: "TA7SMP42TDN5Z26OBPJE7EXAMPLE"
    #   }
    #   options = {}
    #   response = client.delete_signing_certificate(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     certificate_id: "certificateIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_signing_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_signing_certificate(params = {}, options = {})
      request = build_request(:delete_signing_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes the specified IAM user. Unlike the Amazon Web Services Management Console, when you delete a user
    #             programmatically, you must delete the items attached to the user manually, or the
    #             deletion fails. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli">Deleting an IAM
    #                 user</a>. Before attempting to delete a user, remove the following items:</p>
    #          <ul>
    #             <li>
    #                <p>Password (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteLoginProfile.html">DeleteLoginProfile</a>)</p>
    #             </li>
    #             <li>
    #                <p>Access keys (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteAccessKey.html">DeleteAccessKey</a>)</p>
    #             </li>
    #             <li>
    #                <p>Signing certificate (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteSigningCertificate.html">DeleteSigningCertificate</a>)</p>
    #             </li>
    #             <li>
    #                <p>SSH public key (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteSSHPublicKey.html">DeleteSSHPublicKey</a>)</p>
    #             </li>
    #             <li>
    #                <p>Git credentials (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceSpecificCredential.html">DeleteServiceSpecificCredential</a>)</p>
    #             </li>
    #             <li>
    #                <p>Multi-factor authentication (MFA) device (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeactivateMFADevice.html">DeactivateMFADevice</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteVirtualMFADevice.html">DeleteVirtualMFADevice</a>)</p>
    #             </li>
    #             <li>
    #                <p>Inline policies (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteUserPolicy.html">DeleteUserPolicy</a>)</p>
    #             </li>
    #             <li>
    #                <p>Attached managed policies (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachUserPolicy.html">DetachUserPolicy</a>)</p>
    #             </li>
    #             <li>
    #                <p>Group memberships (<a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_RemoveUserFromGroup.html">RemoveUserFromGroup</a>)</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To delete an IAM user
    #   # The following command removes the IAM user named Bob from the current account.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Deletes the permissions boundary for the specified IAM user.</p>
    #          <important>
    #             <p>Deleting the permissions boundary for a user might increase its permissions by
    #                 allowing the user to perform all the actions granted in its permissions policies.
    #             </p>
    #          </important>
    # @param [Hash, Types::DeleteUserPermissionsBoundaryRequest] params
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user from which you want to remove the
    #               permissions boundary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_permissions_boundary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user_permissions_boundary(params = {}, options = {})
      request = build_request(:delete_user_permissions_boundary, params)
      request.send_request(options)
    end

    # <p>Deletes the specified inline policy that is embedded in the specified IAM
    #             user.</p>
    #          <p>A user can also have managed policies attached to it. To detach a managed policy from
    #             a user, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DetachUserPolicy.html">DetachUserPolicy</a>.
    #             For more information about policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DeleteUserPolicyRequest] params
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) identifying the user that the policy is embedded
    #               in.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name identifying the policy document to delete.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To remove a policy from an IAM user
    #   # The following delete-user-policy command removes the specified policy from the IAM user named Juan:
    #   params = {
    #     user_name: "Juan",
    #     policy_name: "ExamplePolicy"
    #   }
    #   options = {}
    #   response = client.delete_user_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user_policy(params = {}, options = {})
      request = build_request(:delete_user_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a virtual MFA device.</p>
    #          <note>
    #             <p> You must deactivate a user's virtual MFA device before you can delete it. For
    #                 information about deactivating MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeactivateMFADevice.html">DeactivateMFADevice</a>. </p>
    #          </note>
    # @param [Hash, Types::DeleteVirtualMFADeviceRequest] params
    # @option params [String] :serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    #       following characters: =,.@:/-</p>
    # @example To remove a virtual MFA device
    #   # The following delete-virtual-mfa-device command removes the specified MFA device from the current AWS account.
    #   params = {
    #     serial_number: "arn:aws:iam::123456789012:mfa/ExampleName"
    #   }
    #   options = {}
    #   response = client.delete_virtual_mfa_device(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     serial_number: "serialNumberType", # required
    #   }
    #   options = {}
    #   response = client.delete_virtual_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_virtual_mfa_device(params = {}, options = {})
      request = build_request(:delete_virtual_mfa_device, params)
      request.send_request(options)
    end

    # <p>Removes the specified managed policy from the specified IAM group.</p>
    #          <p>A group can also have inline policies embedded with it. To delete an inline policy,
    #             use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteGroupPolicy.html">DeleteGroupPolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DetachGroupPolicyRequest] params
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.detach_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_group_policy(params = {}, options = {})
      request = build_request(:detach_group_policy, params)
      request.send_request(options)
    end

    # <p>Removes the specified managed policy from the specified role.</p>
    #          <p>A role can also have inline policies embedded with it. To delete an inline policy, use
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteRolePolicy.html">DeleteRolePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DetachRolePolicyRequest] params
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.detach_role_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_role_policy(params = {}, options = {})
      request = build_request(:detach_role_policy, params)
      request.send_request(options)
    end

    # <p>Removes the specified managed policy from the specified user.</p>
    #          <p>A user can also have inline policies embedded with it. To delete an inline policy, use
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteUserPolicy.html">DeleteUserPolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::DetachUserPolicyRequest] params
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.detach_user_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_user_policy(params = {}, options = {})
      request = build_request(:detach_user_policy, params)
      request.send_request(options)
    end

    # <p>Disables the management of privileged root user credentials across member accounts in
    #             your organization. When you disable this feature, the management account and the
    #             delegated administrator for IAM can no longer manage root user credentials for member
    #             accounts in your organization.</p>
    # @param [Hash, Types::DisableOrganizationsRootCredentialsManagementRequest] params
    # @example To disable the RootCredentialsManagement feature in your organization
    #   # The following command disables the management of privileged root user credentials across member accounts in your organization.
    #   params = {}
    #   options = {}
    #   response = client.disable_organizations_root_credentials_management(params, options)
    #   response.to_h #=>
    #   {
    #     organization_id: "o-aa111bb222",
    #     enabled_features: [
    #       RootSessions
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_organizations_root_credentials_management(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationIdType",
    #     enabled_features: ["RootCredentialsManagement" # One of: ["RootCredentialsManagement", "RootSessions"]]
    #   }
    # @return [Types::DisableOrganizationsRootCredentialsManagementResponse]
    def disable_organizations_root_credentials_management(params = {}, options = {})
      request = build_request(:disable_organizations_root_credentials_management, params)
      request.send_request(options)
    end

    # <p>Disables root user sessions for privileged tasks across member accounts in your
    #             organization. When you disable this feature, the management account and the delegated
    #             administrator for IAM can no longer perform privileged tasks on member accounts in
    #             your organization.</p>
    # @param [Hash, Types::DisableOrganizationsRootSessionsRequest] params
    # @example To disable the RootSessions feature in your organization
    #   # The following command disables root user sessions for privileged tasks across member accounts in your organization.
    #   params = {}
    #   options = {}
    #   response = client.disable_organizations_root_sessions(params, options)
    #   response.to_h #=>
    #   {
    #     organization_id: "o-aa111bb222",
    #     enabled_features: [
    #       RootCredentialsManagement
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disable_organizations_root_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationIdType",
    #     enabled_features: ["RootCredentialsManagement" # One of: ["RootCredentialsManagement", "RootSessions"]]
    #   }
    # @return [Types::DisableOrganizationsRootSessionsResponse]
    def disable_organizations_root_sessions(params = {}, options = {})
      request = build_request(:disable_organizations_root_sessions, params)
      request.send_request(options)
    end

    # <p>Enables the specified MFA device and associates it with the specified IAM user. When
    #             enabled, the MFA device is required for every subsequent login by the IAM user
    #             associated with the device.</p>
    # @param [Hash, Types::EnableMFADeviceRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user for whom you want to enable the MFA device.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the device ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the 
    #       following characters: =,.@:/-</p>
    # @option params [String] :authentication_code1
    #   <p>An authentication code emitted by the device. </p>
    #            <p>The format for this parameter is a string of six digits.</p>
    #            <important>
    #               <p>Submit your request immediately after generating the authentication codes. If you
    #                   generate the codes and then wait too long to submit the request, the MFA device
    #                   successfully associates with the user but the MFA device becomes out of sync. This
    #                   happens because time-based one-time passwords (TOTP) expire after a short period of
    #                   time. If this happens, you can <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the
    #                   device</a>.</p>
    #            </important>
    # @option params [String] :authentication_code2
    #   <p>A subsequent authentication code emitted by the device.</p>
    #            <p>The format for this parameter is a string of six digits.</p>
    #            <important>
    #               <p>Submit your request immediately after generating the authentication codes. If you
    #                   generate the codes and then wait too long to submit the request, the MFA device
    #                   successfully associates with the user but the MFA device becomes out of sync. This
    #                   happens because time-based one-time passwords (TOTP) expire after a short period of
    #                   time. If this happens, you can <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the
    #                   device</a>.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     serial_number: "serialNumberType", # required
    #     authentication_code1: "authenticationCodeType", # required
    #     authentication_code2: "authenticationCodeType", # required
    #   }
    #   options = {}
    #   response = client.enable_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_mfa_device(params = {}, options = {})
      request = build_request(:enable_mfa_device, params)
      request.send_request(options)
    end

    # <p>Enables the management of privileged root user credentials across member accounts in your
    #             organization. When you enable root credentials management for <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management">centralized root access</a>, the management account and the delegated
    #             administrator for IAM can manage root user credentials for member accounts in your
    #             organization.</p>
    #          <p>Before you enable centralized root access, you must have an account configured with
    #             the following settings:</p>
    #          <ul>
    #             <li>
    #                <p>You must manage your Amazon Web Services accounts in <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">Organizations</a>.</p>
    #             </li>
    #             <li>
    #                <p>Enable trusted access for Identity and Access Management in Organizations. For details, see
    #                         <a href="https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-iam.html">IAM and Organizations</a> in the <i>Organizations User
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::EnableOrganizationsRootCredentialsManagementRequest] params
    # @example To enable the RootCredentialsManagement feature in your organization
    #   # The following command enables the management of privileged root user credentials across member accounts in your organization.
    #   params = {}
    #   options = {}
    #   response = client.enable_organizations_root_credentials_management(params, options)
    #   response.to_h #=>
    #   {
    #     organization_id: "o-aa111bb222",
    #     enabled_features: [
    #       RootCredentialsManagement
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_organizations_root_credentials_management(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationIdType",
    #     enabled_features: ["RootCredentialsManagement" # One of: ["RootCredentialsManagement", "RootSessions"]]
    #   }
    # @return [Types::EnableOrganizationsRootCredentialsManagementResponse]
    def enable_organizations_root_credentials_management(params = {}, options = {})
      request = build_request(:enable_organizations_root_credentials_management, params)
      request.send_request(options)
    end

    # <p>Allows the management account or delegated administrator to perform privileged tasks
    #             on member accounts in your organization. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management">Centrally manage root access for member accounts</a> in the <i>Identity and Access Management
    #                 User Guide</i>.</p>
    #          <p>Before you enable this feature, you must have an account configured with the following
    #             settings:</p>
    #          <ul>
    #             <li>
    #                <p>You must manage your Amazon Web Services accounts in <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">Organizations</a>.</p>
    #             </li>
    #             <li>
    #                <p>Enable trusted access for Identity and Access Management in Organizations. For details, see
    #                         <a href="https://docs.aws.amazon.com/organizations/latest/userguide/services-that-can-integrate-ra.html">IAM and Organizations</a> in the <i>Organizations User
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::EnableOrganizationsRootSessionsRequest] params
    # @example To enable the RootSessions feature in your organization
    #   # The following command allows the management account or delegated administrator to perform privileged tasks on member accounts in your organization.
    #   params = {}
    #   options = {}
    #   response = client.enable_organizations_root_sessions(params, options)
    #   response.to_h #=>
    #   {
    #     organization_id: "o-aa111bb222",
    #     enabled_features: [
    #       RootCredentialsManagement,
    #       RootSessions
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.enable_organizations_root_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationIdType",
    #     enabled_features: ["RootCredentialsManagement" # One of: ["RootCredentialsManagement", "RootSessions"]]
    #   }
    # @return [Types::EnableOrganizationsRootSessionsResponse]
    def enable_organizations_root_sessions(params = {}, options = {})
      request = build_request(:enable_organizations_root_sessions, params)
      request.send_request(options)
    end

    # <p> Generates a credential report for the Amazon Web Services account. For more information about the
    #             credential report, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting credential reports</a> in
    #             the <i>IAM User Guide</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.generate_credential_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "STARTED" # One of: ["STARTED", "INPROGRESS", "COMPLETE"],
    #     description: "ReportStateDescriptionType"
    #   }
    # @return [Types::GenerateCredentialReportResponse]
    def generate_credential_report(params = {}, options = {})
      request = build_request(:generate_credential_report, params)
      request.send_request(options)
    end

    # <p>Generates a report for service last accessed data for Organizations. You can generate a
    #             report for any entities (organization root, organizational unit, or account) or policies
    #             in your organization.</p>
    #          <p>To call this operation, you must be signed in using your Organizations management account
    #             credentials. You can use your long-term IAM user or root user credentials, or temporary
    #             credentials from assuming an IAM role. SCPs must be enabled for your organization
    #             root. You must have the required IAM and Organizations permissions. For more information, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Refining permissions using service last accessed data</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <p>You can generate a service last accessed data report for entities by specifying only
    #             the entity's path. This data includes a list of services that are allowed by any service
    #             control policies (SCPs) that apply to the entity.</p>
    #          <p>You can generate a service last accessed data report for a policy by specifying an
    #             entity's path and an optional Organizations policy ID. This data includes a list of services that
    #             are allowed by the specified SCP.</p>
    #          <p>For each service in both report types, the data includes the most recent account
    #             activity that the policy allows to account principals in the entity or the entity's
    #             children. For important information about the data, reporting period, permissions
    #             required, troubleshooting, and supported Regions see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing permissions using
    #                 service last accessed data</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <important>
    #             <p>The data includes all attempts to access Amazon Web Services, not just the successful ones. This
    #                 includes all attempts that were made using the Amazon Web Services Management Console, the Amazon Web Services API through any
    #                 of the SDKs, or any of the command line tools. An unexpected entry in the service
    #                 last accessed data does not mean that an account has been compromised, because the
    #                 request might have been denied. Refer to your CloudTrail logs as the authoritative
    #                 source for information about all API calls and whether they were successful or
    #                 denied access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">Logging IAM events with
    #                     CloudTrail</a> in the <i>IAM User Guide</i>.</p>
    #          </important>
    #          <p>This operation returns a <code>JobId</code>. Use this parameter in the <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html">GetOrganizationsAccessReport</a>
    #             </code> operation to check the status of
    #             the report generation. To check the status of this request, use the <code>JobId</code>
    #             parameter in the <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html">GetOrganizationsAccessReport</a>
    #             </code> operation and test the
    #                 <code>JobStatus</code> response parameter. When the job is complete, you can
    #             retrieve the report.</p>
    #          <p>To generate a service last accessed data report for entities, specify an entity path
    #             without specifying the optional Organizations policy ID. The type of entity that you specify
    #             determines the data returned in the report.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Root</b> – When you specify the
    #                     organizations root as the entity, the resulting report lists all of the services
    #                     allowed by SCPs that are attached to your root. For each service, the report
    #                     includes data for all accounts in your organization except the
    #                     management account, because the management account is not limited by SCPs.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>OU</b> – When you specify an
    #                     organizational unit (OU) as the entity, the resulting report lists all of the
    #                     services allowed by SCPs that are attached to the OU and its parents. For each
    #                     service, the report includes data for all accounts in the OU or its children.
    #                     This data excludes the management account, because the management account is not
    #                     limited by SCPs.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>management account</b> – When you specify the
    #                     management account, the resulting report lists all Amazon Web Services services, because the
    #                     management account is not limited by SCPs. For each service, the report includes
    #                     data for only the management account.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Account</b> – When you specify another
    #                     account as the entity, the resulting report lists all of the services allowed by
    #                     SCPs that are attached to the account and its parents. For each service, the
    #                     report includes data for only the specified account.</p>
    #             </li>
    #          </ul>
    #          <p>To generate a service last accessed data report for policies, specify an entity path
    #             and the optional Organizations policy ID. The type of entity that you specify determines the data
    #             returned for each service.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Root</b> – When you specify the root
    #                     entity and a policy ID, the resulting report lists all of the services that are
    #                     allowed by the specified SCP. For each service, the report includes data for all
    #                     accounts in your organization to which the SCP applies. This data excludes the
    #                     management account, because the management account is not limited by SCPs. If the
    #                     SCP is not attached to any entities in the organization, then the report will
    #                     return a list of services with no data.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>OU</b> – When you specify an OU entity and
    #                     a policy ID, the resulting report lists all of the services that are allowed by
    #                     the specified SCP. For each service, the report includes data for all accounts
    #                     in the OU or its children to which the SCP applies. This means that other
    #                     accounts outside the OU that are affected by the SCP might not be included in
    #                     the data. This data excludes the management account, because the
    #                     management account is not limited by SCPs. If the SCP is not attached to the OU
    #                     or one of its children, the report will return a list of services with no
    #                     data.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>management account</b> – When you specify the
    #                     management account, the resulting report lists all Amazon Web Services services, because the
    #                     management account is not limited by SCPs. If you specify a policy ID in the CLI
    #                     or API, the policy is ignored. For each service, the report includes data for
    #                     only the management account.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Account</b> – When you specify another
    #                     account entity and a policy ID, the resulting report lists all of the services
    #                     that are allowed by the specified SCP. For each service, the report includes
    #                     data for only the specified account. This means that other accounts in the
    #                     organization that are affected by the SCP might not be included in the data. If
    #                     the SCP is not attached to the account, the report will return a list of
    #                     services with no data.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Service last accessed data does not use other policy types when determining
    #                 whether a principal could access a service. These other policy types include
    #                 identity-based policies, resource-based policies, access control lists, IAM
    #                 permissions boundaries, and STS assume role policies. It only applies SCP logic.
    #                 For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>For more information about service last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing policy scope by
    #                 viewing user activity</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GenerateOrganizationsAccessReportRequest] params
    # @option params [String] :entity_path
    #   <p>The path of the Organizations entity (root, OU, or account). You can build an entity path
    #               using the known structure of your organization. For example, assume that your account ID
    #               is <code>123456789012</code> and its parent OU ID is <code>ou-rge0-awsabcde</code>. The
    #               organization root ID is <code>r-f6g7h8i9j0example</code> and your organization ID is
    #                   <code>o-a1b2c3d4e5</code>. Your entity path is
    #                   <code>o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012</code>.</p>
    # @option params [String] :organizations_policy_id
    #   <p>The identifier of the Organizations service control policy (SCP). This parameter is
    #               optional.</p>
    #            <p>This ID is used to generate information about when an account principal that is
    #               limited by the SCP attempted to access an Amazon Web Services service.</p>
    # @example To generate a service last accessed data report for an organizational unit
    #   # The following operation generates a report for the organizational unit ou-rge0-awexample
    #   params = {
    #     entity_path: "o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-1a2b3c-k9l8m7n6o5example"
    #   }
    #   options = {}
    #   response = client.generate_organizations_access_report(params, options)
    #   response.to_h #=>
    #   {
    #     job_id: "examplea-1234-b567-cde8-90fg123abcd4"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_path: "organizationsEntityPathType", # required
    #     organizations_policy_id: "organizationsPolicyIdType"
    #   }
    #   options = {}
    #   response = client.generate_organizations_access_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "jobIDType"
    #   }
    # @return [Types::GenerateOrganizationsAccessReportResponse]
    def generate_organizations_access_report(params = {}, options = {})
      request = build_request(:generate_organizations_access_report, params)
      request.send_request(options)
    end

    # <p>Generates a report that includes details about when an IAM resource (user, group,
    #             role, or policy) was last used in an attempt to access Amazon Web Services services. Recent activity
    #             usually appears within four hours. IAM reports activity for at least the last 400
    #             days, or less if your Region began supporting this feature within the last year. For
    #             more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions where data is tracked</a>. For more information about services and
    #             actions for which action last accessed information is displayed, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor-action-last-accessed.html">IAM
    #                 action last accessed information services and actions</a>.</p>
    #          <important>
    #             <p>The service last accessed data includes all attempts to access an Amazon Web Services API, not
    #                 just the successful ones. This includes all attempts that were made using the
    #                 Amazon Web Services Management Console, the Amazon Web Services API through any of the SDKs, or any of the command line tools.
    #                 An unexpected entry in the service last accessed data does not mean that your
    #                 account has been compromised, because the request might have been denied. Refer to
    #                 your CloudTrail logs as the authoritative source for information about all API calls
    #                 and whether they were successful or denied access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">Logging
    #                     IAM events with CloudTrail</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #          </important>
    #          <p>The <code>GenerateServiceLastAccessedDetails</code> operation returns a
    #                 <code>JobId</code>. Use this parameter in the following operations to retrieve the
    #             following details from your report: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html">GetServiceLastAccessedDetails</a> – Use this operation for
    #                     users, groups, roles, or policies to list every Amazon Web Services service that the resource
    #                     could access using permissions policies. For each service, the response includes
    #                     information about the most recent access attempt.</p>
    #                <p>The <code>JobId</code> returned by
    #                         <code>GenerateServiceLastAccessedDetail</code> must be used by the same role
    #                     within a session, or by the same user when used to call
    #                         <code>GetServiceLastAccessedDetail</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html">GetServiceLastAccessedDetailsWithEntities</a> – Use this
    #                     operation for groups and policies to list information about the associated
    #                     entities (users or roles) that attempted to access a specific Amazon Web Services service.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>To check the status of the <code>GenerateServiceLastAccessedDetails</code> request,
    #             use the <code>JobId</code> parameter in the same operations and test the
    #                 <code>JobStatus</code> response parameter.</p>
    #          <p>For additional information about the permissions policies that allow an identity
    #             (user, group, or role) to access specific services, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPoliciesGrantingServiceAccess.html">ListPoliciesGrantingServiceAccess</a> operation.</p>
    #          <note>
    #             <p>Service last accessed data does not use other policy types when determining
    #                 whether a resource could access a service. These other policy types include
    #                 resource-based policies, access control lists, Organizations policies, IAM permissions
    #                 boundaries, and STS assume role policies. It only applies permissions policy
    #                 logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>For more information about service and action last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing permissions using service last accessed data</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GenerateServiceLastAccessedDetailsRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the IAM resource (user, group, role, or managed policy) used to generate
    #               information about when the resource was last used in an attempt to access an Amazon Web Services
    #               service.</p>
    # @option params [String] :granularity
    #   <p>The level of detail that you want to generate. You can specify whether you want to
    #               generate information about the last attempt to access services or actions. If you
    #               specify service-level granularity, this operation generates only service data. If you
    #               specify action-level granularity, it generates service and action data. If you don't
    #               include this optional parameter, the operation generates service data.</p>
    # @example To generate a service last accessed data report for a policy
    #   # The following operation generates a report for the policy: ExamplePolicy1
    #   params = {
    #     arn: "arn:aws:iam::123456789012:policy/ExamplePolicy1"
    #   }
    #   options = {}
    #   response = client.generate_service_last_accessed_details(params, options)
    #   response.to_h #=>
    #   {
    #     job_id: "examplef-1305-c245-eba4-71fe298bcda7"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "arnType", # required
    #     granularity: "SERVICE_LEVEL" # One of: ["SERVICE_LEVEL", "ACTION_LEVEL"]
    #   }
    #   options = {}
    #   response = client.generate_service_last_accessed_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "jobIDType"
    #   }
    # @return [Types::GenerateServiceLastAccessedDetailsResponse]
    def generate_service_last_accessed_details(params = {}, options = {})
      request = build_request(:generate_service_last_accessed_details, params)
      request.send_request(options)
    end

    # <p>Retrieves information about when the specified access key was last used. The
    #             information includes the date and time of last use, along with the Amazon Web Services service and
    #             Region that were specified in the last request made with that key.</p>
    # @param [Hash, Types::GetAccessKeyLastUsedRequest] params
    # @option params [String] :access_key_id
    #   <p>The identifier of an access key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_key_id: "accessKeyIdType", # required
    #   }
    #   options = {}
    #   response = client.get_access_key_last_used(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "existingUserNameType",
    #     access_key_last_used: {
    #       last_used_date: Time.now,
    #       service_name: "stringType", # required
    #       region: "stringType", # required
    #     }
    #   }
    # @return [Types::GetAccessKeyLastUsedResponse]
    def get_access_key_last_used(params = {}, options = {})
      request = build_request(:get_access_key_last_used, params)
      request.send_request(options)
    end

    # <p>Retrieves information about all IAM users, groups, roles, and policies in your Amazon Web Services
    #             account, including their relationships to one another. Use this operation to obtain a
    #             snapshot of the configuration of IAM permissions (users, groups, roles, and policies)
    #             in your account.</p>
    #          <note>
    #             <p>Policies returned by this operation are URL-encoded compliant 
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL 
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you 
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in 
    #     the Java SDK. Other languages and SDKs provide similar functionality, and some SDKs do this decoding 
    #     automatically.</p>
    #          </note>
    #          <p>You can optionally filter the results using the <code>Filter</code> parameter. You can
    #             paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::GetAccountAuthorizationDetailsRequest] params
    # @option params [Array<String>] :filter
    #   <p>A list of entity types used to filter the results. Only the entities that match the
    #               types you specify are included in the output. Use the value
    #                   <code>LocalManagedPolicy</code> to include customer managed policies.</p>
    #            <p>The format for this parameter is a comma-separated (if more than one) list of strings.
    #               Each string value in the list must be one of the valid values listed below.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: ["User" # One of: ["User", "Role", "Group", "LocalManagedPolicy", "AWSManagedPolicy"]],
    #     max_items: 1,
    #     marker: "markerType"
    #   }
    #   options = {}
    #   response = client.get_account_authorization_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_detail_list: [
    #       {
    #         path: "pathType",
    #         user_name: "userNameType",
    #         user_id: "idType",
    #         arn: "arnType",
    #         create_date: Time.now,
    #         user_policy_list: [
    #           {
    #             policy_name: "policyNameType",
    #             policy_document: "policyDocumentType"
    #           }
    #         ],
    #         group_list: ["groupNameType"],
    #         attached_managed_policies: [
    #           {
    #             policy_name: "policyNameType",
    #             policy_arn: "arnType"
    #           }
    #         ],
    #         permissions_boundary: {
    #           permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #           permissions_boundary_arn: "arnType"
    #         },
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     group_detail_list: [
    #       {
    #         path: "pathType",
    #         group_name: "groupNameType",
    #         group_id: "idType",
    #         arn: "arnType",
    #         create_date: Time.now,
    #         group_policy_list: [
    #           {
    #             policy_name: "policyNameType",
    #             policy_document: "policyDocumentType"
    #           }
    #         ],
    #         attached_managed_policies: [
    #           {
    #             policy_name: "policyNameType",
    #             policy_arn: "arnType"
    #           }
    #         ]
    #       }
    #     ],
    #     role_detail_list: [
    #       {
    #         path: "pathType",
    #         role_name: "roleNameType",
    #         role_id: "idType",
    #         arn: "arnType",
    #         create_date: Time.now,
    #         assume_role_policy_document: "policyDocumentType",
    #         instance_profile_list: [
    #           {
    #             path: "pathType", # required
    #             instance_profile_name: "instanceProfileNameType", # required
    #             instance_profile_id: "idType", # required
    #             arn: "arnType", # required
    #             create_date: Time.now, # required
    #             roles: [ # required
    #               {
    #                 path: "pathType", # required
    #                 role_name: "roleNameType", # required
    #                 role_id: "idType", # required
    #                 arn: "arnType", # required
    #                 create_date: Time.now, # required
    #                 assume_role_policy_document: "policyDocumentType",
    #                 description: "roleDescriptionType",
    #                 max_session_duration: 1,
    #                 permissions_boundary: {
    #                   permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #                   permissions_boundary_arn: "arnType"
    #                 },
    #                 tags: [
    #                   {
    #                     key: "tagKeyType", # required
    #                     value: "tagValueType", # required
    #                   }
    #                 ],
    #                 role_last_used: {
    #                   last_used_date: Time.now,
    #                   region: "stringType"
    #                 }
    #               }
    #             ],
    #             tags: [
    #               {
    #                 key: "tagKeyType", # required
    #                 value: "tagValueType", # required
    #               }
    #             ]
    #           }
    #         ],
    #         role_policy_list: [
    #           {
    #             policy_name: "policyNameType",
    #             policy_document: "policyDocumentType"
    #           }
    #         ],
    #         attached_managed_policies: [
    #           {
    #             policy_name: "policyNameType",
    #             policy_arn: "arnType"
    #           }
    #         ],
    #         permissions_boundary: {
    #           permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #           permissions_boundary_arn: "arnType"
    #         },
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ],
    #         role_last_used: {
    #           last_used_date: Time.now,
    #           region: "stringType"
    #         }
    #       }
    #     ],
    #     policies: [
    #       {
    #         policy_name: "policyNameType",
    #         policy_id: "idType",
    #         arn: "arnType",
    #         path: "policyPathType",
    #         default_version_id: "policyVersionIdType",
    #         attachment_count: 1,
    #         permissions_boundary_usage_count: 1,
    #         is_attachable: false,
    #         description: "policyDescriptionType",
    #         create_date: Time.now,
    #         update_date: Time.now,
    #         policy_version_list: [
    #           {
    #             document: "policyDocumentType",
    #             version_id: "policyVersionIdType",
    #             is_default_version: false,
    #             create_date: Time.now
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::GetAccountAuthorizationDetailsResponse]
    def get_account_authorization_details(params = {}, options = {})
      request = build_request(:get_account_authorization_details, params)
      request.send_request(options)
    end

    # <p>Retrieves the password policy for the Amazon Web Services account. This tells you the complexity
    #             requirements and mandatory rotation periods for the IAM user passwords in your account.
    #             For more information about using a password policy, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM password
    #                 policy</a>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To see the current account password policy
    #   # The following command displays details about the password policy for the current AWS account.
    #   params = {}
    #   options = {}
    #   response = client.get_account_password_policy(params, options)
    #   response.to_h #=>
    #   {
    #     password_policy: {
    #       allow_users_to_change_password: false,
    #       require_numbers: true,
    #       require_lowercase_characters: false,
    #       require_uppercase_characters: false,
    #       minimum_password_length: 8,
    #       require_symbols: true,
    #       expire_passwords: false,
    #       password_reuse_prevention: 12,
    #       max_password_age: 90,
    #       hard_expiry: false
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_password_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     password_policy: { # required
    #       minimum_password_length: 1,
    #       require_symbols: false,
    #       require_numbers: false,
    #       require_uppercase_characters: false,
    #       require_lowercase_characters: false,
    #       allow_users_to_change_password: false,
    #       expire_passwords: false,
    #       max_password_age: 1,
    #       password_reuse_prevention: 1,
    #       hard_expiry: false
    #     }
    #   }
    # @return [Types::GetAccountPasswordPolicyResponse]
    def get_account_password_policy(params = {}, options = {})
      request = build_request(:get_account_password_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about IAM entity usage and IAM quotas in the Amazon Web Services
    #             account.</p>
    #          <p> For information about IAM quotas, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To get information about IAM entity quotas and usage in the current account
    #   # The following command returns information about the IAM entity quotas and usage in the current AWS account.
    #   params = {}
    #   options = {}
    #   response = client.get_account_summary(params, options)
    #   response.to_h #=>
    #   {
    #     summary_map: {
    #       "Users" => 27,
    #       "UsersQuota" => 5000,
    #       "Groups" => 15,
    #       "GroupsQuota" => 100,
    #       "Policies" => 8,
    #       "PoliciesQuota" => 1000,
    #       "PolicySizeQuota" => 5120,
    #       "PolicyVersionsInUse" => 22,
    #       "PolicyVersionsInUseQuota" => 10000,
    #       "VersionsPerPolicyQuota" => 5,
    #       "ServerCertificates" => 1,
    #       "ServerCertificatesQuota" => 20,
    #       "UserPolicySizeQuota" => 2048,
    #       "GroupPolicySizeQuota" => 5120,
    #       "GroupsPerUserQuota" => 10,
    #       "GlobalEndpointTokenVersion" => 2,
    #       "SigningCertificatesPerUserQuota" => 2,
    #       "AccessKeysPerUserQuota" => 2,
    #       "MFADevices" => 6,
    #       "MFADevicesInUse" => 3,
    #       "AccountMFAEnabled" => 0,
    #       "AccountAccessKeysPresent" => 1,
    #       "AccountSigningCertificatesPresent" => 0,
    #       "AttachedPoliciesPerGroupQuota" => 10,
    #       "AttachedPoliciesPerRoleQuota" => 10,
    #       "AttachedPoliciesPerUserQuota" => 10
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_map: {
    #       "summaryKeyType" => 1
    #     }
    #   }
    # @return [Types::GetAccountSummaryResponse]
    def get_account_summary(params = {}, options = {})
      request = build_request(:get_account_summary, params)
      request.send_request(options)
    end

    # <p>Gets a list of all of the context keys referenced in the input policies. The policies
    #             are supplied as a list of one or more strings. To get the context keys from policies
    #             associated with an IAM user, group, or role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a>.</p>
    #          <p>Context keys are variables maintained by Amazon Web Services and its services that provide details
    #             about the context of an API query request. Context keys can be evaluated by testing
    #             against a value specified in an IAM policy. Use
    #                 <code>GetContextKeysForCustomPolicy</code> to understand what key names and values
    #             you must supply when you call <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a>. Note that all parameters are shown in unencoded form
    #             here for clarity but must be URL encoded to be included as a part of a real HTML
    #             request.</p>
    # @param [Hash, Types::GetContextKeysForCustomPolicyRequest] params
    # @option params [Array<String>] :policy_input_list
    #   <p>A list of policies for which you want the list of context keys referenced in those
    #               policies. Each document is specified as a string containing the complete, valid JSON
    #               text of an IAM policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_input_list: ["policyDocumentType"], # required
    #   }
    #   options = {}
    #   response = client.get_context_keys_for_custom_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     context_key_names: ["ContextKeyNameType"]
    #   }
    # @return [Types::GetContextKeysForCustomPolicyOutput]
    def get_context_keys_for_custom_policy(params = {}, options = {})
      request = build_request(:get_context_keys_for_custom_policy, params)
      request.send_request(options)
    end

    # <p>Gets a list of all of the context keys referenced in all the IAM policies that are
    #             attached to the specified IAM entity. The entity can be an IAM user, group, or role.
    #             If you specify a user, then the request also includes all of the policies attached to
    #             groups that the user is a member of.</p>
    #          <p>You can optionally include a list of one or more additional policies, specified as
    #             strings. If you want to include <i>only</i> a list of policies by string,
    #             use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a> instead.</p>
    #          <p>
    #             <b>Note:</b> This operation discloses information about the
    #             permissions granted to other users. If you do not want users to see other user's
    #             permissions, then consider allowing them to use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a> instead.</p>
    #          <p>Context keys are variables maintained by Amazon Web Services and its services that provide details
    #             about the context of an API query request. Context keys can be evaluated by testing
    #             against a value in an IAM policy. Use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a> to understand what key names and values
    #             you must supply when you call <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html">SimulatePrincipalPolicy</a>.</p>
    # @param [Hash, Types::GetContextKeysForPrincipalPolicyRequest] params
    # @option params [String] :policy_source_arn
    #   <p>The ARN of a user, group, or role whose policies contain the context keys that you
    #               want listed. If you specify a user, the list includes context keys that are found in all
    #               policies that are attached to the user. The list also includes all groups that the user
    #               is a member of. If you pick a group or a role, then it includes only those context keys
    #               that are found in policies attached to that entity. Note that all parameters are shown
    #               in unencoded form here for clarity, but must be URL encoded to be included as a part of
    #               a real HTML request.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<String>] :policy_input_list
    #   <p>An optional list of additional policies for which you want the list of context keys
    #               that are referenced.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_source_arn: "arnType", # required
    #     policy_input_list: ["policyDocumentType"]
    #   }
    #   options = {}
    #   response = client.get_context_keys_for_principal_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     context_key_names: ["ContextKeyNameType"]
    #   }
    # @return [Types::GetContextKeysForPrincipalPolicyOutput]
    def get_context_keys_for_principal_policy(params = {}, options = {})
      request = build_request(:get_context_keys_for_principal_policy, params)
      request.send_request(options)
    end

    # <p> Retrieves a credential report for the Amazon Web Services account. For more information about the
    #             credential report, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting credential reports</a> in
    #             the <i>IAM User Guide</i>.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_credential_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: "data",
    #     report_format: "text/csv" # One of: ["text/csv"],
    #     generated_time: Time.now
    #   }
    # @return [Types::GetCredentialReportResponse]
    def get_credential_report(params = {}, options = {})
      request = build_request(:get_credential_report, params)
      request.send_request(options)
    end

    # <p> Returns a list of IAM users that are in the specified IAM group. You can paginate
    #             the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    # @param [Hash, Types::GetGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: { # required
    #       path: "pathType", # required
    #       group_name: "groupNameType", # required
    #       group_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #     },
    #     users: [ # required
    #       {
    #         path: "pathType", # required
    #         user_name: "userNameType", # required
    #         user_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #         password_last_used: Time.now,
    #         permissions_boundary: {
    #           permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #           permissions_boundary_arn: "arnType"
    #         },
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::GetGroupResponse]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified inline policy document that is embedded in the specified IAM
    #             group.</p>
    #          <note>
    #             <p>Policies returned by this operation are URL-encoded compliant 
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL 
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you 
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in 
    #     the Java SDK. Other languages and SDKs provide similar functionality, and some SDKs do this decoding 
    #     automatically.</p>
    #          </note>
    #          <p>An IAM group can also have managed policies attached to it. To retrieve a managed
    #             policy document that is attached to a group, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a> to determine the
    #             policy's default version, then use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a> to
    #             retrieve the policy document.</p>
    #          <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetGroupPolicyRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group the policy is associated with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy document to get.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #   }
    #   options = {}
    #   response = client.get_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    # @return [Types::GetGroupPolicyResponse]
    def get_group_policy(params = {}, options = {})
      request = build_request(:get_group_policy, params)
      request.send_request(options)
    end

    # <p> Retrieves information about the specified instance profile, including the instance
    #             profile's path, GUID, ARN, and role. For more information about instance profiles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html">Using
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to get information about.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To get information about an instance profile
    #   # The following command gets information about the instance profile named ExampleInstanceProfile.
    #   params = {
    #     instance_profile_name: "ExampleInstanceProfile"
    #   }
    #   options = {}
    #   response = client.get_instance_profile(params, options)
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       instance_profile_id: "AID2MAB8DPLSRHEXAMPLE",
    #       roles: [
    #         {
    #           assume_role_policy_document: "<URL-encoded-JSON>",
    #           role_id: "AIDGPMS9RO4H3FEXAMPLE",
    #           create_date: Time.parse("2013-01-09T06:33:26Z"),
    #           path: "/",
    #           role_name: "Test-Role",
    #           arn: "arn:aws:iam::336924118301:role/Test-Role"
    #         }
    #       ],
    #       create_date: Time.parse("2013-06-12T23:52:02Z"),
    #       instance_profile_name: "ExampleInstanceProfile",
    #       path: "/",
    #       arn: "arn:aws:iam::336924118301:instance-profile/ExampleInstanceProfile"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #   }
    #   options = {}
    #   response = client.get_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: { # required
    #       path: "pathType", # required
    #       instance_profile_name: "instanceProfileNameType", # required
    #       instance_profile_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       roles: [ # required
    #         {
    #           path: "pathType", # required
    #           role_name: "roleNameType", # required
    #           role_id: "idType", # required
    #           arn: "arnType", # required
    #           create_date: Time.now, # required
    #           assume_role_policy_document: "policyDocumentType",
    #           description: "roleDescriptionType",
    #           max_session_duration: 1,
    #           permissions_boundary: {
    #             permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #             permissions_boundary_arn: "arnType"
    #           },
    #           tags: [
    #             {
    #               key: "tagKeyType", # required
    #               value: "tagValueType", # required
    #             }
    #           ],
    #           role_last_used: {
    #             last_used_date: Time.now,
    #             region: "stringType"
    #           }
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetInstanceProfileResponse]
    def get_instance_profile(params = {}, options = {})
      request = build_request(:get_instance_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves the user name for the specified IAM user. A login profile is created when
    #             you create a password for the user to access the Amazon Web Services Management Console. If the user does not exist
    #             or does not have a password, the operation returns a 404 (<code>NoSuchEntity</code>)
    #             error.</p>
    #          <p>If you create an IAM user with access to the console, the <code>CreateDate</code>
    #             reflects the date you created the initial password for the user.</p>
    #          <p>If you create an IAM user with programmatic access, and then later add a password
    #             for the user to access the Amazon Web Services Management Console, the <code>CreateDate</code> reflects the initial
    #             password creation date. A user with programmatic access does not have a login profile
    #             unless you create a password for the user to access the Amazon Web Services Management Console.</p>
    # @param [Hash, Types::GetLoginProfileRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose login profile you want to retrieve.</p>
    #            <p>This parameter is optional. If no user name is included, it defaults to the principal
    #               making the request. When you make this request with root user credentials, you must use
    #               an <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html">AssumeRoot</a> session to omit the user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To get password information for an IAM user
    #   # The following command gets information about the password for the IAM user named Anika.
    #   params = {
    #     user_name: "Anika"
    #   }
    #   options = {}
    #   response = client.get_login_profile(params, options)
    #   response.to_h #=>
    #   {
    #     login_profile: {
    #       user_name: "Anika",
    #       create_date: Time.parse("2012-09-21T23:03:39Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType"
    #   }
    #   options = {}
    #   response = client.get_login_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     login_profile: { # required
    #       user_name: "userNameType", # required
    #       create_date: Time.now, # required
    #       password_reset_required: false
    #     }
    #   }
    # @return [Types::GetLoginProfileResponse]
    def get_login_profile(params = {}, options = {})
      request = build_request(:get_login_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an MFA device for a specified user.</p>
    # @param [Hash, Types::GetMFADeviceRequest] params
    # @option params [String] :serial_number
    #   <p>Serial number that uniquely identifies the MFA device. For this API, we only accept
    #               FIDO security key <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">ARNs</a>.</p>
    # @option params [String] :user_name
    #   <p>The friendly name identifying the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serial_number: "serialNumberType", # required
    #     user_name: "userNameType"
    #   }
    #   options = {}
    #   response = client.get_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "userNameType",
    #     serial_number: "serialNumberType", # required
    #     enable_date: Time.now,
    #     certifications: {
    #       "CertificationKeyType" => "CertificationValueType"
    #     }
    #   }
    # @return [Types::GetMFADeviceResponse]
    def get_mfa_device(params = {}, options = {})
      request = build_request(:get_mfa_device, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified OpenID Connect (OIDC) provider resource object
    #             in IAM.</p>
    # @param [Hash, Types::GetOpenIDConnectProviderRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get
    #               information for. You can get a list of OIDC provider resource ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.get_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "OpenIDConnectProviderUrlType",
    #     client_id_list: ["clientIDType"],
    #     thumbprint_list: ["thumbprintType"],
    #     create_date: Time.now,
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetOpenIDConnectProviderResponse]
    def get_open_id_connect_provider(params = {}, options = {})
      request = build_request(:get_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Retrieves the service last accessed data report for Organizations that was previously
    #             generated using the <code>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html">GenerateOrganizationsAccessReport</a>
    #             </code> operation. This operation
    #             retrieves the status of your report job and the report contents.</p>
    #          <p>Depending on the parameters that you passed when you generated the report, the data
    #             returned could include different information. For details, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html">GenerateOrganizationsAccessReport</a>.</p>
    #          <p>To call this operation, you must be signed in to the management account in your
    #             organization. SCPs must be enabled for your organization root. You must have permissions
    #             to perform this operation. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Refining permissions using
    #                 service last accessed data</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>For each service that principals in an account (root user, IAM users, or IAM roles)
    #             could access using SCPs, the operation returns details about the most recent access
    #             attempt. If there was no attempt, the service is listed without details about the most
    #             recent attempt to access the service. If the operation fails, it returns the reason that
    #             it failed.</p>
    #          <p>By default, the list is sorted by service namespace.</p>
    # @param [Hash, Types::GetOrganizationsAccessReportRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the request generated by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html">GenerateOrganizationsAccessReport</a> operation.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [String] :sort_key
    #   <p>The key that is used to sort the results. If you choose the namespace key, the results
    #               are returned in alphabetical order. If you choose the time key, the results are sorted
    #               numerically by the date and time.</p>
    # @example To get details from a previously generated organizational unit report
    #   # The following operation gets details about the report with the job ID: examplea-1234-b567-cde8-90fg123abcd4
    #   params = {
    #     job_id: "examplea-1234-b567-cde8-90fg123abcd4"
    #   }
    #   options = {}
    #   response = client.get_organizations_access_report(params, options)
    #   response.to_h #=>
    #   {
    #     is_truncated: false,
    #     job_completion_date: Time.parse("2019-06-18T19:47:35.241Z"),
    #     job_creation_date: Time.parse("2019-06-18T19:47:31.466Z"),
    #     job_status: COMPLETED,
    #     number_of_services_accessible: 3,
    #     number_of_services_not_accessed: 1,
    #     access_details: [
    #       {
    #         entity_path: "o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-1a2b3c-k9l8m7n6o5example/111122223333",
    #         last_authenticated_time: Time.parse("2019-05-25T16:29:52Z"),
    #         region: "us-east-1",
    #         service_name: "Amazon DynamoDB",
    #         service_namespace: "dynamodb",
    #         total_authenticated_entities: 2
    #       },
    #       {
    #         entity_path: "o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-1a2b3c-k9l8m7n6o5example/123456789012",
    #         last_authenticated_time: Time.parse("2019-06-15T13:12:06Z"),
    #         region: "us-east-1",
    #         service_name: "AWS Identity and Access Management",
    #         service_namespace: "iam",
    #         total_authenticated_entities: 4
    #       },
    #       {
    #         service_name: "Amazon Simple Storage Service",
    #         service_namespace: "s3",
    #         total_authenticated_entities: 0
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "jobIDType", # required
    #     max_items: 1,
    #     marker: "markerType",
    #     sort_key: "SERVICE_NAMESPACE_ASCENDING" # One of: ["SERVICE_NAMESPACE_ASCENDING", "SERVICE_NAMESPACE_DESCENDING", "LAST_AUTHENTICATED_TIME_ASCENDING", "LAST_AUTHENTICATED_TIME_DESCENDING"]
    #   }
    #   options = {}
    #   response = client.get_organizations_access_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #     job_creation_date: Time.now, # required
    #     job_completion_date: Time.now,
    #     number_of_services_accessible: 1,
    #     number_of_services_not_accessed: 1,
    #     access_details: [
    #       {
    #         service_name: "serviceNameType", # required
    #         service_namespace: "serviceNamespaceType", # required
    #         region: "stringType",
    #         entity_path: "organizationsEntityPathType",
    #         last_authenticated_time: Time.now,
    #         total_authenticated_entities: 1
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "markerType",
    #     error_details: {
    #       message: "stringType", # required
    #       code: "stringType", # required
    #     }
    #   }
    # @return [Types::GetOrganizationsAccessReportResponse]
    def get_organizations_access_report(params = {}, options = {})
      request = build_request(:get_organizations_access_report, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified managed policy, including the policy's
    #             default version and the total number of IAM users, groups, and roles to which the
    #             policy is attached. To retrieve the list of the specific users, groups, and roles that
    #             the policy is attached to, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a>. This operation returns metadata about the policy. To
    #             retrieve the actual policy document for a specific version of the policy, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a>.</p>
    #          <p>This operation retrieves information about managed policies. To retrieve information
    #             about an inline policy that is embedded with an IAM user, group, or role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUserPolicy.html">GetUserPolicy</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroupPolicy.html">GetGroupPolicy</a>, or
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html">GetRolePolicy</a>.</p>
    #          <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the managed policy that you want information
    #               about.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       policy_name: "policyNameType",
    #       policy_id: "idType",
    #       arn: "arnType",
    #       path: "policyPathType",
    #       default_version_id: "policyVersionIdType",
    #       attachment_count: 1,
    #       permissions_boundary_usage_count: 1,
    #       is_attachable: false,
    #       description: "policyDescriptionType",
    #       create_date: Time.now,
    #       update_date: Time.now,
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified version of the specified managed policy,
    #             including the policy document.</p>
    #          <note>
    #             <p>Policies returned by this operation are URL-encoded compliant 
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL 
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you 
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in 
    #     the Java SDK. Other languages and SDKs provide similar functionality, and some SDKs do this decoding 
    #     automatically.</p>
    #          </note>
    #          <p>To list the available versions for a policy, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html">ListPolicyVersions</a>.</p>
    #          <p>This operation retrieves information about managed policies. To retrieve information
    #             about an inline policy that is embedded in a user, group, or role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUserPolicy.html">GetUserPolicy</a>, <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroupPolicy.html">GetGroupPolicy</a>, or
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html">GetRolePolicy</a>.</p>
    #          <p>For more information about the types of policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetPolicyVersionRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the managed policy that you want information
    #               about.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :version_id
    #   <p>Identifies the policy version to retrieve.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that 
    #       consists of the lowercase letter 'v' followed by one or two digits, and optionally 
    #       followed by a period '.' and a string of letters and digits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     version_id: "policyVersionIdType", # required
    #   }
    #   options = {}
    #   response = client.get_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_version: {
    #       document: "policyDocumentType",
    #       version_id: "policyVersionIdType",
    #       is_default_version: false,
    #       create_date: Time.now
    #     }
    #   }
    # @return [Types::GetPolicyVersionResponse]
    def get_policy_version(params = {}, options = {})
      request = build_request(:get_policy_version, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified role, including the role's path, GUID, ARN,
    #             and the role's trust policy that grants permission to assume the role. For more
    #             information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>Policies returned by this operation are URL-encoded compliant 
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL 
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you 
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in 
    #     the Java SDK. Other languages and SDKs provide similar functionality, and some SDKs do this decoding 
    #     automatically.</p>
    #          </note>
    # @param [Hash, Types::GetRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the IAM role to get information about.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To get information about an IAM role
    #   # The following command gets information about the role named Test-Role.
    #   params = {
    #     role_name: "Test-Role"
    #   }
    #   options = {}
    #   response = client.get_role(params, options)
    #   response.to_h #=>
    #   {
    #     role: {
    #       arn: "arn:aws:iam::123456789012:role/Test-Role",
    #       assume_role_policy_document: "<URL-encoded-JSON>",
    #       create_date: Time.parse("2013-04-18T05:01:58Z"),
    #       max_session_duration: 3600,
    #       path: "/",
    #       role_id: "AROADBQP57FF2AEXAMPLE",
    #       role_last_used: {
    #         last_used_date: Time.parse("2019-11-18T05:01:58Z"),
    #         region: "us-east-1"
    #       },
    #       role_name: "Test-Role"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #   }
    #   options = {}
    #   response = client.get_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role: { # required
    #       path: "pathType", # required
    #       role_name: "roleNameType", # required
    #       role_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       assume_role_policy_document: "policyDocumentType",
    #       description: "roleDescriptionType",
    #       max_session_duration: 1,
    #       permissions_boundary: {
    #         permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #         permissions_boundary_arn: "arnType"
    #       },
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ],
    #       role_last_used: {
    #         last_used_date: Time.now,
    #         region: "stringType"
    #       }
    #     }
    #   }
    # @return [Types::GetRoleResponse]
    def get_role(params = {}, options = {})
      request = build_request(:get_role, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified inline policy document that is embedded with the specified
    #             IAM role.</p>
    #          <note>
    #             <p>Policies returned by this operation are URL-encoded compliant 
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL 
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you 
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in 
    #     the Java SDK. Other languages and SDKs provide similar functionality, and some SDKs do this decoding 
    #     automatically.</p>
    #          </note>
    #          <p>An IAM role can also have managed policies attached to it. To retrieve a managed
    #             policy document that is attached to a role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a> to determine the
    #             policy's default version, then use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a> to
    #             retrieve the policy document.</p>
    #          <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p> For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetRolePolicyRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role associated with the policy.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy document to get.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #   }
    #   options = {}
    #   response = client.get_role_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    # @return [Types::GetRolePolicyResponse]
    def get_role_policy(params = {}, options = {})
      request = build_request(:get_role_policy, params)
      request.send_request(options)
    end

    # <p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider
    #             resource object was created or updated.</p>
    #          <note>
    #             <p>This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #          </note>
    # @param [Hash, Types::GetSAMLProviderRequest] params
    # @option params [String] :saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get
    #               information about.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_provider_arn: "arnType", # required
    #   }
    #   options = {}
    #   response = client.get_saml_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     saml_provider_uuid: "privateKeyIdType",
    #     saml_metadata_document: "SAMLMetadataDocumentType",
    #     create_date: Time.now,
    #     valid_until: Time.now,
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     assertion_encryption_mode: "Required" # One of: ["Required", "Allowed"],
    #     private_key_list: [
    #       {
    #         key_id: "privateKeyIdType",
    #         timestamp: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetSAMLProviderResponse]
    def get_saml_provider(params = {}, options = {})
      request = build_request(:get_saml_provider, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified SSH public key, including metadata about the key.</p>
    #          <p>The SSH public key retrieved by this operation is used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for SSH
    #                 connections</a> in the <i>CodeCommit User Guide</i>.</p>
    # @param [Hash, Types::GetSSHPublicKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @option params [String] :encoding
    #   <p>Specifies the public key encoding format to use in the response. To retrieve the
    #               public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM
    #               format, use <code>PEM</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     ssh_public_key_id: "publicKeyIdType", # required
    #     encoding: "SSH" # One of: ["SSH", "PEM"], # required
    #   }
    #   options = {}
    #   response = client.get_ssh_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ssh_public_key: {
    #       user_name: "userNameType", # required
    #       ssh_public_key_id: "publicKeyIdType", # required
    #       fingerprint: "publicKeyFingerprintType", # required
    #       ssh_public_key_body: "publicKeyMaterialType", # required
    #       status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #       upload_date: Time.now
    #     }
    #   }
    # @return [Types::GetSSHPublicKeyResponse]
    def get_ssh_public_key(params = {}, options = {})
      request = build_request(:get_ssh_public_key, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified server certificate stored in IAM.</p>
    #          <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic includes a list of Amazon Web Services services that can use the server certificates that you
    #             manage with IAM.</p>
    # @param [Hash, Types::GetServerCertificateRequest] params
    # @option params [String] :server_certificate_name
    #   <p>The name of the server certificate you want to retrieve information about.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_certificate_name: "serverCertificateNameType", # required
    #   }
    #   options = {}
    #   response = client.get_server_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_certificate: { # required
    #       server_certificate_metadata: { # required
    #         path: "pathType", # required
    #         server_certificate_name: "serverCertificateNameType", # required
    #         server_certificate_id: "idType", # required
    #         arn: "arnType", # required
    #         upload_date: Time.now,
    #         expiration: Time.now
    #       },
    #       certificate_body: "certificateBodyType", # required
    #       certificate_chain: "certificateChainType",
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetServerCertificateResponse]
    def get_server_certificate(params = {}, options = {})
      request = build_request(:get_server_certificate, params)
      request.send_request(options)
    end

    # <p>Retrieves a service last accessed report that was created using the
    #                 <code>GenerateServiceLastAccessedDetails</code> operation. You can use the
    #                 <code>JobId</code> parameter in <code>GetServiceLastAccessedDetails</code> to
    #             retrieve the status of your report job. When the report is complete, you can retrieve
    #             the generated report. The report includes a list of Amazon Web Services services that the resource
    #             (user, group, role, or managed policy) can access.</p>
    #          <note>
    #             <p>Service last accessed data does not use other policy types when determining
    #                 whether a resource could access a service. These other policy types include
    #                 resource-based policies, access control lists, Organizations policies, IAM permissions
    #                 boundaries, and STS assume role policies. It only applies permissions policy
    #                 logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>For each service that the resource could access using permissions policies, the
    #             operation returns details about the most recent access attempt. If there was no attempt,
    #             the service is listed without details about the most recent attempt to access the
    #             service. If the operation fails, the <code>GetServiceLastAccessedDetails</code>
    #             operation returns the reason that it failed.</p>
    #          <p>The <code>GetServiceLastAccessedDetails</code> operation returns a list of services.
    #             This list includes the number of entities that have attempted to access the service and
    #             the date and time of the last attempt. It also returns the ARN of the following entity,
    #             depending on the resource ARN that you used to generate the report:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>User</b> – Returns the user ARN that you
    #                     used to generate the report</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Group</b> – Returns the ARN of the group
    #                     member (user) that last attempted to access the service</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Role</b> – Returns the role ARN that you
    #                     used to generate the report</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Policy</b> – Returns the ARN of the user
    #                     or role that last used the policy to attempt to access the service</p>
    #             </li>
    #          </ul>
    #          <p>By default, the list is sorted by service namespace.</p>
    #          <p>If you specified <code>ACTION_LEVEL</code> granularity when you generated the report,
    #             this operation returns service and action last accessed data. This includes the most
    #             recent access attempt for each tracked action within a service. Otherwise, this
    #             operation returns only service data.</p>
    #          <p>For more information about service and action last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing permissions using service last accessed data</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetServiceLastAccessedDetailsRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the request generated by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateServiceLastAccessedDetails.html">GenerateServiceLastAccessedDetails</a> operation. The <code>JobId</code>
    #               returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role
    #               within a session, or by the same user when used to call
    #                   <code>GetServiceLastAccessedDetail</code>.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @example To get details from a previously-generated report
    #   # The following operation gets details about the report with the job ID: examplef-1305-c245-eba4-71fe298bcda7
    #   params = {
    #     job_id: "examplef-1305-c245-eba4-71fe298bcda7"
    #   }
    #   options = {}
    #   response = client.get_service_last_accessed_details(params, options)
    #   response.to_h #=>
    #   {
    #     job_status: COMPLETED,
    #     job_creation_date: Time.parse("2018-10-24T19:47:31.466Z"),
    #     services_last_accessed: [
    #       {
    #         total_authenticated_entities: 2,
    #         last_authenticated: Time.parse("2018-10-24T19:11:00Z"),
    #         service_namespace: "iam",
    #         last_authenticated_entity: "arn:aws:iam::123456789012:user/AWSExampleUser01",
    #         service_name: "AWS Identity and Access Management"
    #       },
    #       {
    #         total_authenticated_entities: 0,
    #         service_namespace: "s3",
    #         service_name: "Amazon Simple Storage Service"
    #       }
    #     ],
    #     job_completion_date: Time.parse("2018-10-24T19:47:35.241Z"),
    #     is_truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "jobIDType", # required
    #     max_items: 1,
    #     marker: "markerType"
    #   }
    #   options = {}
    #   response = client.get_service_last_accessed_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #     job_type: "SERVICE_LEVEL" # One of: ["SERVICE_LEVEL", "ACTION_LEVEL"],
    #     job_creation_date: Time.now, # required
    #     services_last_accessed: [ # required
    #       {
    #         service_name: "serviceNameType", # required
    #         last_authenticated: Time.now,
    #         service_namespace: "serviceNamespaceType", # required
    #         last_authenticated_entity: "arnType",
    #         last_authenticated_region: "stringType",
    #         total_authenticated_entities: 1,
    #         tracked_actions_last_accessed: [
    #           {
    #             action_name: "stringType",
    #             last_accessed_entity: "arnType",
    #             last_accessed_time: Time.now,
    #             last_accessed_region: "stringType"
    #           }
    #         ]
    #       }
    #     ],
    #     job_completion_date: Time.now, # required
    #     is_truncated: false,
    #     marker: "responseMarkerType",
    #     error: {
    #       message: "stringType", # required
    #       code: "stringType", # required
    #     }
    #   }
    # @return [Types::GetServiceLastAccessedDetailsResponse]
    def get_service_last_accessed_details(params = {}, options = {})
      request = build_request(:get_service_last_accessed_details, params)
      request.send_request(options)
    end

    # <p>After you generate a group or policy report using the
    #                 <code>GenerateServiceLastAccessedDetails</code> operation, you can use the
    #                 <code>JobId</code> parameter in
    #                 <code>GetServiceLastAccessedDetailsWithEntities</code>. This operation retrieves the
    #             status of your report job and a list of entities that could have used group or policy
    #             permissions to access the specified service.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Group</b> – For a group report, this
    #                     operation returns a list of users in the group that could have used the group’s
    #                     policies in an attempt to access the service.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Policy</b> – For a policy report, this
    #                     operation returns a list of entities (users or roles) that could have used the
    #                     policy in an attempt to access the service.</p>
    #             </li>
    #          </ul>
    #          <p>You can also use this operation for user or role reports to retrieve details about
    #             those entities.</p>
    #          <p>If the operation fails, the <code>GetServiceLastAccessedDetailsWithEntities</code>
    #             operation returns the reason that it failed.</p>
    #          <p>By default, the list of associated entities is sorted by date, with the most recent
    #             access listed first.</p>
    # @param [Hash, Types::GetServiceLastAccessedDetailsWithEntitiesRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the request generated by the <code>GenerateServiceLastAccessedDetails</code>
    #               operation.</p>
    # @option params [String] :service_namespace
    #   <p>The service namespace for an Amazon Web Services service. Provide the service namespace to learn
    #               when the IAM entity last attempted to access the specified service.</p>
    #            <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                   <i>IAM User Guide</i>. Choose the name of the service to view
    #               details for that service. In the first paragraph, find the service prefix. For example,
    #                   <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #                   service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @example To get sntity details from a previously-generated report
    #   # The following operation returns details about the entities that attempted to access the IAM service.
    #   params = {
    #     job_id: "examplef-1305-c245-eba4-71fe298bcda7",
    #     service_namespace: "iam"
    #   }
    #   options = {}
    #   response = client.get_service_last_accessed_details_with_entities(params, options)
    #   response.to_h #=>
    #   {
    #     job_status: COMPLETED,
    #     job_creation_date: Time.parse("2018-10-24T19:47:31.466Z"),
    #     job_completion_date: Time.parse("2018-10-24T19:47:35.241Z"),
    #     entity_details_list: [
    #       {
    #         entity_info: {
    #           id: "AIDAEX2EXAMPLEB6IGCDC",
    #           name: "AWSExampleUser01",
    #           type: USER,
    #           path: "/",
    #           arn: "arn:aws:iam::123456789012:user/AWSExampleUser01"
    #         },
    #         last_authenticated: Time.parse("2018-10-24T19:10:00Z")
    #       },
    #       {
    #         entity_info: {
    #           id: "AROAEAEXAMPLEIANXSIU4",
    #           name: "AWSExampleRole01",
    #           type: ROLE,
    #           path: "/",
    #           arn: "arn:aws:iam::123456789012:role/AWSExampleRole01"
    #         }
    #       }
    #     ],
    #     is_truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "jobIDType", # required
    #     service_namespace: "serviceNamespaceType", # required
    #     max_items: 1,
    #     marker: "markerType"
    #   }
    #   options = {}
    #   response = client.get_service_last_accessed_details_with_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #     job_creation_date: Time.now, # required
    #     job_completion_date: Time.now, # required
    #     entity_details_list: [ # required
    #       {
    #         entity_info: { # required
    #           arn: "arnType", # required
    #           name: "userNameType", # required
    #           type: "USER" # One of: ["USER", "ROLE", "GROUP"], # required
    #           id: "idType", # required
    #           path: "pathType"
    #         },
    #         last_authenticated: Time.now
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType",
    #     error: {
    #       message: "stringType", # required
    #       code: "stringType", # required
    #     }
    #   }
    # @return [Types::GetServiceLastAccessedDetailsWithEntitiesResponse]
    def get_service_last_accessed_details_with_entities(params = {}, options = {})
      request = build_request(:get_service_last_accessed_details_with_entities, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of your service-linked role deletion. After you use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html">DeleteServiceLinkedRole</a> to submit a service-linked role for deletion, you
    #             can use the <code>DeletionTaskId</code> parameter in
    #                 <code>GetServiceLinkedRoleDeletionStatus</code> to check the status of the deletion.
    #             If the deletion fails, this operation returns the reason that it failed, if that
    #             information is returned by the service.</p>
    # @param [Hash, Types::GetServiceLinkedRoleDeletionStatusRequest] params
    # @option params [String] :deletion_task_id
    #   <p>The deletion task identifier. This identifier is returned by the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html">DeleteServiceLinkedRole</a> operation in the format
    #                   <code>task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid></code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deletion_task_id: "DeletionTaskIdType", # required
    #   }
    #   options = {}
    #   response = client.get_service_linked_role_deletion_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED", "NOT_STARTED"], # required
    #     reason: {
    #       reason: "ReasonType",
    #       role_usage_list: [
    #         {
    #           region: "RegionNameType",
    #           resources: ["arnType"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetServiceLinkedRoleDeletionStatusResponse]
    def get_service_linked_role_deletion_status(params = {}, options = {})
      request = build_request(:get_service_linked_role_deletion_status, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified IAM user, including the user's creation
    #             date, path, unique ID, and ARN.</p>
    #          <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID used to sign the request to this operation.</p>
    # @param [Hash, Types::GetUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user to get information about.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to the user making the
    #               request. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To get information about an IAM user
    #   # The following command gets information about the IAM user named Bob.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    #   response.to_h #=>
    #   {
    #     user: {
    #       user_name: "Bob",
    #       path: "/",
    #       create_date: Time.parse("2012-09-21T23:03:13Z"),
    #       user_id: "AKIAIOSFODNN7EXAMPLE",
    #       arn: "arn:aws:iam::123456789012:user/Bob"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType"
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: { # required
    #       path: "pathType", # required
    #       user_name: "userNameType", # required
    #       user_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       password_last_used: Time.now,
    #       permissions_boundary: {
    #         permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #         permissions_boundary_arn: "arnType"
    #       },
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetUserResponse]
    def get_user(params = {}, options = {})
      request = build_request(:get_user, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified inline policy document that is embedded in the specified IAM
    #             user.</p>
    #          <note>
    #             <p>Policies returned by this operation are URL-encoded compliant 
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL 
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you 
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in 
    #     the Java SDK. Other languages and SDKs provide similar functionality, and some SDKs do this decoding 
    #     automatically.</p>
    #          </note>
    #          <p>An IAM user can also have managed policies attached to it. To retrieve a managed
    #             policy document that is attached to a user, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a> to determine the
    #             policy's default version. Then use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html">GetPolicyVersion</a> to
    #             retrieve the policy document.</p>
    #          <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::GetUserPolicyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user who the policy is associated with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy document to get.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #   }
    #   options = {}
    #   response = client.get_user_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    # @return [Types::GetUserPolicyResponse]
    def get_user_policy(params = {}, options = {})
      request = build_request(:get_user_policy, params)
      request.send_request(options)
    end

    # <p>Returns information about the access key IDs associated with the specified IAM user.
    #             If there is none, the operation returns an empty list.</p>
    #          <p>Although each user is limited to a small number of keys, you can still paginate the
    #             results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    #          <p>If the <code>UserName</code> is not specified, the user name is determined implicitly
    #             based on the Amazon Web Services access key ID used to sign the request. If a temporary access key is
    #             used, then <code>UserName</code> is required. If a long-term key is assigned to the
    #             user, then <code>UserName</code> is not required.</p>
    #          <p>This operation works for access keys under the Amazon Web Services account. If the Amazon Web Services account has
    #             no associated users, the root user returns it's own access key IDs by running this
    #             command.</p>
    #          <note>
    #             <p>To ensure the security of your Amazon Web Services account, the secret access key is accessible
    #                 only during key and user creation.</p>
    #          </note>
    # @param [Hash, Types::ListAccessKeysRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the access key IDs for an IAM user
    #   # The following command lists the access keys IDs for the IAM user named Alice.
    #   params = {
    #     user_name: "Alice"
    #   }
    #   options = {}
    #   response = client.list_access_keys(params, options)
    #   response.to_h #=>
    #   {
    #     access_key_metadata: [
    #       {
    #         user_name: "Alice",
    #         status: Active,
    #         create_date: Time.parse("2016-12-01T22:19:58Z"),
    #         access_key_id: "AKIA111111111EXAMPLE"
    #       },
    #       {
    #         user_name: "Alice",
    #         status: Active,
    #         create_date: Time.parse("2016-12-01T22:20:01Z"),
    #         access_key_id: "AKIA222222222EXAMPLE"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_access_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_key_metadata: [ # required
    #       {
    #         user_name: "userNameType",
    #         access_key_id: "accessKeyIdType",
    #         status: "Active" # One of: ["Active", "Inactive", "Expired"],
    #         create_date: Time.now
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListAccessKeysResponse]
    def list_access_keys(params = {}, options = {})
      request = build_request(:list_access_keys, params)
      request.send_request(options)
    end

    # <p>Lists the account alias associated with the Amazon Web Services account (Note: you can have only
    #             one). For information about using an Amazon Web Services account alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/console_account-alias.html#CreateAccountAlias">Creating,
    #                 deleting, and listing an Amazon Web Services account alias</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListAccountAliasesRequest] params
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list account aliases
    #   # The following command lists the aliases for the current account.
    #   params = {}
    #   options = {}
    #   response = client.list_account_aliases(params, options)
    #   response.to_h #=>
    #   {
    #     account_aliases: [
    #       "exmaple-corporation"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_account_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_aliases: ["accountAliasType"], # required
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListAccountAliasesResponse]
    def list_account_aliases(params = {}, options = {})
      request = build_request(:list_account_aliases, params)
      request.send_request(options)
    end

    # <p>Lists all managed policies that are attached to the specified IAM group.</p>
    #          <p>An IAM group can also have inline policies embedded with it. To list the inline
    #             policies for a group, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroupPolicies.html">ListGroupPolicies</a>.
    #             For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. You can use the <code>PathPrefix</code> parameter to limit the list of
    #             policies to only those matching the specified path prefix. If there are no policies
    #             attached to the specified group (or none that match the specified path prefix), the
    #             operation returns an empty list.</p>
    # @param [Hash, Types::ListAttachedGroupPoliciesRequest] params
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) of the group to list attached policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_attached_group_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_policies: [
    #       {
    #         policy_name: "policyNameType",
    #         policy_arn: "arnType"
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListAttachedGroupPoliciesResponse]
    def list_attached_group_policies(params = {}, options = {})
      request = build_request(:list_attached_group_policies, params)
      request.send_request(options)
    end

    # <p>Lists all managed policies that are attached to the specified IAM role.</p>
    #          <p>An IAM role can also have inline policies embedded with it. To list the inline
    #             policies for a role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListRolePolicies.html">ListRolePolicies</a>.
    #             For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. You can use the <code>PathPrefix</code> parameter to limit the list of
    #             policies to only those matching the specified path prefix. If there are no policies
    #             attached to the specified role (or none that match the specified path prefix), the
    #             operation returns an empty list.</p>
    # @param [Hash, Types::ListAttachedRolePoliciesRequest] params
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the role to list attached policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_attached_role_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_policies: [
    #       {
    #         policy_name: "policyNameType",
    #         policy_arn: "arnType"
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListAttachedRolePoliciesResponse]
    def list_attached_role_policies(params = {}, options = {})
      request = build_request(:list_attached_role_policies, params)
      request.send_request(options)
    end

    # <p>Lists all managed policies that are attached to the specified IAM user.</p>
    #          <p>An IAM user can also have inline policies embedded with it. To list the inline
    #             policies for a user, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUserPolicies.html">ListUserPolicies</a>.
    #             For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. You can use the <code>PathPrefix</code> parameter to limit the list of
    #             policies to only those matching the specified path prefix. If there are no policies
    #             attached to the specified group (or none that match the specified path prefix), the
    #             operation returns an empty list.</p>
    # @param [Hash, Types::ListAttachedUserPoliciesRequest] params
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the user to list attached policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     path_prefix: "policyPathType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_attached_user_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attached_policies: [
    #       {
    #         policy_name: "policyNameType",
    #         policy_arn: "arnType"
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListAttachedUserPoliciesResponse]
    def list_attached_user_policies(params = {}, options = {})
      request = build_request(:list_attached_user_policies, params)
      request.send_request(options)
    end

    # <p>Lists all IAM users, groups, and roles that the specified managed policy is attached
    #             to.</p>
    #          <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a
    #             particular type of entity (users, groups, or roles). For example, to list only the roles
    #             that are attached to the specified policy, set <code>EntityFilter</code> to
    #                 <code>Role</code>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListEntitiesForPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
    #               versions.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :entity_filter
    #   <p>The entity type to use for filtering the results.</p>
    #            <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that
    #               are attached to the specified policy are returned. This parameter is optional. If it is
    #               not included, all attached entities (users, groups, and roles) are returned. The
    #               argument for this parameter must be one of the valid values listed below.</p>
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all entities.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :policy_usage_filter
    #   <p>The policy usage method to use for filtering the results.</p>
    #            <p>To list only permissions policies,
    #                   set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
    #               the policies used to set permissions boundaries, set the value
    #                   to <code>PermissionsBoundary</code>.</p>
    #            <p>This parameter is optional. If it is not included, all policies are returned. </p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     entity_filter: "User" # One of: ["User", "Role", "Group", "LocalManagedPolicy", "AWSManagedPolicy"],
    #     path_prefix: "pathType",
    #     policy_usage_filter: "PermissionsPolicy" # One of: ["PermissionsPolicy", "PermissionsBoundary"],
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_entities_for_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_groups: [
    #       {
    #         group_name: "groupNameType",
    #         group_id: "idType"
    #       }
    #     ],
    #     policy_users: [
    #       {
    #         user_name: "userNameType",
    #         user_id: "idType"
    #       }
    #     ],
    #     policy_roles: [
    #       {
    #         role_name: "roleNameType",
    #         role_id: "idType"
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListEntitiesForPolicyResponse]
    def list_entities_for_policy(params = {}, options = {})
      request = build_request(:list_entities_for_policy, params)
      request.send_request(options)
    end

    # <p>Lists the names of the inline policies that are embedded in the specified IAM
    #             group.</p>
    #          <p>An IAM group can also have managed policies attached to it. To list the managed
    #             policies that are attached to a group, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedGroupPolicies.html">ListAttachedGroupPolicies</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. If there are no inline policies embedded with the specified group, the
    #             operation returns an empty list.</p>
    # @param [Hash, Types::ListGroupPoliciesRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group to list policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the in-line policies for an IAM group
    #   # The following command lists the names of in-line policies that are embedded in the IAM group named Admins.
    #   params = {
    #     group_name: "Admins"
    #   }
    #   options = {}
    #   response = client.list_group_policies(params, options)
    #   response.to_h #=>
    #   {
    #     policy_names: [
    #       "AdminRoot",
    #       "KeyPolicy"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_group_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_names: ["policyNameType"], # required
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListGroupPoliciesResponse]
    def list_group_policies(params = {}, options = {})
      request = build_request(:list_group_policies, params)
      request.send_request(options)
    end

    # <p>Lists the IAM groups that have the specified path prefix.</p>
    #          <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with
    #                   <code>/division_abc/subdivision_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all groups. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the IAM groups for the current account
    #   # The following command lists the IAM groups in the current account:
    #   params = {}
    #   options = {}
    #   response = client.list_groups(params, options)
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         path: "/division_abc/subdivision_xyz/",
    #         group_name: "Admins",
    #         create_date: Time.parse("2016-12-15T21:40:08.121Z"),
    #         group_id: "AGPA1111111111EXAMPLE",
    #         arn: "arn:aws:iam::123456789012:group/Admins"
    #       },
    #       {
    #         path: "/division_abc/subdivision_xyz/product_1234/engineering/",
    #         group_name: "Test",
    #         create_date: Time.parse("2016-11-30T14:10:01.156Z"),
    #         group_id: "AGP22222222222EXAMPLE",
    #         arn: "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/engineering/Test"
    #       },
    #       {
    #         path: "/division_abc/subdivision_xyz/product_1234/",
    #         group_name: "Managers",
    #         create_date: Time.parse("2016-06-12T20:14:52.032Z"),
    #         group_id: "AGPI3333333333EXAMPLE",
    #         arn: "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/Managers"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [ # required
    #       {
    #         path: "pathType", # required
    #         group_name: "groupNameType", # required
    #         group_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Lists the IAM groups that the specified IAM user belongs to.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListGroupsForUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user to list groups for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the groups that an IAM user belongs to
    #   # The following command displays the groups that the IAM user named Bob belongs to.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.list_groups_for_user(params, options)
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         path: "/division_abc/subdivision_xyz/product_1234/engineering/",
    #         group_name: "Test",
    #         create_date: Time.parse("2016-11-30T14:10:01.156Z"),
    #         group_id: "AGP2111111111EXAMPLE",
    #         arn: "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/engineering/Test"
    #       },
    #       {
    #         path: "/division_abc/subdivision_xyz/product_1234/",
    #         group_name: "Managers",
    #         create_date: Time.parse("2016-06-12T20:14:52.032Z"),
    #         group_id: "AGPI222222222SEXAMPLE",
    #         arn: "arn:aws:iam::123456789012:group/division_abc/subdivision_xyz/product_1234/Managers"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_groups_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [ # required
    #       {
    #         path: "pathType", # required
    #         group_name: "groupNameType", # required
    #         group_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListGroupsForUserResponse]
    def list_groups_for_user(params = {}, options = {})
      request = build_request(:list_groups_for_user, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified IAM instance profile. The returned list of tags is sorted by tag key.
    #       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListInstanceProfileTagsRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the IAM instance profile whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_instance_profile_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListInstanceProfileTagsResponse]
    def list_instance_profile_tags(params = {}, options = {})
      request = build_request(:list_instance_profile_tags, params)
      request.send_request(options)
    end

    # <p>Lists the instance profiles that have the specified path prefix. If there are none,
    #             the operation returns an empty list. For more information about instance profiles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html">Using
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an instance profile, see
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetInstanceProfile.html">GetInstanceProfile</a>.</p>
    #          </note>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListInstanceProfilesRequest] params
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/application_abc/component_xyz/</code> gets all instance profiles whose path
    #               starts with <code>/application_abc/component_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all instance profiles. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_instance_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profiles: [ # required
    #       {
    #         path: "pathType", # required
    #         instance_profile_name: "instanceProfileNameType", # required
    #         instance_profile_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #         roles: [ # required
    #           {
    #             path: "pathType", # required
    #             role_name: "roleNameType", # required
    #             role_id: "idType", # required
    #             arn: "arnType", # required
    #             create_date: Time.now, # required
    #             assume_role_policy_document: "policyDocumentType",
    #             description: "roleDescriptionType",
    #             max_session_duration: 1,
    #             permissions_boundary: {
    #               permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #               permissions_boundary_arn: "arnType"
    #             },
    #             tags: [
    #               {
    #                 key: "tagKeyType", # required
    #                 value: "tagValueType", # required
    #               }
    #             ],
    #             role_last_used: {
    #               last_used_date: Time.now,
    #               region: "stringType"
    #             }
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListInstanceProfilesResponse]
    def list_instance_profiles(params = {}, options = {})
      request = build_request(:list_instance_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the instance profiles that have the specified associated IAM role. If there
    #             are none, the operation returns an empty list. For more information about instance
    #             profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html">Using
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListInstanceProfilesForRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role to list instance profiles for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_instance_profiles_for_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profiles: [ # required
    #       {
    #         path: "pathType", # required
    #         instance_profile_name: "instanceProfileNameType", # required
    #         instance_profile_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #         roles: [ # required
    #           {
    #             path: "pathType", # required
    #             role_name: "roleNameType", # required
    #             role_id: "idType", # required
    #             arn: "arnType", # required
    #             create_date: Time.now, # required
    #             assume_role_policy_document: "policyDocumentType",
    #             description: "roleDescriptionType",
    #             max_session_duration: 1,
    #             permissions_boundary: {
    #               permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #               permissions_boundary_arn: "arnType"
    #             },
    #             tags: [
    #               {
    #                 key: "tagKeyType", # required
    #                 value: "tagValueType", # required
    #               }
    #             ],
    #             role_last_used: {
    #               last_used_date: Time.now,
    #               region: "stringType"
    #             }
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListInstanceProfilesForRoleResponse]
    def list_instance_profiles_for_role(params = {}, options = {})
      request = build_request(:list_instance_profiles_for_role, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified IAM virtual multi-factor authentication (MFA) device. The returned list of tags is
    #       sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListMFADeviceTagsRequest] params
    # @option params [String] :serial_number
    #   <p>The unique identifier for the IAM virtual MFA device whose tags you want to see.
    #         For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serial_number: "serialNumberType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_mfa_device_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListMFADeviceTagsResponse]
    def list_mfa_device_tags(params = {}, options = {})
      request = build_request(:list_mfa_device_tags, params)
      request.send_request(options)
    end

    # <p>Lists the MFA devices for an IAM user. If the request includes a IAM user name,
    #             then this operation lists all the MFA devices associated with the specified user. If you
    #             do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services
    #             access key ID signing the request for this operation.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListMFADevicesRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose MFA devices you want to list.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_mfa_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mfa_devices: [ # required
    #       {
    #         user_name: "userNameType", # required
    #         serial_number: "serialNumberType", # required
    #         enable_date: Time.now, # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListMFADevicesResponse]
    def list_mfa_devices(params = {}, options = {})
      request = build_request(:list_mfa_devices, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified OpenID Connect (OIDC)-compatible
    #       identity provider. The returned list of tags is sorted by tag key. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity
    #       federation</a>.</p>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListOpenIDConnectProviderTagsRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The ARN of the OpenID Connect (OIDC) identity provider whose tags you want to
    #         see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_open_id_connect_provider_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListOpenIDConnectProviderTagsResponse]
    def list_open_id_connect_provider_tags(params = {}, options = {})
      request = build_request(:list_open_id_connect_provider_tags, params)
      request.send_request(options)
    end

    # <p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects
    #             defined in the Amazon Web Services account.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an OIDC provider, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOpenIDConnectProvider.html">GetOpenIDConnectProvider</a>.</p>
    #          </note>
    # @param [Hash, Types::ListOpenIDConnectProvidersRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_open_id_connect_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     open_id_connect_provider_list: [
    #       {
    #         arn: "arnType"
    #       }
    #     ]
    #   }
    # @return [Types::ListOpenIDConnectProvidersResponse]
    def list_open_id_connect_providers(params = {}, options = {})
      request = build_request(:list_open_id_connect_providers, params)
      request.send_request(options)
    end

    # <p>Lists the centralized root access features enabled for your organization. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management">Centrally manage root access for member accounts</a>.</p>
    # @param [Hash, Types::ListOrganizationsFeaturesRequest] params
    # @example To list the centralized root access features enabled for your organization
    #   # he following command lists the centralized root access features enabled for your organization.
    #   params = {}
    #   options = {}
    #   response = client.list_organizations_features(params, options)
    #   response.to_h #=>
    #   {
    #     organization_id: "o-aa111bb222",
    #     enabled_features: [
    #       RootCredentialsManagement
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_organizations_features(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_id: "OrganizationIdType",
    #     enabled_features: ["RootCredentialsManagement" # One of: ["RootCredentialsManagement", "RootSessions"]]
    #   }
    # @return [Types::ListOrganizationsFeaturesResponse]
    def list_organizations_features(params = {}, options = {})
      request = build_request(:list_organizations_features, params)
      request.send_request(options)
    end

    # <p>Lists all the managed policies that are available in your Amazon Web Services account, including
    #             your own customer-defined managed policies and all Amazon Web Services managed policies.</p>
    #          <p>You can filter the list of policies that is returned using the optional
    #                 <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code>
    #             parameters. For example, to list only the customer managed policies in your Amazon Web Services
    #             account, set <code>Scope</code> to <code>Local</code>. To list only Amazon Web Services managed
    #             policies, set <code>Scope</code> to <code>AWS</code>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #          <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a customer manged policy, see
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html">GetPolicy</a>.</p>
    #          </note>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [String] :scope
    #   <p>The scope to use for filtering the results.</p>
    #            <p>To list only Amazon Web Services managed policies, set <code>Scope</code> to <code>AWS</code>. To
    #               list only the customer managed policies in your Amazon Web Services account, set <code>Scope</code> to
    #                   <code>Local</code>.</p>
    #            <p>This parameter is optional. If it is not included, or if it is set to
    #               <code>All</code>, all policies are returned.</p>
    # @option params [Boolean] :only_attached
    #   <p>A flag to filter the results to only the attached policies.</p>
    #            <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only
    #               the policies that are attached to an IAM user, group, or role. When
    #                   <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not
    #               included, all policies are returned.</p>
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :policy_usage_filter
    #   <p>The policy usage method to use for filtering the results.</p>
    #            <p>To list only permissions policies,
    #                   set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
    #               the policies used to set permissions boundaries, set the value
    #                   to <code>PermissionsBoundary</code>.</p>
    #            <p>This parameter is optional. If it is not included, all policies are returned. </p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope: "All" # One of: ["All", "AWS", "Local"],
    #     only_attached: false,
    #     path_prefix: "policyPathType",
    #     policy_usage_filter: "PermissionsPolicy" # One of: ["PermissionsPolicy", "PermissionsBoundary"],
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_name: "policyNameType",
    #         policy_id: "idType",
    #         arn: "arnType",
    #         path: "policyPathType",
    #         default_version_id: "policyVersionIdType",
    #         attachment_count: 1,
    #         permissions_boundary_usage_count: 1,
    #         is_attachable: false,
    #         description: "policyDescriptionType",
    #         create_date: Time.now,
    #         update_date: Time.now,
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of policies that the IAM identity (user, group, or role) can use to
    #             access each specified service.</p>
    #          <note>
    #             <p>This operation does not use other policy types when determining whether a resource
    #                 could access a service. These other policy types include resource-based policies,
    #                 access control lists, Organizations policies, IAM permissions boundaries, and STS
    #                 assume role policies. It only applies permissions policy logic. For more about the
    #                 evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>The list of policies returned by the operation depends on the ARN of the identity that
    #             you provide.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>User</b> – The list of policies includes
    #                     the managed and inline policies that are attached to the user directly. The list
    #                     also includes any additional managed and inline policies that are attached to
    #                     the group to which the user belongs. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Group</b> – The list of policies includes
    #                     only the managed and inline policies that are attached to the group directly.
    #                     Policies that are attached to the group’s user are not included.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Role</b> – The list of policies includes
    #                     only the managed and inline policies that are attached to the role.</p>
    #             </li>
    #          </ul>
    #          <p>For each managed policy, this operation returns the ARN and policy name. For each
    #             inline policy, it returns the policy name and the entity to which it is attached. Inline
    #             policies do not have an ARN. For more information about these policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html">Managed policies and inline policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <p>Policies that are attached to users and roles as permissions boundaries are not
    #             returned. To view which managed policy is currently used to set the permissions boundary
    #             for a user or role, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html">GetUser</a> or <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html">GetRole</a>
    #             operations.</p>
    # @param [Hash, Types::ListPoliciesGrantingServiceAccessRequest] params
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [String] :arn
    #   <p>The ARN of the IAM identity (user, group, or role) whose policies you want to
    #               list.</p>
    # @option params [Array<String>] :service_namespaces
    #   <p>The service namespace for the Amazon Web Services services whose policies you want to list.</p>
    #            <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                   <i>IAM User Guide</i>. Choose the name of the service to view
    #               details for that service. In the first paragraph, find the service prefix. For example,
    #                   <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #                   service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example To list policies that allow access to a service
    #   # The following operation lists policies that allow ExampleUser01 to access IAM or EC2.
    #   params = {
    #     arn: "arn:aws:iam::123456789012:user/ExampleUser01",
    #     service_namespaces: [
    #       "iam",
    #       "ec2"
    #     ]
    #   }
    #   options = {}
    #   response = client.list_policies_granting_service_access(params, options)
    #   response.to_h #=>
    #   {
    #     is_truncated: false,
    #     policies_granting_service_access: [
    #       {
    #         policies: [
    #           {
    #             policy_arn: "arn:aws:iam::123456789012:policy/ExampleIamPolicy",
    #             policy_type: MANAGED,
    #             policy_name: "ExampleIamPolicy"
    #           },
    #           {
    #             entity_name: "AWSExampleGroup1",
    #             entity_type: GROUP,
    #             policy_type: INLINE,
    #             policy_name: "ExampleGroup1Policy"
    #           }
    #         ],
    #         service_namespace: "iam"
    #       },
    #       {
    #         policies: [
    #           {
    #             policy_arn: "arn:aws:iam::123456789012:policy/ExampleEc2Policy",
    #             policy_type: MANAGED,
    #             policy_name: "ExampleEc2Policy"
    #           }
    #         ],
    #         service_namespace: "ec2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "markerType",
    #     arn: "arnType", # required
    #     service_namespaces: ["serviceNamespaceType"], # required
    #   }
    #   options = {}
    #   response = client.list_policies_granting_service_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies_granting_service_access: [ # required
    #       {
    #         service_namespace: "serviceNamespaceType",
    #         policies: [
    #           {
    #             policy_name: "policyNameType", # required
    #             policy_type: "INLINE" # One of: ["INLINE", "MANAGED"], # required
    #             policy_arn: "arnType",
    #             entity_type: "USER" # One of: ["USER", "ROLE", "GROUP"],
    #             entity_name: "entityNameType"
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListPoliciesGrantingServiceAccessResponse]
    def list_policies_granting_service_access(params = {}, options = {})
      request = build_request(:list_policies_granting_service_access, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified IAM customer managed policy.
    #       The returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListPolicyTagsRequest] params
    # @option params [String] :policy_arn
    #   <p>The ARN of the IAM customer managed policy whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_policy_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListPolicyTagsResponse]
    def list_policy_tags(params = {}, options = {})
      request = build_request(:list_policy_tags, params)
      request.send_request(options)
    end

    # <p>Lists information about the versions of the specified managed policy, including the
    #             version that is currently set as the policy's default version.</p>
    #          <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListPolicyVersionsRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
    #               versions.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_policy_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     versions: [
    #       {
    #         document: "policyDocumentType",
    #         version_id: "policyVersionIdType",
    #         is_default_version: false,
    #         create_date: Time.now
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListPolicyVersionsResponse]
    def list_policy_versions(params = {}, options = {})
      request = build_request(:list_policy_versions, params)
      request.send_request(options)
    end

    # <p>Lists the names of the inline policies that are embedded in the specified IAM
    #             role.</p>
    #          <p>An IAM role can also have managed policies attached to it. To list the managed
    #             policies that are attached to a role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedRolePolicies.html">ListAttachedRolePolicies</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. If there are no inline policies embedded with the specified role, the
    #             operation returns an empty list.</p>
    # @param [Hash, Types::ListRolePoliciesRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role to list policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_role_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_names: ["policyNameType"], # required
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListRolePoliciesResponse]
    def list_role_policies(params = {}, options = {})
      request = build_request(:list_role_policies, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified role. The returned list of tags is
    #       sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListRoleTagsRequest] params
    # @option params [String] :role_name
    #   <p>The name of the IAM role for which you want to see the list of tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the tags attached to an IAM role
    #   # The following example shows how to list the tags attached to a role.
    #   params = {
    #     role_name: "taggedrole1"
    #   }
    #   options = {}
    #   response = client.list_role_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Dept",
    #         value: "12345"
    #       },
    #       {
    #         key: "Team",
    #         value: "Accounting"
    #       }
    #     ],
    #     is_truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_role_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListRoleTagsResponse]
    def list_role_tags(params = {}, options = {})
      request = build_request(:list_role_tags, params)
      request.send_request(options)
    end

    # <p>Lists the IAM roles that have the specified path prefix. If there are none, the
    #             operation returns an empty list. For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. This operation does not return the following attributes, even though they are an attribute of the returned object:</p>
    #             <ul>
    #                <li>
    #                   <p>PermissionsBoundary</p>
    #                </li>
    #                <li>
    #                   <p>RoleLastUsed</p>
    #                </li>
    #                <li>
    #                   <p>Tags</p>
    #                </li>
    #             </ul>
    #             <p>To view all of the information for a role, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html">GetRole</a>.</p>
    #          </note>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListRolesRequest] params
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/application_abc/component_xyz/</code> gets all roles whose path starts with
    #                   <code>/application_abc/component_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all roles. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_roles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     roles: [ # required
    #       {
    #         path: "pathType", # required
    #         role_name: "roleNameType", # required
    #         role_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #         assume_role_policy_document: "policyDocumentType",
    #         description: "roleDescriptionType",
    #         max_session_duration: 1,
    #         permissions_boundary: {
    #           permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #           permissions_boundary_arn: "arnType"
    #         },
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ],
    #         role_last_used: {
    #           last_used_date: Time.now,
    #           region: "stringType"
    #         }
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListRolesResponse]
    def list_roles(params = {}, options = {})
      request = build_request(:list_roles, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified Security Assertion Markup Language
    #       (SAML) identity provider. The returned list of tags is sorted by tag key. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #       federation</a>.</p>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListSAMLProviderTagsRequest] params
    # @option params [String] :saml_provider_arn
    #   <p>The ARN of the Security Assertion Markup Language (SAML) identity provider whose tags
    #         you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_provider_arn: "arnType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_saml_provider_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListSAMLProviderTagsResponse]
    def list_saml_provider_tags(params = {}, options = {})
      request = build_request(:list_saml_provider_tags, params)
      request.send_request(options)
    end

    # <p>Lists the SAML provider resource objects defined in IAM in the account.
    #             IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a SAML provider, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSAMLProvider.html">GetSAMLProvider</a>.</p>
    #          <important>
    #             <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #          </important>
    # @param [Hash, Types::ListSAMLProvidersRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_saml_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     saml_provider_list: [
    #       {
    #         arn: "arnType",
    #         valid_until: Time.now,
    #         create_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListSAMLProvidersResponse]
    def list_saml_providers(params = {}, options = {})
      request = build_request(:list_saml_providers, params)
      request.send_request(options)
    end

    # <p>Returns information about the SSH public keys associated with the specified IAM
    #             user. If none exists, the operation returns an empty list.</p>
    #          <p>The SSH public keys returned by this operation are used only for authenticating the
    #             IAM user to an CodeCommit repository. For more information about using SSH keys to
    #             authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    #          <p>Although each user is limited to a small number of keys, you can still paginate the
    #             results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    # @param [Hash, Types::ListSSHPublicKeysRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user to list SSH public keys for. If none is specified, the
    #                   <code>UserName</code> field is determined implicitly based on the Amazon Web Services access key
    #               used to sign the request.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_ssh_public_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ssh_public_keys: [
    #       {
    #         user_name: "userNameType", # required
    #         ssh_public_key_id: "publicKeyIdType", # required
    #         status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #         upload_date: Time.now, # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListSSHPublicKeysResponse]
    def list_ssh_public_keys(params = {}, options = {})
      request = build_request(:list_ssh_public_keys, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified IAM server certificate. The
    #       returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>For certificates in a Region supported by Certificate Manager (ACM), we
    #         recommend that you don't use IAM server certificates. Instead, use ACM to provision,
    #         manage, and deploy your server certificates. For more information about IAM server
    #         certificates, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with server
    #           certificates</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::ListServerCertificateTagsRequest] params
    # @option params [String] :server_certificate_name
    #   <p>The name of the IAM server certificate whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_certificate_name: "serverCertificateNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_server_certificate_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListServerCertificateTagsResponse]
    def list_server_certificate_tags(params = {}, options = {})
      request = build_request(:list_server_certificate_tags, params)
      request.send_request(options)
    end

    # <p>Lists the server certificates stored in IAM that have the specified path prefix. If
    #             none exist, the operation returns an empty list.</p>
    #          <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #          <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic also includes a list of Amazon Web Services services that can use the server certificates that
    #             you manage with IAM.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServerCertificate.html">GetServerCertificate</a>.</p>
    #          </note>
    # @param [Hash, Types::ListServerCertificatesRequest] params
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example:
    #                   <code>/company/servercerts</code> would get all server certificates for which the
    #               path starts with <code>/company/servercerts</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all server certificates. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_server_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_certificate_metadata_list: [ # required
    #       {
    #         path: "pathType", # required
    #         server_certificate_name: "serverCertificateNameType", # required
    #         server_certificate_id: "idType", # required
    #         arn: "arnType", # required
    #         upload_date: Time.now,
    #         expiration: Time.now
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListServerCertificatesResponse]
    def list_server_certificates(params = {}, options = {})
      request = build_request(:list_server_certificates, params)
      request.send_request(options)
    end

    # <p>Returns information about the service-specific credentials associated with the
    #             specified IAM user. If none exists, the operation returns an empty list. The
    #             service-specific credentials returned by this operation are used only for authenticating
    #             the IAM user to a specific service. For more information about using service-specific
    #             credentials to authenticate to an Amazon Web Services service, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html">Set up service-specific credentials</a>
    #             in the CodeCommit User Guide.</p>
    # @param [Hash, Types::ListServiceSpecificCredentialsRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose service-specific credentials you want information about. If
    #               this value is not specified, then the operation assumes the user whose credentials are
    #               used to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :service_name
    #   <p>Filters the returned results to only those for the specified Amazon Web Services service. If not
    #               specified, then Amazon Web Services returns service-specific credentials for all services.</p>
    # @option params [Boolean] :all_users
    #   <p>A flag indicating whether to list service specific credentials for all users. This
    #               parameter cannot be specified together with UserName. When true, returns all credentials
    #               associated with the specified service.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after you receive a response
    #               indicating that the results are truncated. Set it to the value of the Marker from the
    #               response that you received to indicate where the next call should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the maximum number of items you want
    #               in the response. If additional items exist beyond the maximum you specify, the
    #               IsTruncated response element is true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType",
    #     service_name: "serviceName",
    #     all_users: false,
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_service_specific_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_specific_credentials: [
    #       {
    #         user_name: "userNameType", # required
    #         status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #         service_user_name: "serviceUserName",
    #         service_credential_alias: "serviceCredentialAlias",
    #         create_date: Time.now, # required
    #         expiration_date: Time.now,
    #         service_specific_credential_id: "serviceSpecificCredentialId", # required
    #         service_name: "serviceName", # required
    #       }
    #     ],
    #     marker: "responseMarkerType",
    #     is_truncated: false
    #   }
    # @return [Types::ListServiceSpecificCredentialsResponse]
    def list_service_specific_credentials(params = {}, options = {})
      request = build_request(:list_service_specific_credentials, params)
      request.send_request(options)
    end

    # <p>Returns information about the signing certificates associated with the specified IAM
    #             user. If none exists, the operation returns an empty list.</p>
    #          <p>Although each user is limited to a small number of signing certificates, you can still
    #             paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #          <p>If the <code>UserName</code> field is not specified, the user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request for this operation.
    #             This operation works for access keys under the Amazon Web Services account. Consequently, you can use
    #             this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no
    #             associated users.</p>
    # @param [Hash, Types::ListSigningCertificatesRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user whose signing certificates you want to examine.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the signing certificates for an IAM user
    #   # The following command lists the signing certificates for the IAM user named Bob.
    #   params = {
    #     user_name: "Bob"
    #   }
    #   options = {}
    #   response = client.list_signing_certificates(params, options)
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         user_name: "Bob",
    #         status: Active,
    #         certificate_body: "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----",
    #         certificate_id: "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
    #         upload_date: Time.parse("2013-06-06T21:40:08Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_signing_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [ # required
    #       {
    #         user_name: "userNameType", # required
    #         certificate_id: "certificateIdType", # required
    #         certificate_body: "certificateBodyType", # required
    #         status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #         upload_date: Time.now
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListSigningCertificatesResponse]
    def list_signing_certificates(params = {}, options = {})
      request = build_request(:list_signing_certificates, params)
      request.send_request(options)
    end

    # <p>Lists the names of the inline policies embedded in the specified IAM user.</p>
    #          <p>An IAM user can also have managed policies attached to it. To list the managed
    #             policies that are attached to a user, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedUserPolicies.html">ListAttachedUserPolicies</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. If there are no inline policies embedded with the specified user, the
    #             operation returns an empty list.</p>
    # @param [Hash, Types::ListUserPoliciesRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user to list policies for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_user_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_names: ["policyNameType"], # required
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListUserPoliciesResponse]
    def list_user_policies(params = {}, options = {})
      request = build_request(:list_user_policies, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified IAM user. The returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ListUserTagsRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list the tags attached to an IAM user
    #   # The following example shows how to list the tags attached to a user.
    #   params = {
    #     user_name: "anika"
    #   }
    #   options = {}
    #   response = client.list_user_tags(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Dept",
    #         value: "12345"
    #       },
    #       {
    #         key: "Team",
    #         value: "Accounting"
    #       }
    #     ],
    #     is_truncated: false
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_user_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListUserTagsResponse]
    def list_user_tags(params = {}, options = {})
      request = build_request(:list_user_tags, params)
      request.send_request(options)
    end

    # <p>Lists the IAM users that have the specified path prefix. If no path prefix is
    #             specified, the operation returns all users in the Amazon Web Services account. If there are none, the
    #             operation returns an empty list.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. This operation does not return the following attributes, even though they are an attribute of the returned object:</p>
    #             <ul>
    #                <li>
    #                   <p>PermissionsBoundary</p>
    #                </li>
    #                <li>
    #                   <p>Tags</p>
    #                </li>
    #             </ul>
    #             <p>To view all of the information for a user, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html">GetUser</a>.</p>
    #          </note>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example:
    #                   <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose
    #               path starts with <code>/division_abc/subdivision_xyz/</code>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all user names. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list IAM users
    #   # The following command lists the IAM users in the current account.
    #   params = {}
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_id: "AID2MAB8DPLSRHEXAMPLE",
    #         path: "/division_abc/subdivision_xyz/engineering/",
    #         user_name: "Juan",
    #         arn: "arn:aws:iam::123456789012:user/division_abc/subdivision_xyz/engineering/Juan",
    #         create_date: Time.parse("2012-09-05T19:38:48Z"),
    #         password_last_used: Time.parse("2016-09-08T21:47:36Z")
    #       },
    #       {
    #         user_id: "AIDIODR4TAW7CSEXAMPLE",
    #         path: "/division_abc/subdivision_xyz/engineering/",
    #         user_name: "Anika",
    #         arn: "arn:aws:iam::123456789012:user/division_abc/subdivision_xyz/engineering/Anika",
    #         create_date: Time.parse("2014-04-09T15:43:45Z"),
    #         password_last_used: Time.parse("2016-09-24T16:18:07Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     path_prefix: "pathPrefixType",
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [ # required
    #       {
    #         path: "pathType", # required
    #         user_name: "userNameType", # required
    #         user_id: "idType", # required
    #         arn: "arnType", # required
    #         create_date: Time.now, # required
    #         password_last_used: Time.now,
    #         permissions_boundary: {
    #           permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #           permissions_boundary_arn: "arnType"
    #         },
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status. If
    #             you do not specify an assignment status, the operation returns a list of all virtual MFA
    #             devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or
    #                 <code>Any</code>.</p>
    #          <note>
    #             <p>IAM resource-listing operations return a subset of the available 
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view tag information for a virtual MFA device, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListMFADeviceTags.html">ListMFADeviceTags</a>.</p>
    #          </note>
    #          <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    # @param [Hash, Types::ListVirtualMFADevicesRequest] params
    # @option params [String] :assignment_status
    #   <p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list.
    #               If you do not specify an <code>AssignmentStatus</code>, the operation defaults to
    #                   <code>Any</code>, which lists both assigned and unassigned virtual MFA
    #               devices.,</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @example To list virtual MFA devices
    #   # The following command lists the virtual MFA devices that have been configured for the current account.
    #   params = {}
    #   options = {}
    #   response = client.list_virtual_mfa_devices(params, options)
    #   response.to_h #=>
    #   {
    #     virtual_mfa_devices: [
    #       {
    #         serial_number: "arn:aws:iam::123456789012:mfa/ExampleMFADevice"
    #       },
    #       {
    #         serial_number: "arn:aws:iam::123456789012:mfa/Juan"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     assignment_status: "Assigned" # One of: ["Assigned", "Unassigned", "Any"],
    #     marker: "markerType",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.list_virtual_mfa_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_mfa_devices: [ # required
    #       {
    #         serial_number: "serialNumberType", # required
    #         base32_string_seed: "data",
    #         qr_code_png: "data",
    #         user: {
    #           path: "pathType", # required
    #           user_name: "userNameType", # required
    #           user_id: "idType", # required
    #           arn: "arnType", # required
    #           create_date: Time.now, # required
    #           password_last_used: Time.now,
    #           permissions_boundary: {
    #             permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #             permissions_boundary_arn: "arnType"
    #           },
    #           tags: [
    #             {
    #               key: "tagKeyType", # required
    #               value: "tagValueType", # required
    #             }
    #           ]
    #         },
    #         enable_date: Time.now,
    #         tags: [
    #           {
    #             key: "tagKeyType", # required
    #             value: "tagValueType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::ListVirtualMFADevicesResponse]
    def list_virtual_mfa_devices(params = {}, options = {})
      request = build_request(:list_virtual_mfa_devices, params)
      request.send_request(options)
    end

    # <p>Adds or updates an inline policy document that is embedded in the specified IAM
    #             group.</p>
    #          <p>A user can also have managed policies attached to it. To attach a managed policy to a
    #             group, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachGroupPolicy.html">
    #                <code>AttachGroupPolicy</code>
    #             </a>. To create a new managed policy, use
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html">
    #                <code>CreatePolicy</code>
    #             </a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>For information about the maximum number of inline policies that you can embed in a
    #             group, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>Because policy documents can be large, you should use POST rather than GET when
    #                 calling <code>PutGroupPolicy</code>. For general information about using the Query
    #                 API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query requests</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::PutGroupPolicyRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group to associate the policy with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-.</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy document.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation templates
    #               formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always
    #               converts a YAML policy to JSON format before submitting it to IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example To add a policy to a group
    #   # The following command adds a policy named IAMReadAccess to the IAM group named PowerUsers.
    #   params = {
    #     group_name: "PowerUsers",
    #     policy_name: "IAMReadAccess",
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":[\"iam:Get*\",\"iam:List*\",\"iam:Generate*\"],\"Resource\":\"*\"}}"
    #   }
    #   options = {}
    #   response = client.put_group_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    #   options = {}
    #   response = client.put_group_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_group_policy(params = {}, options = {})
      request = build_request(:put_group_policy, params)
      request.send_request(options)
    end

    # <p>Adds or updates the policy that is specified as the IAM role's permissions boundary.
    #             You can use an Amazon Web Services managed policy or a customer managed policy to set the boundary for
    #             a role. Use the boundary to control the maximum permissions that the role can have.
    #             Setting a permissions boundary is an advanced feature that can affect the permissions
    #             for the role.</p>
    #          <p>You cannot set the boundary for a service-linked role.</p>
    #          <important>
    #             <p>Policies used as permissions boundaries do not provide permissions. You must also
    #                 attach a permissions policy to the role. To learn how the effective permissions for
    #                 a role are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html">IAM JSON policy
    #                     evaluation logic</a> in the IAM User Guide. </p>
    #          </important>
    # @param [Hash, Types::PutRolePermissionsBoundaryRequest] params
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the IAM role for which you want to set the
    #               permissions boundary.</p>
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               role.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     permissions_boundary: "arnType", # required
    #   }
    #   options = {}
    #   response = client.put_role_permissions_boundary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_role_permissions_boundary(params = {}, options = {})
      request = build_request(:put_role_permissions_boundary, params)
      request.send_request(options)
    end

    # <p>Adds or updates an inline policy document that is embedded in the specified IAM
    #             role.</p>
    #          <p>When you embed an inline policy in a role, the inline policy is used as part of the
    #             role's access (permissions) policy. The role's trust policy is created at the same time
    #             as the role, using <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">
    #                <code>CreateRole</code>
    #             </a>.
    #             You can update a role's trust policy using <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAssumeRolePolicy.html">
    #                <code>UpdateAssumeRolePolicy</code>
    #             </a>. For more information about roles,
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">IAM
    #                 roles</a> in the <i>IAM User Guide</i>.</p>
    #          <p>A role can also have a managed policy attached to it. To attach a managed policy to a
    #             role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachRolePolicy.html">
    #                <code>AttachRolePolicy</code>
    #             </a>. To create a new managed policy, use
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html">
    #                <code>CreatePolicy</code>
    #             </a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>For information about the maximum number of inline policies that you can embed with a
    #             role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>Because policy documents can be large, you should use POST rather than GET when
    #                 calling <code>PutRolePolicy</code>. For general information about using the Query
    #                 API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query requests</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::PutRolePolicyRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role to associate the policy with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy document.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example To attach a permissions policy to an IAM role
    #   # The following command adds a permissions policy to the role named Test-Role.
    #   params = {
    #     role_name: "S3Access",
    #     policy_name: "S3AccessPolicy",
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"s3:*\",\"Resource\":\"*\"}}"
    #   }
    #   options = {}
    #   response = client.put_role_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    #   options = {}
    #   response = client.put_role_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_role_policy(params = {}, options = {})
      request = build_request(:put_role_policy, params)
      request.send_request(options)
    end

    # <p>Adds or updates the policy that is specified as the IAM user's permissions
    #             boundary. You can use an Amazon Web Services managed policy or a customer managed policy to set the
    #             boundary for a user. Use the boundary to control the maximum permissions that the user
    #             can have. Setting a permissions boundary is an advanced feature that can affect the
    #             permissions for the user.</p>
    #          <important>
    #             <p>Policies that are used as permissions boundaries do not provide permissions. You
    #                 must also attach a permissions policy to the user. To learn how the effective
    #                 permissions for a user are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html">IAM JSON policy
    #                     evaluation logic</a> in the IAM User Guide. </p>
    #          </important>
    # @param [Hash, Types::PutUserPermissionsBoundaryRequest] params
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user for which you want to set the
    #               permissions boundary.</p>
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the managed policy that is used to set the permissions boundary for the
    #               user.</p>
    #            <p>A permissions boundary policy defines the maximum permissions that identity-based
    #               policies can grant to an entity, but does not grant permissions. Permissions boundaries
    #               do not define the maximum permissions that a resource-based policy can grant to an
    #               entity. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries
    #                   for IAM entities</a> in the <i>IAM User Guide</i>.</p>
    #            <p>For more information about policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy types
    #               </a> in the <i>IAM User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     permissions_boundary: "arnType", # required
    #   }
    #   options = {}
    #   response = client.put_user_permissions_boundary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_user_permissions_boundary(params = {}, options = {})
      request = build_request(:put_user_permissions_boundary, params)
      request.send_request(options)
    end

    # <p>Adds or updates an inline policy document that is embedded in the specified IAM
    #             user.</p>
    #          <p>An IAM user can also have a managed policy attached to it. To attach a managed
    #             policy to a user, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AttachUserPolicy.html">
    #                <code>AttachUserPolicy</code>
    #             </a>. To create a new managed policy, use
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html">
    #                <code>CreatePolicy</code>
    #             </a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>For information about the maximum number of inline policies that you can embed in a
    #             user, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>Because policy documents can be large, you should use POST rather than GET when
    #                 calling <code>PutUserPolicy</code>. For general information about using the Query
    #                 API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query requests</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::PutUserPolicyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user to associate the policy with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_name
    #   <p>The name of the policy document.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example To attach a policy to an IAM user
    #   # The following command attaches a policy to the IAM user named Bob.
    #   params = {
    #     user_name: "Bob",
    #     policy_name: "AllAccessPolicy",
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"Action\":\"*\",\"Resource\":\"*\"}}"
    #   }
    #   options = {}
    #   response = client.put_user_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    #   options = {}
    #   response = client.put_user_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_user_policy(params = {}, options = {})
      request = build_request(:put_user_policy, params)
      request.send_request(options)
    end

    # <p>Removes the specified client ID (also known as audience) from the list of client IDs
    #             registered for the specified IAM OpenID Connect (OIDC) provider resource
    #             object.</p>
    #          <p>This operation is idempotent; it does not fail or return an error if you try to remove
    #             a client ID that does not exist.</p>
    # @param [Hash, Types::RemoveClientIDFromOpenIDConnectProviderRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the
    #               client ID from. You can get a list of OIDC provider ARNs by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :client_id
    #   <p>The client ID (also known as audience) to remove from the IAM OIDC provider
    #               resource. For more information about client IDs, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #     client_id: "clientIDType", # required
    #   }
    #   options = {}
    #   response = client.remove_client_id_from_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_client_id_from_open_id_connect_provider(params = {}, options = {})
      request = build_request(:remove_client_id_from_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Removes the specified IAM role from the specified Amazon EC2 instance profile.</p>
    #          <important>
    #             <p>Make sure that you do not have any Amazon EC2 instances running with the role you are
    #                 about to remove from the instance profile. Removing a role from an instance profile
    #                 that is associated with a running instance might break any applications running on
    #                 the instance.</p>
    #          </important>
    #          <p> For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>IAM User Guide</i>. For more information about instance profiles,
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html">Using
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::RemoveRoleFromInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :role_name
    #   <p>The name of the role to remove.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To remove a role from an instance profile
    #   # The following command removes the role named Test-Role from the instance profile named ExampleInstanceProfile.
    #   params = {
    #     role_name: "Test-Role",
    #     instance_profile_name: "ExampleInstanceProfile"
    #   }
    #   options = {}
    #   response = client.remove_role_from_instance_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #     role_name: "roleNameType", # required
    #   }
    #   options = {}
    #   response = client.remove_role_from_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_role_from_instance_profile(params = {}, options = {})
      request = build_request(:remove_role_from_instance_profile, params)
      request.send_request(options)
    end

    # <p>Removes the specified user from the specified group.</p>
    # @param [Hash, Types::RemoveUserFromGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :user_name
    #   <p>The name of the user to remove.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example To remove a user from an IAM group
    #   # The following command removes the user named Bob from the IAM group named Admins.
    #   params = {
    #     user_name: "Bob",
    #     group_name: "Admins"
    #   }
    #   options = {}
    #   response = client.remove_user_from_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     user_name: "existingUserNameType", # required
    #   }
    #   options = {}
    #   response = client.remove_user_from_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_user_from_group(params = {}, options = {})
      request = build_request(:remove_user_from_group, params)
      request.send_request(options)
    end

    # <p>Resets the password for a service-specific credential. The new password is Amazon Web Services
    #             generated and cryptographically strong. It cannot be configured by the user. Resetting
    #             the password immediately invalidates the previous password associated with this
    #             user.</p>
    # @param [Hash, Types::ResetServiceSpecificCredentialRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If this
    #               value is not specified, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType",
    #     service_specific_credential_id: "serviceSpecificCredentialId", # required
    #   }
    #   options = {}
    #   response = client.reset_service_specific_credential(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_specific_credential: {
    #       create_date: Time.now, # required
    #       expiration_date: Time.now,
    #       service_name: "serviceName", # required
    #       service_user_name: "serviceUserName",
    #       service_password: "servicePassword",
    #       service_credential_alias: "serviceCredentialAlias",
    #       service_credential_secret: "serviceCredentialSecret",
    #       service_specific_credential_id: "serviceSpecificCredentialId", # required
    #       user_name: "userNameType", # required
    #       status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #     }
    #   }
    # @return [Types::ResetServiceSpecificCredentialResponse]
    def reset_service_specific_credential(params = {}, options = {})
      request = build_request(:reset_service_specific_credential, params)
      request.send_request(options)
    end

    # <p>Synchronizes the specified MFA device with its IAM resource object on the Amazon Web Services
    #             servers.</p>
    #          <p>For more information about creating and working with virtual MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a virtual MFA
    #                 device</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::ResyncMFADeviceRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose MFA device you want to resynchronize.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :serial_number
    #   <p>Serial number that uniquely identifies the MFA device.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :authentication_code1
    #   <p>An authentication code emitted by the device.</p>
    #            <p>The format for this parameter is a sequence of six digits.</p>
    # @option params [String] :authentication_code2
    #   <p>A subsequent authentication code emitted by the device.</p>
    #            <p>The format for this parameter is a sequence of six digits.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     serial_number: "serialNumberType", # required
    #     authentication_code1: "authenticationCodeType", # required
    #     authentication_code2: "authenticationCodeType", # required
    #   }
    #   options = {}
    #   response = client.resync_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def resync_mfa_device(params = {}, options = {})
      request = build_request(:resync_mfa_device, params)
      request.send_request(options)
    end

    # <p>Sets the specified version of the specified policy as the policy's default (operative)
    #             version.</p>
    #          <p>This operation affects all users, groups, and roles that the policy is attached to. To
    #             list the users, groups, and roles that the policy is attached to, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html">ListEntitiesForPolicy</a>.</p>
    #          <p>For information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::SetDefaultPolicyVersionRequest] params
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to
    #               set.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :version_id
    #   <p>The version of the policy to set as the default (operative) version.</p>
    #            <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     version_id: "policyVersionIdType", # required
    #   }
    #   options = {}
    #   response = client.set_default_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_default_policy_version(params = {}, options = {})
      request = build_request(:set_default_policy_version, params)
      request.send_request(options)
    end

    # <p>Sets the specified version of the global endpoint token as the token version used for
    #             the Amazon Web Services account.</p>
    #          <p>By default, Security Token Service (STS) is available as a global service, and all STS requests
    #             go to a single endpoint at <code>https://sts.amazonaws.com</code>. Amazon Web Services recommends
    #             using Regional STS endpoints to reduce latency, build in redundancy, and increase
    #             session token availability. For information about Regional endpoints for STS, see
    #                 <a href="https://docs.aws.amazon.com/general/latest/gr/sts.html">Security Token Service
    #                 endpoints and quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #          <p>If you make an STS call to the global endpoint, the resulting session tokens might
    #             be valid in some Regions but not others. It depends on the version that is set in this
    #             operation. Version 1 tokens are valid only in Amazon Web Services Regions that are
    #             available by default. These tokens do not work in manually enabled Regions, such as Asia
    #             Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2
    #             tokens are longer and might affect systems where you temporarily store tokens. For
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                 deactivating STS in an Amazon Web Services Region</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #          <p>To view the current session token version, see the
    #                 <code>GlobalEndpointTokenVersion</code> entry in the response of the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountSummary.html">GetAccountSummary</a> operation.</p>
    # @param [Hash, Types::SetSecurityTokenServicePreferencesRequest] params
    # @option params [String] :global_endpoint_token_version
    #   <p>The version of the global endpoint token. Version 1 tokens are valid only in Amazon Web Services Regions that are available by default. These tokens do not work in
    #               manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid
    #               in all Regions. However, version 2 tokens are longer and might affect systems where you
    #               temporarily store tokens.</p>
    #            <p>For information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                   deactivating STS in an Amazon Web Services Region</a> in the
    #                   <i>IAM User Guide</i>.</p>
    # @example To delete an access key for an IAM user
    #   # The following command sets the STS global endpoint token to version 2. Version 2 tokens are valid in all Regions.
    #   params = {
    #     global_endpoint_token_version: v2Token
    #   }
    #   options = {}
    #   response = client.set_security_token_service_preferences(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     global_endpoint_token_version: "v1Token" # One of: ["v1Token", "v2Token"], # required
    #   }
    #   options = {}
    #   response = client.set_security_token_service_preferences(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_security_token_service_preferences(params = {}, options = {})
      request = build_request(:set_security_token_service_preferences, params)
      request.send_request(options)
    end

    # <p>Simulate how a set of IAM policies and optionally a resource-based policy works with
    #             a list of API operations and Amazon Web Services resources to determine the policies' effective
    #             permissions. The policies are provided as strings.</p>
    #          <p>The simulation does not perform the API operations; it only checks the authorization
    #             to determine if the simulated policies allow or deny the operations. You can simulate
    #             resources that don't exist in your account.</p>
    #          <p>If you want to simulate existing policies that are attached to an IAM user, group,
    #             or role, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html">SimulatePrincipalPolicy</a> instead.</p>
    #          <p>Context keys are variables that are maintained by Amazon Web Services and its services and which
    #             provide details about the context of an API query request. You can use the
    #                 <code>Condition</code> element of an IAM policy to evaluate context keys. To get
    #             the list of context keys that the policies require for correct simulation, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html">GetContextKeysForCustomPolicy</a>.</p>
    #          <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code>
    #             parameters to paginate the results.</p>
    #          <note>
    #             <p>The IAM policy simulator evaluates statements in the identity-based policy and
    #                 the inputs that you provide during simulation. The policy simulator results can
    #                 differ from your live Amazon Web Services environment. We recommend that you check your policies
    #                 against your live Amazon Web Services environment after testing using the policy simulator to
    #                 confirm that you have the desired results. For more information about using the
    #                 policy simulator, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html">Testing IAM
    #                     policies with the IAM policy simulator </a>in the
    #                     <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::SimulateCustomPolicyRequest] params
    # @option params [Array<String>] :policy_input_list
    #   <p>A list of policy documents to include in the simulation. Each document is specified as
    #               a string containing the complete, valid JSON text of an IAM policy. Do not include any
    #               resource-based policies in this parameter. Any resource-based policy must be submitted
    #               with the <code>ResourcePolicy</code> parameter. The policies cannot be "scope-down"
    #               policies, such as you could include in a call to <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html">GetFederationToken</a> or one of
    #               the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html">AssumeRole</a> API operations. In other words, do not use policies designed to
    #               restrict what a user can do while using the temporary credentials.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :permissions_boundary_policy_input_list
    #   <p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
    #               maximum permissions that an IAM entity can have. You can input only one permissions
    #               boundary when you pass a policy to this operation. For more information about
    #               permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #                   entities</a> in the <i>IAM User Guide</i>. The policy input is
    #               specified as a string that contains the complete, valid JSON text of a permissions
    #               boundary policy.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :action_names
    #   <p>A list of names of API operations to evaluate in the simulation. Each operation is
    #               evaluated against each resource. Each operation must include the service identifier,
    #               such as <code>iam:CreateUser</code>. This operation does not support using wildcards (*)
    #               in an action name.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
    #               not provided, then the value defaults to <code>*</code> (all resources). Each API in the
    #                   <code>ActionNames</code> parameter is evaluated for each resource in this list. The
    #               simulation determines the access result (allowed or denied) of each combination and
    #               reports it in the response. You can simulate resources that don't exist in your
    #               account.</p>
    #            <p>The simulation does not automatically retrieve policies for the specified resources.
    #               If you want to include a resource policy in the simulation, then you must include the
    #               policy as a string in the <code>ResourcePolicy</code> parameter.</p>
    #            <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the
    #               resources included in the simulation or you receive an invalid input error.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    # @option params [String] :resource_policy
    #   <p>A resource-based policy to include in the simulation provided as a string. Each
    #               resource in the simulation is treated as if it had this policy attached. You can include
    #               only one resource-based policy in a simulation.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    # @option params [String] :resource_owner
    #   <p>An ARN representing the Amazon Web Services account ID that specifies the owner of any simulated
    #               resource that does not identify its owner in the resource ARN. Examples of resource ARNs
    #               include an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also
    #               used as the account owner of any <code>ResourcePolicy</code> included in the simulation.
    #               If the <code>ResourceOwner</code> parameter is not specified, then the owner of the
    #               resources and the resource policy defaults to the account of the identity provided in
    #                   <code>CallerArn</code>. This parameter is required only if you specify a
    #               resource-based policy and account that owns the resource is different from the account
    #               that owns the simulated calling user <code>CallerArn</code>.</p>
    #            <p>The ARN for an account uses the following syntax:
    #                       <code>arn:aws:iam::<i>AWS-account-ID</i>:root</code>. For example,
    #               to represent the account with the 112233445566 ID, use the following ARN:
    #                   <code>arn:aws:iam::112233445566-ID:root</code>. </p>
    # @option params [String] :caller_arn
    #   <p>The ARN of the IAM user that you want to use as the simulated caller of the API
    #               operations. <code>CallerArn</code> is required if you include a
    #                   <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has
    #               a value to use in evaluating the policy.</p>
    #            <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
    #               assumed role, federated user, or a service principal.</p>
    # @option params [Array<Types::ContextEntry>] :context_entries
    #   <p>A list of context keys and corresponding values for the simulation to use. Whenever a
    #               context key is evaluated in one of the simulated IAM permissions policies, the
    #               corresponding value is supplied.</p>
    # @option params [String] :resource_handling_option
    #   <p>Specifies the type of simulation to run. Different API operations that support
    #               resource-based policies require different combinations of resources. By specifying the
    #               type of simulation to run, you enable the policy simulator to enforce the presence of
    #               the required resources to ensure reliable simulation results. If your simulation does
    #               not match one of the following scenarios, then you can omit this parameter. The
    #               following list shows each of the supported scenario values and the resources that you
    #               must define to run the simulation.</p>
    #            <p>Each of the Amazon EC2 scenarios requires that you specify instance, image, and security
    #               group resources. If your scenario includes an EBS volume, then you must specify that
    #               volume as a resource. If the Amazon EC2 scenario includes VPC, then you must supply the
    #               network interface resource. If it includes an IP subnet, then you must specify the
    #               subnet resource. For more information on the Amazon EC2 scenario options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported platforms</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, volume</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet, volume</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_input_list: ["policyDocumentType"], # required
    #     permissions_boundary_policy_input_list: ["policyDocumentType"],
    #     action_names: ["ActionNameType"], # required
    #     resource_arns: ["ResourceNameType"],
    #     resource_policy: "policyDocumentType",
    #     resource_owner: "ResourceNameType",
    #     caller_arn: "ResourceNameType",
    #     context_entries: [
    #       {
    #         context_key_name: "ContextKeyNameType",
    #         context_key_values: ["ContextKeyValueType"],
    #         context_key_type: "string" # One of: ["string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date", "dateList"]
    #       }
    #     ],
    #     resource_handling_option: "ResourceHandlingOptionType",
    #     max_items: 1,
    #     marker: "markerType"
    #   }
    #   options = {}
    #   response = client.simulate_custom_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_results: [
    #       {
    #         eval_action_name: "ActionNameType", # required
    #         eval_resource_name: "ResourceNameType",
    #         eval_decision: "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"], # required
    #         matched_statements: [
    #           {
    #             source_policy_id: "PolicyIdentifierType",
    #             source_policy_type: "user" # One of: ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"],
    #             start_position: {
    #               line: 1,
    #               column: 1
    #             },
    #             end_position: {
    #               line: 1,
    #               column: 1
    #             }
    #           }
    #         ],
    #         missing_context_values: ["ContextKeyNameType"],
    #         organizations_decision_detail: {
    #           allowed_by_organizations: false
    #         },
    #         permissions_boundary_decision_detail: {
    #           allowed_by_permissions_boundary: false
    #         },
    #         eval_decision_details: {
    #           "EvalDecisionSourceType" => "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"]
    #         },
    #         resource_specific_results: [
    #           {
    #             eval_resource_name: "ResourceNameType", # required
    #             eval_resource_decision: "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"], # required
    #             matched_statements: [
    #               {
    #                 source_policy_id: "PolicyIdentifierType",
    #                 source_policy_type: "user" # One of: ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"],
    #                 start_position: {
    #                   line: 1,
    #                   column: 1
    #                 },
    #                 end_position: {
    #                   line: 1,
    #                   column: 1
    #                 }
    #               }
    #             ],
    #             missing_context_values: ["ContextKeyNameType"],
    #             eval_decision_details: {
    #               "EvalDecisionSourceType" => "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"]
    #             },
    #             permissions_boundary_decision_detail: {
    #               allowed_by_permissions_boundary: false
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::SimulateCustomPolicyOutput]
    def simulate_custom_policy(params = {}, options = {})
      request = build_request(:simulate_custom_policy, params)
      request.send_request(options)
    end

    # <p>Simulate how a set of IAM policies attached to an IAM entity works with a list of
    #             API operations and Amazon Web Services resources to determine the policies' effective permissions. The
    #             entity can be an IAM user, group, or role. If you specify a user, then the simulation
    #             also includes all of the policies that are attached to groups that the user belongs to.
    #             You can simulate resources that don't exist in your account.</p>
    #          <p>You can optionally include a list of one or more additional policies specified as
    #             strings to include in the simulation. If you want to simulate only policies specified as
    #             strings, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a> instead.</p>
    #          <p>You can also optionally include one resource-based policy to be evaluated with each of
    #             the resources included in the simulation for IAM users only.</p>
    #          <p>The simulation does not perform the API operations; it only checks the authorization
    #             to determine if the simulated policies allow or deny the operations.</p>
    #          <p>
    #             <b>Note:</b> This operation discloses information about the
    #             permissions granted to other users. If you do not want users to see other user's
    #             permissions, then consider allowing them to use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html">SimulateCustomPolicy</a> instead.</p>
    #          <p>Context keys are variables maintained by Amazon Web Services and its services that provide details
    #             about the context of an API query request. You can use the <code>Condition</code>
    #             element of an IAM policy to evaluate context keys. To get the list of context keys
    #             that the policies require for correct simulation, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html">GetContextKeysForPrincipalPolicy</a>.</p>
    #          <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code>
    #             parameters to paginate the results.</p>
    #          <note>
    #             <p>The IAM policy simulator evaluates statements in the identity-based policy and
    #                 the inputs that you provide during simulation. The policy simulator results can
    #                 differ from your live Amazon Web Services environment. We recommend that you check your policies
    #                 against your live Amazon Web Services environment after testing using the policy simulator to
    #                 confirm that you have the desired results. For more information about using the
    #                 policy simulator, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html">Testing IAM
    #                     policies with the IAM policy simulator </a>in the
    #                     <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::SimulatePrincipalPolicyRequest] params
    # @option params [String] :policy_source_arn
    #   <p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to
    #               include in the simulation. If you specify a user, group, or role, the simulation
    #               includes all policies that are associated with that entity. If you specify a user, the
    #               simulation also includes all policies that are attached to any groups the user belongs
    #               to.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<String>] :policy_input_list
    #   <p>An optional list of additional policy documents to include in the simulation. Each
    #               document is specified as a string containing the complete, valid JSON text of an IAM
    #               policy.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :permissions_boundary_policy_input_list
    #   <p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
    #               maximum permissions that the entity can have. You can input only one permissions
    #               boundary when you pass a policy to this operation. An IAM entity can only have one
    #               permissions boundary in effect at a time. For example, if a permissions boundary is
    #               attached to an entity and you pass in a different permissions boundary policy using this
    #               parameter, then the new permissions boundary policy is used for the simulation. For more
    #               information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #                   entities</a> in the <i>IAM User Guide</i>. The policy input is
    #               specified as a string containing the complete, valid JSON text of a permissions boundary
    #               policy.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :action_names
    #   <p>A list of names of API operations to evaluate in the simulation. Each operation is
    #               evaluated for each resource. Each operation must include the service identifier, such as
    #                   <code>iam:CreateUser</code>.</p>
    # @option params [Array<String>] :resource_arns
    #   <p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
    #               not provided, then the value defaults to <code>*</code> (all resources). Each API in the
    #                   <code>ActionNames</code> parameter is evaluated for each resource in this list. The
    #               simulation determines the access result (allowed or denied) of each combination and
    #               reports it in the response. You can simulate resources that don't exist in your
    #               account.</p>
    #            <p>The simulation does not automatically retrieve policies for the specified resources.
    #               If you want to include a resource policy in the simulation, then you must include the
    #               policy as a string in the <code>ResourcePolicy</code> parameter.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    # @option params [String] :resource_policy
    #   <p>A resource-based policy to include in the simulation provided as a string. Each
    #               resource in the simulation is treated as if it had this policy attached. You can include
    #               only one resource-based policy in a simulation.</p>
    #            <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Simulation of resource-based policies isn't supported for IAM roles.</p>
    #            </note>
    # @option params [String] :resource_owner
    #   <p>An Amazon Web Services account ID that specifies the owner of any simulated resource that does not
    #               identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket
    #               or object. If <code>ResourceOwner</code> is specified, it is also used as the account
    #               owner of any <code>ResourcePolicy</code> included in the simulation. If the
    #                   <code>ResourceOwner</code> parameter is not specified, then the owner of the
    #               resources and the resource policy defaults to the account of the identity provided in
    #                   <code>CallerArn</code>. This parameter is required only if you specify a
    #               resource-based policy and account that owns the resource is different from the account
    #               that owns the simulated calling user <code>CallerArn</code>.</p>
    # @option params [String] :caller_arn
    #   <p>The ARN of the IAM user that you want to specify as the simulated caller of the API
    #               operations. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of
    #               the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If
    #               you include both a <code>PolicySourceArn</code> (for example,
    #                   <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for
    #               example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you
    #               simulate calling the API operations as Bob, as if Bob had David's policies.</p>
    #            <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
    #               assumed role, federated user, or a service principal.</p>
    #            <p>
    #               <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and
    #               the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so
    #               that the resource-based policy's <code>Principal</code> element has a value to use in
    #               evaluating the policy.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<Types::ContextEntry>] :context_entries
    #   <p>A list of context keys and corresponding values for the simulation to use. Whenever a
    #               context key is evaluated in one of the simulated IAM permissions policies, the
    #               corresponding value is supplied.</p>
    # @option params [String] :resource_handling_option
    #   <p>Specifies the type of simulation to run. Different API operations that support
    #               resource-based policies require different combinations of resources. By specifying the
    #               type of simulation to run, you enable the policy simulator to enforce the presence of
    #               the required resources to ensure reliable simulation results. If your simulation does
    #               not match one of the following scenarios, then you can omit this parameter. The
    #               following list shows each of the supported scenario values and the resources that you
    #               must define to run the simulation.</p>
    #            <p>Each of the Amazon EC2 scenarios requires that you specify instance, image, and security
    #               group resources. If your scenario includes an EBS volume, then you must specify that
    #               volume as a resource. If the Amazon EC2 scenario includes VPC, then you must supply the
    #               network interface resource. If it includes an IP subnet, then you must specify the
    #               subnet resource. For more information on the Amazon EC2 scenario options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported platforms</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-InstanceStore-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, volume</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>EC2-VPC-EBS-Subnet</b>
    #                  </p>
    #                  <p>instance, image, security group, network interface, subnet, volume</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the 
    #       maximum number of items you want in the response. If additional items exist beyond the maximum 
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> 
    #       contains a value to include in the subsequent call that tells the service where to continue 
    #       from.</p>
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after 
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call 
    #       should start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_source_arn: "arnType", # required
    #     policy_input_list: ["policyDocumentType"],
    #     permissions_boundary_policy_input_list: ["policyDocumentType"],
    #     action_names: ["ActionNameType"], # required
    #     resource_arns: ["ResourceNameType"],
    #     resource_policy: "policyDocumentType",
    #     resource_owner: "ResourceNameType",
    #     caller_arn: "ResourceNameType",
    #     context_entries: [
    #       {
    #         context_key_name: "ContextKeyNameType",
    #         context_key_values: ["ContextKeyValueType"],
    #         context_key_type: "string" # One of: ["string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date", "dateList"]
    #       }
    #     ],
    #     resource_handling_option: "ResourceHandlingOptionType",
    #     max_items: 1,
    #     marker: "markerType"
    #   }
    #   options = {}
    #   response = client.simulate_principal_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_results: [
    #       {
    #         eval_action_name: "ActionNameType", # required
    #         eval_resource_name: "ResourceNameType",
    #         eval_decision: "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"], # required
    #         matched_statements: [
    #           {
    #             source_policy_id: "PolicyIdentifierType",
    #             source_policy_type: "user" # One of: ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"],
    #             start_position: {
    #               line: 1,
    #               column: 1
    #             },
    #             end_position: {
    #               line: 1,
    #               column: 1
    #             }
    #           }
    #         ],
    #         missing_context_values: ["ContextKeyNameType"],
    #         organizations_decision_detail: {
    #           allowed_by_organizations: false
    #         },
    #         permissions_boundary_decision_detail: {
    #           allowed_by_permissions_boundary: false
    #         },
    #         eval_decision_details: {
    #           "EvalDecisionSourceType" => "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"]
    #         },
    #         resource_specific_results: [
    #           {
    #             eval_resource_name: "ResourceNameType", # required
    #             eval_resource_decision: "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"], # required
    #             matched_statements: [
    #               {
    #                 source_policy_id: "PolicyIdentifierType",
    #                 source_policy_type: "user" # One of: ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"],
    #                 start_position: {
    #                   line: 1,
    #                   column: 1
    #                 },
    #                 end_position: {
    #                   line: 1,
    #                   column: 1
    #                 }
    #               }
    #             ],
    #             missing_context_values: ["ContextKeyNameType"],
    #             eval_decision_details: {
    #               "EvalDecisionSourceType" => "allowed" # One of: ["allowed", "explicitDeny", "implicitDeny"]
    #             },
    #             permissions_boundary_decision_detail: {
    #               allowed_by_permissions_boundary: false
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     is_truncated: false,
    #     marker: "responseMarkerType"
    #   }
    # @return [Types::SimulatePrincipalPolicyOutput]
    def simulate_principal_policy(params = {}, options = {})
      request = build_request(:simulate_principal_policy, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an IAM instance profile. If a tag with the same key name
    #       already exists, then that tag is overwritten with the new value.</p>
    #          <p>Each tag consists of a key name and an associated value. By assigning tags to your resources, you can do the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM instance
    #           profile that has a specified tag attached. For examples of policies that show how to use
    #           tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::TagInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the IAM instance profile to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM instance profile.
    #         Each tag consists of a key name and an associated value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_instance_profile(params = {}, options = {})
      request = build_request(:tag_instance_profile, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an IAM virtual multi-factor authentication (MFA) device. If
    #       a tag with the same key name already exists, then that tag is overwritten with the new
    #       value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM virtual
    #           MFA device that has a specified tag attached. For examples of policies that show how to
    #           use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::TagMFADeviceRequest] params
    # @option params [String] :serial_number
    #   <p>The unique identifier for the IAM virtual MFA device to which you want to add tags.
    #         For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM virtual MFA device.
    #         Each tag consists of a key name and an associated value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serial_number: "serialNumberType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_mfa_device(params = {}, options = {})
      request = build_request(:tag_mfa_device, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider. For
    #       more information about these providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity federation</a>. If
    #       a tag with the same key name already exists, then that tag is overwritten with the new
    #       value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM identity-based
    #           and resource-based policies. You can use tags to restrict access to only an OIDC provider
    #           that has a specified tag attached. For examples of policies that show how to use tags to
    #           control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #           <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::TagOpenIDConnectProviderRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The ARN of the OIDC identity provider in IAM to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the OIDC identity provider in IAM.
    #         Each tag consists of a key name and an associated value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_open_id_connect_provider(params = {}, options = {})
      request = build_request(:tag_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an IAM customer managed policy. If a tag with the same key
    #       name already exists, then that tag is overwritten with the new value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM customer
    #           managed policy that has a specified tag attached. For examples of policies that show how
    #           to use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::TagPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The ARN of the IAM customer managed policy to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM customer managed policy.
    #         Each tag consists of a key name and an associated value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_policy(params = {}, options = {})
      request = build_request(:tag_policy, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an IAM role. The role can be a regular role or a
    #       service-linked role. If a tag with the same key name already exists, then that tag is
    #       overwritten with the new value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM role
    #           that has a specified tag attached. You can also restrict access to only those resources
    #           that have a certain tag attached. For examples of policies that show how to use tags to
    #           control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #           <i>IAM User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Cost allocation</b> - Use tags to help track which
    #           individuals and teams are using which Amazon Web Services resources.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM identities</a> in the
    #         <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::TagRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the IAM role to which you want to add tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM role. Each tag consists of a key name and an associated value.</p>
    # @example To add a tag key and value to an IAM role
    #   # The following example shows how to add tags to an existing role.
    #   params = {
    #     role_name: "taggedrole",
    #     tags: [
    #       {
    #         key: "Dept",
    #         value: "Accounting"
    #       },
    #       {
    #         key: "CostCenter",
    #         value: "12345"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_role(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_role(params = {}, options = {})
      request = build_request(:tag_role, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to a Security Assertion Markup Language (SAML) identity provider.
    #       For more information about these providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based federation </a>.
    #       If a tag with the same key name already exists, then that tag is overwritten with the new
    #       value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only a SAML identity
    #           provider that has a specified tag attached. For examples of policies that show how to use
    #           tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::TagSAMLProviderRequest] params
    # @option params [String] :saml_provider_arn
    #   <p>The ARN of the SAML identity provider in IAM to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the SAML identity provider in IAM.
    #         Each tag consists of a key name and an associated value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_provider_arn: "arnType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_saml_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_saml_provider(params = {}, options = {})
      request = build_request(:tag_saml_provider, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an IAM server certificate. If a tag with the same key name
    #       already exists, then that tag is overwritten with the new value.</p>
    #          <note>
    #             <p>For certificates in a Region supported by Certificate Manager (ACM), we
    #         recommend that you don't use IAM server certificates. Instead, use ACM to provision,
    #         manage, and deploy your server certificates. For more information about IAM server
    #         certificates, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with server
    #           certificates</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only a server
    #           certificate that has a specified tag attached. For examples of policies that show how to
    #           use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Cost allocation</b> - Use tags to help track which
    #           individuals and teams are using which Amazon Web Services resources.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::TagServerCertificateRequest] params
    # @option params [String] :server_certificate_name
    #   <p>The name of the IAM server certificate to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM server certificate.
    #         Each tag consists of a key name and an associated value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_certificate_name: "serverCertificateNameType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_server_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_server_certificate(params = {}, options = {})
      request = build_request(:tag_server_certificate, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to an IAM user. If a tag with the same key name already exists,
    #       then that tag is overwritten with the new value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM identity-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM
    #           requesting user that has a specified tag attached. You can also restrict access to only
    #           those resources that have a certain tag attached. For examples of policies that show how
    #           to use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Cost allocation</b> - Use tags to help track which
    #           individuals and teams are using which Amazon Web Services resources.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM identities</a> in the
    #         <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::TagUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM user. Each tag consists of a key name and an associated value.</p>
    # @example To add a tag key and value to an IAM user
    #   # The following example shows how to add tags to an existing user.
    #   params = {
    #     user_name: "anika",
    #     tags: [
    #       {
    #         key: "Dept",
    #         value: "Accounting"
    #       },
    #       {
    #         key: "CostCenter",
    #         value: "12345"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     tags: [ # required
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_user(params = {}, options = {})
      request = build_request(:tag_user, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the IAM instance profile. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagInstanceProfileRequest] params
    # @option params [String] :instance_profile_name
    #   <p>The name of the IAM instance profile from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified instance profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_profile_name: "instanceProfileNameType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_instance_profile(params = {}, options = {})
      request = build_request(:untag_instance_profile, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the IAM virtual multi-factor authentication (MFA)
    #       device. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagMFADeviceRequest] params
    # @option params [String] :serial_number
    #   <p>The unique identifier for the IAM virtual MFA device from which you want to remove
    #         tags. For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified instance profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     serial_number: "serialNumberType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_mfa_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_mfa_device(params = {}, options = {})
      request = build_request(:untag_mfa_device, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified OpenID Connect (OIDC)-compatible identity
    #       provider in IAM. For more information about OIDC providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity federation</a>.
    #       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagOpenIDConnectProviderRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The ARN of the OIDC provider in IAM from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified OIDC provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_open_id_connect_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_open_id_connect_provider(params = {}, options = {})
      request = build_request(:untag_open_id_connect_provider, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the customer managed policy. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagPolicyRequest] params
    # @option params [String] :policy_arn
    #   <p>The ARN of the IAM customer managed policy from which you want to remove
    #         tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "arnType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_policy(params = {}, options = {})
      request = build_request(:untag_policy, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the role. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the IAM role from which you want to remove tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified role.</p>
    # @example To remove a tag from an IAM role
    #   # The following example shows how to remove a tag with the key 'Dept' from a role named 'taggedrole'.
    #   params = {
    #     role_name: "taggedrole",
    #     tag_keys: [
    #       "Dept"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_role(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_role(params = {}, options = {})
      request = build_request(:untag_role, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified Security Assertion Markup Language (SAML)
    #       identity provider in IAM. For more information about these providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity
    #         federation</a>. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagSAMLProviderRequest] params
    # @option params [String] :saml_provider_arn
    #   <p>The ARN of the SAML identity provider in IAM from which you want to remove
    #         tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified SAML identity provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_provider_arn: "arnType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_saml_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_saml_provider(params = {}, options = {})
      request = build_request(:untag_saml_provider, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the IAM server certificate.
    #       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>For certificates in a Region supported by Certificate Manager (ACM), we
    #         recommend that you don't use IAM server certificates. Instead, use ACM to provision,
    #         manage, and deploy your server certificates. For more information about IAM server
    #         certificates, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with server
    #           certificates</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UntagServerCertificateRequest] params
    # @option params [String] :server_certificate_name
    #   <p>The name of the IAM server certificate from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified IAM server certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_certificate_name: "serverCertificateNameType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_server_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_server_certificate(params = {}, options = {})
      request = build_request(:untag_server_certificate, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the user. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UntagUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified user.</p>
    # @example To remove a tag from an IAM user
    #   # The following example shows how to remove tags that are attached to a user named 'anika'.
    #   params = {
    #     user_name: "anika",
    #     tag_keys: [
    #       "Dept"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     tag_keys: ["tagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_user(params = {}, options = {})
      request = build_request(:untag_user, params)
      request.send_request(options)
    end

    # <p>Changes the status of the specified access key from Active to Inactive, or vice versa.
    #             This operation can be used to disable a user's key as part of a key rotation
    #             workflow.</p>
    #          <p>If the <code>UserName</code> is not specified, the user name is determined implicitly
    #             based on the Amazon Web Services access key ID used to sign the request. If a temporary access key is
    #             used, then <code>UserName</code> is required. If a long-term key is assigned to the
    #             user, then <code>UserName</code> is not required. This operation works for access keys
    #             under the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root user
    #             credentials even if the Amazon Web Services account has no associated users.</p>
    #          <p>For information about rotating keys, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html">Managing keys and certificates</a>
    #             in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UpdateAccessKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose key you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :access_key_id
    #   <p>The access key ID of the secret access key you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @option params [String] :status
    #   <p> The status you want to assign to the secret access key. <code>Active</code> means
    #               that the key can be used for programmatic calls to Amazon Web Services, while <code>Inactive</code>
    #               means that the key cannot be used.</p>
    # @example To activate or deactivate an access key for an IAM user
    #   # The following command deactivates the specified access key (access key ID and secret access key) for the IAM user named Bob.
    #   params = {
    #     user_name: "Bob",
    #     status: Inactive,
    #     access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #   }
    #   options = {}
    #   response = client.update_access_key(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     access_key_id: "accessKeyIdType", # required
    #     status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #   }
    #   options = {}
    #   response = client.update_access_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_access_key(params = {}, options = {})
      request = build_request(:update_access_key, params)
      request.send_request(options)
    end

    # <p>Updates the password policy settings for the Amazon Web Services account.</p>
    #          <note>
    #             <p>This operation does not support partial updates. No parameters are required, but
    #                 if you do not specify a parameter, that parameter's value reverts to its default
    #                 value. See the <b>Request Parameters</b> section for each
    #                 parameter's default value. Also note that some parameters do not allow the default
    #                 parameter to be explicitly set. Instead, to invoke the default value, do not include
    #                 that parameter when you invoke the operation.</p>
    #          </note>
    #          <p> For more information about using a password policy, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM password
    #                 policy</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UpdateAccountPasswordPolicyRequest] params
    # @option params [Integer] :minimum_password_length
    #   <p>The minimum number of characters allowed in an IAM user password.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>6</code>.</p>
    # @option params [Boolean] :require_symbols
    #   <p>Specifies whether IAM user passwords must contain at least one of the following
    #               non-alphanumeric characters:</p>
    #            <p>! @ # $ % ^ & * ( ) _ + - = [ ] { } | '</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               symbol character.</p>
    # @option params [Boolean] :require_numbers
    #   <p>Specifies whether IAM user passwords must contain at least one numeric character (0
    #               to 9).</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               numeric character.</p>
    # @option params [Boolean] :require_uppercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one uppercase character
    #               from the ISO basic Latin alphabet (A to Z).</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               uppercase character.</p>
    # @option params [Boolean] :require_lowercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one lowercase character
    #               from the ISO basic Latin alphabet (a to z).</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               lowercase character.</p>
    # @option params [Boolean] :allow_users_to_change_password
    #   <p> Allows all IAM users in your account to use the Amazon Web Services Management Console to change their own
    #               passwords. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html">Permitting
    #                   IAM users to change their own passwords</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that IAM users in the account do not
    #               automatically have permissions to change their own password.</p>
    # @option params [Integer] :max_password_age
    #   <p>The number of days that an IAM user password is valid.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>0</code>. The result is that IAM user passwords never expire.</p>
    # @option params [Integer] :password_reuse_prevention
    #   <p>Specifies the number of previous passwords that IAM users are prevented from
    #               reusing.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>0</code>. The result is that IAM users are not prevented from reusing
    #               previous passwords.</p>
    # @option params [Boolean] :hard_expiry
    #   <p> Prevents IAM users who are accessing the account via the Amazon Web Services Management Console from setting a
    #               new console password after their password has expired. The IAM user cannot access the
    #               console until an administrator resets the password.</p>
    #            <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that IAM users can change their passwords
    #               after they expire and continue to sign in as the user.</p>
    #            <note>
    #               <p> In the Amazon Web Services Management Console, the custom password policy option <b>Allow
    #                       users to change their own password</b> gives IAM users permissions to
    #                       <code>iam:ChangePassword</code> for only their user and to the
    #                       <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a
    #                   permissions policy to each user, rather the permissions are applied at the
    #                   account-level for all users by IAM. IAM users with
    #                       <code>iam:ChangePassword</code> permission and active access keys can reset
    #                   their own expired console password using the CLI or API.</p>
    #            </note>
    # @example To set or change the current account password policy
    #   # The following command sets the password policy to require a minimum length of eight characters and to require one or more numbers in the password:
    #   params = {
    #     minimum_password_length: 8,
    #     require_numbers: true
    #   }
    #   options = {}
    #   response = client.update_account_password_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     minimum_password_length: 1,
    #     require_symbols: false,
    #     require_numbers: false,
    #     require_uppercase_characters: false,
    #     require_lowercase_characters: false,
    #     allow_users_to_change_password: false,
    #     max_password_age: 1,
    #     password_reuse_prevention: 1,
    #     hard_expiry: false
    #   }
    #   options = {}
    #   response = client.update_account_password_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_account_password_policy(params = {}, options = {})
      request = build_request(:update_account_password_policy, params)
      request.send_request(options)
    end

    # <p>Updates the policy that grants an IAM entity permission to assume a role. This is
    #             typically referred to as the "role trust policy". For more information about roles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using roles to
    #                 delegate permissions and federate identities</a>.</p>
    # @param [Hash, Types::UpdateAssumeRolePolicyRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role to update with the new policy.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :policy_document
    #   <p>The policy that grants an entity permission to assume the role.</p>
    #            <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example To update the trust policy for an IAM role
    #   # The following command updates the role trust policy for the role named Test-Role:
    #   params = {
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"ec2.amazonaws.com\"]},\"Action\":[\"sts:AssumeRole\"]}]}",
    #     role_name: "S3AccessForEC2Instances"
    #   }
    #   options = {}
    #   response = client.update_assume_role_policy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   }
    #   options = {}
    #   response = client.update_assume_role_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_assume_role_policy(params = {}, options = {})
      request = build_request(:update_assume_role_policy, params)
      request.send_request(options)
    end

    # <p>Updates the name and/or the path of the specified IAM group.</p>
    #          <important>
    #             <p> You should understand the implications of changing a group's path or name. For
    #                 more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html">Renaming users and
    #                     groups</a> in the <i>IAM User Guide</i>.</p>
    #          </important>
    #          <note>
    #             <p>The person making the request (the principal), must have permission to change the
    #                 role group with the old name and the new name. For example, to change the group
    #                 named <code>Managers</code> to <code>MGRs</code>, the principal must have a policy
    #                 that allows them to update both groups. If the principal has permission to update
    #                 the <code>Managers</code> group, but not the <code>MGRs</code> group, then the
    #                 update fails. For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management</a>.
    #             </p>
    #          </note>
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :group_name
    #   <p>Name of the IAM group to update. If you're changing the name of the group, this is
    #               the original name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :new_path
    #   <p>New path for the IAM group. Only include this if changing the group's path.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :new_group_name
    #   <p>New name for the IAM group. Only include this if changing the group's name.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    # @example To rename an IAM group
    #   # The following command changes the name of the IAM group Test to Test-1.
    #   params = {
    #     group_name: "Test",
    #     new_group_name: "Test-1"
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "groupNameType", # required
    #     new_path: "pathType",
    #     new_group_name: "groupNameType"
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>Changes the password for the specified IAM user. You can use the CLI, the Amazon Web Services
    #             API, or the <b>Users</b> page in the IAM console to change
    #             the password for any IAM user. Use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ChangePassword.html">ChangePassword</a> to
    #             change your own password in the <b>My Security Credentials</b>
    #             page in the Amazon Web Services Management Console.</p>
    #          <p>For more information about modifying passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing passwords</a> in the
    #                 <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::UpdateLoginProfileRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user whose password you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :password
    #   <p>The new password for the specified IAM user.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #            <p>However, the format can be further restricted by the account administrator by setting
    #               a password policy on the Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAccountPasswordPolicy.html">UpdateAccountPasswordPolicy</a>.</p>
    # @option params [Boolean] :password_reset_required
    #   <p>Allows this new password to be used only once by requiring the specified IAM user to
    #               set a new password on next sign-in.</p>
    # @example To change the password for an IAM user
    #   # The following command creates or changes the password for the IAM user named Bob.
    #   params = {
    #     user_name: "Bob",
    #     password: "SomeKindOfPassword123!@#"
    #   }
    #   options = {}
    #   response = client.update_login_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     password: "passwordType",
    #     password_reset_required: false
    #   }
    #   options = {}
    #   response = client.update_login_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_login_profile(params = {}, options = {})
      request = build_request(:update_login_profile, params)
      request.send_request(options)
    end

    # <p>Replaces the existing list of server certificate thumbprints associated with an OpenID
    #             Connect (OIDC) provider resource object with a new list of thumbprints.</p>
    #          <p>The list that you pass with this operation completely replaces the existing list of
    #             thumbprints. (The lists are not merged.)</p>
    #          <p>Typically, you need to update a thumbprint only when the identity provider certificate
    #             changes, which occurs rarely. However, if the provider's certificate
    #                 <i>does</i> change, any attempt to assume an IAM role that specifies
    #             the OIDC provider as a principal fails until the certificate thumbprint is
    #             updated.</p>
    #          <note>
    #             <p>Amazon Web Services secures communication with OIDC identity providers (IdPs) using our library of
    #             trusted root certificate authorities (CAs) to verify the JSON Web Key Set (JWKS)
    #             endpoint's TLS certificate. If your OIDC IdP relies on a certificate that is not signed
    #             by one of these trusted CAs, only then we secure communication using the thumbprints set
    #             in the IdP's configuration.</p>
    #          </note>
    #          <note>
    #             <p>Trust for the OIDC provider is derived from the provider certificate and is
    #                 validated by the thumbprint. Therefore, it is best to limit access to the
    #                     <code>UpdateOpenIDConnectProviderThumbprint</code> operation to highly
    #                 privileged users.</p>
    #          </note>
    # @param [Hash, Types::UpdateOpenIDConnectProviderThumbprintRequest] params
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which
    #               you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html">ListOpenIDConnectProviders</a> operation.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<String>] :thumbprint_list
    #   <p>A list of certificate thumbprints that are associated with the specified IAM OpenID
    #               Connect provider. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html">CreateOpenIDConnectProvider</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_id_connect_provider_arn: "arnType", # required
    #     thumbprint_list: ["thumbprintType"], # required
    #   }
    #   options = {}
    #   response = client.update_open_id_connect_provider_thumbprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_open_id_connect_provider_thumbprint(params = {}, options = {})
      request = build_request(:update_open_id_connect_provider_thumbprint, params)
      request.send_request(options)
    end

    # <p>Updates the description or maximum session duration setting of a role.</p>
    # @param [Hash, Types::UpdateRoleRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role that you want to modify.</p>
    # @option params [String] :description
    #   <p>The new description that you want to apply to the specified role.</p>
    # @option params [Integer] :max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.
    #               If you do not specify a value for this setting, the default value of one hour is
    #               applied. This setting can have a value from 1 hour to 12 hours.</p>
    #            <p>Anyone who assumes the role from the CLI or API can use the
    #                   <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code>
    #               CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting
    #               determines the maximum duration that can be requested using the
    #                   <code>DurationSeconds</code> parameter. If users don't specify a value for the
    #                   <code>DurationSeconds</code> parameter, their security credentials are valid for one
    #               hour by default. This applies when you use the <code>AssumeRole*</code> API operations
    #               or the <code>assume-role*</code> CLI operations but does not apply when you use those
    #               operations to create a console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM
    #                   roles</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>IAM role credentials provided by Amazon EC2 instances assigned to the role are not
    #                   subject to the specified maximum session duration.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     description: "roleDescriptionType",
    #     max_session_duration: 1
    #   }
    #   options = {}
    #   response = client.update_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRoleResponse]
    def update_role(params = {}, options = {})
      request = build_request(:update_role, params)
      request.send_request(options)
    end

    # <p>Use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateRole.html">UpdateRole</a> instead.</p>
    #          <p>Modifies only the description of a role. This operation performs the same function as
    #             the <code>Description</code> parameter in the <code>UpdateRole</code> operation.</p>
    # @param [Hash, Types::UpdateRoleDescriptionRequest] params
    # @option params [String] :role_name
    #   <p>The name of the role that you want to modify.</p>
    # @option params [String] :description
    #   <p>The new description that you want to apply to the specified role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_name: "roleNameType", # required
    #     description: "roleDescriptionType", # required
    #   }
    #   options = {}
    #   response = client.update_role_description(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role: {
    #       path: "pathType", # required
    #       role_name: "roleNameType", # required
    #       role_id: "idType", # required
    #       arn: "arnType", # required
    #       create_date: Time.now, # required
    #       assume_role_policy_document: "policyDocumentType",
    #       description: "roleDescriptionType",
    #       max_session_duration: 1,
    #       permissions_boundary: {
    #         permissions_boundary_type: "PermissionsBoundaryPolicy" # One of: ["PermissionsBoundaryPolicy"],
    #         permissions_boundary_arn: "arnType"
    #       },
    #       tags: [
    #         {
    #           key: "tagKeyType", # required
    #           value: "tagValueType", # required
    #         }
    #       ],
    #       role_last_used: {
    #         last_used_date: Time.now,
    #         region: "stringType"
    #       }
    #     }
    #   }
    # @return [Types::UpdateRoleDescriptionResponse]
    def update_role_description(params = {}, options = {})
      request = build_request(:update_role_description, params)
      request.send_request(options)
    end

    # <p>Updates the metadata document, SAML encryption settings, and private keys for an
    #             existing SAML provider. To rotate private keys, add your new private key and then remove
    #             the old key in a separate request.</p>
    # @param [Hash, Types::UpdateSAMLProviderRequest] params
    # @option params [String] :saml_metadata_document
    #   <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    #               document includes the issuer's name, expiration information, and keys that can be used
    #               to validate the SAML authentication response (assertions) that are received from the
    #               IdP. You must generate the metadata document using the identity management software that
    #               is used as your IdP.</p>
    # @option params [String] :saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider to update.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [String] :assertion_encryption_mode
    #   <p>Specifies the encryption setting for the SAML provider.</p>
    # @option params [String] :add_private_key
    #   <p>Specifies the new private key from your external identity provider. The private key
    #               must be a .pem file that uses AES-GCM or AES-CBC encryption algorithm to decrypt SAML
    #               assertions.</p>
    # @option params [String] :remove_private_key
    #   <p>The Key ID of the private key to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     saml_metadata_document: "SAMLMetadataDocumentType",
    #     saml_provider_arn: "arnType", # required
    #     assertion_encryption_mode: "Required" # One of: ["Required", "Allowed"],
    #     add_private_key: "privateKeyType",
    #     remove_private_key: "privateKeyIdType"
    #   }
    #   options = {}
    #   response = client.update_saml_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     saml_provider_arn: "arnType"
    #   }
    # @return [Types::UpdateSAMLProviderResponse]
    def update_saml_provider(params = {}, options = {})
      request = build_request(:update_saml_provider, params)
      request.send_request(options)
    end

    # <p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public
    #             keys that are inactive cannot be used for authentication. This operation can be used to
    #             disable a user's SSH public key as part of a key rotation work flow.</p>
    #          <p>The SSH public key affected by this operation is used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    # @param [Hash, Types::UpdateSSHPublicKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @option params [String] :status
    #   <p>The status to assign to the SSH public key. <code>Active</code> means that the key can
    #               be used for authentication with an CodeCommit repository. <code>Inactive</code> means that
    #               the key cannot be used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     ssh_public_key_id: "publicKeyIdType", # required
    #     status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #   }
    #   options = {}
    #   response = client.update_ssh_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_ssh_public_key(params = {}, options = {})
      request = build_request(:update_ssh_public_key, params)
      request.send_request(options)
    end

    # <p>Updates the name and/or the path of the specified server certificate stored in
    #             IAM.</p>
    #          <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic also includes a list of Amazon Web Services services that can use the server certificates that
    #             you manage with IAM.</p>
    #          <important>
    #             <p>You should understand the implications of changing a server certificate's path or
    #                 name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts">Renaming a server certificate</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #          </important>
    #          <note>
    #             <p>The person making the request (the principal), must have permission to change the
    #                 server certificate with the old name and the new name. For example, to change the
    #                 certificate named <code>ProductionCert</code> to <code>ProdCert</code>, the
    #                 principal must have a policy that allows them to update both certificates. If the
    #                 principal has permission to update the <code>ProductionCert</code> group, but not
    #                 the <code>ProdCert</code> certificate, then the update fails. For more information
    #                 about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UpdateServerCertificateRequest] params
    # @option params [String] :server_certificate_name
    #   <p>The name of the server certificate that you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :new_path
    #   <p>The new path for the server certificate. Include this only if you are updating the
    #               server certificate's path.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :new_server_certificate_name
    #   <p>The new name for the server certificate. Include this only if you are updating the
    #               server certificate's name. The name of the certificate cannot contain any spaces.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_certificate_name: "serverCertificateNameType", # required
    #     new_path: "pathType",
    #     new_server_certificate_name: "serverCertificateNameType"
    #   }
    #   options = {}
    #   response = client.update_server_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_server_certificate(params = {}, options = {})
      request = build_request(:update_server_certificate, params)
      request.send_request(options)
    end

    # <p>Sets the status of a service-specific credential to <code>Active</code> or
    #                 <code>Inactive</code>. Service-specific credentials that are inactive cannot be used
    #             for authentication to the service. This operation can be used to disable a user's
    #             service-specific credential as part of a credential rotation work flow.</p>
    # @param [Hash, Types::UpdateServiceSpecificCredentialRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If you do
    #               not specify this value, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @option params [String] :status
    #   <p>The status to be assigned to the service-specific credential.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType",
    #     service_specific_credential_id: "serviceSpecificCredentialId", # required
    #     status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #   }
    #   options = {}
    #   response = client.update_service_specific_credential(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_service_specific_credential(params = {}, options = {})
      request = build_request(:update_service_specific_credential, params)
      request.send_request(options)
    end

    # <p>Changes the status of the specified user signing certificate from active to disabled,
    #             or vice versa. This operation can be used to disable an IAM user's signing
    #             certificate as part of a certificate rotation work flow.</p>
    #          <p>If the <code>UserName</code> field is not specified, the user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request. This operation
    #             works for access keys under the Amazon Web Services account. Consequently, you can use this operation
    #             to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated
    #             users.</p>
    # @param [Hash, Types::UpdateSigningCertificateRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user the signing certificate belongs to.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :certificate_id
    #   <p>The ID of the signing certificate you want to update.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can 
    #       consist of any upper or lowercased letter or digit.</p>
    # @option params [String] :status
    #   <p> The status you want to assign to the certificate. <code>Active</code> means that the
    #               certificate can be used for programmatic calls to Amazon Web Services <code>Inactive</code> means that
    #               the certificate cannot be used.</p>
    # @example To change the active status of a signing certificate for an IAM user
    #   # The following command changes the status of a signing certificate for a user named Bob to Inactive.
    #   params = {
    #     user_name: "Bob",
    #     certificate_id: "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
    #     status: Inactive
    #   }
    #   options = {}
    #   response = client.update_signing_certificate(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     certificate_id: "certificateIdType", # required
    #     status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #   }
    #   options = {}
    #   response = client.update_signing_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_signing_certificate(params = {}, options = {})
      request = build_request(:update_signing_certificate, params)
      request.send_request(options)
    end

    # <p>Updates the name and/or the path of the specified IAM user.</p>
    #          <important>
    #             <p> You should understand the implications of changing an IAM user's path or
    #                 name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming">Renaming an IAM
    #                     user</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html">Renaming an IAM
    #                     group</a> in the <i>IAM User Guide</i>.</p>
    #          </important>
    #          <note>
    #             <p> To change a user name, the requester must have appropriate permissions on both
    #                 the source object and the target object. For example, to change Bob to Robert, the
    #                 entity making the request must have permission on Bob and Robert, or must have
    #                 permission on all (*). For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and policies</a>. </p>
    #          </note>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :user_name
    #   <p>Name of the user to update. If you're changing the name of the user, this is the
    #               original user name.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :new_path
    #   <p>New path for the IAM user. Include this parameter only if you're changing the user's
    #               path.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    # @option params [String] :new_user_name
    #   <p>New name for the user. Include this parameter only if you're changing the user's
    #               name.</p>
    #            <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    # @example To change an IAM user's name
    #   # The following command changes the name of the IAM user Bob to Robert. It does not change the user's path.
    #   params = {
    #     user_name: "Bob",
    #     new_user_name: "Robert"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType", # required
    #     new_path: "pathType",
    #     new_user_name: "userNameType"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
      request.send_request(options)
    end

    # <p>Uploads an SSH public key and associates it with the specified IAM user.</p>
    #          <p>The SSH public key uploaded by this operation can be used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    # @param [Hash, Types::UploadSSHPublicKeyRequest] params
    # @option params [String] :user_name
    #   <p>The name of the IAM user to associate the SSH public key with.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :ssh_public_key_body
    #   <p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
    #               The minimum bit-length of the public key is 2048 bits. For example, you can generate a
    #               2048-bit key, and the resulting PEM file is 1679 bytes long.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "userNameType", # required
    #     ssh_public_key_body: "publicKeyMaterialType", # required
    #   }
    #   options = {}
    #   response = client.upload_ssh_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ssh_public_key: {
    #       user_name: "userNameType", # required
    #       ssh_public_key_id: "publicKeyIdType", # required
    #       fingerprint: "publicKeyFingerprintType", # required
    #       ssh_public_key_body: "publicKeyMaterialType", # required
    #       status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #       upload_date: Time.now
    #     }
    #   }
    # @return [Types::UploadSSHPublicKeyResponse]
    def upload_ssh_public_key(params = {}, options = {})
      request = build_request(:upload_ssh_public_key, params)
      request.send_request(options)
    end

    # <p>Uploads a server certificate entity for the Amazon Web Services account. The server certificate
    #             entity includes a public key certificate, a private key, and an optional certificate
    #             chain, which should all be PEM-encoded.</p>
    #          <p>We recommend that you use <a href="https://docs.aws.amazon.com/acm/">Certificate Manager</a> to
    #             provision, manage, and deploy your server certificates. With ACM you can request a
    #             certificate, deploy it to Amazon Web Services resources, and let ACM handle certificate renewals for
    #             you. Certificates provided by ACM are free. For more information about using ACM,
    #             see the <a href="https://docs.aws.amazon.com/acm/latest/userguide/">Certificate Manager User
    #                 Guide</a>.</p>
    #          <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic includes a list of Amazon Web Services services that can use the server certificates that you
    #             manage with IAM.</p>
    #          <p>For information about the number of server certificates you can upload, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>Because the body of the public key certificate, private key, and the certificate
    #                 chain can be large, you should use POST rather than GET when calling
    #                     <code>UploadServerCertificate</code>. For information about setting up
    #                 signatures and authorization through the API, see <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing Amazon Web Services API
    #                     requests</a> in the <i>Amazon Web Services General Reference</i>. For general
    #                 information about using the Query API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html">Calling the API by making HTTP query
    #                     requests</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UploadServerCertificateRequest] params
    # @option params [String] :path
    #   <p>The path for the server certificate. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. If it is not included, it defaults to a slash (/).
    #               This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting 
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including 
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #            <note>
    #               <p> If you are uploading a server certificate specifically for use with Amazon
    #                   CloudFront distributions, you must specify a path using the <code>path</code>
    #                   parameter. The path must begin with <code>/cloudfront</code> and must include a
    #                   trailing slash (for example, <code>/cloudfront/test/</code>).</p>
    #            </note>
    # @option params [String] :server_certificate_name
    #   <p>The name for the server certificate. Do not include the path in this value. The name
    #               of the certificate cannot contain any spaces.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :certificate_body
    #   <p>The contents of the public key certificate in PEM-encoded format.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [String] :private_key
    #   <p>The contents of the private key in PEM-encoded format.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [String] :certificate_chain
    #   <p>The contents of the certificate chain. This is typically a concatenation of the
    #               PEM-encoded public key certificates of the chain.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM server certificate resource.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request 
    #      fails and the resource is not created.</p>
    #            </note>
    # @example To upload a server certificate to your AWS account
    #   # The following upload-server-certificate command uploads a server certificate to your AWS account:
    #   params = {
    #     server_certificate_name: "ProdServerCert",
    #     path: "/company/servercerts/",
    #     certificate_body: "-----BEGIN CERTIFICATE-----<a very long certificate text string>-----END CERTIFICATE-----",
    #     private_key: "-----BEGIN DSA PRIVATE KEY-----<a very long private key string>-----END DSA PRIVATE KEY-----"
    #   }
    #   options = {}
    #   response = client.upload_server_certificate(params, options)
    #   response.to_h #=>
    #   {
    #     server_certificate_metadata: {
    #       server_certificate_name: "ProdServerCert",
    #       path: "/company/servercerts/",
    #       arn: "arn:aws:iam::123456789012:server-certificate/company/servercerts/ProdServerCert",
    #       upload_date: Time.parse("2010-05-08T01:02:03.004Z"),
    #       server_certificate_id: "ASCA1111111111EXAMPLE",
    #       expiration: Time.parse("2012-05-08T01:02:03.004Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     path: "pathType",
    #     server_certificate_name: "serverCertificateNameType", # required
    #     certificate_body: "certificateBodyType", # required
    #     private_key: "privateKeyType", # required
    #     certificate_chain: "certificateChainType",
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.upload_server_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_certificate_metadata: {
    #       path: "pathType", # required
    #       server_certificate_name: "serverCertificateNameType", # required
    #       server_certificate_id: "idType", # required
    #       arn: "arnType", # required
    #       upload_date: Time.now,
    #       expiration: Time.now
    #     },
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    # @return [Types::UploadServerCertificateResponse]
    def upload_server_certificate(params = {}, options = {})
      request = build_request(:upload_server_certificate, params)
      request.send_request(options)
    end

    # <p>Uploads an X.509 signing certificate and associates it with the specified IAM user.
    #             Some Amazon Web Services services require you to use certificates to validate requests that are signed
    #             with a corresponding private key. When you upload the certificate, its default status is
    #                 <code>Active</code>.</p>
    #          <p>For information about when you would use an X.509 signing certificate, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Managing
    #                 server certificates in IAM</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>If the <code>UserName</code> is not specified, the IAM user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request. This operation
    #             works for access keys under the Amazon Web Services account. Consequently, you can use this operation
    #             to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated
    #             users.</p>
    #          <note>
    #             <p>Because the body of an X.509 certificate can be large, you should use POST rather
    #                 than GET when calling <code>UploadSigningCertificate</code>. For information about
    #                 setting up signatures and authorization through the API, see <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing
    #                     Amazon Web Services API requests</a> in the <i>Amazon Web Services General Reference</i>. For
    #                 general information about using the Query API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query
    #                     requests</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UploadSigningCertificateRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user the signing certificate is for.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric 
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    # @option params [String] :certificate_body
    #   <p>The contents of the signing certificate.</p>
    #            <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> 
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII 
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set 
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and 
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    # @example To upload a signing certificate for an IAM user
    #   # The following command uploads a signing certificate for the IAM user named Bob.
    #   params = {
    #     user_name: "Bob",
    #     certificate_body: "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----"
    #   }
    #   options = {}
    #   response = client.upload_signing_certificate(params, options)
    #   response.to_h #=>
    #   {
    #     certificate: {
    #       certificate_id: "ID123456789012345EXAMPLE",
    #       user_name: "Bob",
    #       status: Active,
    #       certificate_body: "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----",
    #       upload_date: Time.parse("2015-06-06T21:40:08.121Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "existingUserNameType",
    #     certificate_body: "certificateBodyType", # required
    #   }
    #   options = {}
    #   response = client.upload_signing_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: { # required
    #       user_name: "userNameType", # required
    #       certificate_id: "certificateIdType", # required
    #       certificate_body: "certificateBodyType", # required
    #       status: "Active" # One of: ["Active", "Inactive", "Expired"], # required
    #       upload_date: Time.now
    #     }
    #   }
    # @return [Types::UploadSigningCertificateResponse]
    def upload_signing_certificate(params = {}, options = {})
      request = build_request(:upload_signing_certificate, params)
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
      context[:gem_name] = 'aws-sdk-iam'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        instance_profile_exists: Waiters::InstanceProfileExists,
        policy_exists: Waiters::PolicyExists,
        role_exists: Waiters::RoleExists,
        user_exists: Waiters::UserExists
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
    end
  end
end

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
require 'aws-sdk-sts/plugins/regional_endpoints'
require 'aws-sdk-core/aws_query'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:sts)

module Aws::STS
  # An API client for Aws::STS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSSecurityTokenServiceV20110615
    @identifier = :sts

    add_plugin(::Aws::STS::Plugins::Endpoint)
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
    add_plugin(Aws::STS::Plugins::RegionalEndpoints)

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::STS::EndpointProvider)
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
    #  Supported protocols: +:aws_query+ (defaults to +:aws_query+).
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
    # @option options [String] :sts_regional_endpoints (regional)
    #  Determines whether the SDK will use regional or global STS endpoints.
    #  The default value is 'regional'. To use global STS endpoints, set this option to 'legacy'.
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

    # <p>Returns a set of temporary security credentials that you can use to access Amazon Web Services
    #          resources. These temporary credentials consist of an access key ID, a secret access key,
    #          and a security token. Typically, you use <code>AssumeRole</code> within your account or for
    #          cross-account access. For a comparison of <code>AssumeRole</code> with other API operations
    #          that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html">Compare STS
    #             credentials</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>AssumeRole</code> can be used to
    #          make API calls to any Amazon Web Services service with the following exception: You cannot call the
    #          Amazon Web Services STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API
    #          operations.</p>
    #          <p>(Optional) You can pass inline or managed session policies to this operation. You can
    #          pass a single JSON policy document to use as an inline session policy. You can also specify
    #          up to 10 managed policy Amazon Resource Names (ARNs) to use as managed session policies.
    #          The plaintext that you use for both inline and managed session policies can't exceed 2,048
    #          characters. Passing policies to this operation returns new 
    #          temporary credentials. The resulting session's permissions are the intersection of the 
    #          role's identity-based policy and the session policies. You can use the role's temporary 
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #          the role. You cannot use session policies to grant more permissions than those allowed 
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>When you create a role, you create two policies: a role trust policy that specifies
    #             <i>who</i> can assume the role, and a permissions policy that specifies
    #             <i>what</i> can be done with the role. You specify the trusted principal
    #          that is allowed to assume the role in the role trust policy.</p>
    #          <p>To assume a role from a different account, your Amazon Web Services account must be trusted by the
    #          role. The trust relationship is defined in the role's trust policy when the role is
    #          created. That trust policy states which accounts are allowed to delegate that access to
    #          users in the account. </p>
    #          <p>A user who wants to access a role in a different account must also have permissions that
    #          are delegated from the account administrator. The administrator must attach a policy that
    #          allows the user to call <code>AssumeRole</code> for the ARN of the role in the other
    #          account.</p>
    #          <p>To allow a user to assume a role in the same account, you can do either of the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>Attach a policy to the user that allows the user to call <code>AssumeRole</code>
    #                (as long as the role's trust policy trusts the account).</p>
    #             </li>
    #             <li>
    #                <p>Add the user as a principal directly in the role's trust policy.</p>
    #             </li>
    #          </ul>
    #          <p>You can do either because the role’s trust policy acts as an IAM resource-based
    #          policy. When a resource-based policy grants access to a principal in the same account, no
    #          additional identity-based policy is required. For more information about trust policies and
    #          resource-based policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can pass tag key-value pairs to your session. These tags are called
    #          session tags. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>You can set the session tags as transitive. Transitive tags persist during role
    #          chaining. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #             with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Using MFA with AssumeRole</b>
    #          </p>
    #          <p>(Optional) You can include multi-factor authentication (MFA) information when you call
    #             <code>AssumeRole</code>. This is useful for cross-account scenarios to ensure that the
    #          user that assumes the role has been authenticated with an Amazon Web Services MFA device. In that
    #          scenario, the trust policy of the role being assumed includes a condition that tests for
    #          MFA authentication. If the caller does not include valid MFA information, the request to
    #          assume the role is denied. The condition in a trust policy that tests for MFA
    #          authentication might look like the following example.</p>
    #          <p>
    #             <code>"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}</code>
    #          </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html">Configuring MFA-Protected API Access</a>
    #          in the <i>IAM User Guide</i> guide.</p>
    #          <p>To use MFA with <code>AssumeRole</code>, you pass values for the
    #             <code>SerialNumber</code> and <code>TokenCode</code> parameters. The
    #             <code>SerialNumber</code> value identifies the user's hardware or virtual MFA device.
    #          The <code>TokenCode</code> is the time-based one-time password (TOTP) that the MFA device
    #          produces. </p>
    # @param [Hash, Types::AssumeRoleRequest] params
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to assume.</p>
    # @option params [String] :role_session_name
    #   <p>An identifier for the assumed role session.</p>
    #            <p>Use the role session name to uniquely identify a session when the same role is assumed
    #            by different principals or for different reasons. In cross-account scenarios, the role
    #            session name is visible to, and can be logged by the account that owns the role. The role
    #            session name is also used in the ARN of the assumed role principal. This means that
    #            subsequent cross-account API requests that use the temporary security credentials will
    #            expose the role session name to the external account in their CloudTrail logs.</p>
    #            <p>For security purposes, administrators can view this field in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html#cloudtrail-integration_signin-tempcreds">CloudTrail logs</a> to help identify who performed an action in Amazon Web Services. Your
    #            administrator might require that you specify your user name as the session name when you
    #            assume the role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#ck_rolesessionname">
    #                  <code>sts:RoleSessionName</code>
    #               </a>.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    # @option params [Array<Types::PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>For more information about role session permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               policies</a>.</p>
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the role session. The value specified can range from 900
    #            seconds (15 minutes) up to the maximum session duration set for the role. The maximum
    #            session duration setting can have a value from 1 hour to 12 hours. If you specify a value
    #            higher than this setting or the administrator setting (whichever is lower), the operation
    #            fails. For example, if you specify a session duration of 12 hours, but your administrator
    #            set the maximum session duration to 6 hours, your operation fails. </p>
    #            <p>Role chaining limits your Amazon Web Services CLI or Amazon Web Services API role session to a maximum of one hour.
    #            When you use the <code>AssumeRole</code> API operation to assume a role, you can specify
    #            the duration of your role session with the <code>DurationSeconds</code> parameter. You can
    #            specify a parameter value of up to 43200 seconds (12 hours), depending on the maximum
    #            session duration setting for your role. However, if you assume a role using role chaining
    #            and provide a <code>DurationSeconds</code> parameter value greater than one hour, the
    #            operation fails. To learn how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_update-role-settings.html#id_roles_update-session-duration">Update the maximum session duration for a role</a>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of session tags that you want to pass. Each session tag consists of a key name
    #            and an associated value. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Tagging Amazon Web Services STS
    #               Sessions</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. You can pass up to 50 session tags. The plaintext session
    #            tag keys can’t exceed 128 characters, and the values can’t exceed 256 characters. For these
    #            and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>You can pass a session tag with the same key as a tag that is already attached to the
    #            role. When you do, session tags override a role tag with the same key. </p>
    #            <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #            cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #            that the role has the <code>Department</code>=<code>Marketing</code> tag and you pass the
    #               <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #            and <code>department</code> are not saved as separate tags, and the session tag passed in
    #            the request takes precedence over the role tag.</p>
    #            <p>Additionally, if you used temporary credentials to perform this operation, the new
    #            session inherits any transitive session tags from the calling session. If you pass a
    #            session tag with the same key as an inherited tag, the operation fails. To view the
    #            inherited tags for a session, see the CloudTrail logs. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_ctlogs">Viewing Session Tags in CloudTrail</a> in the
    #            <i>IAM User Guide</i>.</p>
    # @option params [Array<String>] :transitive_tag_keys
    #   <p>A list of keys for session tags that you want to set as transitive. If you set a tag key
    #            as transitive, the corresponding key and value passes to subsequent sessions in a role
    #            chain. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #               with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. The transitive status of a session tag does not impact its
    #            packed binary size.</p>
    #            <p>If you choose not to specify a transitive tag key, then no tags are passed from this
    #            session to any subsequent sessions.</p>
    # @option params [String] :external_id
    #   <p>A unique identifier that might be required when you assume a role in another account. If
    #            the administrator of the account to which the role belongs provided you with an external
    #            ID, then provide that value in the <code>ExternalId</code> parameter. This value can be any
    #            string, such as a passphrase or account number. A cross-account role is usually set up to
    #            trust everyone in an account. Therefore, the administrator of the trusting account might
    #            send an external ID to the administrator of the trusted account. That way, only someone
    #            with the ID can assume the role, rather than everyone in the account. For more information
    #            about the external ID, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html">How to Use an External ID
    #               When Granting Access to Your Amazon Web Services Resources to a Third Party</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of 
    #       characters consisting of upper- and lower-case alphanumeric characters with no spaces. 
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    # @option params [String] :serial_number
    #   <p>The identification number of the MFA device that is associated with the user who is
    #            making the <code>AssumeRole</code> call. Specify this value if the trust policy of the role
    #            being assumed includes a condition that requires MFA authentication. The value is either
    #            the serial number for a hardware device (such as <code>GAHT12345678</code>) or an Amazon
    #            Resource Name (ARN) for a virtual device (such as
    #               <code>arn:aws:iam::123456789012:mfa/user</code>).</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    # @option params [String] :token_code
    #   <p>The value provided by the MFA device, if the trust policy of the role being assumed
    #            requires MFA. (In other words, if the policy includes a condition that tests for MFA). If
    #            the role being assumed requires MFA and if the <code>TokenCode</code> value is missing or
    #            expired, the <code>AssumeRole</code> call returns an "access denied" error.</p>
    #            <p>The format for this parameter, as described by its regex pattern, is a sequence of six
    #            numeric digits.</p>
    # @option params [String] :source_identity
    #   <p>The source identity specified by the principal that is calling the
    #               <code>AssumeRole</code> operation. The source identity value persists across <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html#iam-term-role-chaining">chained role</a> sessions.</p>
    #            <p>You can require users to specify a source identity when they assume a role. You do this
    #            by using the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-sourceidentity">
    #                  <code>sts:SourceIdentity</code>
    #               </a> condition key in a role trust policy. You
    #            can use source identity information in CloudTrail logs to determine who took actions with a
    #            role. You can use the <code>aws:SourceIdentity</code> condition key to further control
    #            access to Amazon Web Services resources based on the value of source identity. For more information about
    #            using source identity, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html">Monitor and control
    #               actions taken with assumed roles</a> in the
    #            <i>IAM User Guide</i>.</p>
    #            <p>The regex used to validate this parameter is a string of characters consisting of upper-
    #            and lower-case alphanumeric characters with no spaces. You can also include underscores or
    #            any of the following characters: +=,.@-. You cannot use a value that begins with the text
    #               <code>aws:</code>. This prefix is reserved for Amazon Web Services internal use.</p>
    # @option params [Array<Types::ProvidedContext>] :provided_contexts
    #   <p>A list of previously acquired trusted context assertions in the format of a JSON array.
    #            The trusted context assertion is signed and encrypted by Amazon Web Services STS.</p>
    #            <p>The following is an example of a <code>ProvidedContext</code> value that includes a
    #            single trusted context assertion and the ARN of the context provider from which the trusted
    #            context assertion was generated.</p>
    #            <p>
    #               <code>[{"ProviderArn":"arn:aws:iam::aws:contextProvider/IdentityCenter","ContextAssertion":"trusted-context-assertion"}]</code>
    #            </p>
    # @example To assume a role
    #   
    #   params = {
    #     role_arn: "arn:aws:iam::123456789012:role/demo",
    #     role_session_name: "testAssumeRoleSession",
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:ListAllMyBuckets\",\"Resource\":\"*\"}]}",
    #     tags: [
    #       {
    #         key: "Project",
    #         value: "Unicorn"
    #       },
    #       {
    #         key: "Team",
    #         value: "Automation"
    #       },
    #       {
    #         key: "Cost-Center",
    #         value: "12345"
    #       }
    #     ],
    #     transitive_tag_keys: [
    #       "Project",
    #       "Cost-Center"
    #     ],
    #     external_id: "123ABC"
    #   }
    #   options = {}
    #   response = client.assume_role(params, options)
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       session_token: "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==",
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse("2011-07-15T23:28:33.359Z")
    #     },
    #     assumed_role_user: {
    #       arn: "arn:aws:sts::123456789012:assumed-role/demo/Bob",
    #       assumed_role_id: "ARO123EXAMPLE123:Bob"
    #     },
    #     packed_policy_size: 8
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "arnType", # required
    #     role_session_name: "roleSessionNameType", # required
    #     policy_arns: [
    #       {
    #         arn: "arnType"
    #       }
    #     ],
    #     policy: "unrestrictedSessionPolicyDocumentType",
    #     duration_seconds: 1,
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ],
    #     transitive_tag_keys: ["tagKeyType"],
    #     external_id: "externalIdType",
    #     serial_number: "serialNumberType",
    #     token_code: "tokenCodeType",
    #     source_identity: "sourceIdentityType",
    #     provided_contexts: [
    #       {
    #         provider_arn: "arnType",
    #         context_assertion: "contextAssertionType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.assume_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "accessKeyIdType", # required
    #       secret_access_key: "accessKeySecretType", # required
    #       session_token: "tokenType", # required
    #       expiration: Time.now, # required
    #     },
    #     assumed_role_user: {
    #       assumed_role_id: "assumedRoleIdType", # required
    #       arn: "arnType", # required
    #     },
    #     packed_policy_size: 1,
    #     source_identity: "sourceIdentityType"
    #   }
    # @return [Types::AssumeRoleResponse]
    def assume_role(params = {}, options = {})
      request = build_request(:assume_role, params)
      request.send_request(options)
    end

    # <p>Returns a set of temporary security credentials for users who have been authenticated
    #          via a SAML authentication response. This operation provides a mechanism for tying an
    #          enterprise identity store or directory to role-based Amazon Web Services access without user-specific
    #          credentials or configuration. For a comparison of <code>AssumeRoleWithSAML</code> with the
    #          other API operations that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html">Compare STS
    #             credentials</a> in the <i>IAM User Guide</i>.</p>
    #          <p>The temporary security credentials returned by this operation consist of an access key
    #          ID, a secret access key, and a security token. Applications can use these temporary
    #          security credentials to sign calls to Amazon Web Services services.</p>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>By default, the temporary security credentials created by
    #             <code>AssumeRoleWithSAML</code> last for one hour. However, you can use the optional
    #             <code>DurationSeconds</code> parameter to specify the duration of your session. Your
    #          role session lasts for the duration that you specify, or until the time specified in the
    #          SAML authentication response's <code>SessionNotOnOrAfter</code> value, whichever is
    #          shorter. You can provide a <code>DurationSeconds</code> value from 900 seconds (15 minutes)
    #          up to the maximum session duration setting for the role. This setting can have a value from
    #          1 hour to 12 hours. To learn how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #             Maximum Session Duration Setting for a Role</a> in the
    #             <i>IAM User Guide</i>. The maximum session duration limit applies when
    #          you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI
    #          commands. However the limit does not apply when you use those operations to create a
    #          console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>
    #                <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-role-chaining">Role chaining</a> limits your CLI or Amazon Web Services API role
    #             session to a maximum of one hour. When you use the <code>AssumeRole</code> API operation
    #             to assume a role, you can specify the duration of your role session with the
    #                <code>DurationSeconds</code> parameter. You can specify a parameter value of up to
    #             43200 seconds (12 hours), depending on the maximum session duration setting for your
    #             role. However, if you assume a role using role chaining and provide a
    #                <code>DurationSeconds</code> parameter value greater than one hour, the operation
    #             fails.</p>
    #          </note>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>AssumeRoleWithSAML</code> can be
    #          used to make API calls to any Amazon Web Services service with the following exception: you cannot call
    #          the STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API
    #          operations.</p>
    #          <p>(Optional) You can pass inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policies</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters. Passing policies to this operation returns new 
    #          temporary credentials. The resulting session's permissions are the intersection of the 
    #          role's identity-based policy and the session policies. You can use the role's temporary 
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #          the role. You cannot use session policies to grant more permissions than those allowed 
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>Calling <code>AssumeRoleWithSAML</code> does not require the use of Amazon Web Services security
    #          credentials. The identity of the caller is validated by using keys in the metadata document
    #          that is uploaded for the SAML provider entity for your identity provider. </p>
    #          <important>
    #             <p>Calling <code>AssumeRoleWithSAML</code> can result in an entry in your CloudTrail logs.
    #             The entry includes the value in the <code>NameID</code> element of the SAML assertion.
    #             We recommend that you use a <code>NameIDType</code> that is not associated with any
    #             personally identifiable information (PII). For example, you could instead use the
    #             persistent identifier
    #             (<code>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</code>).</p>
    #          </important>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can configure your IdP to pass attributes into your SAML assertion as
    #          session tags. Each session tag consists of a key name and an associated value. For more
    #          information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128
    #          characters and the values can’t exceed 256 characters. For these and additional limits, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #             and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #             and session tags into a packed binary format that has a separate limit. Your request can
    #             fail for this limit even if your plaintext meets the other requirements. The
    #                <code>PackedPolicySize</code> response element indicates by percentage how close the
    #             policies and tags for your request are to the upper size limit.</p>
    #          </note>
    #          <p>You can pass a session tag with the same key as a tag that is attached to the role. When
    #          you do, session tags override the role's tags with the same key.</p>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>You can set the session tags as transitive. Transitive tags persist during role
    #          chaining. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #             with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>SAML Configuration</b>
    #          </p>
    #          <p>Before your application can call <code>AssumeRoleWithSAML</code>, you must configure
    #          your SAML identity provider (IdP) to issue the claims required by Amazon Web Services. Additionally, you
    #          must use Identity and Access Management (IAM) to create a SAML provider entity in your Amazon Web Services account that
    #          represents your identity provider. You must also create an IAM role that specifies this
    #          SAML provider in its trust policy. </p>
    #          <p>For more information, see the following resources:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About
    #                   SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html">Creating SAML Identity Providers</a> in the
    #                   <i>IAM User Guide</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html">Configuring
    #                   a Relying Party and Claims</a> in the <i>IAM User Guide</i>.
    #             </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html">Creating a Role for SAML 2.0 Federation</a> in the
    #                   <i>IAM User Guide</i>. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AssumeRoleWithSAMLRequest] params
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
    # @option params [String] :principal_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider in IAM that describes the
    #            IdP.</p>
    # @option params [String] :saml_assertion
    #   <p>The base64 encoded SAML authentication response provided by the IdP.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/create-role-saml-IdP-tasks.html">Configuring a Relying Party and
    #               Adding Claims</a> in the <i>IAM User Guide</i>. </p>
    # @option params [Array<Types::PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>. </p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <p>For more information about role session permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               policies</a>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the role session. Your role session lasts for the duration
    #            that you specify for the <code>DurationSeconds</code> parameter, or until the time
    #            specified in the SAML authentication response's <code>SessionNotOnOrAfter</code> value,
    #            whichever is shorter. You can provide a <code>DurationSeconds</code> value from 900 seconds
    #            (15 minutes) up to the maximum session duration setting for the role. This setting can have
    #            a value from 1 hour to 12 hours. If you specify a value higher than this setting, the
    #            operation fails. For example, if you specify a session duration of 12 hours, but your
    #            administrator set the maximum session duration to 6 hours, your operation fails. To learn
    #            how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    # @example To assume a role using a SAML assertion
    #   
    #   params = {
    #     role_arn: "arn:aws:iam::123456789012:role/TestSaml",
    #     principal_arn: "arn:aws:iam::123456789012:saml-provider/SAML-test",
    #     saml_assertion: "VERYLONGENCODEDASSERTIONEXAMPLExzYW1sOkF1ZGllbmNlPmJsYW5rPC9zYW1sOkF1ZGllbmNlPjwvc2FtbDpBdWRpZW5jZVJlc3RyaWN0aW9uPjwvc2FtbDpDb25kaXRpb25zPjxzYW1sOlN1YmplY3Q+PHNhbWw6TmFtZUlEIEZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOm5hbWVpZC1mb3JtYXQ6dHJhbnNpZW50Ij5TYW1sRXhhbXBsZTwvc2FtbDpOYW1lSUQ+PHNhbWw6U3ViamVjdENvbmZpcm1hdGlvbiBNZXRob2Q9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpjbTpiZWFyZXIiPjxzYW1sOlN1YmplY3RDb25maXJtYXRpb25EYXRhIE5vdE9uT3JBZnRlcj0iMjAxOS0xMS0wMVQyMDoyNTowNS4xNDVaIiBSZWNpcGllbnQ9Imh0dHBzOi8vc2lnbmluLmF3cy5hbWF6b24uY29tL3NhbWwiLz48L3NhbWw6U3ViamVjdENvbmZpcm1hdGlvbj48L3NhbWw6U3ViamVjdD48c2FtbDpBdXRoblN0YXRlbWVudCBBdXRoPD94bWwgdmpSZXNwb25zZT4=",
    #     duration_seconds: 3600
    #   }
    #   options = {}
    #   response = client.assume_role_with_saml(params, options)
    #   response.to_h #=>
    #   {
    #     issuer: "https://integ.example.com/idp/shibboleth",
    #     assumed_role_user: {
    #       assumed_role_id: "ARO456EXAMPLE789:TestSaml",
    #       arn: "arn:aws:sts::123456789012:assumed-role/TestSaml"
    #     },
    #     credentials: {
    #       secret_access_key: "8P+SQvWIuLnKhh8d++jpw0nNmQRBZvNEXAMPLEKEY",
    #       access_key_id: "ASIAV3ZUEFP6EXAMPLE",
    #       session_token: "IQoJb3JpZ2luX2VjEOz////////////////////wEXAMPLEtMSJHMEUCIDoKK3JH9uGQE1z0sINr5M4jk+Na8KHDcCYRVjJCZEvOAiEA3OvJGtw1EcViOleS2vhs8VdCKFJQWPQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==",
    #       expiration: Time.parse("2019-11-01T20:26:47Z")
    #     },
    #     audience: "https://signin.aws.amazon.com/saml",
    #     subject_type: "transient",
    #     packed_policy_size: 6,
    #     name_qualifier: "SbdGOnUkh1i4+EXAMPLExL/jEvs=",
    #     subject: "SamlExample"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "arnType", # required
    #     principal_arn: "arnType", # required
    #     saml_assertion: "SAMLAssertionType", # required
    #     policy_arns: [
    #       {
    #         arn: "arnType"
    #       }
    #     ],
    #     policy: "sessionPolicyDocumentType",
    #     duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.assume_role_with_saml(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "accessKeyIdType", # required
    #       secret_access_key: "accessKeySecretType", # required
    #       session_token: "tokenType", # required
    #       expiration: Time.now, # required
    #     },
    #     assumed_role_user: {
    #       assumed_role_id: "assumedRoleIdType", # required
    #       arn: "arnType", # required
    #     },
    #     packed_policy_size: 1,
    #     subject: "Subject",
    #     subject_type: "SubjectType",
    #     issuer: "Issuer",
    #     audience: "Audience",
    #     name_qualifier: "NameQualifier",
    #     source_identity: "sourceIdentityType"
    #   }
    # @return [Types::AssumeRoleWithSAMLResponse]
    def assume_role_with_saml(params = {}, options = {})
      request = build_request(:assume_role_with_saml, params)
      request.send_request(options)
    end

    # <p>Returns a set of temporary security credentials for users who have been authenticated in
    #          a mobile or web application with a web identity provider. Example providers include the
    #          OAuth 2.0 providers Login with Amazon and Facebook, or any OpenID Connect-compatible
    #          identity provider such as Google or <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito federated identities</a>.</p>
    #          <note>
    #             <p>For mobile applications, we recommend that you use Amazon Cognito. You can use Amazon Cognito with the
    #                <a href="http://aws.amazon.com/sdkforios/">Amazon Web Services SDK for iOS Developer Guide</a> and the <a href="http://aws.amazon.com/sdkforandroid/">Amazon Web Services SDK for Android Developer Guide</a> to uniquely
    #             identify a user. You can also supply the user with a consistent identity throughout the
    #             lifetime of an application.</p>
    #             <p>To learn more about Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito identity
    #                pools</a> in <i>Amazon Cognito Developer Guide</i>.</p>
    #          </note>
    #          <p>Calling <code>AssumeRoleWithWebIdentity</code> does not require the use of Amazon Web Services
    #          security credentials. Therefore, you can distribute an application (for example, on mobile
    #          devices) that requests temporary security credentials without including long-term Amazon Web Services
    #          credentials in the application. You also don't need to deploy server-based proxy services
    #          that use long-term Amazon Web Services credentials. Instead, the identity of the caller is validated by
    #          using a token from the web identity provider. For a comparison of
    #             <code>AssumeRoleWithWebIdentity</code> with the other API operations that produce
    #          temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html">Compare STS
    #             credentials</a> in the <i>IAM User Guide</i>.</p>
    #          <p>The temporary security credentials returned by this API consist of an access key ID, a
    #          secret access key, and a security token. Applications can use these temporary security
    #          credentials to sign calls to Amazon Web Services service API operations.</p>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>By default, the temporary security credentials created by
    #             <code>AssumeRoleWithWebIdentity</code> last for one hour. However, you can use the
    #          optional <code>DurationSeconds</code> parameter to specify the duration of your session.
    #          You can provide a value from 900 seconds (15 minutes) up to the maximum session duration
    #          setting for the role. This setting can have a value from 1 hour to 12 hours. To learn how
    #          to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_update-role-settings.html#id_roles_update-session-duration">Update the maximum session duration for a role </a> in the
    #             <i>IAM User Guide</i>. The maximum session duration limit applies when
    #          you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI
    #          commands. However the limit does not apply when you use those operations to create a
    #          console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> in the
    #             <i>IAM User Guide</i>. </p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>AssumeRoleWithWebIdentity</code> can
    #          be used to make API calls to any Amazon Web Services service with the following exception: you cannot
    #          call the STS <code>GetFederationToken</code> or <code>GetSessionToken</code> API
    #          operations.</p>
    #          <p>(Optional) You can pass inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policies</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters. Passing policies to this operation returns new 
    #          temporary credentials. The resulting session's permissions are the intersection of the 
    #          role's identity-based policy and the session policies. You can use the role's temporary 
    #          credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #          the role. You cannot use session policies to grant more permissions than those allowed 
    #          by the identity-based policy of the role that is being assumed. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #             Policies</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can configure your IdP to pass attributes into your web identity token as
    #          session tags. Each session tag consists of a key name and an associated value. For more
    #          information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <p>You can pass up to 50 session tags. The plaintext session tag keys can’t exceed 128
    #          characters and the values can’t exceed 256 characters. For these and additional limits, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #             and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #             and session tags into a packed binary format that has a separate limit. Your request can
    #             fail for this limit even if your plaintext meets the other requirements. The
    #                <code>PackedPolicySize</code> response element indicates by percentage how close the
    #             policies and tags for your request are to the upper size limit.</p>
    #          </note>
    #          <p>You can pass a session tag with the same key as a tag that is attached to the role. When
    #          you do, the session tag overrides the role tag with the same key.</p>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>You can set the session tags as transitive. Transitive tags persist during role
    #          chaining. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining Roles
    #             with Session Tags</a> in the <i>IAM User Guide</i>.</p>
    #          <p>
    #             <b>Identities</b>
    #          </p>
    #          <p>Before your application can call <code>AssumeRoleWithWebIdentity</code>, you must have
    #          an identity token from a supported identity provider and create a role that the application
    #          can assume. The role that your application assumes must trust the identity provider that is
    #          associated with the identity token. In other words, the identity provider must be specified
    #          in the role's trust policy. </p>
    #          <important>
    #             <p>Calling <code>AssumeRoleWithWebIdentity</code> can result in an entry in your
    #             CloudTrail logs. The entry includes the <a href="http://openid.net/specs/openid-connect-core-1_0.html#Claims">Subject</a> of
    #             the provided web identity token. We recommend that you avoid using any personally
    #             identifiable information (PII) in this field. For example, you could instead use a GUID
    #             or a pairwise identifier, as <a href="http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes">suggested
    #                in the OIDC specification</a>.</p>
    #          </important>
    #          <p>For more information about how to use OIDC federation and the
    #             <code>AssumeRoleWithWebIdentity</code> API, see the following resources: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html">Using Web Identity Federation API Operations for Mobile Apps</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="http://aws.amazon.com/sdkforios/">Amazon Web Services SDK for iOS Developer Guide</a> and <a href="http://aws.amazon.com/sdkforandroid/">Amazon Web Services SDK for Android Developer Guide</a>. These toolkits
    #                contain sample apps that show how to invoke the identity providers. The toolkits then
    #                show how to use the information from these providers to get and use temporary
    #                security credentials. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AssumeRoleWithWebIdentityRequest] params
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that the caller is assuming.</p>
    #            <note>
    #               <p>Additional considerations apply to Amazon Cognito identity pools that assume <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies-cross-account-resource-access.html">cross-account IAM roles</a>. The trust policies of these roles must accept the
    #                  <code>cognito-identity.amazonaws.com</code> service principal and must contain the
    #                  <code>cognito-identity.amazonaws.com:aud</code> condition key to restrict role
    #               assumption to users from your intended identity pools. A policy that trusts Amazon Cognito
    #               identity pools without this condition creates a risk that a user from an unintended
    #               identity pool can assume the role. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/iam-roles.html#trust-policies"> Trust policies for
    #                  IAM roles in Basic (Classic) authentication </a> in the <i>Amazon Cognito
    #                  Developer Guide</i>.</p>
    #            </note>
    # @option params [String] :role_session_name
    #   <p>An identifier for the assumed role session. Typically, you pass the name or identifier
    #            that is associated with the user who is using your application. That way, the temporary
    #            security credentials that your application will use are associated with that user. This
    #            session name is included as part of the ARN and assumed role ID in the
    #               <code>AssumedRoleUser</code> response element.</p>
    #            <p>For security purposes, administrators can view this field in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html#cloudtrail-integration_signin-tempcreds">CloudTrail logs</a> to help identify who performed an action in Amazon Web Services. Your
    #            administrator might require that you specify your user name as the session name when you
    #            assume the role. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_iam-condition-keys.html#ck_rolesessionname">
    #                  <code>sts:RoleSessionName</code>
    #               </a>.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    # @option params [String] :web_identity_token
    #   <p>The OAuth 2.0 access token or OpenID Connect ID token that is provided by the identity
    #            provider. Your application must get this token by authenticating the user who is using your
    #            application with a web identity provider before the application makes an
    #               <code>AssumeRoleWithWebIdentity</code> call. Timestamps in the token must be formatted
    #            as either an integer or a long integer. Tokens must be signed using either RSA keys (RS256,
    #            RS384, or RS512) or ECDSA keys (ES256, ES384, or ES512).</p>
    # @option params [String] :provider_id
    #   <p>The fully qualified host component of the domain name of the OAuth 2.0 identity
    #            provider. Do not specify this value for an OpenID Connect identity provider.</p>
    #            <p>Currently <code>www.amazon.com</code> and <code>graph.facebook.com</code> are the only
    #            supported identity providers for OAuth 2.0 access tokens. Do not include URL schemes and
    #            port numbers.</p>
    #            <p>Do not specify this value for OpenID Connect ID tokens.</p>
    # @option params [Array<Types::PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as
    #            managed session policies. The policies must exist in the same account as the role.</p>
    #            <p>This parameter is optional. You can provide up to 10 managed policy ARNs. However, the
    #            plaintext that you use for both inline and managed session policies can't exceed 2,048
    #            characters. For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>This parameter is optional. Passing policies to this operation returns new 
    #            temporary credentials. The resulting session's permissions are the intersection of the 
    #            role's identity-based policy and the session policies. You can use the role's temporary 
    #            credentials in subsequent Amazon Web Services API calls to access resources in the account that owns 
    #            the role. You cannot use session policies to grant more permissions than those allowed 
    #            by the identity-based policy of the role that is being assumed. For more information, see
    #               <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               Policies</a> in the <i>IAM User Guide</i>.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <p>For more information about role session permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
    #               policies</a>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the role session. The value can range from 900 seconds (15
    #            minutes) up to the maximum session duration setting for the role. This setting can have a
    #            value from 1 hour to 12 hours. If you specify a value higher than this setting, the
    #            operation fails. For example, if you specify a session duration of 12 hours, but your
    #            administrator set the maximum session duration to 6 hours, your operation fails. To learn
    #            how to view the maximum value for your role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View the
    #               Maximum Session Duration Setting for a Role</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>By default, the value is set to <code>3600</code> seconds. </p>
    #            <note>
    #               <p>The <code>DurationSeconds</code> parameter is separate from the duration of a console
    #               session that you might request using the returned credentials. The request to the
    #               federation endpoint for a console sign-in token takes a <code>SessionDuration</code>
    #               parameter that specifies the maximum length of the console session. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html">Creating a URL
    #                  that Enables Federated Users to Access the Amazon Web Services Management Console</a> in the
    #                  <i>IAM User Guide</i>.</p>
    #            </note>
    # @example To assume a role as an OpenID Connect-federated user
    #   
    #   params = {
    #     role_arn: "arn:aws:iam::123456789012:role/FederatedWebIdentityRole",
    #     role_session_name: "app1",
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:ListAllMyBuckets\",\"Resource\":\"*\"}]}",
    #     web_identity_token: "Atza%7CIQEBLjAsAhRFiXuWpUXuRvQ9PZL3GMFcYevydwIUFAHZwXZXXXXXXXXJnrulxKDHwy87oGKPznh0D6bEQZTSCzyoCtL_8S07pLpr0zMbn6w1lfVZKNTBdDansFBmtGnIsIapjI6xKR02Yc_2bQ8LZbUXSGm6Ry6_BG7PrtLZtj_dfCTj92xNGed-CrKqjG7nPBjNIL016GGvuS5gSvPRUxWES3VYfm1wl7WTI7jn-Pcb6M-buCgHhFOzTQxod27L9CqnOLio7N3gZAGpsp6n1-AJBOCJckcyXe2c6uD0srOJeZlKUm2eTDVMf8IehDVI0r1QOnTV6KzzAI3OY87Vd_cVMQ",
    #     provider_id: "www.amazon.com",
    #     duration_seconds: 3600
    #   }
    #   options = {}
    #   response = client.assume_role_with_web_identity(params, options)
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       session_token: "AQoDYXdzEE0a8ANXXXXXXXXNO1ewxE5TijQyp+IEXAMPLE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse("2014-10-24T23:00:23Z"),
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     },
    #     subject_from_web_identity_token: "amzn1.account.AF6RHO7KZU5XRVQJGXK6HEXAMPLE",
    #     assumed_role_user: {
    #       arn: "arn:aws:sts::123456789012:assumed-role/FederatedWebIdentityRole/app1",
    #       assumed_role_id: "AROACLKWSDQRAOEXAMPLE:app1"
    #     },
    #     packed_policy_size: 123,
    #     provider: "www.amazon.com",
    #     audience: "client.5498841531868486423.1548@apps.example.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "arnType", # required
    #     role_session_name: "roleSessionNameType", # required
    #     web_identity_token: "clientTokenType", # required
    #     provider_id: "urlType",
    #     policy_arns: [
    #       {
    #         arn: "arnType"
    #       }
    #     ],
    #     policy: "sessionPolicyDocumentType",
    #     duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.assume_role_with_web_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "accessKeyIdType", # required
    #       secret_access_key: "accessKeySecretType", # required
    #       session_token: "tokenType", # required
    #       expiration: Time.now, # required
    #     },
    #     subject_from_web_identity_token: "webIdentitySubjectType",
    #     assumed_role_user: {
    #       assumed_role_id: "assumedRoleIdType", # required
    #       arn: "arnType", # required
    #     },
    #     packed_policy_size: 1,
    #     provider: "Issuer",
    #     audience: "Audience",
    #     source_identity: "sourceIdentityType"
    #   }
    # @return [Types::AssumeRoleWithWebIdentityResponse]
    def assume_role_with_web_identity(params = {}, options = {})
      request = build_request(:assume_role_with_web_identity, params)
      request.send_request(options)
    end

    # <p>Returns a set of short term credentials you can use to perform privileged tasks on a
    #          member account in your organization.</p>
    #          <p>Before you can launch a privileged session, you must have centralized root access in
    #          your organization. For steps to enable this feature, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-enable-root-access.html">Centralize root access for
    #             member accounts</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>The STS global endpoint is not supported for AssumeRoot. You must send this request
    #             to a Regional STS endpoint. For more information, see <a href="https://docs.aws.amazon.com/STS/latest/APIReference/welcome.html#sts-endpoints">Endpoints</a>.</p>
    #          </note>
    #          <p>You can track AssumeRoot in CloudTrail logs to determine what actions were performed in a
    #          session. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-track-privileged-tasks.html">Track privileged tasks
    #             in CloudTrail</a> in the <i>IAM User Guide</i>.</p>
    # @param [Hash, Types::AssumeRootRequest] params
    # @option params [String] :target_principal
    #   <p>The member account principal ARN or account ID.</p>
    # @option params [Types::PolicyDescriptorType] :task_policy_arn
    #   <p>The identity based policy that scopes the session to the privileged tasks that can be
    #            performed. You can use one of following Amazon Web Services managed policies to scope root session
    #            actions.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMAuditRootUserCredentials">IAMAuditRootUserCredentials</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMCreateRootUserPassword">IAMCreateRootUserPassword</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-IAMDeleteRootUserCredentials">IAMDeleteRootUserCredentials</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-S3UnlockBucketPolicy">S3UnlockBucketPolicy</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/security-iam-awsmanpol.html#security-iam-awsmanpol-SQSUnlockQueuePolicy">SQSUnlockQueuePolicy</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, of the privileged session. The value can range from 0 seconds
    #            up to the maximum session duration of 900 seconds (15 minutes). If you specify a value
    #            higher than this setting, the operation fails.</p>
    #            <p>By default, the value is set to <code>900</code> seconds.</p>
    # @example To launch a privileged session
    #   # The following command retrieves a set of short-term credentials you can use to unlock an S3 bucket for a member account by removing the bucket policy.
    #   params = {
    #     target_principal: "111122223333",
    #     task_policy_arn: {
    #       arn: "arn:aws:iam::aws:policy/root-task/S3UnlockBucketPolicy"
    #     },
    #     duration_seconds: 900
    #   }
    #   options = {}
    #   response = client.assume_root(params, options)
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       secret_access_key: "9drTJvcXLB89EXAMPLELB8923FB892xMFI",
    #       session_token: "AQoXdzELDDY//////////wEaoAK1wvxJY12r2IrDFT2IvAzTCn3zHoZ7YNtpiQLF0MqZye/qwjzP2iEXAMPLEbw/m3hsj8VBTkPORGvr9jM5sgP+w9IZWZnU+LWhmg+a5fDi2oTGUYcdg9uexQ4mtCHIHfi4citgqZTgco40Yqr4lIlo4V2b2Dyauk0eYFNebHtYlFVgAUj+7Indz3LU0aTWk1WKIjHmmMCIoTkyYp/k7kUG7moeEYKSitwQIi6Gjn+nyzM+PtoA3685ixzv0R7i5rjQi0YE0lf1oeie3bDiNHncmzosRM6SFiPzSvp6h/32xQuZsjcypmwsPSDtTPYcs0+YN/8BRi2/IcrxSpnWEXAMPLEXSDFTAQAM6Dl9zR0tXoybnlrZIwMLlMi1Kcgo5OytwU=",
    #       expiration: Time.parse("2024-11-15T00:05:07Z"),
    #       access_key_id: "ASIAJEXAMPLEXEG2JICEA"
    #     },
    #     source_identity: "Alice"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     target_principal: "TargetPrincipalType", # required
    #     task_policy_arn: { # required
    #       arn: "arnType"
    #     },
    #     duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.assume_root(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "accessKeyIdType", # required
    #       secret_access_key: "accessKeySecretType", # required
    #       session_token: "tokenType", # required
    #       expiration: Time.now, # required
    #     },
    #     source_identity: "sourceIdentityType"
    #   }
    # @return [Types::AssumeRootResponse]
    def assume_root(params = {}, options = {})
      request = build_request(:assume_root, params)
      request.send_request(options)
    end

    # <p>Decodes additional information about the authorization status of a request from an
    #          encoded message returned in response to an Amazon Web Services request.</p>
    #          <p>For example, if a user is not authorized to perform an operation that he or she has
    #          requested, the request returns a <code>Client.UnauthorizedOperation</code> response (an
    #          HTTP 403 response). Some Amazon Web Services operations additionally return an encoded message that can
    #          provide details about this authorization failure. </p>
    #          <note>
    #             <p>Only certain Amazon Web Services operations return an encoded authorization message. The
    #             documentation for an individual operation indicates whether that operation returns an
    #             encoded message in addition to returning an HTTP code.</p>
    #          </note>
    #          <p>The message is encoded because the details of the authorization status can contain
    #          privileged information that the user who requested the operation should not see. To decode
    #          an authorization status message, a user must be granted permissions through an IAM <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">policy</a> to
    #          request the <code>DecodeAuthorizationMessage</code>
    #             (<code>sts:DecodeAuthorizationMessage</code>) action. </p>
    #          <p>The decoded message includes the following type of information:</p>
    #          <ul>
    #             <li>
    #                <p>Whether the request was denied due to an explicit deny or due to the absence of an
    #                explicit allow. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow">Determining Whether a Request is Allowed or Denied</a> in the
    #                   <i>IAM User Guide</i>. </p>
    #             </li>
    #             <li>
    #                <p>The principal who made the request.</p>
    #             </li>
    #             <li>
    #                <p>The requested action.</p>
    #             </li>
    #             <li>
    #                <p>The requested resource.</p>
    #             </li>
    #             <li>
    #                <p>The values of condition keys in the context of the user's request.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DecodeAuthorizationMessageRequest] params
    # @option params [String] :encoded_message
    #   <p>The encoded message that was returned with the response.</p>
    # @example To decode information about an authorization status of a request
    #   
    #   params = {
    #     encoded_message: "<encoded-message>"
    #   }
    #   options = {}
    #   response = client.decode_authorization_message(params, options)
    #   response.to_h #=>
    #   {
    #     decoded_message: "{\"allowed\": \"false\",\"explicitDeny\": \"false\",\"matchedStatements\": \"\",\"failures\": \"\",\"context\": {\"principal\": {\"id\": \"AIDACKCEVSQ6C2EXAMPLE\",\"name\": \"Bob\",\"arn\": \"arn:aws:iam::123456789012:user/Bob\"},\"action\": \"ec2:StopInstances\",\"resource\": \"arn:aws:ec2:us-east-1:123456789012:instance/i-dd01c9bd\",\"conditions\": [{\"item\": {\"key\": \"ec2:Tenancy\",\"values\": [\"default\"]},{\"item\": {\"key\": \"ec2:ResourceTag/elasticbeanstalk:environment-name\",\"values\": [\"Default-Environment\"]}},(Additional items ...)]}}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     encoded_message: "encodedMessageType", # required
    #   }
    #   options = {}
    #   response = client.decode_authorization_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     decoded_message: "decodedMessageType"
    #   }
    # @return [Types::DecodeAuthorizationMessageResponse]
    def decode_authorization_message(params = {}, options = {})
      request = build_request(:decode_authorization_message, params)
      request.send_request(options)
    end

    # <p>Returns the account identifier for the specified access key ID.</p>
    #          <p>Access keys consist of two parts: an access key ID (for example,
    #             <code>AKIAIOSFODNN7EXAMPLE</code>) and a secret access key (for example,
    #             <code>wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY</code>). For more information about
    #          access keys, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html">Managing Access Keys for IAM
    #             Users</a> in the <i>IAM User Guide</i>.</p>
    #          <p>When you pass an access key ID to this operation, it returns the ID of the Amazon Web Services account
    #          to which the keys belong. Access key IDs beginning with <code>AKIA</code> are long-term
    #          credentials for an IAM user or the Amazon Web Services account root user. Access key IDs
    #          beginning with <code>ASIA</code> are temporary credentials that are created using STS
    #          operations. If the account in the response belongs to you, you can sign in as the root user and review your root user access keys. Then, you can pull a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html">credentials
    #             report</a> to learn which IAM user owns the keys. To learn who
    #          requested the temporary credentials for an <code>ASIA</code> access key, view the STS
    #          events in your <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">CloudTrail logs</a> in the <i>IAM User Guide</i>.</p>
    #          <p>This operation does not indicate the state of the access key. The key might be active,
    #          inactive, or deleted. Active keys might not have permissions to perform an operation.
    #          Providing a deleted access key might return an error that the key doesn't exist.</p>
    # @param [Hash, Types::GetAccessKeyInfoRequest] params
    # @option params [String] :access_key_id
    #   <p>The identifier of an access key.</p>
    #            <p>This parameter allows (through its regex pattern) a string of characters that can
    #            consist of any upper- or lowercase letter or digit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_key_id: "accessKeyIdType", # required
    #   }
    #   options = {}
    #   response = client.get_access_key_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account: "accountType"
    #   }
    # @return [Types::GetAccessKeyInfoResponse]
    def get_access_key_info(params = {}, options = {})
      request = build_request(:get_access_key_info, params)
      request.send_request(options)
    end

    # <p>Returns details about the IAM user or role whose credentials are used to
    #          call the operation.</p>
    #          <note>
    #             <p>No permissions are required to perform this operation. If an administrator attaches a
    #             policy to your identity that explicitly denies access to the
    #                <code>sts:GetCallerIdentity</code> action, you can still perform this operation.
    #             Permissions are not required because the same information is returned when access is
    #             denied. To view an example response, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa">I Am Not Authorized to Perform: iam:DeleteVirtualMFADevice</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::GetCallerIdentityRequest] params
    # @example To get details about a calling IAM user
    #   # This example shows a request and response made with the credentials for a user named Alice in the AWS account 123456789012.
    #   params = {}
    #   options = {}
    #   response = client.get_caller_identity(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "AKIAI44QH8DHBEXAMPLE",
    #     account: "123456789012",
    #     arn: "arn:aws:iam::123456789012:user/Alice"
    #   }
    # @example To get details about a calling user federated with AssumeRole
    #   # This example shows a request and response made with temporary credentials created by AssumeRole. The name of the assumed role is my-role-name, and the RoleSessionName is set to my-role-session-name.
    #   params = {}
    #   options = {}
    #   response = client.get_caller_identity(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "AKIAI44QH8DHBEXAMPLE:my-role-session-name",
    #     account: "123456789012",
    #     arn: "arn:aws:sts::123456789012:assumed-role/my-role-name/my-role-session-name"
    #   }
    # @example To get details about a calling user federated with GetFederationToken
    #   # This example shows a request and response made with temporary credentials created by using GetFederationToken. The Name parameter is set to my-federated-user-name.
    #   params = {}
    #   options = {}
    #   response = client.get_caller_identity(params, options)
    #   response.to_h #=>
    #   {
    #     user_id: "123456789012:my-federated-user-name",
    #     account: "123456789012",
    #     arn: "arn:aws:sts::123456789012:federated-user/my-federated-user-name"
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_caller_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "userIdType",
    #     account: "accountType",
    #     arn: "arnType"
    #   }
    # @return [Types::GetCallerIdentityResponse]
    def get_caller_identity(params = {}, options = {})
      request = build_request(:get_caller_identity, params)
      request.send_request(options)
    end

    # <p>Returns a set of temporary security credentials (consisting of an access key ID, a
    #          secret access key, and a security token) for a user. A typical use is in a proxy
    #          application that gets temporary security credentials on behalf of distributed applications
    #          inside a corporate network.</p>
    #          <p>You must call the <code>GetFederationToken</code> operation using the long-term security
    #          credentials of an IAM user. As a result, this call is appropriate in
    #          contexts where those credentials can be safeguarded, usually in a server-based application.
    #          For a comparison of <code>GetFederationToken</code> with the other API operations that
    #          produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting Temporary Security
    #             Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html">Compare STS
    #             credentials</a> in the <i>IAM User Guide</i>.</p>
    #          <p>Although it is possible to call <code>GetFederationToken</code> using the security
    #          credentials of an Amazon Web Services account root user rather than an IAM user that you
    #          create for the purpose of a proxy application, we do not recommend it. For more
    #          information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials">Safeguard your root user credentials and don't use them for everyday tasks</a> in the
    #             <i>IAM User Guide</i>. </p>
    #          <note>
    #             <p>You can create a mobile-based or browser-based app that can authenticate users using
    #             a web identity provider like Login with Amazon, Facebook, Google, or an OpenID
    #             Connect-compatible identity provider. In this case, we recommend that you use <a href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or
    #                <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>
    #             <b>Session duration</b>
    #          </p>
    #          <p>The temporary credentials are valid for the specified duration, from 900 seconds (15
    #          minutes) up to a maximum of 129,600 seconds (36 hours). The default session duration is
    #          43,200 seconds (12 hours). Temporary credentials obtained by using the root user
    #          credentials have a maximum duration of 3,600 seconds (1 hour).</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>You can use the temporary credentials created by <code>GetFederationToken</code> in any
    #          Amazon Web Services service with the following exceptions:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot call any IAM operations using the CLI or the Amazon Web Services API. This
    #                limitation does not apply to console sessions.</p>
    #             </li>
    #             <li>
    #                <p>You cannot call any STS operations except <code>GetCallerIdentity</code>.</p>
    #             </li>
    #          </ul>
    #          <p>You can use temporary credentials for single sign-on (SSO) to the console.</p>
    #          <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #          this operation. You can pass a single JSON policy document to use as an inline session
    #          policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #          managed session policies. The plaintext that you use for both inline and managed session
    #          policies can't exceed 2,048 characters.</p>
    #          <p>Though the session policy parameters are optional, if you do not pass a policy, then the
    #          resulting federated user session has no permissions. When you pass session policies, the
    #          session permissions are the intersection of the IAM user policies and the
    #          session policies that you pass. This gives you a way to further restrict the permissions
    #          for a federated user. You cannot use session policies to grant more permissions than those
    #          that are defined in the permissions policy of the IAM user. For more
    #          information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #          the <i>IAM User Guide</i>. For information about using
    #             <code>GetFederationToken</code> to create temporary security credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken">GetFederationToken—Federation Through a Custom Identity Broker</a>. </p>
    #          <p>You can use the credentials to access a resource that has a resource-based policy. If
    #          that policy specifically references the federated user session in the
    #             <code>Principal</code> element of the policy, the session has the permissions allowed by
    #          the policy. These permissions are granted in addition to the permissions granted by the
    #          session policies.</p>
    #          <p>
    #             <b>Tags</b>
    #          </p>
    #          <p>(Optional) You can pass tag key-value pairs to your session. These are called session
    #          tags. For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>You can create a mobile-based or browser-based app that can authenticate users using
    #             a web identity provider like Login with Amazon, Facebook, Google, or an OpenID
    #             Connect-compatible identity provider. In this case, we recommend that you use <a href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or
    #                <code>AssumeRoleWithWebIdentity</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation Through a Web-based Identity Provider</a> in the
    #                <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>An administrator must grant you the permissions necessary to pass session tags. The
    #          administrator can also create granular permissions to allow you to pass only specific
    #          session tags. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial: Using Tags
    #             for Attribute-Based Access Control</a> in the
    #          <i>IAM User Guide</i>.</p>
    #          <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #          cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #          that the user that you are federating has the
    #             <code>Department</code>=<code>Marketing</code> tag and you pass the
    #             <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #          and <code>department</code> are not saved as separate tags, and the session tag passed in
    #          the request takes precedence over the user tag.</p>
    # @param [Hash, Types::GetFederationTokenRequest] params
    # @option params [String] :name
    #   <p>The name of the federated user. The name is used as an identifier for the temporary
    #            security credentials (such as <code>Bob</code>). For example, you can reference the
    #            federated user name in a resource-based policy, such as in an Amazon S3 bucket policy.</p>
    #            <p>The regex used to validate this parameter is a string of characters 
    #       consisting of upper- and lower-case alphanumeric characters with no spaces. You can 
    #       also include underscores or any of the following characters: =,.@-</p>
    # @option params [String] :policy
    #   <p>An IAM policy in JSON format that you want to use as an inline session policy.</p>
    #            <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #            this operation. You can pass a single JSON policy document to use as an inline session
    #            policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #            managed session policies.</p>
    #            <p>This parameter is optional. However, if you do not pass any session policies, then the
    #            resulting federated user session has no permissions.</p>
    #            <p>When you pass session policies, the session permissions are the intersection of the
    #               IAM user policies and the session policies that you pass. This gives you
    #            a way to further restrict the permissions for a federated user. You cannot use session
    #            policies to grant more permissions than those that are defined in the permissions policy of
    #            the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #            the <i>IAM User Guide</i>.</p>
    #            <p>The resulting credentials can be used to access a resource that has a resource-based
    #            policy. If that policy specifically references the federated user session in the
    #               <code>Principal</code> element of the policy, the session has the permissions allowed by
    #            the policy. These permissions are granted in addition to the permissions that are granted
    #            by the session policies.</p>
    #            <p>The plaintext that you use for both inline and managed session policies can't exceed
    #            2,048 characters. The JSON policy characters can be any ASCII character from the space
    #            character to the end of the valid character list (\u0020 through \u00FF). It can also
    #            include the tab (\u0009), linefeed (\u000A), and carriage return (\u000D)
    #            characters.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    # @option params [Array<Types::PolicyDescriptorType>] :policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the IAM managed policies that you want to use as a
    #            managed session policy. The policies must exist in the same account as the IAM user that is requesting federated access.</p>
    #            <p>You must pass an inline or managed <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session policy</a> to
    #            this operation. You can pass a single JSON policy document to use as an inline session
    #            policy. You can also specify up to 10 managed policy Amazon Resource Names (ARNs) to use as
    #            managed session policies. The plaintext that you use for both inline and managed session
    #            policies can't exceed 2,048 characters. You can provide up to 10 managed policy ARNs. For
    #            more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and Amazon Web Services
    #               Service Namespaces</a> in the Amazon Web Services General Reference.</p>
    #            <p>This parameter is optional. However, if you do not pass any session policies, then the
    #            resulting federated user session has no permissions.</p>
    #            <p>When you pass session policies, the session permissions are the intersection of the
    #               IAM user policies and the session policies that you pass. This gives you
    #            a way to further restrict the permissions for a federated user. You cannot use session
    #            policies to grant more permissions than those that are defined in the permissions policy of
    #            the IAM user. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session Policies</a> in
    #            the <i>IAM User Guide</i>.</p>
    #            <p>The resulting credentials can be used to access a resource that has a resource-based
    #            policy. If that policy specifically references the federated user session in the
    #               <code>Principal</code> element of the policy, the session has the permissions allowed by
    #            the policy. These permissions are granted in addition to the permissions that are granted
    #            by the session policies.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, that the session should last. Acceptable durations for
    #            federation sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with
    #            43,200 seconds (12 hours) as the default. Sessions obtained using root user
    #            credentials are restricted to a maximum of 3,600 seconds (one hour). If the specified
    #            duration is longer than one hour, the session obtained by using root user
    #            credentials defaults to one hour.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of session tags. Each session tag consists of a key name and an associated value.
    #            For more information about session tags, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing Session Tags in STS</a> in the
    #               <i>IAM User Guide</i>.</p>
    #            <p>This parameter is optional. You can pass up to 50 session tags. The plaintext session
    #            tag keys can’t exceed 128 characters and the values can’t exceed 256 characters. For these
    #            and additional limits, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
    #               and STS Character Limits</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>An Amazon Web Services conversion compresses the passed inline session policy, managed policy ARNs,
    #               and session tags into a packed binary format that has a separate limit. Your request can
    #               fail for this limit even if your plaintext meets the other requirements. The
    #                  <code>PackedPolicySize</code> response element indicates by percentage how close the
    #               policies and tags for your request are to the upper size limit.</p>
    #            </note>
    #            <p>You can pass a session tag with the same key as a tag that is already attached to the
    #            user you are federating. When you do, session tags override a user tag with the same key. </p>
    #            <p>Tag key–value pairs are not case sensitive, but case is preserved. This means that you
    #            cannot have separate <code>Department</code> and <code>department</code> tag keys. Assume
    #            that the role has the <code>Department</code>=<code>Marketing</code> tag and you pass the
    #               <code>department</code>=<code>engineering</code> session tag. <code>Department</code>
    #            and <code>department</code> are not saved as separate tags, and the session tag passed in
    #            the request takes precedence over the role tag.</p>
    # @example To get temporary credentials for a role by using GetFederationToken
    #   
    #   params = {
    #     name: "testFedUserSession",
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":\"Allow\",\"Action\":\"s3:ListAllMyBuckets\",\"Resource\":\"*\"}]}",
    #     duration_seconds: 3600,
    #     tags: [
    #       {
    #         key: "Project",
    #         value: "Pegasus"
    #       },
    #       {
    #         key: "Cost-Center",
    #         value: "98765"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_federation_token(params, options)
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       session_token: "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse("2011-07-15T23:28:33.359Z"),
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     },
    #     federated_user: {
    #       arn: "arn:aws:sts::123456789012:federated-user/Bob",
    #       federated_user_id: "123456789012:Bob"
    #     },
    #     packed_policy_size: 8
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "userNameType", # required
    #     policy: "sessionPolicyDocumentType",
    #     policy_arns: [
    #       {
    #         arn: "arnType"
    #       }
    #     ],
    #     duration_seconds: 1,
    #     tags: [
    #       {
    #         key: "tagKeyType", # required
    #         value: "tagValueType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_federation_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "accessKeyIdType", # required
    #       secret_access_key: "accessKeySecretType", # required
    #       session_token: "tokenType", # required
    #       expiration: Time.now, # required
    #     },
    #     federated_user: {
    #       federated_user_id: "federatedIdType", # required
    #       arn: "arnType", # required
    #     },
    #     packed_policy_size: 1
    #   }
    # @return [Types::GetFederationTokenResponse]
    def get_federation_token(params = {}, options = {})
      request = build_request(:get_federation_token, params)
      request.send_request(options)
    end

    # <p>Returns a set of temporary credentials for an Amazon Web Services account or IAM user.
    #          The credentials consist of an access key ID, a secret access key, and a security token.
    #          Typically, you use <code>GetSessionToken</code> if you want to use MFA to protect
    #          programmatic calls to specific Amazon Web Services API operations like Amazon EC2
    #          <code>StopInstances</code>.</p>
    #          <p>MFA-enabled IAM users must call <code>GetSessionToken</code> and submit
    #          an MFA code that is associated with their MFA device. Using the temporary security
    #          credentials that the call returns, IAM users can then make programmatic
    #          calls to API operations that require MFA authentication. An incorrect MFA code causes the
    #          API to return an access denied error. For a comparison of <code>GetSessionToken</code> with
    #          the other API operations that produce temporary credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
    #             Temporary Security Credentials</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html">Compare STS
    #             credentials</a> in the <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>No permissions are required for users to perform this operation. The purpose of the
    #                <code>sts:GetSessionToken</code> operation is to authenticate the user using MFA. You
    #             cannot use policies to control authentication operations. For more information, see
    #                <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html">Permissions for GetSessionToken</a> in the
    #             <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>
    #             <b>Session Duration</b>
    #          </p>
    #          <p>The <code>GetSessionToken</code> operation must be called by using the long-term Amazon Web Services
    #          security credentials of an IAM user. Credentials that are created by IAM users are valid for the duration that you specify. This duration can range
    #          from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours), with a default
    #          of 43,200 seconds (12 hours). Credentials based on account credentials can range from 900
    #          seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1 hour. </p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>The temporary security credentials created by <code>GetSessionToken</code> can be used
    #          to make API calls to any Amazon Web Services service with the following exceptions:</p>
    #          <ul>
    #             <li>
    #                <p>You cannot call any IAM API operations unless MFA authentication information is
    #                included in the request.</p>
    #             </li>
    #             <li>
    #                <p>You cannot call any STS API <i>except</i>
    #                   <code>AssumeRole</code> or <code>GetCallerIdentity</code>.</p>
    #             </li>
    #          </ul>
    #          <p>The credentials that <code>GetSessionToken</code> returns are based on permissions
    #          associated with the IAM user whose credentials were used to call the
    #          operation. The temporary credentials have the same permissions as the IAM user.</p>
    #          <note>
    #             <p>Although it is possible to call <code>GetSessionToken</code> using the security
    #             credentials of an Amazon Web Services account root user rather than an IAM user, we do
    #             not recommend it. If <code>GetSessionToken</code> is called using root user
    #             credentials, the temporary credentials have root user permissions. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials">Safeguard your root user credentials and don't use them for everyday tasks</a> in the
    #                <i>IAM User Guide</i>
    #             </p>
    #          </note>
    #          <p>For more information about using <code>GetSessionToken</code> to create temporary
    #          credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken">Temporary
    #             Credentials for Users in Untrusted Environments</a> in the
    #             <i>IAM User Guide</i>. </p>
    # @param [Hash, Types::GetSessionTokenRequest] params
    # @option params [Integer] :duration_seconds
    #   <p>The duration, in seconds, that the credentials should remain valid. Acceptable durations
    #            for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds
    #            (36 hours), with 43,200 seconds (12 hours) as the default. Sessions for Amazon Web Services account
    #            owners are restricted to a maximum of 3,600 seconds (one hour). If the duration is longer
    #            than one hour, the session for Amazon Web Services account owners defaults to one hour.</p>
    # @option params [String] :serial_number
    #   <p>The identification number of the MFA device that is associated with the IAM user who is making the <code>GetSessionToken</code> call. Specify this value
    #            if the IAM user has a policy that requires MFA authentication. The value is
    #            either the serial number for a hardware device (such as <code>GAHT12345678</code>) or an
    #            Amazon Resource Name (ARN) for a virtual device (such as
    #               <code>arn:aws:iam::123456789012:mfa/user</code>). You can find the device for an IAM user by going to the Amazon Web Services Management Console and viewing the user's security credentials. </p>
    #            <p>The regex used to validate this parameter is a string of 
    #       characters consisting of upper- and lower-case alphanumeric characters with no spaces. 
    #       You can also include underscores or any of the following characters: =,.@:/-</p>
    # @option params [String] :token_code
    #   <p>The value provided by the MFA device, if MFA is required. If any policy requires the
    #               IAM user to submit an MFA code, specify this value. If MFA authentication
    #            is required, the user must provide a code when requesting a set of temporary security
    #            credentials. A user who fails to provide the code receives an "access denied" response when
    #            requesting resources that require MFA authentication.</p>
    #            <p>The format for this parameter, as described by its regex pattern, is a sequence of six
    #            numeric digits.</p>
    # @example To get temporary credentials for an IAM user or an AWS account
    #   
    #   params = {
    #     duration_seconds: 3600,
    #     serial_number: "YourMFASerialNumber",
    #     token_code: "123456"
    #   }
    #   options = {}
    #   response = client.get_session_token(params, options)
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       session_token: "AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKwRcOIfrRh3c/LTo6UDdyJwOOvEVPvLXCrrrUtdnniCEXAMPLE/IvU1dYUg2RVAJBanLiHb4IgRmpRV3zrkuWJOgQs8IZZaIv2BXIa2R4OlgkBN9bkUDNCJiBeb/AXlzBBko7b15fjrBs2+cTQtpZ3CYWFXG8C5zqx37wnOE49mRl/+OtkIKGO7fAE",
    #       secret_access_key: "wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY",
    #       expiration: Time.parse("2011-07-11T19:55:29.611Z"),
    #       access_key_id: "AKIAIOSFODNN7EXAMPLE"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     duration_seconds: 1,
    #     serial_number: "serialNumberType",
    #     token_code: "tokenCodeType"
    #   }
    #   options = {}
    #   response = client.get_session_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "accessKeyIdType", # required
    #       secret_access_key: "accessKeySecretType", # required
    #       session_token: "tokenType", # required
    #       expiration: Time.now, # required
    #     }
    #   }
    # @return [Types::GetSessionTokenResponse]
    def get_session_token(params = {}, options = {})
      request = build_request(:get_session_token, params)
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
      context[:gem_name] = 'aws-sdk-sts'
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
          aws_query: Aws::Core::AwsQuery
        }
      end
    end
  end
end
